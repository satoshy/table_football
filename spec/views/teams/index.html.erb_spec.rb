require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :name => "Name",
        :first_player => 1,
        :second_player => 2
      ),
      Team.create!(
        :name => "Name",
        :first_player => 1,
        :second_player => 2
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
