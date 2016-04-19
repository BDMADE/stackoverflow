class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.text :name
      t.text :solution
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
