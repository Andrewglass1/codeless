class CreateInbounds < ActiveRecord::Migration
  def change
    create_table :inbounds do |t|
      t.string :site
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
