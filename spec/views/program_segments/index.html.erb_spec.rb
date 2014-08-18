require 'rails_helper'

RSpec.describe "program_segments/index", :type => :view do
  before(:each) do
    assign(:program_segments, [
      ProgramSegment.create!(
        :name => "Name",
        :cost => "9.99",
        :capacity => 1,
        :enrolled => 2,
        :program_model => nil
      ),
      ProgramSegment.create!(
        :name => "Name",
        :cost => "9.99",
        :capacity => 1,
        :enrolled => 2,
        :program_model => nil
      )
    ])
  end

  it "renders a list of program_segments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
