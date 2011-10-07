Wordy
=====

Wordy speaks lorem ipsum. You can ask Wordy for a paragraphs, sentences or words.


Usage
-----

Using wordy is simple. Here's the rundown:

    $ require 'wordy'
     => true 

    $ Wordy.word
     => "similique" 

    $ Wordy.words
     => ["nobis", "laborum", "commodi"] 

    $ Wordy.sentence
     => "Libero necessitatibus dolore et dicta." 

    $ Wordy.sentences
     => ["Error omnis possimus autem magni quae natus exercitationem sit fuga recusandae maiores odit.", "Perspiciatis sed nisi neque pariatur voluptas quia repudiandae quas consequatur dolore.", "Magni nam quae quas enim est qui.", "Fuga aut vitae soluta sit et laborum est est illo sequi.", "Veritatis velit exercitationem nihil sed perferendis iusto ut voluptate consequatur cum molestiae.", "Fugit exercitationem velit dolorem vel qui delectus atque officia."] 

    $ Wordy.paragraph
     => "Nihil aut voluptatem cupiditate ullam et dolores officia sunt fugit. Cupiditate unde deleniti dolore exercitationem repudiandae. Inventore consequatur optio blanditiis et nisi molestias impedit explicabo." 

    $ Wordy.paragraphs
     => ["Autem vel amet et eaque aperiam voluptas ullam dolorem consequuntur qui illo voluptatem recusandae. Ut enim similique impedit magni molestiae qui dolorem quas quis.", "Nobis et quo error ea porro quo odio. Voluptatem mollitia doloribus eum molestias sed ipsum qui omnis totam in autem explicabo cum.", "Quas corrupti voluptas cumque ea sed itaque. Vitae voluptatum porro ipsam quae libero sequi. Rerum aut unde aut omnis eum dolorem veritatis consequatur sint. Aliquid quibusdam ad qui vitae impedit est quas deserunt. Error tempora quo optio sit aliquam quis quod est quia numquam nisi. Sequi tenetur laudantium sed et et amet aut odit.", "Beatae et atque porro inventore quia repudiandae quibusdam praesentium qui. Fuga voluptas et et tempore velit est voluptatem nemo. Illum architecto voluptas ut nisi labore expedita ea et dicta qui unde cumque quia. Temporibus voluptas sunt tempore quis dolores assumenda ullam in. Quia iusto veniam asperiores quia odio id in omnis doloremque doloribus ea aut. Accusamus eveniet qui sint vel perspiciatis veritatis et."] 

    $ Wordy.body
     => "Aperiam ea voluptatem nostrum qui fuga et molestias quibusdam consequuntur non sed qui culpa. Incidunt minima similique repellendus distinctio debitis blanditiis ratione architecto.\n\nAliquid non excepturi voluptatem nobis laudantium. Corrupti ut aut autem sed quia ducimus eligendi eum maxime voluptas suscipit.\n\nDolor fuga est voluptas cupiditate vel quaerat consequuntur velit corrupti. Unde quod quia est nihil est nisi quo officiis nobis. Est similique ea dolorum natus. Odio voluptate facere cupiditate quo autem quod doloremque expedita delectus cum accusamus consequuntur ut.\n\nDignissimos quia blanditiis sit quis voluptates et optio maiores tenetur quia. Non aperiam quos eligendi voluptas est animi voluptatum sequi impedit. Impedit repudiandae officiis magni quia qui explicabo voluptas saepe delectus illo aliquid qui. Sunt minus sint quam omnis sed blanditiis." 
  
 
Installation
------------

As usual, just use the `gem install` command:

    (sudo) gem install wordy
    
Or add wordy as a gem in your Gemfile:

    gem 'wordy', '~> 0.1.0' 

Then run `bundle install`

 
Requirements
------------

Wordy has zero dependencies! All it requires is Ruby >= 1.9.


Testing
-------

Testing is done with minitest. Run the tests with:

    ruby -Ilib -Itest test/test_wordy.rb


License
-------

Copyright (c) 2011 Spencer Steffen & Citrus, released under the New BSD License All rights reserved.
