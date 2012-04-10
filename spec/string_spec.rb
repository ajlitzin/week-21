require 'spec_helper'

describe String do

# this tests that original empty? still works
  describe "#empty?" do
    context "if string contains whitespace" do
      let(:subject) { "   supercool  " }
      it "should return false" do
        subject.should_not be_empty
      end
    end

    context "if string does not contain whitespace" do
      let(:subject) { "supercool"}
      it "should return false" do
        subject.should_not be_empty
      end
    end

    context "if string is only whitespace" do
      let(:subject) { "     "}
      it "should return false" do
        subject.should_not be_empty
      end
    end

    context "if string is empty" do
      let(:subject) {""}
      it "should return true" do
        subject.should be_empty
      end
    end
  end

# this tests that original empty? still works
  describe "#empty?" do
    context "if string contains whitespace" do
      let(:subject) { "   supercool  " }
      it "should return false" do
        subject.should_not be_empty("fakearg")
      end
    end

    context "if string does not contain whitespace" do
      let(:subject) { "supercool"}
      it "should return false" do
        subject.should_not be_empty("fakearg")
      end
    end

    context "if string is only whitespace" do
      let(:subject) { "     "}
      it "should return true" do
        subject.should be_empty("fakearg")
      end
    end

    context "if string is empty" do
      let(:subject) { ""}
      it "should return true" do
        subject.should be_empty("fakearg")
      end
    end


  end
end
