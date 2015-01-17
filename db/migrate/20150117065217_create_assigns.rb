class CreateAssigns < ActiveRecord::Migration
  def change
    create_table :assigns do |t|
      t.timestamps
    end
  end
end
