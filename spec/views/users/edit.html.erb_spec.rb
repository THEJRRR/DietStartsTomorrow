require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :Name => "MyString",
      :Email => "MyString",
      :DateOfBirth => "MyString",
      :Bio => "MyString",
      :Age => 1
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_Name[name=?]", "user[Name]"
      assert_select "input#user_Email[name=?]", "user[Email]"
      assert_select "input#user_DateOfBirth[name=?]", "user[DateOfBirth]"
      assert_select "input#user_Bio[name=?]", "user[Bio]"
      assert_select "input#user_Age[name=?]", "user[Age]"
    end
  end
end
