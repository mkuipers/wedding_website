require 'spec_helper'

describe "invitations/new" do
  before(:each) do
    assign(:invitation, stub_model(Invitation,
      :address => "MyString",
      :song_suggestion => "MyString",
      :attending => false
    ).as_new_record)
  end

  it "renders new invitation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitations_path, :method => "post" do
      assert_select "input#invitation_address", :name => "invitation[address]"
      assert_select "input#invitation_song_suggestion", :name => "invitation[song_suggestion]"
      assert_select "input#invitation_attending", :name => "invitation[attending]"
    end
  end
end
