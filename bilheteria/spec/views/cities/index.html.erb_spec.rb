require 'rails_helper'

RSpec.describe "cities/index", type: :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        :name => "Name",
        :state => 2
      ),
      City.create!(
        :name => "Name",
        :state => 2
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
