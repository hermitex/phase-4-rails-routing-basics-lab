Rails.application.routes.draw do
  get '/students' => 'students#index'

  get '/students/grades' => 'students#grades'

  get '/students/highest-grade' => 'students#highest_grade'
end
