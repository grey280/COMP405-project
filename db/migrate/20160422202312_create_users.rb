class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :nickName
      t.string :school
      t.string :job
      t.date :birthdate

      t.timestamps null: false
    end
  end
end
