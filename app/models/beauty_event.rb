class BeautyEvent < ApplicationRecord

  belongs_to :user

  with_options presence: false do
    validates :place
    validates :memo
    validates :cost
  end

  with_options presence: true do
    validates :beauty_cate_id
    validates :started_at
    validates :status_id, numericality: { other_than: 0 }
  end
end
