require 'spec_helper'

describe "guests/index" do
  before(:each) do
    assign(:guests, [
      stub_model(Guest,
        :first_name => "First Name",
        :last_name => "Last Name",
        :invite_id => 1,
        :address => "Address"
      ),
      stub_model(Guest,
        :first_name => "First Name",
        :last_name => "Last Name",
        :invite_id => 1,
        :address => "Address"
      )
    ])
  end

  it "renders a list of guests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
