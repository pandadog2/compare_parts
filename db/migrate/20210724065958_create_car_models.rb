class CreateCarModels < ActiveRecord::Migration[6.0]
  def change
    create_table :car_models do |t|
      t.string     :car_model_code, null: false
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
