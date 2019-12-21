class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :description

      t.timestamps
    end

    create_table :entries do |t|
      t.datetime :starttime
      t.datetime :stoptime
      t.integer  :activity_id

      t.timestamps
    end
  end
end
