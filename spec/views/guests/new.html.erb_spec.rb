require 'spec_helper'

describe "guests/new" do
  before(:each) do
    assign(:guest, stub_model(Guest,
      :first_name => "MyString",
      :last_name => "MyString",
      :invite_id => 1,
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => guests_path, :method => "post" do
      assert_select "input#guest_first_name", :name => "guest[first_name]"
      assert_select "input#guest_last_name", :name => "guest[last_name]"
      assert_select "input#guest_invite_id", :name => "guest[invite_id]"
      assert_select "input#guest_address", :name => "guest[address]"
    end
  end
end
