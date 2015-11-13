class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.string :name, null: false
      t.integer :list_id, null:false
      t.datetime :due_date
      t.boolean :completed
      t.timestamps null: false
    end
  end

  def down
    drop_table :tasks
  end
end