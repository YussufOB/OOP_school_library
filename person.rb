require_relative 'nameable'
require_relative 'capitalise_dec'
require_relative 'trimmer_dec'
require_relative 'rental'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_writer :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  private :of_age?

  def of_age?
    @age >= 18
  end

  def rent(date, book)
    Rental.new(date, book, self)
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
