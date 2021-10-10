class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :Name
      t.integer :Section_ID

      t.timestamps
    end
  end
end
