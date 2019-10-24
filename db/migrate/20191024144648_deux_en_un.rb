class DeuxEnUn < ActiveRecord::Migration[5.2]
  def change
    change_table :doctors do |t|
      t.remove :speciality
      end
    end
  
    def change
      add_column :cities, :name, :string
    end
end
