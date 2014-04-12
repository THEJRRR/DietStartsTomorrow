require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :Name => "Name",
      :Email => "Email",
      :DateOfBirth => "Date Of Birth",
      :Bio => "Bio",
      :Age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Date Of Birth/)
    rendered.should match(/Bio/)
    rendered.should match(/1/)
  end
end
