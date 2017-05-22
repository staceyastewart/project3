class CreateInformedFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :informed_favorites do |t|
      t.references :user, foreign_key: true
      t.boolean :animals
      t.boolean :bullying
      t.boolean :disasters
      t.boolean :discrimination
      t.boolean :education
      t.boolean :environment
      t.boolean :homelessness
      t.boolean :mental_health
      t.boolean :physical_health
      t.boolean :poverty
      t.boolean :relationships
      t.boolean :sex
      t.boolean :violence

      t.timestamps
    end
  end
end
