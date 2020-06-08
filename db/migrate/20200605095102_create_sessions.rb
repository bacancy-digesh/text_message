class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :session_id, null: false
      t.boolean :expired, default: false
      t.references :conversation

      t.timestamps
    end
  end
end
