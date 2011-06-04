module Reverso # :nodoc:

  TRANSLATION_CODES = {
    'Arabic' => {
      'Dutch' => 'ara-dut-5',
      'Portuguese' => 'ara-por-5',
      'English' => 'ara-eng-5',
      'Russian' => 'ara-rus-5',
      'Chinese' => 'ara-chi-5',
      'Spanish' => 'ara-spa-5',
      'Hebrew' => 'ara-heb-5',
      'French' => 'ara-fra-5',
      'German' => 'ara-ger-5',
      'Romanian' => 'ara-rum-5',
      'Italian' => 'ara-ita-5',
      'Japanese' => 'ara-jpn-5'
    },
    'Chinese' => {
      'Dutch' => 'chi-dut-5',
      'Portuguese' => 'chi-por-5',
      'English' => 'chi-eng-5',
      'Russian' => 'chi-rus-5',
      'Spanish' => 'chi-spa-5',
      'Hebrew' => 'chi-heb-5',
      'French' => 'chi-fra-5',
      'German' => 'chi-ger-5',
      'Romanian' => 'chi-rum-5',
      'Italian' => 'chi-ita-5',
      'Arabic' => 'chi-ara-5',
      'Japanese' => 'chi-jpn-5'
    },
    'Dutch' => {
      'Portuguese' => 'dut-por-5',
      'English' => 'dut-eng-5',
      'Russian' => 'dut-rus-5',
      'Chinese' => 'dut-chi-5',
      'Spanish' => 'dut-spa-5',
      'Hebrew' => 'dut-heb-5',
      'French' => 'dut-fra-5',
      'German' => 'dut-ger-5',
      'Romanian' => 'dut-rum-5',
      'Italian' => 'dut-ita-5',
      'Arabic' => 'dut-ara-5',
      'Japanese' => 'dut-jpn-5'
    },
    'English' => {
      'Dutch' => 'eng-dut-5',
      'Portuguese' => '1033-2070-2',
      'Russian' => '1033-1049-3',
      'Chinese' => 'eng-chi-5',
      'Spanish' => '2097153',
      'Hebrew' => '1033-1037-2',
      'French' => '524289',
      'German' => '262145',
      'Romanian' => 'eng-rum-5',
      'Italian' => '1033-1040-2',
      'Arabic' => 'eng-ara-5',
      'Japanese' => '1033-1041-2'
    },
    'French' => {
      'Dutch' => 'fra-dut-5',
      'Portuguese' => '1036-2070-2',
      'English' => '65544',
      'Russian' => '1036-1049-2',
      'Chinese' => 'fra-chi-5',
      'Spanish' => '2097160',
      'Hebrew' => '1036-1037-2',
      'German' => '262152',
      'Romanian' => 'fra-rum-5',
      'Italian' => '1036-1040-2',
      'Arabic' => 'fra-ara-5',
      'Japanese' => '1036-1041-2'
    },
    'Hebrew' => {
      'Dutch' => 'heb-dut-5',
      'Portuguese' => 'heb-por-5',
      'English' => '1037-1033-2',
      'Russian' => '1037-1049-2',
      'Chinese' => 'heb-chi-5',
      'Spanish' => '1037-1034-2',
      'French' => '1037-1036-2',
      'German' => 'heb-ger-5',
      'Romanian' => 'heb-rum-5',
      'Italian' => 'heb-ita-5',
      'Arabic' => 'heb-ara-5',
      'Japanese' => 'heb-jpn-5'
    },
    'German' => {
      'Dutch' => 'ger-dut-5',
      'Portuguese' => '1031-2070-2',
      'English' => '65540',
      'Russian' => '1031-1049-2',
      'Chinese' => 'ger-chi-5',
      'Spanish' => '1031-1034-2',
      'Hebrew' => 'ger-heb-5',
      'French' => '524292',
      'Romanian' => 'ger-rum-5',
      'Italian' => 'ger-ita-5',
      'Arabic' => 'ger-ara-5',
      'Japanese' => 'ger-jpn-5'
    },
    'Italian' => {
      'Dutch' => 'ita-dut-5',
      'Portuguese' => 'ita-por-5',
      'English' => '1040-1033-2',
      'Russian' => '1040-1049-2',
      'Chinese' => 'ita-chi-5',
      'Spanish' => '1040-1034-2',
      'Hebrew' => 'ita-heb-5',
      'French' => '1040-1036-2',
      'German' => 'ita-ger-5',
      'Romanian' => 'ita-rum-5',
      'Arabic' => 'ita-ara-5',
      'Japanese' => 'ita-jpn-5'
    },
    'Japanese' => {
      'Dutch' => 'jpn-dut-5',
      'Portuguese' => 'jpn-por-5',
      'English' => '1041-1033-2',
      'Russian' => '1041-1049-2',
      'Chinese' => 'jpn-chi-5',
      'Spanish' => 'jpn-spa-5',
      'Hebrew' => 'jpn-heb-5',
      'French' => '1041-1036-2',
      'German' => 'jpn-ger-5',
      'Romanian' => 'jpn-rum-5',
      'Italian' => 'jpn-ita-5',
      'Arabic' => 'jpn-ara-5'
    },
    'Portuguese' => {
      'Dutch' => 'por-dut-5',
      'English' => '2070-1033-2',
      'Russian' => 'por-rus-5',
      'Chinese' => 'por-chi-5',
      'Spanish' => '2070-1034-2',
      'Hebrew' => 'por-heb-5',
      'French' => '2070-1036-2',
      'German' => '2070-1031-2',
      'Romanian' => 'por-rum-5',
      'Italian' => 'por-ita-5',
      'Arabic' => 'por-ara-5',
      'Japanese' => 'por-jpn-5'
    },
    'Russian' => {
      'Dutch' => 'rus-dut-5',
      'Portuguese' => 'rus-por-5',
      'English' => '1049-1033-3',
      'Chinese' => 'rus-chi-5',
      'Spanish' => '1049-1034-2',
      'Hebrew' => '1049-1037-2',
      'French' => '1049-1036-2',
      'German' => '1049-1031-2',
      'Romanian' => 'rus-rum-5',
      'Italian' => '1049-1040-2',
      'Arabic' => 'rus-ara-5',
      'Japanese' => '1049-1041-2'
    },
    'Spanish' => {
      'Dutch' => 'spa-dut-5',
      'Portuguese' => '1034-2070-2',
      'English' => '65568',
      'Russian' => '1034-1049-2',
      'Chinese' => 'spa-chi-5',
      'Hebrew' => '1034-1037-2',
      'French' => '524320',
      'German' => '1034-1031-2',
      'Romanian' => 'spa-rum-5',
      'Italian' => '1034-1040-2',
      'Arabic' => 'spa-ara-5',
      'Japanese' => 'spa-jpn-5'
    },
    'Romanian' => {
      'Dutch' => 'rum-dut-5',
      'Portuguese' => 'rum-por-5',
      'English' => 'rum-eng-5',
      'Russian' => 'rum-rus-5',
      'Chinese' => 'rum-chi-5',
      'Spanish' => 'rum-spa-5',
      'Hebrew' => 'rum-heb-5',
      'French' => 'rum-fra-5',
      'German' => 'rum-ger-5',
      'Italian' => 'rum-ita-5',
      'Arabic' => 'rum-ara-5',
      'Japanese' => 'rum-jpn-5'
    }
  }

  SERVICE_HOST = 'www.reverso.net'
  SERVICE_PATH = '/WebReferences/WSAJAXInterface.asmx/TranslateWS'
  HEADERS = { 'Content-Type' => 'application/json; charset=utf-8',
              'User-Agent' => 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en) AppleWebKit/418 (KHTML, like Gecko) Safari/417.9.3',
              'X-Requested-With' => 'XMLHttpRequest',
              'Accept' => 'application/json, text/javascript, */*' }
  # HACK!  Used to pass restriction applied for requests from unauthorized users (translation truncation).
  HACK_HEADERS = { 'Cookie' => 'reverso.net.user_id=afake=; reverso.net.username=afake=; reverso.net.loggedon=1;' }

end
