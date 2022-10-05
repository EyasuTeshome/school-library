require_relative 'decorate'
class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = Nameable.new
  end

  def age_verify
    of_age? || @parent_permission
  end

  def validate_name
    @name = @nameable.correct_name(@name)
  end

  private

  def of_age?
    @age >= 18
  end
end
