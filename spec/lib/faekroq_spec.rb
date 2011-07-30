require File.dirname(__FILE__) + '/../../lib/faekroq'

describe FaekRoq do

  it 'has a .decrypt method' do
    lambda { FaekRoq.decrypt }.should_not raise_error
  end

  it 'has an .encrypt method as well' do
    lambda { FaekRoq.encrypt 'foo' }.should_not raise_error
  end

  it 'accepts a password' do
    lambda { FaekRoq.password = 'foo' }.should_not raise_error
  end

  it 'has an .encrypted method' do
    lambda{ FaekRoq.encrypted }.should_not raise_error
  end

  it 'has an encrypted form of its password' do
    password = 'foobar7'
    FaekRoq.password = password
    FaekRoq.encrypted.should_not == password
  end

  it 'can encrypt passwords longer than 16 characters' do
    plain_text = '12345678901234567'
    FaekRoq.password = plain_text
    lambda{ FaekRoq.password = plain_text }.should_not raise_error
  end

  it 'can decrypt a password' do
    FaekRoq.password = 'foobar'
    FaekRoq.decrypt.should == 'foobar'
  end

  xit 'gets its encrypted password from a file' do
  end

  xit 'can use a key file' do
  end

  xit 'prompts to create a encrypted password file if none is found' do
  end

end
