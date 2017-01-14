class Like < ApplicationRecord
  belongs_to :book

  validates :quality, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

end
