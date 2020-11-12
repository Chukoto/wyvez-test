class PapaEvent < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :start_time
  belongs_to_active_hash :end_time
  belongs_to_active_hash :action
  belongs_to_active_hash :status

  belongs_to :user
  belongs_to :papa_event

  with_options presence: false do
    validates :end_time_id, numericality: { other_than: 0 }
    validates :todo
    validates :place
    validates :reward
  end

  with_options presence: true do
    validates :date
    validates :start_time_id, numericality: { other_than: 0 }
    validates :action_id, numericality: { other_than: 0 }
    validates :expected_reward
    validates :status_id, numericality: { other_than: 0 }
  end
end
