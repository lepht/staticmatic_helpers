# COPYRIGHT: 2011 Pete Clark (pete.clark@gmail.com)
# LICENSE: MIT

module GoogleFontsHelper
  # google_fonts imports Google web fonts into the page using the Google Font API (http://code.google.com/apis/webfonts/)
  # Options:
  # A list of fonts you would like to be included
  #
  # Usage: = google_fonts 'Tangerine', 'Bangers'

  def google_fonts(*params)
    $IMBED_FRAGMENT = %q'<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=%s">'

    output = ""
    params.each do |font|
      output << $IMBED_FRAGMENT % font
    end

    output
  end
end