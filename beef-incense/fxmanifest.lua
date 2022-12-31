game 'gta5'
fx_version 'cerulean'
lua54        'yes'

shared_script {
	'@ox_lib/init.lua',
	'@es_extended/imports.lua'
}

client_scripts {
	"core/client.lua",
	"config.lua"
} 

server_scripts {
	"core/server.lua",
	"config.lua"
}

files {
	"stream/prop_decal_thai_03.ydr",
	"stream/lotus.ydr",
	"peds.meta"
}

data_file "PED_METADATA_FILE" "peds.meta"
data_file 'DLC_ITYP_REQUEST' 'stream/main_ytyp.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/lotus.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/int_residential.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/sum_int_mp_h_props.ytyp'

--
--