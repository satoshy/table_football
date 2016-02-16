require 'rails_helper'

RSpec.describe "matches/new", type: :view do
  before(:each) do
    assign(:match, Match.new(
      :name => "MyString",
      :stage_type => 1
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_name[name=?]", "match[name]"

      assert_select "input#match_stage_type[name=?]", "match[stage_type]"
    end
  end
end
