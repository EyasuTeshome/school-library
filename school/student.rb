require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, _name, _parent_permission, classroom = nil)
    super(age, name: 'unknown', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.students.include?(self)
  end
end
