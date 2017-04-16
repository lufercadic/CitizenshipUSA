class AddInformacionToCivicQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :civic_questions, :Informacion, :string
  end
end
