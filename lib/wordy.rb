require "wordy/version"

module Wordy

  extend self
  
  WORDS = %w(alias consequatur perferendis voluptatem accusantium doloremque aperiam eaque ipsa quae illo inventore veritatis quasi architecto beatae vitae dicta sunt explicabo aspernatur aut odit aut fugit sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt neque dolorem ipsum quia dolor sit amet consectetur adipisci velit sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem ut enim ad minima veniam quis nostrum exercitationem ullam corporis nemo enim ipsam voluptatem quia voluptas sit suscipit laboriosam nisi ut aliquid ex ea commodi consequatur quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae et iusto odio dignissimos ducimus qui blanditiis praesentium laudantium totam rem voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident sed ut perspiciatis unde omnis iste natus error similique sunt in culpa qui officia deserunt mollitia animi id est laborum et dolorum fuga et harum quidem rerum facilis est et expedita distinctio nam libero tempore cum soluta nobis est eligendi optio cumque nihil impedit quo porro quisquam est qui minus id quod maxime placeat facere possimus omnis voluptas assumenda est omnis dolor repellendus temporibus autem quibusdam et aut consequatur vel illum qui dolorem eum fugiat quo voluptas nulla pariatur accusamus officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint molestiae non recusandae itaque earum rerum tenetur sapiente delectus reiciendis voluptatibus maiores doloribus asperiores repellat)

  def body(count=nil, sentence_count=nil, sentence_length=nil)
    paragraphs(count, sentence_count, sentence_length).join("\n\n")
  end
  
  def paragraphs(count=nil, sentence_count=nil, sentence_length=nil)
    count ||= 2 + rand(3)
    Array.new(count) {|i| 
      i = paragraph(sentence_count)
    }
  end
  
  def paragraph(sentence_count=nil, sentence_length=nil)
    sentences(sentence_count, sentence_length).join(" ")
  end
  
  def sentences(sentence_count=nil, sentence_length=nil)
    sentence_count ||= 2 + rand(5)
    Array.new(sentence_count) {|i|
      i = sentence(sentence_length)
    }
  end
    
  def sentence(length=nil)
    length ||= 5 + rand(10)
    words(length).join(" ").capitalize + "."
  end
  
  def words(length=nil)
    length ||= 2 + rand(5)
    WORDS.shuffle.take(length)
  end
  
  def word
    WORDS[rand(WORDS.length)]
  end

end
