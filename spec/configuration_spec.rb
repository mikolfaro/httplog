# encoding: UTF-8

require 'spec_helper'

module HttpLog
  describe Configuration do

    let(:config) { Configuration.new }

    describe "#compact_log" do
      it "defaults to false" do
        expect(config.compact_log).to eq(false)
      end
    end

    describe "#compact_log=" do
      it "sets values" do
        config.compact_log = true
        expect(config.compact_log).to eq(true)
      end
    end

    describe "#color=" do
      it "converts symbol to hash" do
        config.color = :red
        expect(config.color).to eq({color: :red})
      end

      it "drops hash extra keys" do
        config.color = {color: :red, background: :white, not: :safe}
        expect(config.color).to eq({color: :red, background: :white})
      end
    end
  end
end
