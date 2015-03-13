class Tournament < ActiveRecord::Base
  has_many :stamps

  scope :publishing, -> (time) { where("started_at <= ? and ended_at >= ? and deleted = ?", time, time, false) }
end
