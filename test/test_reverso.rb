require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'fakeweb'
require 'reverso'

class TestReverso < Test::Unit::TestCase
  context 'with valid language names' do
    should 'perform translation' do
      FakeWeb.register_uri(:post, /reverso\.net/, :body => '{"d":{"result":"Liebe"}}')
      result = Reverso::Translator::translate('love', :from => 'English', :to => 'German')
      assert_equal result, 'Liebe'
    end

    should 'understand short language names' do
      FakeWeb.register_uri(:post, /reverso\.net/, :body => '{"d":{"result":"L\'amour"}}')
      result = Reverso::Translator::translate('The love', :from => 'eng', :to => :fr)
      assert_equal result, "L'amour"
    end
  end

  context 'with unknown language names' do
    should 'raise exception' do
      assert_raise RuntimeError do
        Reverso::Translator::translate('Two tickets, please.', :from => 'Eng', :to => 'Deutsch')
      end
    end
  end
end
