require 'spec_helper'

describe StaticController do
  describe '#about' do
    subject { get :about }

    its(:status) { should eq 200 }
  end

  describe '#creators' do
    subject { get :creators }

    its(:status) { should eq 200 }
  end

  describe '#contacts' do
    subject { get :contacts }

    its(:status) { should eq 200 }
  end
end
