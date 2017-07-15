class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :status
      t.text :description
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
