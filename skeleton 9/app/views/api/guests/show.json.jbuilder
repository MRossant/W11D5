json.partial! 'api/guests/guest', guest: @guest
json.gifts do
    json.array! @guest.gifts do |gift|
        # json.title gift.title
        # json.description gift.description
        json.extract! gift, :title, :description
    end
end