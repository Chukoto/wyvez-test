class Papa < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :age_id
  belongs_to_active_hash :marriage_id
  belongs_to_active_hash :child_id

  belongs_to :user

  validates :memo, presence: false

  with_options presence: true do
    validates :name
    validates :age_id, numericality: { other_than: 0 }
    validates :marriage_id, numericality: { other_than: 0 }
    validates :child_id, numericality: { other_than: 0 }
  end
end
