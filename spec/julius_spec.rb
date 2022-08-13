# frozen_string_literal: true

require './julius'

describe '#caesar_cipher' do
  it 'returns the unshifted input without any shift given' do
    expect(caesar_cipher('Hello')).to eql('Hello')
  end
  it 'returns the unshifted input when using 0 shift' do
    expect(caesar_cipher('Ziggo', 0)).to eql('Ziggo')
  end
  it 'returns the unshifted input when using 26 shift' do
    expect(caesar_cipher('Test', 26)).to eql('Test')
  end
  it 'works with negative shift' do
    expect(caesar_cipher('Hello there', -10)).to eql('Xubbe jxuhu')
  end
  it 'works with positive shift bigger than 26' do
    expect(caesar_cipher('Hello there', 37)).to eql('Spwwz espcp')
  end
  it 'works with punctuation' do
    expect(caesar_cipher('Hey there, mom! What are you up to?', 20)).to eql('Bys nbyly, gig! Qbun uly sio oj ni?')
  end
end
