class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :trans_exp
  belongs_to_active_hash :papa_exp

  belongs_to :user

  has_one_attached :image

  validates :text, presence: false

  with_options presence: true do
    validates :trans_exp_id, numericality: { other_than: 0 }
    validates :papa_exp_id, numericality: { other_than: 0 }
  end

  def was_attached?
    image.attached?
  end
end
