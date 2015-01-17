class CreateNesteds < ActiveRecord::Migration
  def change
    create_table :nesteds do |t|
      t.references :top, index: true
      t.references :assign, index: true

      t.timestamps
    end
  end
end
