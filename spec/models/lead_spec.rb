require 'rails_helper'

RSpec.describe Lead, type: :model do

	context 'validations' do
		it 'does return error for blank attributes' do
			lead = build(:lead, name: "")
			expect(lead).to.not be_valid
		end
	end


end
