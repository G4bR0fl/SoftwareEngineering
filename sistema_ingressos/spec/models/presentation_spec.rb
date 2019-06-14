require 'rails_helper'
require 'date'

RSpec.describe Presentation, type: :model do
  it 'is valid with valid attributes' do
    pres = Presentation.new
    pres.date = Date.parse("01-01-2010")
    # Descobrir como testar
  end

  it 'is not valid with invalid attributes' do
    pres = Presentation.new
    pres.date = nil
    pres.hour = nil    
    expect(pres).not_to be_valid
  end
end
