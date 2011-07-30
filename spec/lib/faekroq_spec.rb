require File.dirname(__FILE__) + '/../../lib/faekroq'

describe FaekRoq do

  it 'has a .decrypt method' do
    lambda { FaekRoq.decrypt }.should_not raise_error
  end

  it 'has an .encrypt method as well' do
    lambda { FaekRoq.encrypt 'foo' }.should_not raise_error
  end

end
