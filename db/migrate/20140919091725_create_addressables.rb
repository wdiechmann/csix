class CreateAddressables < ActiveRecord::Migration
  def change
    create_table :addressables do |t|
      t.references :address, index: true
      t.string :addressable_type
      t.integer :addressable_id

      t.timestamps
    end
  end
end
