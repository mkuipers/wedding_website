require 'spec_helper'

describe "invitations/edit" do
  before(:each) do
    @invitation = assign(:invitation, stub_model(Invitation,
      :address => "MyString",
      :song_suggestion => "MyString",
      :attending => false
    ))
  end

  it "renders the edit invitation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => invitations_path(@invitation), :method => "post" do
      assert_select "input#invitation_address", :name => "invitation[address]"
      assert_select "input#invitation_song_suggestion", :name => "invitation[song_suggestion]"
      assert_select "input#invitation_attending", :name => "invitation[attending]"
    end
  end
end
