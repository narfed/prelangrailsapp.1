require 'rails_helper'

RSpec.describe "registrants/edit", :type => :view do
  before(:each) do
    @registrant = assign(:registrant, Registrant.create!())
  end

  it "renders the edit registrant form" do
    render

    assert_select "form[action=?][method=?]", registrant_path(@registrant), "post" do
    end
  end
end
