class Slot < ApplicationRecord

  scope :current_slot, -> { where(endtime: nil) }

  def activity
    Activity.find(self.activity_id)
  end

  def description
    self.activity.description
  end

  def previous
    self.class.where("id < ?", id).last
  end

  def duration
    if self.starttime < Time.zone.now.beginning_of_day
      self.starttime = Time.zone.now.beginning_of_day
    end
    if self.endtime
      duration = ((self.endtime - self.starttime) / 60 ).to_i
    else
      duration = ((Time.now - self.starttime) / 60 ).to_i
    end
  end
    
end
