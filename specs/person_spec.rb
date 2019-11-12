require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class TestPerson < MiniTest::Test
  def setup
    @person = Person.new("John", 40)
    @new_person = Person.new("Jane", 35)
  end



end
