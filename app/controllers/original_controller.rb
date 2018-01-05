class OriginalController < ApplicationController
require 'net/http'
require 'uri'
require 'rexml/document'

  def index
    @posts = Post.new
    @situations = Situation.all
    @prefectures = Prefecture.all
    @smallareas = SmallArea.all
  end
  def show
    @posts = Post.all
    # @posts = Post.find(params[:id])
  end
end




