class CreateSections < ActiveRecord::Migration[6.1]
  def change
    create_table :sections do |t|
      t.string :Name
      t.integer :Parent_ID
      #t.index [:Name, :Parent_ID], unique: true
      t.timestamps
      add_column :sections, :Parent_ID, :integer, :default => nil
    end
  end
end
