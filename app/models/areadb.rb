class Areadb
  @smallareas = []


    uri = URI.parse("http://jws.jalan.net/APICommon/AreaSearch/V1/?key=and1609fe48610")
    xml = Net::HTTP.get(uri)
    json = Hash.from_xml(xml).to_json
    result = JSON.parse(json)
Prefecture"].each_with_index {|pref| @smallareas << area["name"]}



# @smallareas = "APIでとってきたSmallArea" # ["札幌", "函館", ... , "那覇"]

#     @smallareas.each do |key, smallarea|

#       smallarea = SmallArea.where(name: name).first_or_initialize
#       smallarea.name = name
#       # smallarea.prefecture_id = prefecture #余裕があれば
#       smallarea.save
#     end


end

