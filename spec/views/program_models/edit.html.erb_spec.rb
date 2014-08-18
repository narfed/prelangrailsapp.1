require 'rails_helper'

RSpec.describe "program_models/edit", :type => :view do
  before(:each) do
    @program_model = assign(:program_model, ProgramModel.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit program_model form" do
    render

    assert_select "form[action=?][method=?]", program_model_path(@program_model), "post" do

      assert_select "input#program_model_name[name=?]", "program_model[name]"
    end
  end
end
