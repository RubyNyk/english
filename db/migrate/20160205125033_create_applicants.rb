class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.string :line
      t.string :major
      t.text :section
      t.string :teachernation
      t.text :message

      t.timestamps null: false
    end
  end
end
