require 'rails_helper'

RSpec.describe "todos/index", :type => :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        :list => nil
      ),
      Todo.create!(
        :list => nil
      )
    ])
  end

  it "renders a list of todos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
