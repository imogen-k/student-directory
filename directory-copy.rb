
def input_students
  puts "Please enter the name of a student."
  puts "To finish, just hit return twice."
  students = []
  name = gets.chomp
  puts "What hobbies does #{name} have?"
  hobbies = gets.chomp
  puts "Where was #{name} born?"
  birthplace = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: hobbies, birthplace: birthplace}
    puts "Now we have #{students.count} students"
    puts "Please enter the name of the next student."
    name = gets.chomp
    puts "What hobbies does #{name} have?"
    hobbies = gets.chomp
    puts "Where was #{name} born?"
    birthplace = gets.chomp
  end
  students
end


def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  count = 0
  while count < students.length
    students.each do |student|
      count += 1
      puts "#{student[:name]} (#{student[:cohort]} cohort.) This student likes #{student[:hobbies]}. Born in #{student[:birthplace]}"
    end
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
