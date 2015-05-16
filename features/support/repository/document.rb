class Document < Base

  default_attributes({ 
    'title' => "test document #{rand(99999)}", 'path' => '/',
    'body' => %q{
      a little
      text
    }
  })

end

