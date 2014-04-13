require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :Name => "MyString",
      :Email => "MyString",
      :DateOfBirth => "MyString",
      :Bio => "MyString",
      :Age => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_Name[name=?]", "user[Name]"
      assert_select "input#user_Email[name=?]", "user[Email]"
      assert_select "input#user_DateOfBirth[name=?]", "user[DateOfBirth]"
      assert_select "input#user_Bio[name=?]", "user[Bio]"
      assert_select "input#user_Age[name=?]", "user[Age]"
    end
  end
end