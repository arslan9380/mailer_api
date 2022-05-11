class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :email
      t.string :file_url

      t.timestamps
    end
  end
end
