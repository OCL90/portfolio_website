class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
