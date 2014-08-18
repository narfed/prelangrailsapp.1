require 'rails_helper'

RSpec.describe "program_models/new", :type => :view do
  before(:each) do
    assign(:program_model, ProgramModel.new(
      :name => "MyString"
    ))
  end

  it "renders new program_model form" do
    render

    assert_select "form[action=?][method=?]", program_models_path, "post" do

      assert_select "input#program_model_name[name=?]", "program_model[name]"
    end
  end
end
