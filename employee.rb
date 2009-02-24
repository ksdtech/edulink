class Employee
  include DataMapper::Resource
  
  property :teachernumber, Integer, :key => true
  property :cell, String, :length => 30
  property :cell_ecall, Boolean
  property :first_name, String, :length => 30 
  property :gender, String, :length => 1 
  property :home_phone, String, :length => 30 
  property :home_phone_ecall, Boolean
  property :last_name, String, :length => 30 
  property :middle_name, String, :length => 30 
  property :school_phone, String, :length => 30 
  property :school_phone_ext, String, :length => 15 
  property :schoolid, Integer, :null => false, :default => 102
  property :staffstatus, Integer, :null => false, :default => 0
  property :status, Integer, :null => false, :default => 0
  property :voice_mail, String, :length => 30 
  property :voice_mail_ext, String, :length => 15 
#  property :alert_medical, Text
#  property :cable_lock_id, String, :length => 15 
#  property :certificated, Boolean
#  property :city, String, :length => 30 
#  property :classified, Boolean
#  property :dob, String, :length => 10
#  property :doctor_name, String, :length => 60 
#  property :doctor_phone, String, :length => 30 
#  property :email_addr, String, :length => 60 
#  property :email_personal, String, :length => 60 
#  property :emerg1_phone1, String, :length => 30 
#  property :emerg1_phone1_type, String, :length => 15 
#  property :emerg1_phone2, String, :length => 30 
#  property :emerg1_phone2_type, String, :length => 15 
#  property :emerg1_rel, String, :length => 15 
#  property :emerg2_phone1, String, :length => 30 
#  property :emerg2_phone1_type, String, :length => 15 
#  property :emerg2_phone2, String, :length => 30 
#  property :emerg2_phone2_type, String, :length => 15 
#  property :emerg2_rel, String, :length => 15 
#  property :emergency1_first, String, :length => 30 
#  property :emergency1_last, String, :length => 30 
#  property :emergency2_first, String, :length => 30 
#  property :emergency2_last, String, :length => 30 
#  property :ethnicity, String, :length => 30 
#  property :form0_updated_at, String, :length => 30 
#  property :form0_updated_by, String, :length => 30 
#  property :group, Integer
#  property :groups, String, :length => 255, :null => false
#  property :homeroom, String, :length => 30 
#  property :laptop_info, String, :length => 30 
#  property :laptop_name, String, :length => 30 
#  property :laptop_serialnumber, String, :length => 30 
#  property :laptop_tag, String, :length => 9 
#  property :loginid, String, :length => 30 
#  property :medical_carrier, String, :length => 60 
#  property :medical_phone, String, :length => 30 
#  property :medical_policy, String, :length => 30 
#  property :network_id, String, :length => 30 
#  property :network_password, String, :length => 30 
#  property :powergradepw, String, :length => 30 
#  property :preferredname, String, :length => 30 
#  property :state, String, :length => 2 
#  property :street, String, :length => 60 
#  property :teacherloginid, String, :length => 30 
#  property :teacherloginpw, String, :length => 30 
#  property :title, String, :length => 60 
#  property :zip, String, :length => 15
  
  class << self
    def column_names
      @col_keys ||= properties.collect { |prop| prop.name }
    end
    
    def has_attribute?(key)
      column_names.include?(key.to_sym)
    end
  
    def export_edulink_files(fschool='School.txt', fstaff='Staff.txt', fdevice='StaffContactDevice.txt', coll=nil)
      coll ||= all(:conditions => ["status=1 AND (cell<>'' OR home_phone<>'')"])

      # Student.export_edulink_school_file(fschool)

      fstaff = File.join(APP_ROOT, "data/edulink/#{fstaff}") unless fstaff[0, 1] == '/'
      File.open(fstaff, "w") do |f|
        f.write %w{StaffKey SchoolKey FirstName MiddleName LastName Gender Language}.join(',')
        f.write "\r\n"
        coll.each do |e|
          school_key = e.schoolid == 103 ? 'Bacich' : (e.schoolid == 104 ? 'Kent' : 'District')
          vals = ["E-#{e.teachernumber}", school_key, 
            e.first_name, e.middle_name, e.last_name, (e.gender || '').upcase, 'English']
          f.write vals.collect { |val| (val || '').to_s.gsub(/,/, ' ') }.join(',')
          f.write "\r\n"
        end
      end

      fdevice = File.join(APP_ROOT, "data/edulink/#{fdevice}") unless fdevice[0, 1] == '/'
      File.open(fdevice, "w") do |f|
        f.write %w{StaffKey SchoolKey DeviceType DeviceDescription DeviceAddress ContactOrder Language}.join(',')
        f.write "\r\n"
        coll.each do |e|
          i = 1
          school_key = e.schoolid == 103 ? 'Bacich' : (e.schoolid == 104 ? 'Kent' : 'District')
          if e.cell_ecall && !e.cell.blank?
            vals = ["E-#{e.teachernumber}", school_key, 'PHONE', 'cell', e.cell, i, 'English']
            f.write vals.collect { |val| (val || '').to_s.gsub(/,/, ' ') }.join(',')
            f.write "\r\n"
            i += 1
          end
          if e.home_phone_ecall && !e.home_phone.blank?
            vals = ["E-#{e.teachernumber}", school_key, 'PHONE', 'home_phone', e.home_phone, i, 'English']
            f.write vals.collect { |val| (val || '').to_s.gsub(/,/, ' ') }.join(',')
            f.write "\r\n"
            i += 1
          end
        end
      end
    end
    
    def import_users(fname='export.txt', headers=true)
      fname = File.join(APP_ROOT, "data/#{fname}") unless fname[0,1] == '/'
      csv_options = { :col_sep => "\t", :row_sep => "\n" }
      if headers 
        csv_options[:headers] = true
        csv_options[:header_converters] = :symbol
      end
      FasterCSV.foreach(fname, csv_options) do |row|
        if headers
          attrs = row.to_hash
        else
          attrs = {}
          column_names.each_with_index do |field, i|
            attrs[field] = row[i]
          end
        end
        user = import_user(attrs)
      end
    end
    
    def import_user(attrs)
      employee_attrs = attrs.reject { |k, v| !Employee.has_attribute?(k) }
      teachernumber = employee_attrs.delete(:teachernumber)
      puts "adding #{teachernumber}"
      
      list_convert(employee_attrs, :groups)

      user = Employee.new
      user.teachernumber = teachernumber
      user.attributes = employee_attrs
      user.save
    end
    
  end
  
end