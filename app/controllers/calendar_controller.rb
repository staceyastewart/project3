class CalendarController < ApplicationController
    def index

  end
  def create
    InformedFavorite.create(
      user_id: params[:user_id],
      animals: params[:animals],
      bullying: params[:bullying],
      disasters: params[:disasters],
      discrimination: params[:discrimination],
      education: params[:education],
      environment: params[:environment],
      homelessness: params[:homelessness],
      physical_health: params[:physical_health],
      mental_health: params[:mental_health],
      poverty: params[:poverty],
      relationships: params[:relationships],
      sex: params[:sex],
      violence: params[:violence]
      )
    end
end
