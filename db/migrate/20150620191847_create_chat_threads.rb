class CreateChatThreads < ActiveRecord::Migration
  def change
    create_table :chat_threads do |t|

      t.timestamps null: false
    end
  end
end
