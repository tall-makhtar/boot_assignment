class CreateBootApps < ActiveRecord::Migration[5.1]
  def change
    create_table :boot_apps do |t|
       t.string :name
      t.text :email
      t.text :content

      t.timestamps
    end
  end
end
