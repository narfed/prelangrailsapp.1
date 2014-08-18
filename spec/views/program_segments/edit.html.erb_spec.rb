require 'rails_helper'

RSpec.describe "program_segments/edit", :type => :view do
  before(:each) do
    @program_segment = assign(:program_segment, ProgramSegment.create!(
      :name => "MyString",
      :cost => "9.99",
      :capacity => 1,
      :enrolled => 1,
      :program_model => nil
    ))
  end

  it "renders the edit program_segment form" do
    render

    assert_select "form[action=?][method=?]", program_segment_path(@program_segment), "post" do

      assert_select "input#program_segment_name[name=?]", "program_segment[name]"

      assert_select "input#program_segment_cost[name=?]", "program_segment[cost]"

      assert_select "input#program_segment_capacity[name=?]", "program_segment[capacity]"

      assert_select "input#program_segment_enrolled[name=?]", "program_segment[enrolled]"

      assert_select "input#program_segment_program_model_id[name=?]", "program_segment[program_model_id]"
    end
  end
end
