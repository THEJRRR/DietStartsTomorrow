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
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_dob[name=?]", "user[dob]"
      assert_select "input#user_bio[name=?]", "user[bio]"
      assert_select "input#user_age[name=?]", "user[age]"
    end
  end
end
