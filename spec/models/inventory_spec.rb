require 'rails_helper'

RSpec.describe Inventory, type: :model do
  subject do
    User.create(name: 'NTIHINDUKA ALPHA', email: 'ntihindukaalpha@yahoo.com', password: '1234567890', password_confirmation: '1234567890')
  end
  before do
    @inventory = Inventory.create(name: 'inventory 1', user: subject)
  end

  context 'Validations should be working' do
    it 'ALL validations should be valid' do
      expect(subject).to be_valid
    end

    it 'Name inventory validation should return true' do
      expect(@inventory.name).to eql('inventory 1')
    end

    it 'Name user validation should return true' do
      expect(subject.name).to eql('NTIHINDUKA ALPHA')
    end

    it 'Name user validation should return true' do
      expect(subject.email).to eql('ntihindukaalpha@yahoo.com')
    end

    it 'Inventory user validation should return true' do
      expect(@inventory.user).to eql(subject)
    end
  end
end
