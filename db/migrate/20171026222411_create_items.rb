class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :task
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
