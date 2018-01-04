class OriginalController < ApplicationController
require 'net/http'
require 'uri'
require 'rexml/document'

def index
    @posts = Post.new
    @situations = Situation.all
    @prefectures = Prefecture.all
    @smallareas = SmallArea.all

    ### 都道府県 ###

    # hokkaido # 北海道

    # for i in 1..10 do # 北海道と沖縄以外
    #   prefecture(i)
    # end

    # okinawa # 沖縄

    # # p @prefectures
    # p @prefectures


    ### 地域 ###

    # area


  end



end




