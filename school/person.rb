class Person

  def start(name = 'unknown', age, parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age =age
    @parent_permission = true
  end

  def ageVerify
    is_of_age? || @parent_permission
  end

  private

  def is_of_age?
    @age >= 18
  end

end
