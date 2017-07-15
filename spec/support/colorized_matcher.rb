require 'rspec/expectations'

RSpec::Matchers.define :be_colorized do
  match do |thing|
    return false unless thing.respond_to? :scan
    thing.scan(/\e\[([0-9]+)m(.+?)\e\[0m/m).any?
  end
end
