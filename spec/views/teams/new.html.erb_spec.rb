require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      :name => "MyString",
      :first_player => 1,
      :second_player => 1
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_first_player[name=?]", "team[first_player]"

      assert_select "input#team_second_player[name=?]", "team[second_player]"
    end
  end
end
