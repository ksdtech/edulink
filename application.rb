#!/usr/bin/env ruby

require 'rubygems'
require 'dm-core'
require 'fastercsv'
require 'fileutils'
require 'net/sftp'

require 'unquoted_csv'
require 'employee'
require 'student'

# app_config.rb holds private information
require 'app_config'

APP_ROOT   = Dir.pwd
DATA_DIR   = "#{APP_ROOT}/data"
LOCAL_DIR  = "#{APP_ROOT}/data/edulink"
REMOTE_DIR = APP_CONFIG['remote_dir']

# Setup
FileUtils.mkdir_p("#{APP_ROOT}/data/edulink") rescue false
FileUtils.rm("#{APP_ROOT}/data/test.db") rescue false
DataMapper.setup(:default, "sqlite3:///#{APP_ROOT}/data/test.db")
DataMapper::Logger.new(STDOUT, :debug)

def download_files
  Net::SFTP.start(APP_CONFIG['sftp_server'], APP_CONFIG['sftp_username'], :password => APP_CONFIG['sftp_password']) do |sftp|
    puts "downloading ps-staff.txt"
    begin
      sftp.download! "#{REMOTE_DIR}/ps-staff.txt", "#{DATA_DIR}/ps-staff.txt" 
    rescue 
      puts "failed"
    end
    puts "downloading ps-staff.txt"
    begin
      sftp.download! "#{REMOTE_DIR}/ps-students.txt", "#{DATA_DIR}/ps-students.txt" 
    rescue 
      puts "failed"
    end
  end
end

def process_files
  Student.auto_migrate!
  Employee.auto_migrate!

  Student.import_users("ps-students.txt", false)
  Student.export_edulink_files

  Employee.import_users("ps-staff.txt", false)
  Employee.append_edulink_files
end

def upload_files
  Net::SFTP.start(APP_CONFIG['sftp_server'], APP_CONFIG['sftp_username'], :password => APP_CONFIG['sftp_password']) do |sftp|
    handle = sftp.opendir!(REMOTE_DIR)
    Dir.foreach(LOCAL_DIR) do |file|
      next unless File.extname(file) == '.txt'
      local_path = "#{LOCAL_DIR}/#{file}"
      next unless File.file?(local_path)
      puts "uploading #{file}"
      begin
        sftp.upload! local_path, "#{REMOTE_DIR}/#{file}"
      rescue 
        puts "failed"
      end
    end
  end
end

# do the work
download_files
process_files
upload_files
