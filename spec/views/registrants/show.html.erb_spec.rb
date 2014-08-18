require 'rails_helper'

RSpec.describe "registrants/show", :type => :view do
  before(:each) do
    @registrant = assign(:registrant, Registrant.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
