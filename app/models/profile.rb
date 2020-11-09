class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :experience

  belongs_to :user

  has_one_attached :image

  with_options presence: true do
    validates :text
    validates :category_id, numericality: { other_than: 0 }
  end

  def was_attached?
    image.attached?
  end
end
