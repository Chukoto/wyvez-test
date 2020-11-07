class Question < ApplicationRecord
  
  belongs_to :user

  with_options presence: true do
    validates :category_id, numericality: { other_than: 0 }
    validates :title
    validates :text
  end
end
