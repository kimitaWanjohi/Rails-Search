class CreateQueries < ActiveRecord::Migration[7.1]
  def change
    create_table :queries do |t|
      t.string :search
      t.string :user_ip

      t.timestamps
    end
  end
end
