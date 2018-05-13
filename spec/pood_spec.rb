require_relative '../gear'
require_relative '../obscuring_references'

RSpec.describe 'POOD App' do

  context 'Gear' do
    let!(:subject) {Gear.new(52, 11, 0, 0)}

    it 'initialize properly' do
      expect(subject).to be_an_instance_of(Gear)
    end

    it 'Responds to proper methods' do
      expect(subject).to respond_to(:chainring)
      expect(subject).to respond_to(:cog)
      expect(subject).to respond_to(:rim)
      expect(subject).to respond_to(:tire)

    end

    it 'Responds to ratio properly' do
      expect(Gear.new(52,11,0,0).ratio.round(2)).to be(4.73)
      expect(Gear.new(30,27,0,0).ratio.round(2)).to be(1.11)
    end

    it 'Responds to gear_inches properly' do
      expect(Gear.new(52,11, 26, 1.5).gear_inches.round(2)).to be(137.09)
      expect(Gear.new(52,11, 24, 1.25).gear_inches.round(2)).to be(125.27)
    end
  end

  context 'ObscuringReferences' do
    let!(:subject) {ObscuringReferences.new([[622, 20], [622, 23], [559, 30], [559, 40]])}

    it 'Initiated properly' do
      expect(subject).to be_an_instance_of(ObscuringReferences)
    end

    it 'Responds to proper methods' do
      expect(subject).to respond_to(:data)
      expect(subject).to respond_to(:diameters)
    end

    it 'Responds to diameters properly' do
      expect(subject.diameters).to match([662, 668, 619, 639])
    end

  end

end