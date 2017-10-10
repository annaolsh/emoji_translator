class StoriesController < ApplicationController

  def index
    stories = Story.all
    render json: stories

  end

  def show
    story = Story.find(params[:id])
    render json: story
  end

  def create
    story = Story.new(story_params)
    story.save
    render json: story
  end

  def update

    story = Story.find(params[:id])
    story.update(story_params)
    story.save
    stories = Story.all
    render json: stories

  end

  def destroy
    story = Story.find(params[:id])
    story.destroy
    render json: Story.all
  end

  private

  def story_params
    params.require(:story).permit(:original_content, :translated_content, :title, :created_at, :updated_at)
  end

end
