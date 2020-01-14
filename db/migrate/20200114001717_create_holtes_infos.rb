class CreateHoltesInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :holtes_infos do |t|
      t.string :Destination
      t.string :Owner_Name
      t.string :Mobile_Number
      t.string :URL
      t.string :Number_of_rooms
      t.string :Number_of_Beds
      t.string :Accomodates

      t.timestamps
    end
  end
end
