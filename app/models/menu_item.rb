class MenuItem < ActiveRecord::Base
  belongs_to :menu
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :menu, :presence => true

  before_save :capitalize

  private
  def capitalize  
    self.name.upcase!
  end


end
