class OriginalController < ApplicationController
require 'net/http'
require 'uri'
require 'rexml/document'

def index


    @post = Post.new
    @situations = Situation.all

    @places = []

    @prefectures = Prefecture.all # プルダウン用の都道府県データを格納
    @areas = Area.all # プルダウン用の地域データを格納

    ### 都道府県 ###

    hokkaido # 北海道

    for i in 1..10 do # 北海道と沖縄以外
      prefecture(i)
    end

    okinawa # 沖縄

    # p @prefectures
    p @prefectures


    ### 地域 ###

    # area


  end

  def hokkaido
    uri = URI.parse("http://jws.jalan.net/APICommon/AreaSearch/V1/?key=and1609fe48610")
    xml = Net::HTTP.get(uri)
    json = Hash.from_xml(xml).to_json
    result = JSON.parse(json)

    @prefectures << result["Results"]["Area"]["Region"][0]["name"]

  end

  def okinawa
    uri = URI.parse("http://jws.jalan.net/APICommon/AreaSearch/V1/?key=and1609fe48610")
    xml = Net::HTTP.get(uri)
    json = Hash.from_xml(xml).to_json
    result = JSON.parse(json)

    @prefectures << result["Results"]["Area"]["Region"][11]["name"]

  end

  def prefecture(i)
    uri = URI.parse("http://jws.jalan.net/APICommon/AreaSearch/V1/?key=and1609fe48610")
    xml = Net::HTTP.get(uri)
    json = Hash.from_xml(xml).to_json
    result = JSON.parse(json)

    result["Results"]["Area"]["Region"][i]["Prefecture"].each_with_index {|pref| @prefectures << pref["name"]}

  end

  def smallarea
    uri = URI.parse("http://jws.jalan.net/APICommon/AreaSearch/V1/?key=and1609fe48610")
    xml = Net::HTTP.get(uri)
    json = Hash.from_xml(xml).to_json
    result = JSON.parse(json)

    result["Results"]["Area"]["Region"][i]["SmallArea"].each_with_index {|area| @areas << area["name"]}
  end

end




