class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :"figures/index"
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"figures/new"
  end

  post "/figures" do
    binding.pry
  @figure = Figure.create(params[:figure])
  if !params["title"]["name"].empty?
       @figure.titles << Title.create(name: params["title"]["name"])
      end

  if !params["landmark"][:name].empty?
  @figure.landmarks << Landmark.create(name: params["landmark"]["name"])
  end

end



end
