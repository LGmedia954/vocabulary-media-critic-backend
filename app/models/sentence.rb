class Sentence < ApplicationRecord
  belongs_to :vocabulary_word
  # validates :example, :presence => {:message => "Please enter a sentence using this word."}
  # validates :example, :length => {:maximum => 150, :message => "Limit 150 characters."}

  #Obscenity gem is no longer being maintained. Basic filtering added below. RIP comedian George Carlin.

  #validates :sentence, exclusion: { in: %w(shit piss fuck cunt cocksucker motherfucker tits), message: "Wash your mouth out with soap!" }
end
