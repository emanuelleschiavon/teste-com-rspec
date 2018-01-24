require 'rails_helper'

RSpec.describe Article, type: :model do
		subject { described_class.new(title: "Texto", text:"Bla bla bla") }
  	it "is valid with valid atributes" do
  		expect(subject).to be_valid
  	end

  	it "is not valid without a title" do
  		subject.title = nil
  		expect(subject).to_not be_valid
  	end

  	it "is not valid without text" do
  		subject.text =  nil
  		expect(subject).to_not be_valid
  	end
end
