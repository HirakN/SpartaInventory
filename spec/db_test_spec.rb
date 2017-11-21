require 'database_cleaner'
require 'rails_helper'


describe 'Verifying the seed data', :type => :model do

  before(:all) do
    Item.to_json
  end

  it 'should have the model value of Macbook 2010' do
      # expect(Item.first.description).to eq('Macbook2010')
       # gets :index.to_s
      # expect(response.status).to eq(200)
       expect(Item.first["description"]).to eq("Macbook 2010")
  end

  it '' do

  end

end
