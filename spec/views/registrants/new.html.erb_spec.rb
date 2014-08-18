require 'rails_helper'

RSpec.describe "registrants/new", :type => :view do
  before(:each) do
    assign(:registrant, Registrant.new())
  end

  it "renders new registrant form" do
    render

    assert_select "form[action=?][method=?]", registrants_path, "post" do
    end
  end
end
