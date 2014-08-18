require 'rails_helper'

RSpec.describe "attendees/index", :type => :view do
  before(:each) do
    assign(:attendees, [
      Attendee.create!(
        :name => "Name",
        :allergies => "Allergies",
        :special_needs => "Special Needs",
        :age => 1,
        :program_segment => nil,
        :emmergencycontactphone => "Emmergencycontactphone",
        :media_release => false,
        :registrant => nil
      ),
      Attendee.create!(
        :name => "Name",
        :allergies => "Allergies",
        :special_needs => "Special Needs",
        :age => 1,
        :program_segment => nil,
        :emmergencycontactphone => "Emmergencycontactphone",
        :media_release => false,
        :registrant => nil
      )
    ])
  end

  it "renders a list of attendees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Allergies".to_s, :count => 2
    assert_select "tr>td", :text => "Special Needs".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Emmergencycontactphone".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
