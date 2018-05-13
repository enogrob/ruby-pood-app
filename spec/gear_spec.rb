require_relative '../gear'

RSpec.describe 'POOD App' do

  context 'Gear' do
    let!(:subject) {Gear.new(52, 11)}

    it 'initialize properly' do
      expect(subject).to be_an_instance_of(Gear)
    end

    it 'Responds to proper methods' do
      expect(subject).to respond_to(:chainring)
      expect(subject).to respond_to(:cog)

    end

    it 'Responds to ratio properly' do
      expect(Gear.new(52,11).ratio).to be(4.7272727272727275)
      expect(Gear.new(30,27).ratio).to be(1.1111111111111112)
    end
  end

end