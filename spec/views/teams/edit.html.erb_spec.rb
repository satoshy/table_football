require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :first_player => 1,
      :second_player => 1
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_first_player[name=?]", "team[first_player]"

      assert_select "input#team_second_player[name=?]", "team[second_player]"
    end
  end
end
