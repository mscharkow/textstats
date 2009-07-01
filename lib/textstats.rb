class String
  def words
    scan(/\w[\w\'\-]*/)
  end
  
  def avg_word_length
    Float(words.collect{|w|w.size}.inject(nil){|sum,x|sum ? sum + x : x})/words.size
  end
  
  def sentences
    out = scan(/(\.|\?|\!|:)(\s+[A-Z]|$)/).size
    (out > 0) ? out : 1
  end
  
  def avg_sentence_length
    Float(words.size/sentences)
  end
  
  def puncts
    scan(/(\s-\s|,|;|\(|\)|\")/)
  end
  
  def punct_ratio
    Float(puncts.size)/size
  end
  
  def type_token_ratio(downcase=false)
    if downcase
      w = words.map{|w|w.downcase}
    else
      w = words
    end
    Float(w.uniq.size)/w.size
  end
  
  def word_freqs
    wl = Hash.new(0)
    words.each{|w|wl[w] +=1}
    wl.sort{|a,b| a[1]<=>b[1]}.reverse
  end
  

  def long_words(size=6)
    wl = []
    words.each{|w|wl << w if w.size >= size}
    wl
  end
  
  def ari
    (4.71 * avg_word_length) + (0.5 * avg_sentence_length) - 21.43
  end
  
  def clf
    (5.89 * avg_word_length) - (0.4 * 100.0/avg_sentence_length) - 15.8
  end
  
  
end
