# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

User.create(:email => "awmitchell@gmail.com", :password => "password", :password_confirmation => "password", :username => "awmitchell",
            :age => 27, :gender => "M", :height => "5.4", :weight => "160", :marital_status => "Single", :diagnostic_status => "Diagnosed",
            :seeking => "Long-Term Relationship", :description => "Blah blah blah", :zipcode => "48116", :admin => true)

User.create(:email => "batch@thing.com", :password => "password", :password_confirmation => "password", :username => "batch",
            :age => 18, :gender => "M", :height => "5.7", :weight => "150", :marital_status => "Married", :diagnostic_status => "Undiagnosed",
            :seeking => "Platonic", :description => "Blah blah blah", :zipcode => "48393")

User.create(:email => "herp@derp.com", :password => "password", :password_confirmation => "password", :username => "herpderp",
            :age => 40, :gender => "F", :height => "6.10", :weight => "250", :marital_status => "In A Relationship", :diagnostic_status => "Self-Diagnosed",
            :seeking => "Poly Relationship", :description => "Blah blah blah", :zipcode => "03901")