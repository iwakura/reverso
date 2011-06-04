module Reverso
  module CLI # :nodoc:
    def self.run
      unless ARGV.size == 2
        puts "Usage: #{File.basename $0} source_lang dest_lang"
        exit
      end
      $/ = "\0"
      puts 'Please type some text to translate followed by ^D:'
      puts
      phrase = STDIN.gets
      puts
      puts
      puts Reverso::Translator::translate(phrase, :from => ARGV[0], :to => ARGV[1], :hack_auth => phrase.length > 500)
    end
  end
end
