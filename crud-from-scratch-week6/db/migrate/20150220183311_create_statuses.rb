class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :message
      t.string :user
      t.integer :likes
    end
  end
end
