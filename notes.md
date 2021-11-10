# Javascript Project Notes

MODELS and ASSOCATIONS

Vocabulary_Word

- has_many sentences
  • word
  • part_of_speech
  • definition

Sentence

- belongs_to vocabulary_word
  • example
  • vocabulary_word_id

WHAT THE PROGRAM DOES

- When a user loads the webpage, they see a list of vocabulary words.
- As a user, I should be able to see the word and the definition as I click to reveal.
- As a user, I should be able to type a sentence into the input field.
- As a user, I should be able to click some form of a submit button.
- As a user, the sentence string that I provided should appear on the DOM after the submit button has been activated.

AJAX/FETCH REQUESTS

- On initial page load, a Get Request is made for all Vocabulary Words
- Upon user mouse action, a Get Request is made for Word definition(s) to show
- Clicking will Fetch a Request(form) that will prompt the user to enter their own sentence using that word
- A Post Request will be made to create and add that sentence to the DOM.
