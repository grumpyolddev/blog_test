require 'test_helper'


class ChefTest < ActiveSupport::TestCase

  def setup
  end
  
  test "Chef should be valid" do
    chef = Chef.new(name: "name 1", email: "chef1@chefs.com")
    assert chef.valid?
  end  
  
  test "name should be present" do
    chef = Chef.new( email: "chef1@chefs.com")
    assert_not chef.valid?
  end
  
  test "email should be present" do
    chef = Chef.new(name: "name 2")
    assert_not chef.valid?
  end

  test "email should be valid" do
    chef = Chef.new(name: "chef 3", email: "chef1@chefs")
    assert_not chef.valid?
  end

end