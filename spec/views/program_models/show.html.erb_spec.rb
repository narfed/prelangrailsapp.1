require 'rails_helper'

RSpec.describe "program_models/show", :type => :view do
  before(:each) do
    @program_model = assign(:program_model, ProgramModel.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
