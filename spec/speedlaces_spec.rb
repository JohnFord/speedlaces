require 'spec_helper'

describe Speedlaces do
  class DummyClass
    attr_accessor :known_attr
    include Speedlaces
  end

  describe 'class methods' do
    it 'responds to speelaces' do
      DummyClass.should respond_to(:speedlaces)
    end
  end # describe

  describe 'initializer' do
    context 'with default configuration' do
      it 'accepts nil arguments' do
        expect { DummyClass.new }.to_not raise_error
      end

      it 'accepts an empty hash' do
        expect { DummyClass.new({}) }.to_not raise_error
      end

      it 'accepts non-existant keys' do
        expect { DummyClass.new :unknown_attr => true }.to_not raise_error
      end

      it 'initializes existing ivars based on hash values' do
        DummyClass.new(known_attr: true).known_attr.should == true
      end
    end # context
  end # describe

end
