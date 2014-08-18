require 'rails_helper'

RSpec.describe "program_models/index", :type => :view do
  before(:each) do
    assign(:program_models, [
      ProgramModel.create!(
        :name => "Name"
      ),
      ProgramModel.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of program_models" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
