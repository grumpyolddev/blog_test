require 'test_helper'


class RecipeTest < ActiveSupport::TestCase

  def setup
  end
  
  test "recipe should be valid" do
    recipe = Recipe.new(name: "name 1", summary: "summary 1", description: "desc 1")
    assert recipe.valid?
  end  
  
  test "name should be present" do
    recipe = Recipe.new( summary: "summary 1", description: "desc 1")
    assert_not recipe.valid?
  end
  
  test "summary should be present" do
    recipe = Recipe.new(name: "name 2", description: "description 2")
    assert_not recipe.valid?
  end

  test "name should not be longer than 20 characters" do
    recipe = Recipe.new(name: "a"*21, summary:"summary 3", description: "description 3")
    assert_not recipe.valid?
  end

end