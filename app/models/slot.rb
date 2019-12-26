class Slot < ApplicationRecord

  def activity
    Activity.find(self.activity_id)
  end

  def previous
    self.class.where("id < ?", id).last
  end
    
end
