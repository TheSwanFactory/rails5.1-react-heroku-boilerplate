# This migration comes from rapidfire (originally 20130502195415)
class CreateRapidfireAnswerGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :rapidfire_attempts do |t|
      t.references :survey
      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
