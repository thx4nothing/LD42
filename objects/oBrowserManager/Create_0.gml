/// @description Insert description here
selected_index_ = 0

#macro OFFIL layer_set_visible(layer_get_id("InternetLabel"), false)
#macro OFFIE layer_set_visible(layer_get_id("InternetElements"), false)
#macro OFFDL layer_set_visible(layer_get_id("DownloadElements"), false)
#macro OFFDE layer_set_visible(layer_get_id("DownloadLabel"), false)
#macro OFFHE layer_set_visible(layer_get_id("HardwareElements"), false)

#macro ONIL layer_set_visible(layer_get_id("InternetLabel"), true)
#macro ONIE layer_set_visible(layer_get_id("InternetElements"), true)
#macro ONDL layer_set_visible(layer_get_id("DownloadElements"), true)
#macro ONDE layer_set_visible(layer_get_id("DownloadLabel"), true)
#macro ONHE layer_set_visible(layer_get_id("HardwareElements"), true)


OFFIL
OFFIE
OFFDL
OFFDE