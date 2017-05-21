# This migration comes from rapidfire (originally 20130502195504)
class CreateRapidfireAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :rapidfire_answers do |t|
      t.references :attempt
      t.references :question
      t.text :answer_text

      t.timestamps
    end
  end
end
