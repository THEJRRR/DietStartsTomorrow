require 'spec_helper'

describe "user_posts/new" do
  before(:each) do
    assign(:user_post, stub_model(UserPost,
      :post => "MyString",
      :time => "MyString"
    ).as_new_record)
  end

  it "renders new user_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_posts_path, "post" do
      assert_select "input#user_post_post[name=?]", "user_post[post]"
      assert_select "input#user_post_time[name=?]", "user_post[time]"
    end
  end
end
