class CreateThreadSubscriptions < ActiveRecord::Migration
  def change
    create_table :thread_subscriptions do |t|
      t.references :users
      t.string :location

      t.timestamps null: false
    end
  end
end
