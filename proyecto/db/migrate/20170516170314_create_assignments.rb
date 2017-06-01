class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.references :document, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
