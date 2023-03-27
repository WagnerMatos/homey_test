class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.integer :project_status, default: 0

      t.timestamps
    end
  end
end
