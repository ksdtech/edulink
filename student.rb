PRIMARY_LANGUAGES = {
   '00'  =>  'English'   ,
   '01'  =>  'Spanish'   ,
   '02'  =>  'Vietnamese',
   '03'  =>  'Cantonese' ,
   '04'  =>  'Korean'    ,
   '05'  =>  'Tagalog'   ,
   '06'  =>  'Portuguese',
   '07'  =>  'Putonghua' ,
   '08'  =>  'Japanese'  ,
   '09'  =>  'Khmer'     ,
   '10'  =>  'Lao'       ,
   '11'  =>  'Arabic'    ,
   '12'  =>  'Armenian'  ,
   '13'  =>  'Burmese'   ,
   '14'  =>  'Croatian'  ,
   '15'  =>  'Dutch'     ,
   '16'  =>  'Farsi'     ,
   '17'  =>  'French'    ,
   '18'  =>  'German'    ,
   '19'  =>  'Greek'     ,
   '20'  =>  'Chamorro'  ,
   '21'  =>  'Hebrew'    ,
   '22'  =>  'Hindi'     ,
   '23'  =>  'Hmong'     ,
   '24'  =>  'Hungarian' ,
   '25'  =>  'Ilocano'   ,
   '26'  =>  'Indonesian',
   '27'  =>  'Italian'   ,
   '28'  =>  'Punjabi'   ,
   '29'  =>  'Russian'   ,
   '30'  =>  'Samoan'    ,
   '32'  =>  'Thai'      ,
   '33'  =>  'Turkish'   ,
   '34'  =>  'Tongan'    ,
   '35'  =>  'Urdu'      ,
   '36'  =>  'Visayan'   ,
   '37'  =>  'American Sign Language',
   '38'  =>  'Ukrainian' ,
   '39'  =>  'Chaozhou'  ,
   '40'  =>  'Pashto'    ,
   '41'  =>  'Polish'    ,
   '42'  =>  'Assyrian'  ,
   '43'  =>  'Gujarati'  ,
   '44'  =>  'Yao'       ,
   '45'  =>  'Rumanian'  ,
   '46'  =>  'Taiwanese' ,
   '47'  =>  'Lahu'      ,
   '48'  =>  'Marshallese',
   '49'  =>  'Mixteco'   ,
   '50'  =>  'Khmu'      ,
   '51'  =>  'Kurdish'   ,
   '52'  =>  'Serbo-Croatian',
   '53'  =>  'Toishanese',
   '54'  =>  'Chaldean'  ,
   '56'  =>  'Albanian'  ,
   '57'  =>  'Tigrinya'  ,
   '60'  =>  'Somali'    ,
   '61'  =>  'Bengali'   ,
}

class Student
  include DataMapper::Resource
  
  property :student_number, Integer, :key => true
  property :ca_homelanguage, String, :length => 2
  property :contact1_1, String, :length => 30
  property :contact1_2, String, :length => 30
  property :contact1_3, String, :length => 30
  property :contact2_1, String, :length => 30
  property :contact2_2, String, :length => 30
  property :contact2_3, String, :length => 30
  property :enroll_status, Integer, :null => false, :default => 0
  property :father2_cell, String, :length => 30
  property :father2_home_phone, String, :length => 30
  property :father2_pager, String 
  property :father2_work_phone, String, :length => 30
  property :father_cell, String, :length => 30
  property :father_home_phone, String, :length => 30
  property :father_pager, String 
  property :father_work_phone, String, :length => 30
  property :first_name, String, :length => 30
  property :gender, String, :length => 1
  property :grade_level, Integer, :null => false, :default => 0
  property :home2_id, Integer, :null => false, :default => 0
  property :home2_phone, String, :length => 30
  property :home_id, Integer, :null => false, :default => 0
  property :home_phone, String, :length => 30
  property :last_name, String, :length => 30
  property :middle_name, String, :length => 30
  property :mother2_cell, String, :length => 30
  property :mother2_home_phone, String, :length => 30
  property :mother2_pager, String 
  property :mother2_work_phone, String, :length => 30
  property :mother_cell, String, :length => 30
  property :mother_home_phone, String, :length => 30
  property :mother_pager, String, :length => 30
  property :mother_work_phone, String, :length => 30
  property :schoolid, Integer, :null => false, :default => 0 
#  property :alert_medical, Text 
#  property :alert_medical_symptoms, Text 
#  property :alert_medical_what, Text 
#  property :allergies, Text 
#  property :allergies_benadryl, Boolean 
#  property :allergies_drugs, Boolean 
#  property :allergies_epi_pen, Boolean 
#  property :allergies_food, Boolean 
#  property :allergies_insects, Boolean 
#  property :allergies_other, Boolean 
#  property :allergies_severe, Boolean 
#  property :allowwebaccess, Boolean 
#  property :asthma, Boolean 
#  property :asthma_inhaler, Boolean 
#  property :asthma_medication, Boolean 
#  property :behavior_issues, Text 
#  property :behavior_problems, Boolean 
#  property :ca_birthplace_city, String, :length => 30
#  property :ca_birthplace_country, String, :length => 2 
#  property :ca_birthplace_state, String, :length => 2
#  property :ca_dateenroll, String, :length => 10 
#  property :ca_daterfep, String, :length => 10 
#  property :ca_ethnaa, Boolean 
#  property :ca_ethnai, Boolean 
#  property :ca_ethnaspiai, Boolean 
#  property :ca_ethnaspica, Boolean 
#  property :ca_ethnaspich, Boolean 
#  property :ca_ethnaspigu, Boolean 
#  property :ca_ethnaspiha, Boolean 
#  property :ca_ethnaspija, Boolean 
#  property :ca_ethnaspiko, Boolean 
#  property :ca_ethnaspila, Boolean 
#  property :ca_ethnaspioa, Boolean 
#  property :ca_ethnaspiopi, Boolean 
#  property :ca_ethnaspisa, Boolean 
#  property :ca_ethnaspita, Boolean 
#  property :ca_ethnaspivi, Boolean 
#  property :ca_ethnfi, Boolean 
#  property :ca_ethnla, Boolean 
#  property :ca_ethnwh, Boolean 
#  property :ca_firstusaschooling, String, :length => 10 
#  property :ca_langfluency, String, :length => 1
#  property :ca_namesuffix, String, :length => 30
#  property :ca_parented, String, :length => 2
#  property :city, String, :length => 30
#  property :custody_orders, Boolean 
#  property :dental_carrier, String, :length => 60
#  property :dental_policy, String, :length => 30
#  property :dentist_name, String, :length => 60
#  property :dentist_phone, String, :length => 30
#  property :diabetes, Boolean 
#  property :diabetes_insulin, Boolean 
#  property :districtentrydate, String 
#  property :districtentrygradelevel, String 
#  property :dob, String, :length => 10 
#  property :doctor2_name, String, :length => 60
#  property :doctor2_phone, String, :length => 30
#  property :doctor_name, String, :length => 60
#  property :doctor_phone, String, :length => 30
#  property :electives_5_music, String, :length => 15
#  property :electives_6_band, String 
#  property :electives_6_choir, String 
#  property :electives_7_band, String 
#  property :electives_7_choir, String 
#  property :electives_8_band, String 
#  property :electives_8_choir, String 
#  property :electives_8_enrich1, String, :length => 15
#  property :electives_8_enrich2, String, :length => 15
#  property :electives_8_enrich3, String, :length => 15
#  property :emerg_1_alt_phone, String, :length => 30
#  property :emerg_1_alt_ptype, String, :length => 15
#  property :emerg_1_first, String, :length => 30
#  property :emerg_1_ptype, String, :length => 15
#  property :emerg_1_rel, String, :length => 15
#  property :emerg_2_alt_phone, String, :length => 30
#  property :emerg_2_alt_ptype, String, :length => 15
#  property :emerg_2_first, String, :length => 30
#  property :emerg_2_ptype, String, :length => 15
#  property :emerg_2_rel, String, :length => 15
#  property :emerg_3_alt_phone, String, :length => 30
#  property :emerg_3_alt_ptype, String, :length => 15
#  property :emerg_3_first, String, :length => 30
#  property :emerg_3_last, String, :length => 30
#  property :emerg_3_phone, String, :length => 30
#  property :emerg_3_ptype, String, :length => 15
#  property :emerg_3_rel, String, :length => 15
#  property :emerg_contact_1, String, :length => 30
#  property :emerg_contact_2, String, :length => 30
#  property :emerg_phone_1, String, :length => 30
#  property :emerg_phone_2, String, :length => 30
#  property :emerg_x_alt_phone, String, :length => 30
#  property :emerg_x_alt_ptype, String, :length => 15
#  property :emerg_x_first, String, :length => 30
#  property :emerg_x_last, String, :length => 30
#  property :emerg_x_phone, String, :length => 30
#  property :emerg_x_ptype, String, :length => 15
#  property :emerg_x_rel, String, :length => 15
#  property :emergency_hospital, String, :length => 30
#  property :emergency_meds, Boolean 
#  property :emergency_meds_complete, Boolean 
#  property :entrydate, String, :length => 10
#  property :ethnicity, String, :length => 3
#  property :exitcode, String, :length => 3 
#  property :eyeglasses, Boolean 
#  property :eyeglasses_always, Boolean 
#  property :eyeglasses_board, Boolean 
#  property :eyeglasses_reading, Boolean 
#  property :father, String, :length => 30 
#  property :father2_email, String, :length => 60
#  property :father2_email2, String, :length => 60
#  property :father2_employer, String, :length => 30
#  property :father2_employer_address, String, :length => 30
#  property :father2_first, String, :length => 30
#  property :father2_isguardian, Boolean 
#  property :father2_last, String, :length => 30
#  property :father2_rel, String, :length => 15
#  property :father2_staff_id, Integer 
#  property :father_email, String, :length => 60
#  property :father_email2, String, :length => 60
#  property :father_employer, String, :length => 30
#  property :father_employer_address, String, :length => 30
#  property :father_first, String, :length => 30
#  property :father_isguardian, Boolean 
#  property :father_rel, String, :length => 15
#  property :father_staff_id, Integer 
#  property :form1_updated_at, String, :length => 30
#  property :form1_updated_by, String, :length => 15
#  property :form2_updated_at, String, :length => 30
#  property :form2_updated_by, String, :length => 15
#  property :form3_updated_at, String, :length => 30
#  property :form3_updated_by, String, :length => 15
#  property :form4_updated_at, String, :length => 30
#  property :form4_updated_by, String, :length => 15
#  property :form5_updated_at, String, :length => 30
#  property :form5_updated_by, String, :length => 15
#  property :form6_updated_at, String, :length => 30
#  property :form6_updated_by, String, :length => 15
#  property :form7_updated_at, String, :length => 30
#  property :form7_updated_by, String, :length => 15
#  property :form8_updated_at, String, :length => 30
#  property :form8_updated_by, String, :length => 15
#  property :form9_updated_at, String, :length => 30
#  property :form9_updated_by, String, :length => 15
#  property :guardianemail, String 
#  property :h_hearing_aid, String 
#  property :h_last_eye_exam, String 
#  property :health_ins_type, String 
#  property :home2_city, String, :length => 30
#  property :home2_no_inet_access, Boolean 
#  property :home2_printed_material, Boolean 
#  property :home2_spanish_material, Boolean 
#  property :home2_state, String, :length => 2
#  property :home2_street, String, :length => 60
#  property :home2_zip, String, :length => 15
#  property :home_no_inet_access, Boolean 
#  property :home_printed_material, Boolean 
#  property :home_room, String, :length => 30
#  property :home_spanish_material, Boolean 
#  property :homeroom_teacher, String, :length => 30
#  property :homeroom_teacherfirst, String, :length => 30
#  property :illness_desc, String 
#  property :illness_recent, Boolean 
#  property :lang_adults_primary, String, :length => 2
#  property :lang_earliest, String, :length => 2
#  property :lang_other, String, :length => 2
#  property :lang_spoken_to, String, :length => 2
#  property :lastfirst, String, :length => 60
#  property :lives_with_rel, String, :length => 15
#  property :mailing2_city, String, :length => 30
#  property :mailing2_state, String, :length => 2
#  property :mailing2_street, String, :length => 60
#  property :mailing2_zip, String, :length => 15
#  property :mailing_city, String, :length => 30
#  property :mailing_state, String, :length => 2
#  property :mailing_street, String, :length => 60
#  property :mailing_zip, String, :length => 15
#  property :med1_dosage, String, :length => 30
#  property :med1_hours, String, :length => 30
#  property :med1_name, String, :length => 30
#  property :med2_dosage, String, :length => 30
#  property :med2_hours, String, :length => 30
#  property :med2_name, String, :length => 30
#  property :med3_dosage, String, :length => 30
#  property :med3_hours, String, :length => 30
#  property :med3_name, String, :length => 30
#  property :medi_cal_num, String, :length => 30
#  property :medical_accom, Boolean 
#  property :medical_accom_desc, Text 
#  property :medical_carrier, String, :length => 60
#  property :medical_considerations, Text 
#  property :medical_other, Boolean 
#  property :medical_policy, String, :length => 30
#  property :medication_summary, String 
#  property :mother, String, :length => 30 
#  property :mother2_email, String, :length => 60
#  property :mother2_email2, String, :length => 60
#  property :mother2_employer, String, :length => 30
#  property :mother2_employer_address, String, :length => 30
#  property :mother2_first, String, :length => 30
#  property :mother2_isguardian, Boolean 
#  property :mother2_last, String, :length => 30
#  property :mother2_rel, String, :length => 15
#  property :mother2_staff_id, Integer 
#  property :mother_email, String, :length => 60
#  property :mother_email2, String, :length => 60
#  property :mother_employer, String, :length => 30
#  property :mother_employer_address, String, :length => 30
#  property :mother_first, String, :length => 30
#  property :mother_isguardian, Boolean 
#  property :mother_rel, String, :length => 15
#  property :mother_staff_id, Integer
#  property :movement_limits, Boolean 
#  property :movement_limits_desc, Text 
#  property :network_id, String, :length => 30
#  property :network_password, String, :length => 30
#  property :nickname, String, :length => 30
#  property :optical_carrier, String, :length => 60
#  property :optical_policy, String, :length => 30
#  property :prescriptions, Text 
#  property :prev_school_permission, String 
#  property :previous_school_address, String, :length => 60
#  property :previous_school_city, String, :length => 30
#  property :previous_school_grade_level, String, :length => 15
#  property :previous_school_name, String, :length => 30
#  property :previous_school_phone, String, :length => 30
#  property :pub_waiver_public, Boolean 
#  property :pub_waiver_restricted, Boolean 
#  property :reg_grade_level, Integer 
#  property :reg_will_attend, String, :length => 15
#  property :release_authorization, Boolean 
#  property :requires_meds, Boolean 
#  property :responsibility_date, String, :length => 10 
#  property :responsibility_signed, Boolean
#  property :school_meds, Boolean 
#  property :school_meds_complete, Boolean 
#  property :schoolentrydate, String, :length => 10  
#  property :schoolentrydate_ca, String, :length => 10  
#  property :schoolentrygradelevel, Integer 
#  property :seizures, Boolean 
#  property :seizures_medication, Boolean 
#  property :sibling1_dob, String, :length => 10  
#  property :sibling1_name, String, :length => 30
#  property :sibling2_dob, String, :length => 10  
#  property :sibling2_name, String, :length => 30
#  property :sibling3_dob, String, :length => 10  
#  property :sibling3_name, String, :length => 30
#  property :sibling4_dob, String, :length => 10  
#  property :sibling4_name, String, :length => 30
#  property :signature_1, String, :length => 60
#  property :signature_2, String, :length => 60
#  property :state, String, :length => 2
#  property :street, String, :length => 60
#  property :student_allowwebaccess, Boolean 
#  property :student_web_id, String, :length => 30
#  property :student_web_password, String, :length => 30
#  property :vol_first, String, :length => 30
#  property :vol_help, Boolean 
#  property :vol_last, String, :length => 30
#  property :vol_phone, String, :length => 30
#  property :vol_qualifications, Text 
#  property :web_id, String, :length => 30
#  property :web_password, String, :length => 30
#  property :zip, String, :length => 15
  
  def school_name
    { 103 => 'Bacich', 104 => 'Kent' }[schoolid] || 'Unknown'
  end
  
  def short_grade_level
    grade_level == 0 ? 'KG' : (grade_level <= 8 ? grade_level.to_s : 'GR')
  end
  
  def home_language
    PRIMARY_LANGUAGES[ca_homelanguage] || 'Other'
  end
    
  def home_index(family_number)
    if !family_number.nil? && family_number != 0
      return 0 if self.home_id == family_number
      return 1 if self.home2_id == family_number
    end
    nil
  end
  
  def full_name
    "#{self.first_name} #{self.last_name}".strip
  end
  
  def to_label
    "S-#{self.student_number} #{self.full_name} (#{self.grade_level})"
  end
  
  def edulink_label(home_index)
    "S-#{self.student_number}-#{home_index+1}"
  end
  
  def edulink_students
    all_students = [ ]
    [:home_id, :home2_id].each_with_index do |fkey, i|
      family_number = self.attribute_get(fkey)
      if !family_number.nil? && family_number != 0
        first_n = (i == 0) ? first_name : "#{first_name} 2"
        # StudentKey SchoolKey FirstName MiddleName LastName Gender Grade HomeLanguage Status
        all_students << [edulink_label(i), school_name, first_n, middle_name, last_name, gender, short_grade_level, home_language, 'ACTIVE']
      end
    end
    all_students
  end

  def edulink_class_schedules
    all_students = [ ]
    [:home_id, :home2_id].each_with_index do |fkey, i|
      family_number = self.attribute_get(fkey)
      if !family_number.nil? && family_number != 0
        # StudentKey SchoolKey ClassId CourseId CourseName CourseDescription CourseDepartment
        all_students << [edulink_label(i), school_name, short_grade_level, school_name, school_name, school_name, school_name]
      end
    end
    all_students
  end
  
  def edulink_devices
    all_devices = [ ]
    family_stats = { }
    [:home_id, :home2_id].each_with_index do |fkey, i|
      family_number = self.attribute_get(fkey)
      if !family_number.nil? && family_number != 0
        devices = Student.family_edulink_devices(family_number)
        devices.collect do |dev|
          description = "phone_#{dev[:order]}" # dev[:description]
          family_stats[family_number] = { :preferences => dev[:preferences], :conflicts => dev[:conflicts] }
          # StudentKey SchoolKey DeviceType DeviceDescription DeviceAddress ContactOrder Language
          all_devices << [edulink_label(i), school_name, 'PHONE', description, dev[:address], dev[:order], 'English']
        end
      end
    end
    [all_devices, family_stats]
  end
  
  class << self
    def column_names
      @col_keys ||= properties.collect { |prop| prop.name }
    end
    
    def has_attribute?(key)
      column_names.include?(key.to_sym)
    end
    
    def family_students(family_number)
      return [] if family_number.nil? || family_number == 0
      family_numbers = [ family_number ].flatten.compact.uniq
      all(
        :conditions => ['enroll_status<=0 AND ((home_id<>0 AND home_id IN (?)) OR (home2_id<>0 AND home2_id IN (?)))', family_numbers, family_numbers],
        :order => [:grade_level.desc, :first_name.asc ])
    end
    
    def export_edulink_school_file(fschool)
      fschool = File.join(APP_ROOT, "data/edulink/#{fschool}") unless fschool[0, 1] == '/'
      File.open(fschool, "w") do |f|
        f.write %w{SchoolKey SchoolName SchoolPhone}.join(',')
        f.write "\r\n"
        f.write ['Bacich', 'Bacich Elementary School', '(415) 925-2220'].join(',')
        f.write "\r\n"
        f.write ['Kent', 'Kent Middle School', '(415) 458-5970'].join(',')
        f.write "\r\n"
        f.write ['District', 'District Office', '(415) 458-5130'].join(',')
        f.write "\r\n"
      end
    end
    
    def export_edulink_files(fschool='School.txt', fstudent='Student.txt', fclass='StudentClassSchedule.txt', fdevice='StudentContactDevice.txt', coll=nil)
      coll ||= all(:conditions => ['enroll_status<=0'])
      
      export_edulink_school_file(fschool)

      fstudent = File.join(APP_ROOT, "data/edulink/#{fstudent}") unless fstudent[0, 1] == '/'
      File.open(fstudent, "w") do |f|
        f.write %w{StudentKey SchoolKey FirstName MiddleName LastName Gender Grade HomeLanguage Status}.join(',')
        f.write "\r\n"
        coll.each do |s|
          s.edulink_students.each do |stu|
            f.write stu.collect { |val| (val || '').to_s.gsub(/,/, ' ') }.join(',')
            f.write "\r\n"
          end
        end
      end
      
      #StudentKey	String	50	N	-	N	The unique identifier of the student; the value in this column must exist in the Student table
      #SchoolKey	String	50	N	-	N	The unique identifier of the school where the student is enrolled; the value in this column must exist in the School table
      #ClassId	String	100	N	-	N	A value that represents a unique class; in this database a class is defined as a meeting of one or more students with one or more teachers at a specified time and place. For example, 'Algebra' would be considered a course, but 'Ms. Smith's 3rd period Algebra' would be considered a class.
      #CourseId	String	100	N	-	N	A value that represents a unique course; in this database a course is defined as a specific subject, such as 'Algebra' or 'Chemistry'. Each course is may include one or more classes.
      
      fclass = File.join(APP_ROOT, "data/edulink/#{fclass}") unless fclass[0, 1] == '/'
      File.open(fclass, "w") do |f|
        f.write %w{StudentKey SchoolKey ClassId CourseId CourseName CourseDescription CourseDepartment}.join(',')
        f.write "\r\n"
        coll.each do |s|
          s.edulink_class_schedules.each do |stu|
            f.write stu.collect { |val| (val || '').to_s.gsub(/,/, ' ') }.join(',')
            f.write "\r\n"
          end
        end
      end

      all_stats = { }
      fdevice = File.join(APP_ROOT, "data/edulink/#{fdevice}") unless fdevice[0, 1] == '/'
      File.open(fdevice, "w") do |f|
        f.write %w{StudentKey SchoolKey DeviceType DeviceDescription DeviceAddress ContactOrder Language}.join(',')
        f.write "\r\n"
        coll.each do |s|
          devices, family_stats = s.edulink_devices
          devices.each do |dev|
            f.write dev.collect { |val| (val || '').to_s.gsub(/,/, ' ') }.join(',')
            f.write "\r\n"
          end
          all_stats.merge!(family_stats)
        end
      end
      
      total = 0
      prefs = 0
      conflicts = 0
      fkeys = all_stats.keys.sort
      fkeys.each do |family_number|
        total += 1
        prefs += 1 if all_stats[family_number][:preferences]
        conflicts += 1 if all_stats[family_number][:conflicts]
      end
      fstats = "family_stats.txt"
      fstats = File.join(APP_ROOT, "data/edulink/#{fstats}") unless fstats[0, 1] == '/'
      File.open(fstats, "w") do |f|
        f.write "#{total} families analyzed\n"
        f.write "#{prefs} families selected preferences\n"
        f.write "#{conflicts} families had conflicting preferences\n"
      end
    end
    
    def family_edulink_devices(family_number)
      devices = { }
      conflicts = false
      fs = family_students(family_number)
      fs.each do |s|
        home_index = s.home_index(family_number)
        next if home_index.nil?
        contacts = (home_index == 0) ?
          [:contact1_1, :contact1_2, :contact1_3] :
          [:contact2_1, :contact2_2, :contact2_3]
        contacts.each_with_index do |fld, i|
          next if s.attribute_get(fld).blank?
          phone = s.attribute_get(fld).gsub(/,/, '')
          info = devices[phone]
          rank = 20 - i
          
          # Gather statistics on families that have 2 different orderings
          conflicts = true if !info.nil? && info[:rank] != rank
          if info.nil? || info[:rank] < rank
            devices[phone] = { :family_number => family_number, :student_number => s.student_number, :rank => rank }
          end
        end
      end

      preferences = !devices.empty?
      puts "family_number #{family_number}, prefs #{preferences ? 't' : 'f'}, conflicts #{conflicts ? 't' : 'f'}"
      if preferences && devices.size < 3
        puts "-- only #{devices.size} preferences selected"
      end
      if conflicts
        puts "-- conflict students:"
        fs.each do |s| 
          puts s.to_label
        end
      end
      
      # See if any of the students had contact preferences; if not, use 
      # Cell, Work Phone, Home Phone order to build devices hash
      phone_types = { }
      fs.each do |s|
        home_index = s.home_index(family_number)
        next if home_index.nil?
        contacts = (home_index == 0) ?
          [:mother_cell, :father_cell, :mother_work_phone, :father_work_phone, 
           :home_phone, :mother_home_phone, :father_home_phone] :
          [:mother2_cell, :father2_cell, :mother2_work_phone, :father2_work_phone, 
           :home2_phone, :mother2_home_phone, :father2_home_phone]
        contacts.each_with_index do |fld, i|
          next if s.attribute_get(fld).blank?
          phone = s.attribute_get(fld).gsub(/,/, '')
          phone_types[phone] = fld if phone_types[phone].nil?
          if !preferences
            info = devices[phone]
            rank = 10 - i
            if info.nil? || info[:rank] < rank
              devices[phone] = { :family_number => family_number, :student_number => s.student_number, :rank => rank }
            end
          end
        end
      end
      
      # Sort by rank, note preferences and conflicts
      i = 0
      devices = devices.sort { |a, b| b[1][:rank] <=> a[1][:rank] }[0, 3]
      devices = devices.collect do |el|
        phone = el[0]
        phone_type = phone_types[phone]
        desc = phone_type.nil? ? 'Phone' : phone_type
        i += 1
        { :address => phone, :order => i, :description => desc, :preferences => preferences, :conflicts => conflicts }
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
      student_attrs = attrs.reject { |k, v| !Student.has_attribute?(k) }
      student_number = student_attrs.delete(:student_number)
      puts "adding #{student_number}"
      
      # oops. forgot that pub_waiver fields are "yes" or "no" in PowerSchool
      # need to convert them to true or false
      bool_convert(student_attrs, :pub_waiver_public)
      bool_convert(student_attrs, :pub_waiver_restricted)
      int_convert(student_attrs, :home_id)
      int_convert(student_attrs, :home2_id)

      user = Student.new
      user.student_number = student_number
      user.attributes = student_attrs
      user.save
    end
    
  end

end