# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Employee.create(
  first_name: 'Sibani',
  middle_name: "Kumari",
  last_name: "Sah",
  personal_email: "dfdfdni@gmail.com",
  district: "dhanush",
  zone:"janakpur",
  province:"2",
  temporary_address: "lokanthali",
  permanent_address: "dhanusha",
  country: "nepal"
 )
Employee.create(
  first_name: 'Ashok',
  middle_name: "Kumar",
  last_name: "Sah",
  personal_email: "ashok@gmail.com",
  district: "dhanush",
  zone:"janakpur",
  province:"2",
  temporary_address: "lokanthali",
  permanent_address: "dhanusha",
  country: "nepal"
 )
Employee.create(
  first_name: 'Ram',
  middle_name: "Kumar",
  last_name: "Sah",
  personal_email: "ram@gmail.com",
  district: "dhanush",
  zone:"janakpur",
  province:"2",
  temporary_address: "lokanthali",
  permanent_address: "dhanusha",
  country: "nepal"
 )