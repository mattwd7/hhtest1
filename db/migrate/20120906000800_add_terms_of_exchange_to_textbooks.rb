class AddTermsOfExchangeToTextbooks < ActiveRecord::Migration
  def change
  	add_column :textbooks, :terms_of_exchange, :string
  end
end
