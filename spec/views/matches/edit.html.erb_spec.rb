require 'rails_helper'

RSpec.describe "matches/edit", type: :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :name => "MyString",
      :stage_type => 1
    ))
  end

  it "renders the edit match form" do
    render

    assert_select "form[action=?][method=?]", match_path(@match), "post" do

      assert_select "input#match_name[name=?]", "match[name]"

      assert_select "input#match_stage_type[name=?]", "match[stage_type]"
    end
  end
end
