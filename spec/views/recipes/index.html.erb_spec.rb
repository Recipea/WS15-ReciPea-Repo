require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :name => "Name",
        :description => "Description"
      ),
      Recipe.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
