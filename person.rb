require_relative 'nameable'
require_relative 'capitalise_dec'
require_relative 'trimmer_dec'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def rent(date, book)
    Rental.new(date, book, self)
  end

  def can_use_services?
    is_of_age? && parent_permission
  end

  private
  
  def of_age?
    @age >= 18
  end
end
