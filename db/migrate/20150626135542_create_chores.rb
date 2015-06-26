class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|

      t.timestamps null: false
    end
  end
end
