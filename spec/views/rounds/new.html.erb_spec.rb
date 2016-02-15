require 'rails_helper'

RSpec.describe "rounds/new", type: :view do
  before(:each) do
    assign(:round, Round.new(
      :name => "MyString",
      :round_type => 1,
      :tournament => nil
    ))
  end

  it "renders new round form" do
    render

    assert_select "form[action=?][method=?]", rounds_path, "post" do

      assert_select "input#round_name[name=?]", "round[name]"

      assert_select "input#round_round_type[name=?]", "round[round_type]"

      assert_select "input#round_tournament_id[name=?]", "round[tournament_id]"
    end
  end
end
