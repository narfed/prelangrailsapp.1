require 'rails_helper'

RSpec.describe "attendees/show", :type => :view do
  before(:each) do
    @attendee = assign(:attendee, Attendee.create!(
      :name => "Name",
      :allergies => "Allergies",
      :special_needs => "Special Needs",
      :age => 1,
      :program_segment => nil,
      :emmergencycontactphone => "Emmergencycontactphone",
      :media_release => false,
      :registrant => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Allergies/)
    expect(rendered).to match(/Special Needs/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Emmergencycontactphone/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
