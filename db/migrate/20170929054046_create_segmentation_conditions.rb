class CreateSegmentationConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :segmentation_conditions do |t|
      t.string :field
      t.string :operator
      t.string :value
      t.string :conjunction
      t.references :segmentation

      t.timestamps
    end
  end
end
