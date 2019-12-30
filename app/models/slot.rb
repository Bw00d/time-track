class Slot < ApplicationRecord

  def activity
    Activity.find(self.activity_id)
  end

  def previous
    self.class.where("id < ?", id).last
  end

  def duration
    if self.endtime
      duration = ((self.endtime - self.starttime) * 24 * 60 * 60).to_i
    else
      duration = ((Time.now - self.starttime) * 24 * 60 * 60).to_i
    end
  end
    
end
