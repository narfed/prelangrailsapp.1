require 'rails_helper'

RSpec.describe "attendees/new", :type => :view do
  before(:each) do
    assign(:attendee, Attendee.new(
      :name => "MyString",
      :allergies => "MyString",
      :special_needs => "MyString",
      :age => 1,
      :program_segment => nil,
      :emmergencycontactphone => "MyString",
      :media_release => false,
      :registrant => nil
    ))
  end

  it "renders new attendee form" do
    render

    assert_select "form[action=?][method=?]", attendees_path, "post" do

      assert_select "input#attendee_name[name=?]", "attendee[name]"

      assert_select "input#attendee_allergies[name=?]", "attendee[allergies]"

      assert_select "input#attendee_special_needs[name=?]", "attendee[special_needs]"

      assert_select "input#attendee_age[name=?]", "attendee[age]"

      assert_select "input#attendee_program_segment_id[name=?]", "attendee[program_segment_id]"

      assert_select "input#attendee_emmergencycontactphone[name=?]", "attendee[emmergencycontactphone]"

      assert_select "input#attendee_media_release[name=?]", "attendee[media_release]"

      assert_select "input#attendee_registrant_id[name=?]", "attendee[registrant_id]"
    end
  end
end
