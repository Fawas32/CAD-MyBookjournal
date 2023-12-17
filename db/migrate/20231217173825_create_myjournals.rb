class CreateMyjournals < ActiveRecord::Migration[7.0]
  def change
    create_table :myjournals do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
