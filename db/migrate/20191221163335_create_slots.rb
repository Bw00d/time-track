class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.datetime :starttime
      t.datetime :endtime
      t.integer  :user_id

      t.timestamps
    end
  end
end
