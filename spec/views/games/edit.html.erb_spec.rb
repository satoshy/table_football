require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :name => "MyString",
      :tournamet => nil
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_name[name=?]", "game[name]"

      assert_select "input#game_tournamet_id[name=?]", "game[tournamet_id]"
    end
  end
end
