require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    @lists = [FactoryGirl.create(:list, id: 1)]
    assign(:item, Item.new(
      :name => "MyString",
      :url => "MyText",
      :description => "MyText",
      :important => false,
      :list_id => 1,
      user_id: 1
    ))
    assign_ability
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_url[name=?]", "item[url]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_important[name=?]", "item[important]"

      assert_select "select#item_list_id[name=?]", "item[list_id]"
    end
  end
end
