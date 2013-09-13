require 'spec_helper'
describe "Menu Items Controller" do
   let!(:menu_item) { FactoryGirl.create :menu_item }
  context "show menu item" do
    it "dispalys the name" do
      get "/menu_items/#{menu_item.id}"
      expect(last_response.body).to include(menu_item.name)
    end

    it "displays the description" do
      get "/menu_items/#{menu_item.id}"
      expect(last_response.body).to include(menu_item.description)
    end

    it "dispalys the price" do
      get "/menu_items/#{menu_item.id}"
      expect(last_response.body).to include(menu_item.price.to_s)
    end
    
    it "dispalys the menu name it belongs to" do
      get "/menu_items/#{menu_item.id}"
      expect(last_response.body).to include(Menu.find(menu_item.menu_id).name)
    end
  end

  context "create menu item" do
    it "creates a menu with valid attributes" do
      
    it "doesn't create a menu with invalid attributes"
    it "shows errors saving the menu Items"
  end
end
