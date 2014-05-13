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
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_dob[name=?]", "user[dob]"
      assert_select "input#user_bio[name=?]", "user[bio]"
      assert_select "input#user_age[name=?]", "user[age]"
    end
  end
end
