require 'rails_helper'

RSpec.describe "registrants/index", :type => :view do
  before(:each) do
    assign(:registrants, [
      Registrant.create!(),
      Registrant.create!()
    ])
  end

  it "renders a list of registrants" do
    render
  end
end
