class CreateTempdbs < ActiveRecord::Migration[5.1]
  def change
    create_table :tempdbs do |t|
      t.float :temp

      t.timestamps
    end
  end
end
