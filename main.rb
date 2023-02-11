require_relative 'person'

person = Person.new(22, 'olamilekansi')
person.correct_name
CapitalizedPerson = CapitalizeDecorator.new(person)
CapitalizedPerson.correct_name
CapitalizedTrimmedPerson = TrimmerDecorator.new(CapitalizedPerson)
CapitalizedTrimmedPerson.correct_name

puts(person.correct_name)
puts(CapitalizedPerson.correct_name)
puts(CapitalizedTrimmedPerson.correct_name)
