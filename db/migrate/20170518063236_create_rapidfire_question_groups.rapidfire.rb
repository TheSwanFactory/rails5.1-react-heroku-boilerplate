# This migration comes from rapidfire (originally 20130502170733)
class CreateRapidfireQuestionGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :rapidfire_surveys do |t|
      t.string  :name
      t.text :introduction
      t.timestamps
    end
  end
end
