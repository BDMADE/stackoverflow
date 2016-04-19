class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.text :name
      t.text :solution

      t.timestamps null: false
    end
  end
end
