class CreateTestmodels < ActiveRecord::Migration
  def change
    create_table :testmodels do |t|
      t.string :name
      t.integer :noname

      t.timestamps
    end
  end
end
