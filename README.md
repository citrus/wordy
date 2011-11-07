# Wordy [![Build Status](https://secure.travis-ci.org/citrus/wordy.png)](http://travis-ci.org/citrus/wordy)

### Wordy speaks lorem ipsum. You can ask Wordy for paragraphs, sentences or words. 

Wordy was written to help us create sample data in our applications. Yes, there are already a ton of gems (17 as of 2011/11/5) that show up when [searching](http://rubygems.org/search?utf8=✓&query=lorem+ipsum) for 'lorem ipsum' on [rubygems](http://rubygems.org/)... so why another? 

I guess the short answer is I wasn't happy with some of the other solutions. Many had poor documentation or methods and modules that I didn't need. I just wanted simple.

That's what Wordy delivers... simplicity. There are no runtime dependencies, monkey patches or unnecessary methods. Just [45 lines](https://github.com/citrus/wordy/blob/master/lib/wordy.rb) of the basics.


Usage
-----

Using wordy is easy. Here's the rundown in [irb](http://en.wikipedia.org/wiki/Interactive_Ruby_Shell):

    # irb
    
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


New in version 1.1.0 is the wordy executable. Now you can get wordy from the command line.

    # bash

    $ wordy word
    omnis
    
    $ wordy sentence
    Sunt vel quia delectus perferendis fugiat et quis fuga maxime magnam.

    
That's it!


### Taking it farther

Let's get fancy. But let's keep it simple.

If I were building an app that had, say, user accounts, it might make sense to create a seed helper like the module below.

    require 'wordy'
    
    module Seeder
    
      include Wordy
      extend self
      
      def username
        Wordy.words(3).join("-")
      end
      
      def email
        [ Seeder.username, "@", Seeder.username, "-", rand(100), ".com" ].join 
      end
      
      def domain
        [ Seeder.username, ".com" ].join 
      end
      
      def url
        [ "http://", Seeder.domain ].join 
      end
      
    end

    
This will allow me to do the following:

    $ require 'seeder'
     => true 
    
    $ Seeder.username
     => "commodi-placeat-nobis" 
    
    $ Seeder.email
     => "animi-facilis-dolores@eum-sed-est-56.com" 
    
    $ Seeder.domain
     => "qui-accusamus-voluptatum.com" 
    
    $ Seeder.url
     => "http://est-omnis-voluptatibus.com" 


All of the original methods will also be available to the Seeder module:

    $ Seeder.words
     => ["est", "fugiat", "possimus", "non", "labore", "magnam"]


You can use a helper module like Seeder in any app and put it anywhere. In rails, I like to keep it in `db/seeder.rb`.


 
Installation
------------

As usual, just use the `gem install` command:

    (sudo) gem install wordy
    
Or add wordy as a gem in your Gemfile:

    gem 'wordy', '~> 1.1.0' 

Then run `bundle install`

 
Requirements
------------

Other than rake and bundler for development, Wordy has zero gem dependencies! All it requires is Ruby >= 1.9.2.


Testing
-------

Testing is done with minitest. Run the tests with:

    rake
    


License
-------

Copyright (c) 2011 Spencer Steffen & Citrus, released under the New BSD License All rights reserved.
