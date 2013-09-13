require 'spec_helper'
describe MenuItem do
  let(:menu_item) { FactoryGirl.build :menu_item}
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :price }
    it { should validate_presence_of :menu }
  end

  context "associations" do
     it { should belong_to :menu }
  end

  context "#name" do
    it "capitalizes all letters in the menu item name" do
      menu_item.name = "pizza"
      expect {
        menu_item.save
      }.to change {menu_item.name}.from("pizza").to("PIZZA")
    end
  end
end
