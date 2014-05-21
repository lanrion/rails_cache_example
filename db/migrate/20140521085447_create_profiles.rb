class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :age
      t.string :sex
      t.references :user

      t.timestamps
    end
  end
end
