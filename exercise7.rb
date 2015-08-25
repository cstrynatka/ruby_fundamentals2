students = Hash.new("students")

students = { :cohort1 => 34, :cohort2 => 42, :cohort3 => 22 }

students[:cohort4] = 43

puts students.keys.inspect
puts students.values.inspect

def cohorts(students)
	students.each do |cohort, amount|
		puts "#{cohort}: #{amount} students"
	end
end

students.each do |cohort, amount|
	amount = (amount * 1.05)
	puts "#{cohort}: #{amount} students"
end

students.delete(:cohort2)

puts students





