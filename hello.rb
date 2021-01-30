#https://www.youtube.com/watch?v=t_ispmWmdjY

#Install code runner
#https://stackoverflow.com/questions/54917999/how-do-i-execute-a-ruby-script-using-vscode

#printing to screen
#puts has same functionality except it prints out a new line afterwards
#print has everything on the same line

=begin

puts "Test"
puts "Hello World"
print "Hello World"
print " Concatenate"

=end


#line by line execution
=begin

puts "   /"
puts "  /|"
puts " /_|"
puts "/__|"

=end

#variables
=begin

character_name = "John"
character_age = "35"

puts ("There once was a man named " + character_name)
puts ("he was 70 years old")
#can modify variable val throughout the program
character_name = "Tom"
puts ("He really liked the name " + character_name)
puts ("but didn't like being " + character_age)

=end


########Data Types


=begin
#Strings
name = "Mike"

#Integers
age = 75

#Floating Point
gpa = 3.25

#boolean
ismale = true
istall = false

#nil means there is no value
flaws = nil
=end



######Working with Strings
#String Methods
#https://www.rubyguides.com/2018/01/ruby-string-methods/



#Adding a quotation mark with \""
#Add new line with \n
#puts "Giraffe\n Academy"

=begin
#accesing methods with .methodname()
phrase = "Giraffe Academy"
puts phrase.upcase() #capitalize strings
puts phrase.downcase() #lowercase
#strip deletes leading and trailing spaces
phrase_to_strip = "   Giraffe Acadmey"
puts phrase.strip()
#length of strings
puts phrase.length()
#searching for a substring
puts phrase.include? "Academys" #returns a boolean
#indexing
puts phrase[0]
#indexing a range of characters
puts phrase[0,2]
#Finding index of a certain char
puts phrase.index("A")
=end



######Integers
#https://www.freecodecamp.org/news/ruby-number-methods-integer-and-float-methods-with-examples/


=begin
puts 5
puts -5.34
puts 5 + 9
puts (5+9)
puts 2**3 #exponential
#modulus (remainder)
puts 10 % 3
num = 20
puts num

#Casting num to string
puts ("my fav num " + num.to_s)

#Integer Methods
num = -20
puts num.abs()
num = 20.687
puts num.round()
puts num.ceil()
puts num.floor()


#integer operation integer => integer
puts 10 / 7
#is different from
puts 10.0 / 7.0
=end





######Getting user input


=begin
puts "Enter Your Name: "
name = gets.chomp() #special command to capture ruby user input
puts "Enter Your Age: "
age = gets.chomp() #special command to capture ruby user input
puts ("Hello " + name + ", nice to meet you!" + " you are " + age) #new line witout chomp


#Example with adding two numbers user input
#Immediately converts info to a string, make sure to cast to integer
puts "Enter a number: "
num1 = gets.chomp()
puts "Enter another number: "
num2 = gets.chomp()
#Casting String to Integer, still not accounting for floats however, so cast to a float
puts (num1.to_f + num2.to_f)

=end







#####CLI Example: Mad Libs Game

#Want color, plural_noun, celebrity
=begin
puts "Enter a color: "
color = gets.chomp()
puts "Enter a plural noun: "
plural_noun = gets.chomp()
puts "Enter a celebrity: "
celebrity = gets.chomp()

puts ("Roses are " + color)
puts (plural_noun + " are blue")
puts ("I love " + celebrity)
=end




#######Arrays
#Can have different data types in the same array
#friends = Array["Kevin", "Karen", "Oscar", false]


=begin
friends = Array["Kevin", "Karen", "Oscar"]
puts friends[0]
puts friends[0,2] #up to 2 but not 2 included

#modifying value in array
friends [0] = "Dwight"
puts friends

#Initiliazing empty array
items = Array.new
items[0] = "pan"
items[1] = "mop"
puts items



#Array methods
puts friends.length() #length of array
puts friends.reverse() #reversing an array
puts friends.sort() #alphabetically sort

=end





##############Hashes
#Key Value, python dictionary equivalent
#Always have unique keys

=begin
states = {
    1 => "PA",
    "New York" => "NY",
    "Oregon" => "OR"
}


puts states["New York"] #maps to NY
puts states[1]
=end




###############Methods



=begin
def sayHi(name, age)
    puts ("Hello " + name + ", you are " + age.to_s)
end

#puts "Top"
sayHi("Mike", 30) #calling method
#puts "Bottom"


#returning a value
def cube(num)
    #can return multiple values
    return num * num * num, 70
    #code after puts keyword does not get printed
    #puts "Hello"
end

puts cube(2)[1]
=end







#############
#Conditionals
#############


=begin
isMale = false
isTall = false

if isMale and isTall
    puts "You are a tall male"
#! is not (negation operator)
elsif isMale and !isTall
    puts "You are a short male"
elsif !isMale and isTall
    puts "You are not male but are tall"
else
    puts "You are neither male or tall"
end
=end



#Comparision Operators
#!= not equal
#== equal

=begin
def max(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
        return num1
    elsif num2 >= num1 and num2 >= num3
        return num2
    else
        return num3
    end
end


puts max(5,4,3)
puts max(1,2,3)
puts max(1,20,3)
=end







################
#Building a Calculator Example
################


=begin
puts "Enter first number: "
num1 = gets.chomp().to_f
puts "Enter operator: "
op = gets.chomp()
puts "Enter second number: "
num2 = gets.chomp().to_f


if op == "+"
    puts (num1 + num2)
elsif op == "-"
    puts (num1 - num2)
elsif op == "/"
    puts (num1 / num2)
elsif op == "*"
    puts (num1 * num2)
else
    puts "Invalid Operator"
end

=end






################
#Case Expressions
################

#Same comparision with different value easier to use case expressions

=begin
def get_day_name(day)
    day_name = ""

    case day
    when "mon"
        day_name = "Monday"
    when "tue"
        day_name = "Tuesday"
    when "wed"
        day_name = "Wednesday"
    when "thurs"
        day_name = "Thursday"
    when "fri"
        day_name = "Friday"
    when "sat"
        day_name = "Saturday"
    when "sun"
        day_name = "Sunday"
    else
        day_name = "Invalid abbreviation"
    end

    return day_name
end


puts get_day_name("dsaas")
=end





################
#While Loops
################

#code executes as long as the condition is true
#+= instead of ++


=begin
index = 1
while index <= 5
    puts index
    index += 1
end
=end






############
#Guessing Game Example
############

=begin
secret_word = "giraffe"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != secret_word and !out_of_guesses
    puts "Enter guess: "
    if guess_count < guess_limit
        guess = gets.chomp()
        guess_count +=1
    else
        out_of_guesses = true
    end
end

if out_of_guesses
    puts "You lose"
else
    puts "You win"
end
=end







############
#For Loops
############


=begin
#Iterating Arrays
friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]
#puts friends[1]

for friend in friends
    puts friend
end

#Same way of repeating prior loop
friends.each do |friend|
    puts friends
end


#Iterate over a range of numbers
for index in 0..5
    puts index
end

6.times do |index|
    puts index
end
=end




############
#Exponent Method Example Iteration
############


=begin
def pow(base_num, pow_num)
    result = 1
    pow_num.times do |index|
        result = result * base_num
    end
    return result
end

puts pow(2,3)
=end





############
#Reading Files
############


#storing the file in a variable called file
=begin
File.open("test.txt", "r") do |file|
    puts file.read()
end
=end




############
#Writing Files
############


=begin
#Appending to a file
#File.open("test.txt", "a") do |file|
 #   file.write("\nOscar, Accounting")
#end


#Writing to a file let's you modify and overwrite a file
File.open("test.txt", "w") do |file|
    file.write("\n Oscar, Accounting")
end

#Creating a new file (ex: can make an HTML file)
File.open("index.html", "w") do |file|
    file.write("<h1>Hello</h1>")
end

#Reading and writing a file with r+
File.open("test.txt", "r+") do |file|
    file.readline()
    #cursor is now at second line of file
    #file.readchar() for char 
    file.write("overridden")
end


=end





############
#Handling Errors
############


=begin
lucky_nums = [4,8,15,16,23,42]
#lucky_nums["dog"]
#num = 10 / 0


begin
    #code we think will throw an error
    lucky_nums["dog"]
    #num = 10 / 0
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError => e
    puts e #store the exception thrown
    puts "Wrong Type"
end
=end






############
#Classes & Objects & Initialize Method (Constructor) & Object Methods
############


=begin
class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages    
    end
end

book1 = Book.new("PJackson", "Rick", "200")
book2 = Book.new("Harry Potter", "Rowling", "300")
puts book1.title
puts book2.author

=begin

#####Without initialize method
book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400

puts book1.title
puts book1.author
puts book1.pages

book2 = Book.new()
book2.title = "Lord of the Rings"
book2.author = "Tolkein"
book2.pages = 500

puts book2.title
puts book2.author
puts book2.pages
=end






############
#Classes Methods
############


=begin
class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    def has_honors
        if @gpa >= 3.5
            return true
        end
        return false
    end
end


student1 = Student.new("Mars", "CS", 2.6)
student2 = Student.new("Jim", "Stat", 3.9)

puts student1.has_honors
puts student2.has_honors

=end






############
#Inheritance
############


=begin
#superclass
class Chef
    def make_chicken
        puts "The chef makes chicken"
    end

    def make_salad
        puts "The chef makes salad"
    end

    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end


#subclass
#inherits superclass methods
class ItalianChef < Chef
    #override
    def make_special_dish
        puts "The chef makes eggplant parm"
    end
    def make_pasta
        puts "The chef makes pasta"
    end
end

chef = Chef.new()
chef.make_chicken
chef.make_special_dish

italian_chef = ItalianChef.new() #no new methods implemented
italian_chef.make_salad 
italian_chef.make_special_dish
italian_chef.make_pasta
=end




############
#Modules access other rb file in directory
############

#To access tools module
require_relative "useful_tools.rb"
include Tools

Tools.sayhi("mike")




#Enter IRB for interactive ruby in CLI