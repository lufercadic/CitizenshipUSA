class AddNumeroToCivicQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :civic_questions, :Numero, :integer
  end
end
