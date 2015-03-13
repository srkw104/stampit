class Stamp < ActiveRecord::Base
  belongs_to :tournament

  scope :publishing, -> (time) { includes(:tournament).where("tournaments.started_at <= ? and tournaments.ended_at >= ? and tournaments.deleted = ?", time, time, false).where("stamps.deleted = ?", false).references(:tournament) }
end
