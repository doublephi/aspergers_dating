# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

User.create(:email => "awmitchell@gmail.com", :username => "awmitchell", :password => "password", :password_confirmation => "password",
            :age => 27, :gender => "Male", :height_feet => "5", :height_inches => "4", :weight => "160", :zipcode => "48116",
            :marital_status => "Single", :diagnostic_status => "Diagnosed", :orientation => "Straight", :looking_for => "Dating",
            :body_type => "Average", :smoke => "No", :drink => "No", :social_preference => "Small Groups Only", :sign => "Taurus",
            :religion => "Atheist",
            :about => "Here's some about me stuff.",
            :diagnosis_story => "The doctor did it.",
            :special_needs => "I like stuff.",
            :things_i_do => "I do some stuff.",
            :things_i_dont_do => "I don't do some other stuff",
            :obsessions => "Physics, Computers, Hockey", :who_id_like_to_meet => "Girls",
            :seven_things_i_adore => "One, Two, Three, Four, Five, Six, Seven")

User.create(:email => "awmitchell@gmail.com", :username => "awmitchell", :password => "password", :password_confirmation => "password",
            :age => 21, :gender => "Male", :height_feet => "5", :height_inches => "7", :weight => "200", :zipcode => "48393",
            :marital_status => "Single", :diagnostic_status => "Diagnosed", :orientation => "Straight", :looking_for => "Dating",
            :body_type => "Average", :smoke => "No", :drink => "No", :social_preference => "Small Groups Only", :sign => "Taurus",
            :religion => "Atheist",
            :about => "Here's some about me stuff.",
            :diagnosis_story => "The doctor did it.",
            :special_needs => "I like stuff.",
            :things_i_do => "I do some stuff.",
            :things_i_dont_do => "I don't do some other stuff",
            :obsessions => "Physics, Computers, Hockey", :who_id_like_to_meet => "Girls",
            :seven_things_i_adore => "One, Two, Three, Four, Five, Six, Seven")