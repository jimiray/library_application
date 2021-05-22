# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'validations' do
    context 'with invalid first_name' do
      let(:member) { build(:member, first_name: nil) }
      it { expect(member.valid?).to eq false }
    end

    context 'with invalid last_name' do
      let(:member) { build(:member, last_name: nil) }
      it { expect(member.valid?).to eq false }
    end

    context 'with invalid date_of_birth' do
      let(:member) { build(:member, date_of_birth: nil) }
      it { expect(member.valid?).to eq false }
    end
  end

  describe '#name' do
    let(:member) { create(:member) }
    subject { member }

    it { expect(subject.name).to eq [member.first_name, member.last_name].join(' ') }
  end
end
