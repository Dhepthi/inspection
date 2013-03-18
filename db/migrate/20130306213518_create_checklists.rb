class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :title
      t.string :comments

      t.timestamps
    end
  end
end
