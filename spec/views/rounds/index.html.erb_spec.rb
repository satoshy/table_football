require 'rails_helper'

RSpec.describe "rounds/index", type: :view do
  before(:each) do
    assign(:rounds, [
      Round.create!(
        :name => "Name",
        :round_type => 1,
        :tournament => nil
      ),
      Round.create!(
        :name => "Name",
        :round_type => 1,
        :tournament => nil
      )
    ])
  end

  it "renders a list of rounds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
