require 'minitest/autorun'
require 'minitest/pride'
require './lib/printer'


class PrinterTest < Minitest::Test
  def setup
    @printer = Printer.new
  end

  def test_it_exists
    assert_instance_of Printer, @printer
  end

  def test_it_can_print_welcome_message
    spacer = "________________________________________________________________________________________________________________________________"
    welcome = "Welcome to NEO. Here you will find information about how many meteors, asteroids, comets pass by the earth every day. \nEnter a date below to get a list of the objects that have passed by the earth on that day."
    date = "Please enter a date in the following format YYYY-MM-DD."
    twin_carrots = ">>"
    assert_equal spacer, @printer.spacer
    assert_equal welcome, @printer.welcome
    assert_equal date, @printer.date
    assert_equal twin_carrots, @printer.twin_carrots
  end
end