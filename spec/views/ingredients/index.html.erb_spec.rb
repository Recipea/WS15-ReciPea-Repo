require 'rails_helper'

RSpec.describe "ingredients/index", type: :view do
  before(:each) do
    assign(:ingredients, [
      Ingredient.create!(
        :recipe_id => "Recipe",
        :name => "Name"
      ),
      Ingredient.create!(
        :recipe_id => "Recipe",
        :name => "Name"
      )
    ])
  end

  it "renders a list of ingredients" do
    render
    assert_select "tr>td", :text => "Recipe".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
