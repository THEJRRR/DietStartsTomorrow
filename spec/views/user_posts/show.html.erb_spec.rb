require 'spec_helper'

describe "user_posts/show" do
  before(:each) do
    @user_post = assign(:user_post, stub_model(UserPost,
      :post => "Post",
      :time => "Time"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Post/)
    rendered.should match(/Time/)
  end
end
