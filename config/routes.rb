Rails.application.routes.draw do

  get 'question', to: "questions#ask", as: :ask

  get 'answer', to: 'questions#answer'

end
