class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.date :date_of_birth
      t.string :father
      t.string :mother
      t.string :contact_emails
      t.string :origin
      t.string :referenced_by
      t.text :observations

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
