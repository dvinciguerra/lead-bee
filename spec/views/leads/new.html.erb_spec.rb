require 'rails_helper'

RSpec.describe "leads/new", type: :view do
  before(:each) do
    assign(:lead, Lead.new(
      :name => "MyString",
      :email => "MyString",
      :age => 1,
      :job => "MyString"
    ))
  end

  it "renders new lead form" do
    render

    assert_select "form[action=?][method=?]", leads_path, "post" do

      assert_select "input[name=?]", "lead[name]"

      assert_select "input[name=?]", "lead[email]"

      assert_select "input[name=?]", "lead[age]"

      assert_select "input[name=?]", "lead[job]"
    end
  end
end
