require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :Name => "Name",
        :Email => "Email",
        :DateOfBirth => "Date Of Birth",
        :Bio => "Bio",
        :Age => 1
      ),
      stub_model(User,
        :Name => "Name",
        :Email => "Email",
        :DateOfBirth => "Date Of Birth",
        :Bio => "Bio",
        :Age => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Date Of Birth".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
