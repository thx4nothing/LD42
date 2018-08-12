// needed for visualisation
selected_tabindex_ = 0 // 0 = Torrents, 1 = hardware, 2 = internet
selected_categoryindex_ = 0 // 0 = games, 1 = music, 2 = movie

startX_ = 250;
startY_ = 80;
width_ = 331;
height_ = 152;
hDist_ = 20;
scrollY = 0;

myList = ds_list_create();

#macro OFFIL layer_set_visible(layer_get_id("InternetLabel"), false)
#macro OFFIE layer_set_visible(layer_get_id("InternetElements"), false)
#macro OFFDL layer_set_visible(layer_get_id("DownloadElements"), false)
#macro OFFDE layer_set_visible(layer_get_id("DownloadLabel"), false)
#macro OFFHE layer_set_visible(layer_get_id("HardwareElements"), false)
#macro OFFHL layer_set_visible(layer_get_id("HardwareLabel"), false)

#macro ONIL layer_set_visible(layer_get_id("InternetLabel"), true)
#macro ONIE layer_set_visible(layer_get_id("InternetElements"), true)
#macro ONDL layer_set_visible(layer_get_id("DownloadElements"), true)
#macro ONDE layer_set_visible(layer_get_id("DownloadLabel"), true)
#macro ONHE layer_set_visible(layer_get_id("HardwareElements"), true)
#macro ONHL layer_set_visible(layer_get_id("HardwareLabel"), false)

OFFIL
OFFIE
ONDL
ONDE
OFFHE
OFFHL