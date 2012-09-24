require 'spec_helper'

describe "invitations/index" do
  before(:each) do
    assign(:invitations, [
      stub_model(Invitation,
        :address => "Address",
        :song_suggestion => "Song Suggestion",
        :attending => false
      ),
      stub_model(Invitation,
        :address => "Address",
        :song_suggestion => "Song Suggestion",
        :attending => false
      )
    ])
  end

  it "renders a list of invitations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Song Suggestion".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
