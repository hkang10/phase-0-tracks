#Creating a survey for vampire employees

require 'date'
current_year = Date.today.year
current_year = current_year.to_i

count = 0
puts "How many employees will you be enrolling?"
num_of_employees = gets.chomp.to_i

while count < num_of_employees
puts ""

#Retrieving data

puts "What is your name?"
name = gets.chomp.split(" ").map(&:capitalize).join(" ")

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp
