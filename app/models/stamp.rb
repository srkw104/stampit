class Stamp < ActiveRecord::Base
  belongs_to :tournament

  scope :publishing, -> (time) { includes(:tournament).where("tournaments.started_at <= ? and tournaments.ended_at >= ? and tournaments.deleted = ?", time, time, false).where("stamps.deleted = ?", false).references(:tournament) }

  has_attached_file :photo, styles: {medium: "400x400>", thumb: "100x100>"}

  validates_attachment :photo, content_type: {content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}

end
