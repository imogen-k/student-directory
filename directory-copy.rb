
def input_students
  puts "Please enter the name of a student."
  students = []
  name = gets.chomp
  puts "What cohort is #{name} in?"
  cohort = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    puts "Enter the next student name please."
    name = gets.chomp
    puts "What cohort is #{name} in?"
    cohort = gets.chomp
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
      if student[:cohort] == ""
        puts "#{student[:name]} (November cohort.)"
      else
        puts "#{student[:name]} (#{student[:cohort]} cohort.)"
      end
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
