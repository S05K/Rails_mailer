class CreateS < ActiveRecord::Migration[6.0]
  def change
    create_table :s do |t|

      t.timestamps
    end
  end
end
