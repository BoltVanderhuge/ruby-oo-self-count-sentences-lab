require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  # def count_sentences
  #   self.split(/[!?.]/).reject(&:empty?).length
  # end
  def count_sentences
    total_sentences = self.split(/[!?.]/)
    total_sentences.select {|sentence| sentence != ""}.length
  end

  #  binding.pry

end