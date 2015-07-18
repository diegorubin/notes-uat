class Note < Base

  default_attributes({ 
    'title' => "test note #{rand(99999)}", 'path' => '/',
    'body' => %q{
      a little
      text
    }
  })

end

