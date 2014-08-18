require 'rails_helper'

RSpec.describe "program_segments/show", :type => :view do
  before(:each) do
    @program_segment = assign(:program_segment, ProgramSegment.create!(
      :name => "Name",
      :cost => "9.99",
      :capacity => 1,
      :enrolled => 2,
      :program_model => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
