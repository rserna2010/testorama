class Menu < ActiveRecord::Base
  validates :name, :presence => true
  validates :start_at, :presence => true
  has_many :menu_items

  before_save :titilize_title

  private
  def titilize_title
    self.name.gsub! '-', ' '
  end
end
