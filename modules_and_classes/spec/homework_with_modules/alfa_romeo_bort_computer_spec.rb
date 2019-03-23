require "spec_helper"

describe AlfaRomeo do
  # 1. what is described_class and subject
  it "has its own mark" do
    expect(described_class::MARK).to eq("Alfa Romeo")
  end

  describe "riding opportunity" do
    # subject is available here, but cannot be dynamicly created due to requried constuctor args
    let(:subject) { described_class.new("159", 1610, 1.9, :diesel, 70) }

    it "can ride" do
      # remeber Object.respond_to? :mtd
      expect(subject).to respond_to(:ride)
    end

    it "notifies us that subject is riding" do
      # everything is an object, methods are messages
      expect(STDOUT).to receive(:puts).with("I ride")
      subject.ride
    end
  end

  describe "#koeff" do
    let(:subject) { described_class.new("159", 1610, 1.9, :diesel, 70) }

    it "calculates coefficient properly" do
      expect(subject.send(:koeff)).to eq(0.655)
    end
  end

  describe "bort computer features" do
    # DESCRIBE: scopes of visibility
    let(:tank_volume) { 70 }
    let(:subject)     { described_class.new("159", 1610, 1.9, :diesel, tank_volume) }

    describe "#average_consumption" do
      it "is properly calculated" do
        expect(subject.average_consumption).to eq(2.01)
      end
    end

    context "while riding" do
      let(:fuel_volume) { 35 }
      # describe shared methods
      def rand_fuel_volume
        rand(0..tank_volume)
      end

      describe "#fuel_ratio" do
        it "is always" do
          expect(subject.fuel_ratio(rand_fuel_volume)).to be_a(Numeric)
        end

        it "is calculated properly based on current_fuel_volume" do
          expect(subject.fuel_ratio(fuel_volume)).to eq(0.5)
        end
      end

      describe "#ttngs" do
        before do
          # stubs and what are they used for (заглушка)
          allow(subject).to receive(:average_consumption).and_return(8.0)
        end

        it "calculates how many km driver can ride til the fuel runs out" do
          expect(subject.ttngs(fuel_volume)).to eq(437)
        end
      end

      describe "#status" do
        it "returns summary of subject' methods" do
          # mocks
          expect(subject).to receive(:average_consumption).twice.and_call_original
          expect(subject).to receive(:koeff).twice.and_return(0.7)
          expect(subject).to receive(:ttngs).once.and_call_original
          expect(subject).to receive(:fuel_ratio).once # will return nil

          subject.status
        end
      end
    end
  end
end

