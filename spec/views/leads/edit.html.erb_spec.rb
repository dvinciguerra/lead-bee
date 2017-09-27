require 'rails_helper'

RSpec.describe "leads/edit", type: :view do
  before(:each) do
    @lead = assign(:lead, Lead.create!(
      :name => "MyString",
      :email => "MyString",
      :age => 1,
      :job => "MyString"
    ))
  end

  it "renders the edit lead form" do
    render

    assert_select "form[action=?][method=?]", lead_path(@lead), "post" do

      assert_select "input[name=?]", "lead[name]"

      assert_select "input[name=?]", "lead[email]"

      assert_select "input[name=?]", "lead[age]"

      assert_select "input[name=?]", "lead[job]"
    end
  end
end
