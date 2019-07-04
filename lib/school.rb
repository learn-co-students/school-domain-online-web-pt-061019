class School
  
  school = School.new("Bayside High School")
  
  school.add_student("Zach Morris", 9)
  school.add_student("AC Slater", 9)
  school.add_student("Kelly Kapowski", 10)
  school.add_student("Screech", 11)
  school.roster
  
  hash["new_key"] = []
  hash["new_key"] << "new_value_for_value_array"
  
  hash
  => {"new_key"=>["new_value_for_value_array"]}
  
  school.grade(9)
  
  school.sort 
  