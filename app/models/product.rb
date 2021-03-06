class Product < ActiveRecord::Base
  # validations
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :title, :length => { :minimum => 10 }
  validates :image_url, allow_blank: true, format: {
    with:     %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL or GIF, JPG or PNG image.'
  }
end