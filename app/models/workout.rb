class Workout < ApplicationRecord
    # belongs_to :category
    has_many :user_workouts, dependent: :destroy
    has_many :users, through: :user_workouts

    validates :url, uniqueness: true, presence: true
    validates :time, presence: true
    validates :name, presence: true

    def time_updated
       self.time.strftime("%I:%M:%S %p")
    end
end
