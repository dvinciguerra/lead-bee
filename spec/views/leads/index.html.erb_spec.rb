require 'rails_helper'

RSpec.describe "leads/index", type: :view do
  before(:each) do
    assign(:leads, [
      Lead.create!(
        :name => "Name",
        :email => "Email",
        :age => 2,
        :job => "Job"
      ),
      Lead.create!(
        :name => "Name",
        :email => "Email",
        :age => 2,
        :job => "Job"
      )
    ])
  end

  it "renders a list of leads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
  end
end
