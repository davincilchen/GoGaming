def find_zh_TW(list)
  list['List'].each do |data|
    if data['Lang'] == 'zh-TW'
      return data['Value']
    end
  end
  return 'Unknown'
end

namespace :dev do
  task parse_gostation_list: :environment do
    Gostation.destroy_all

    url = 'https://wapi.gogoro.com/tw/api/vm/list'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    json = JSON.parse(response)

    json['data'].each do |data|
      Gostation.create!(
        LocName:       find_zh_TW( JSON.parse(data['LocName']) ),
        Latitude:      data['Latitude'],
        Longitude:     data['Longitude'],
        ZipCode:       data['ZipCode'],
        Address:       find_zh_TW( JSON.parse(data['Address']) ),
        District:      find_zh_TW( JSON.parse(data['District']) ),
        City:          find_zh_TW( JSON.parse(data['City']) ),
        AvailableTime: data['AvailableTime']
      )
    end

    puts "have created gostations!"
    puts "now you have #{Gostation.count} gostations!"
  end
end