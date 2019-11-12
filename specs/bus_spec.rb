require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class TestBus < MiniTest::Test
  def setup
    @passenger1 = Person.new("John", 40)
    @passenger2 = Person.new("Jane", 35)
    @bus = Bus.new(22, "Paisley")
  end

  def test_drive
    result = @bus.drive("Brum brum")
    assert_equal("Brum brum", result)
  end

  def test_passenger_count()
    assert_equal(0,@bus.passenger_count)
  end

  def test_pick_up
    @bus.pick_up(@passenger1)
    assert_equal(1,@bus.passenger_count)
  end

  def test_drop_off
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger2)
    assert_equal(0,@bus.passenger_count)
  end

  def test_empty_bus
    @bus.empty_bus
    assert_equal(0,@bus.passenger_count)
  end

end
