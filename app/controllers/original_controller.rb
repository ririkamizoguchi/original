class OriginalController < ApplicationController
require 'net/http'
require 'uri'
require 'rexml/document'

  def index
    @post = Post.new
    @posts = Post.page(params[:page]).per(5)
    @situations = Situation.all
    @prefectures = Prefecture.all
    @smallareas = SmallArea.all
  end
  # def show
  #   # @posts = Post.all
  #   @posts = Post.find(params[:id])
  # end
end



