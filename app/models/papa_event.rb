class PapaEvent < ApplicationRecord
  #後でactive_hashを追加すること
  
  belongs_to :user
  belongs_to :papa

  with_options presence: false do
    validates :finished_at
    validates :todo
    validates :place
    validates :reward
  end

  with_options presence: true do
    validates :date
    validates :started_at
    validates :expected_reward
  end
end
