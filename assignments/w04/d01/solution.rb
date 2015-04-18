# W04D01 Quiz(20m)
=begin
Your solutions to all the problems below (except for Problem 1) should be included in this file.

Assuming the database "w04d01" mentioned in Problem 3 has been created, this file should be able to be executed in the command line (`ruby d01_quiz.rb`) without throwing any errors.
=end



## Problem 1
=begin
As you would with a regular homework assignment, please pull this file to your homework repository, make the necessary edits, push it, and then make a pull request.

The instructors will not provide assistance. If you run into trouble, please copy and paste the file as a public Gist (https://gist.github.com/), and share the link with the instructors as an issue in the homework repository.
=end




## Problem 2
=begin
Define a method "numbers_plus_two" such that the return value of the method below is [3,4,5,6,7]. Use an enumerator inside the method definition.
=end

def numbers_plus_two(numbers)
  numbers.map{|num|num + 2}
end

numbers = [1,2,3,4,5]
numbers_plus_two(numbers)




## Problem 3
=begin

Given the following schema and code:
schema.sql:
CREATE TABLE teachers(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

=end
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  database: "w04d01"
)

class Teacher < ActiveRecord::Base
  has_many :students
end

class Student < ActiveRecord::Base
  belongs_to :teacher
end

=begin
3.A) Create a teacher object and save it to a variable.
adam = Teacher.create(name: "Adam")
3.B) Create two students that belong to the teacher object you created in 3.A.
adam.students.create(name: "bob")
adam.students.create(name: "tom")
3.C) Puts the names of all students that belong to the variable you created in 3.A.
adam.students.each do |student|
  puts student.name
end
=end




## Problem 4
=begin
Define a method that accepts 3 arguments and always returns false.

def method_name(arg1, arg2, arg3)
  false
end
=end
