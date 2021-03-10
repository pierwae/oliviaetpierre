class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :presence
      t.string :allergies
      t.string :note

      t.timestamps
    end
  end
end
