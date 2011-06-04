module Reverso
  class Translator

=begin rdoc
Returns translated +phrase+

+params+ must contain following values:

  :from  source language name
  :to    destination language name

It is possible to use short language names.

#--

+params+ may contain following options:
  :hack_auth  set to non false value if you need translate big piece of text
=end

    def self.translate(phrase, params = {})
      new.translate(phrase, params)
    end

    # :enddoc:
    def translate(phrase, params)
      query_service(phrase, params)
      result
    end

    def query_service(phrase, params)
      @response = @http.post(SERVICE_PATH,
                             query_string(phrase, translation_code(params)),
                             (params[:hack_auth] ? HEADERS.merge(HACK_HEADERS) : HEADERS))
    end

    def response
      JSON.parse @response.body
    end

    def result
      response['d']['result']
    end

    def translation_code(params)
      if from_pack = TRANSLATION_CODES.detect { |from, pack| from =~ /^#{params[:from]}/i } and
        direction = from_pack[1].detect { |to, code| to =~ /^#{params[:to]}/i }
        direction[1]
      else
        raise 'Unable to perform translation.'
      end
    end

    def query_string(phrase, direction)
      JSON(:searchText => phrase, :direction => direction)
    end

    def initialize # :nodoc:
      @http = Net::HTTP.new(SERVICE_HOST)
    end
  end
end
