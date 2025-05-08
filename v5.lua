function setValues(address,flags,value)gg.setValues({{address=address,flags=flags,value=value}})end
function setValues(address, flags, value) gg.setValues({[1] = {address = address, flags = flags, value = value}}) end
il2cpp=gg.getRangesList("libunity.so")[1].start
local HexPatches = {}
function HexPatches.MemoryPatch(Lib,Offset,Edit,Type)
local Ranges = gg.getRangesList(Lib)
local v = {}
v[1] = {}
v[1].address = Ranges[1].start + Offset
v[1].flags = Type
v[1].value = Edit.."r"
v[1].freeze = true
gg.setValues(v)
end
HexPatches.MemoryPatch("libunity.so", 0x84a32a0, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a3954, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a4138, "h002C8052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a2dfc, "h002C8052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a3f34, "h002C8052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a2df4, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84b1e6c, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a33b8, "h002C8052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a33b0, "h002C8052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84a45ac, "h002C8052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84b4190, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x84ac898, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x83b9cdc, "h00008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x7a74c7c, "h20008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x543f820, "h00008052C0035FD6", 32); 
HexPatches.MemoryPatch("libunity.so", 0x543f828, "hC0035FD6C0035FD6", 32);

RED = 1
function main()
    RED = gg.choice({
        "ᯓ➤ 𝗕𝗬𝗣𝗔𝗦𝗦 𝗠𝗘𝗡𝗨",  
        "ᯓ➤ 𝗔𝗜𝗠𝗕𝗢𝗧 𝗠𝗘𝗡𝗨",  
        "ᯓ➤ 𝗛𝗔𝗖𝗞𝗦 𝗠𝗘𝗡𝗨",
        "ᯓ➤ 𝗘𝗫𝗜𝗧 𝗠𝗘𝗡𝗨",
        "ᯓ➤ 𝗡𝗢𝗧𝗘",
    }, nil, os.date("\t\t\t\t\t\t\t\t\t👑🅆🄴🄻🄻🄲🄾🄼🄴 🅃🄾 🅁🄴🄳 🄲🄾🄳🄴 🄲🄾🄳🄼👑\n\n🎮 Game Patch : 1.6.50\n\n🗓️ Tanggal: %A, %d-%m-%Y\n🕒 Waktu: %H:%M:%S"))

    if RED == nil then else
        if RED == 1 then bypass() end
        if RED == 2 then bono() end
        if RED == 3 then cheat() end
        if RED == 4 then os.exit() end
        if RED == 5 then Details() end
    end
    RED = -1
end

function Details()
    gg.alert("𝑵𝑶𝑻 𝑹𝑬𝑪𝑶𝑴𝑴𝑬𝑵𝑫𝑬𝑫 𝑷𝑳𝑨𝒀𝑰𝑵𝑮 𝑴𝑷 𝑴𝑶𝑫𝑬. \n 𝑺𝑻𝑨𝒀 𝑷𝑳𝑨𝒀𝑰𝑵𝑮 𝑾𝑰𝑻𝑯 𝑨𝑽𝑶𝑰𝑫𝑰𝑵𝑮 𝑹𝑬𝑷𝑶𝑹𝑻. 𝑻𝑶 𝑩𝑬 𝑺𝑨𝑭𝑬𝑹")
end

function bypass()
local menu = gg.choice({
"ᯓ➤ 𝗕𝗬𝗣𝗔𝗦𝗦 𝗟𝗢𝗚𝗢 𝗞𝗜𝗟𝗟 ",   
"ᯓ➤ 𝗖𝗟𝗘𝗔𝗥 𝗟𝗢𝗚𝗦",  
"𝗕𝗔𝗖𝗞"
}, nil, "👑🅆🄴🄻🄻🄲🄾🄼🄴 🅃🄾 🅁🄴🄳 🄲🄾🄳🄴 🄲🄾🄳🄼👑")
if menu == 1 then logo() end
if menu == 2 then logs() end
if menu == 3 then main() end
end
function logo()
HexPatches.MemoryPatch("libunity.so", 0x502F9E4, "h 20 00 80 52 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x118A28, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x119AB0, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x11A228, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x13481C, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x134868, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x134AF8, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x134EF8, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x242F28, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x244508, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x2448F8, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x2471D8, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x247378, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x3DA1C8, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x3DA47C, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x3DA548, "h 00 00 80 D2 C0 03 5F D6", 32);
HexPatches.MemoryPatch("libanogs.so", 0x3F9964, "h 00 00 80 D2 C0 03 5F D6", 32);
gg.toast("BYPASS ACTIVATED")
end

function logs()
os.remove("/storage/emulated/0/MidasOversea")
os.remove("/storage/emulated/0/tencent")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("/data/data/com.garena.game.codm/app_crashrecord/")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/")
os.remove("/data/data/com.garena.game.codm/app_crashrecord/1004")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/codm_4_2_39.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/comm.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/config2.xml.aac30393")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/config3.xml")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/mrpcs_a.data")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/shellcode_1021")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tdm_cache.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_cef.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_lcp.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_r_record.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss.ano2.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip/data")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip/data2")
gg.toast("Clear Log Success")
end

function bono()
    local menu = gg.multiChoice({
        "ᯓ➤ 𝗔𝗜𝗠𝗕𝗢𝗧 𝗔𝗟𝗟 𝗚𝗨𝗡𝗦",  
        "ᯓ➤ 𝗔𝗜𝗠𝗕𝗢𝗧 𝗟𝗢𝗖𝗞",  
        "𝗕𝗔𝗖𝗞"
    }, nil, "👑🅆🄴🄻🄻🄲🄾🄼🄴 🅃🄾 🅁🄴🄳 🄲🄾🄳🄴 🄲🄾🄳🄼👑")

    if menu then
        if menu[1] then
            D1()
        end
        if menu[2] then
            D2()
        end
        if menu[3] then
            main()
        end
    end
end

function D1()
AIMBOT1 = 0x98887fc
AIMBOT2 = 0x83d45a0
setValues(il2cpp + AIMBOT1, 32, "h4000001CC0035FD6")
setValues(il2cpp + AIMBOT1 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + AIMBOT2, 32, "h4000001CC0035FD6")
setValues(il2cpp + AIMBOT2 + 0x4, 32, "hC0035FD600007A44")
AIMBOT =gg.prompt({"AIMBOT ADJUSTABLE "},nil,{"number"})
if AIMBOT and AIMBOT [1] then
setValues(il2cpp + AIMBOT1 + 0x8, 16, AIMBOT[1])
setValues(il2cpp + AIMBOT2 + 0x8, 16, AIMBOT[1])
gg.toast("AIM ALL GUNS ACTIVATED")
end

end
function D2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.00649232e-45F;0.69999998808F;0.69999998808F;0.69999998808F;0.69999998808F;7.00649232e-45F;0.5F;0.5F;0.5F;0.60000002384F;0.60000002384F", gg.TYPE_FLOAT)
gg.refineNumber("0.5;0.69999998808", gg. TYPE_FLOAT)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("360", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AIM LOCK ACTIVATED")
end

function cheat()
RED = gg.multiChoice({
"𝗡𝗢𝗥𝗠𝗔𝗟 𝗪𝗔𝗟𝗟 𝗛𝗔𝗖𝗞",  
"𝗥𝗘𝗗 𝗪𝗔𝗟𝗟 𝗛𝗔𝗖𝗞",  
"𝗡𝗢 𝗥𝗘𝗟𝗢𝗔𝗗",  
"𝗡𝗢 𝗦𝗣𝗥𝗘𝗔𝗗",  
"𝗟𝗘𝗦𝗦 𝗦𝗣𝗥𝗘𝗔𝗗",  
"𝗟𝗘𝗦𝗦 𝗥𝗘𝗖𝗢𝗜𝗟",  
"𝗔𝗗𝗝𝗨𝗦𝗧𝗔𝗕𝗟𝗘 𝗙𝗔𝗦𝗧 𝗦𝗖𝗢𝗣𝗘",  
"𝗛𝗜𝗧𝗕𝗞𝗫",  
"𝗪𝗘𝗔𝗣𝗢𝗡 𝗥𝗔𝗡𝗚𝗘",  
"𝗙𝗔𝗦𝗧 𝗦𝗛𝗢𝗢𝗧 𝗦𝗥",  
"𝗥𝗔𝗣𝗜𝗗 𝗦𝗥",  
"𝗡𝗢 𝗙𝗟𝗔𝗦𝗧 𝗕𝗔𝗡𝗚 ",  
"𝗔𝗗𝗩𝗔𝗡𝗖𝗘 𝗨𝗔𝗩",  
"𝗙𝗔𝗦𝗧 𝗦𝗪𝗜𝗧𝗖𝗛",  
"𝗕𝗥 𝗧𝗔𝗚𝗦",  
"𝗠𝗣 𝗧𝗔𝗚𝗦",  
"𝗡𝗢 𝗣𝗔𝗥𝗔𝗖𝗛𝗨𝗧𝗘",  
"𝗙𝗨𝗟𝗟 𝗦𝗖𝗥𝗘𝗘𝗡 𝗟𝗢𝗡𝗚 𝗘𝗫𝗘𝗖𝗨𝗧𝗘", 
"𝗪𝗔𝗟𝗞 𝗨𝗡𝗗𝗘𝗥 𝗪𝗔𝗧𝗘𝗥",  
"𝗡𝗢 𝗚𝗥𝗔𝗩𝗜𝗧𝗬 𝗣𝗨𝗠𝗣",  
"𝗣𝗨𝗠𝗣 + 𝗝𝗨𝗠𝗣 𝗕𝗢𝗢𝗦𝗧",  
"𝗦𝗣𝗘𝗘𝗗 𝗫2.5",  
"𝗦𝗣𝗘𝗖 𝗡𝗞 𝗗𝗘𝗟𝗔𝗬",  
"𝗙𝗔𝗦𝗧 𝗦𝗡𝗢𝗪 𝗕",  
"𝗔𝗗𝗝𝗨𝗦𝗧𝗔𝗕𝗟𝗘 𝗦𝗣𝗘𝗘𝗦",  
"𝗔𝗗𝗝𝗨𝗦𝗧𝗔𝗕𝗟𝗘 𝗦𝗨𝗣𝗘𝗥 𝗝𝗨𝗠𝗣",  
"𝗔𝗗𝗝𝗨𝗦𝗧𝗔𝗕𝗟𝗘 𝗦𝗟𝗜𝗗𝗘 𝗨𝗡𝗟𝗜",  
"𝗔𝗗𝗝𝗨𝗦𝗧𝗔𝗕𝗟𝗘 𝗙𝗔𝗦𝗧 𝗦𝗪𝗜𝗠",  
"𝗥𝗘𝗗 𝗘𝗦𝗣 𝗟𝗜𝗡𝗘",  
"𝗪𝗔𝗟𝗟 𝗦𝗛𝗢𝗧",  
"𝗡𝗢 𝗦𝗢𝗠𝗞𝗘"
})
if RED == nil then main()else
if RED[1] == true then h1()end
if RED[2] == true then h2()end
if RED[3] == true then h3()end
if RED[4] == true then h4()end
if RED[5] == true then h5()end
if RED[6] == true then h6()end
if RED[7] == true then h7()end
if RED[8] == true then h8()end
if RED[9] == true then h9()end
if RED[10] == true then h10()end
if RED[11] == true then h11()end
if RED[12] == true then h12()end
if RED[13] == true then h13()end
if RED[14] == true then h14()end
if RED[15] == true then h15()end
if RED[16] == true then h16()end
if RED[17] == true then h17()end
if RED[18] == true then h18()end
if RED[19] == true then h19()end
if RED[20] == true then h20()end
if RED[21] == true then h21()end
if RED[22] == true then h22()end
if RED[23] == true then h23()end
if RED[24] == true then h24()end
if RED[25] == true then h25()end
if RED[26] == true then h26()end
if RED[27] == true then h27()end
if RED[28] == true then h28()end
if RED[29] == true then h29()end
if RED[30] == true then h30()end
if RED[31] == true then h31()end
end
RED = -1
end



function h1()
HexPatches.MemoryPatch("libunity.so", 0x6622bd0, "h1F 20 03 D5 E0 03 13 AA", 4);
gg.toast("NORMAL WALLHACK ACTIVATED")
end

function h2()
WH= 0x415a34c
setValues(il2cpp + WH , 32, "h4000001CC0035FD6")
setValues(il2cpp + WH+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + WH+ 0x8, 16, 100)
HexPatches.MemoryPatch("libunity.so", 0x83ffdd0, "h20008052C0035FD6", 32)
gg.toast("RED WALLHACK ACTIVATED")
end

function h3()
RELOAD= 0x857bc6c
RELOAD1= 0x986423c
setValues(il2cpp + RELOAD , 32, "h4000001CC0035FD6")
setValues(il2cpp + RELOAD+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + RELOAD+ 0x8, 16, 0.0001)
setValues(il2cpp + RELOAD1 , 32, "h4000001CC0035FD6")
setValues(il2cpp + RELOAD1+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + RELOAD1+ 0x8, 16, 0.0001)
gg.toast("NO RELOAD ACTIVATED")
end

function h4()
HexPatches.MemoryPatch("libunity.so", 0x85ba408, "hC0035FD6C0035FD6", 32);
CROSS= 0x98c2a58
setValues(il2cpp + CROSS , 32, "h4000001CC0035FD6")
setValues(il2cpp + CROSS+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + CROSS+ 0x8, 16, 0.0001)
SPREAD1= 0x85ba160
setValues(il2cpp + SPREAD1 , 32, "h4000001CC0035FD6")
setValues(il2cpp + SPREAD1+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + SPREAD1+ 0x8, 16, 0.0001)
gg.toast("NO SPREAD ACTIVATED")
end

function h5()
LESS1= 0x85b9af8
setValues(il2cpp + LESS1 , 32, "h4000001CC0035FD6")
setValues(il2cpp + LESS1+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + LESS1+ 0x8, 16, 0.0001)
LESS2= 0x858cc5c
setValues(il2cpp + LESS2 , 32, "h4000001CC0035FD6")
setValues(il2cpp + LESS2+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + LESS2+ 0x8, 16, 0.0001)
gg.toast("LESS SPREAD ACTIVATED")
end

function h6()
RECOIL1 = 0x85baa44
setValues(il2cpp + RECOIL1, 32, "h4000001CC0035FD6")
setValues(il2cpp + RECOIL1 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + RECOIL1+ 0x8, 16, 0.0001)
RECOIL2 = 0x85bb9f0
setValues(il2cpp + RECOIL2, 32, "h4000001CC0035FD6")
setValues(il2cpp + RECOIL2 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + RECOIL2 + 0x8, 16, 0.0001)
HexPatches.MemoryPatch("libunity.so",0x83b5234,"hC0035FD6C0035FD6",32)
gg.toast("NO RECOIL ACTIVATED")
end

function h7()
SCOPE= 0x9862350
setValues(il2cpp + SCOPE , 32, "h4000001CC0035FD6")
setValues(il2cpp + SCOPE+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + SCOPE+ 0x8, 16, 0.0001)
gg.toast("FAST SCOPE ACTIVATED")
end

function h8()
HexPatches.MemoryPatch("libunity.so", 0x85831f4, "h20008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x85b4ccc, "h20008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x85b55ac, "h20008052C0035FD6", 32)
gg.toast("HIT BOX ACTIVATED")
end

function h9()
RANGE1 = 0x9865e00
setValues(il2cpp + RANGE1, 32, "h4000001CC0035FD6")
setValues(il2cpp + RANGE1 + 0x4, 32, "hC0035FD600007A44")
RANGE =gg.prompt({"RANGE ADJUSTABLE "},nil,{"number"})
if RANGE and RANGE [1] then
setValues(il2cpp + RANGE1 + 0x8, 16, RANGE[1])
gg.toast("RANGE ACTIVATED")
end
end

function h10()
FASTSHOOT1 = 0x989e830
FASTSHOOT2 = 0x857a7a0
setValues(il2cpp + FASTSHOOT1 , 32, "h4000001CC0035FD6")
setValues(il2cpp + FASTSHOOT1+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + FASTSHOOT1+ 0x8, 16, 0.001)
setValues(il2cpp + FASTSHOOT2 , 32, "h4000001CC0035FD6")
setValues(il2cpp + FASTSHOOT2+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + FASTSHOOT2+ 0x8, 16, 0.1)
gg.toast("FAST SHOOT ACTIVATED")
end

function h11()
HexPatches.MemoryPatch("libunity.so", 0x98634f4, "h00008052C0035FD6", 32)
gg.toast("RAPID SR ACTIVATED")
end

function h12()
FLASH = 0x8407788
setValues(il2cpp + FLASH, 32, "h4000001CC0035FD6")
setValues(il2cpp + FLASH + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + FLASH + 0x8, 16, 0.0001)
gg.toast("NO FLASH BANG ACTIVATED")
end

function h13()
HexPatches.MemoryPatch("libunity.so", 0x544e174, "h20008052C0035FD6", 32)
gg.toast("ADVANCE UAV ACTIVATED")
end

function h14()
SWITCH = 0x9864bcc
setValues(il2cpp + SWITCH, 32, "h4000001CC0035FD6")
setValues(il2cpp + SWITCH + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + SWITCH + 0x8, 16, 0.1)
gg.toast("FAST SWITCH ACTIVATED")
end

function h15()
HexPatches.MemoryPatch("libunity.so", 0x5770e24, "h20008052C0035FD6", 32)
gg.toast("BR TAGS ACTIVATED")
end

function h16()
HexPatches.MemoryPatch("libunity.so", 0x71e6f9c, "h20008052C0035FD6", 32)
gg.toast("MP TAGS ACTIVATED")
end

function h17()
HexPatches.MemoryPatch("libunity.so", 0x8fb9a90, "hC0035FD6C0035FD6", 32)
gg.toast("NO PARACHUTE ACTIVATED")
end

function h18()
HexPatches.MemoryPatch("libunity.so", 0x541a49c, "h20008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x541679c, "h00008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x7289b78, "h20008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x54199fc, "h00008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x541b420, "h20008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x54188e0, "h20008052C0035FD6", 32)
gg.toast("LONG EXECUTE ACTIVATED")
end

function h19()
WATER = 0x664b520
setValues(il2cpp + WATER, 32, "h4000001CC0035FD6")
setValues(il2cpp + WATER + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + WATER + 0x8, 16, 0.0001)
gg.toast("UNDER WATER ACTIVATED")
end

function h20()
PUMP = 0x7d31b30
setValues(il2cpp + PUMP, 32, "h4000001CC0035FD6")
setValues(il2cpp + PUMP + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + PUMP + 0x8, 16, 0.0001)
gg.toast("NO GRAVITY PUMP ACTIVATED")
end

function h21()
HexPatches.MemoryPatch("libunity.so", 0x72be95c, "h20008052C0035FD6", 32)
gg.toast("BOOST ACTIVATED")
end

function h22()
HexPatches.MemoryPatch("libunity.so", 0x6500a08, "h0090201EC0035FD6", 32)
gg.toast("SPEED ACTIVATED")
end

function h23()
HexPatches.MemoryPatch("libunity.so", 0x576aaf8, "hC0035FD6C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x64c54e0, "h00008052C0035FD6", 32)
HexPatches.MemoryPatch("libunity.so", 0x64c5550, "h00008052C0035FD6", 32)
gg.toast("SPEC NO DELAY ACTIVATED")
end

function h24()
SNOW1 = 0x6552114
SNOW2 = 0x655206c
setValues(il2cpp + SNOW1, 32, "h4000001CC0035FD6")
setValues(il2cpp + SNOW1 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + SNOW2, 32, "h4000001CC0035FD6")
setValues(il2cpp + SNOW2 + 0x4, 32, "hC0035FD600007A44")
SNOW = gg.prompt({"Snow Board Boost Adjustable[1; 500]"}, nil, {"number"})
if SNOW and SNOW [1] then
setValues(il2cpp + SNOW1 + 0x8, 16, SNOW[1])
setValues(il2cpp + SNOW2 + 0x8, 16, SNOW[1])
gg.toast("FAST SNOW BOARD ACTIVATED")
end
end

function h25()
SPEED = 0x6500cd8
setValues(il2cpp + SPEED, 32, "h4000001CC0035FD6")
setValues(il2cpp + SPEED + 0x4, 32, "hC0035FD600007A44")
RUN = gg.prompt({"Speed Hack Adjustable[1; 100]"}, nil, {"number"})
if RUN and RUN[1] then
setValues(il2cpp + SPEED + 0x8, 16, RUN[1])
gg.toast("SPEED HACK ACTIVATED")
end
end

function h26()
HexPatches.MemoryPatch("libunity.so", 0x576aaf8, "hC0035FD6C0035FD6", 32)
JUMP1 = 0x64fb218
JUMP2 = 0x654acc8
JUMP3 = 0x654acd0
JUMP4 = 0x654aef0
JUMP5 = 0x654af7c
setValues(il2cpp + JUMP1, 32, "h4000001CC0035FD6")
setValues(il2cpp + JUMP1 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + JUMP2, 32, "h4000001CC0035FD6")
setValues(il2cpp + JUMP2 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + JUMP3, 32, "h4000001CC0035FD6")
setValues(il2cpp + JUMP3 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + JUMP4, 32, "h4000001CC0035FD6")
setValues(il2cpp + JUMP4 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + JUMP5, 32, "h4000001CC0035FD6")
setValues(il2cpp + JUMP5 + 0x4, 32, "hC0035FD600007A44")
JUMP = gg.prompt({"High Jump Adjustable[1; 10]"}, nil, {"number"})
if JUMP and JUMP [1] then
setValues(il2cpp + JUMP1 + 0x8, 16, JUMP[1])
setValues(il2cpp + JUMP2 + 0x8, 16, JUMP[1])
setValues(il2cpp + JUMP3 + 0x8, 16, JUMP[1])
setValues(il2cpp + JUMP4 + 0x8, 16, JUMP[1])
setValues(il2cpp + JUMP5 + 0x8, 16, JUMP[1])
gg.toast("HIGH JUMP ACTIVATED")
end
end

function h27()
HexPatches.MemoryPatch("libunity.so", 0x8fd89b4, "hC0035FD6C0035FD6", 32)
SLIDE1 = 0x8fd7a60
SLIDE2 = 0x8fd7c78
SLIDE3 = 0x8fd7c94
setValues(il2cpp + SLIDE1, 32, "h4000001CC0035FD6")
setValues(il2cpp + SLIDE1 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + SLIDE2, 32, "h4000001CC0035FD6")
setValues(il2cpp + SLIDE2 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + SLIDE3, 32, "h4000001CC0035FD6")
setValues(il2cpp + SLIDE3 + 0x4, 32, "hC0035FD600007A44")
SLIDE = gg.prompt({"Unli Slide Adjustable[1; 100]"}, nil, {"number"})
if SLIDE and SLIDE [1] then
setValues(il2cpp + SLIDE1 + 0x8, 16, SLIDE[1])
setValues(il2cpp + SLIDE2 + 0x8, 16, SLIDE[1])
setValues(il2cpp + SLIDE3 + 0x8, 16, SLIDE[1])
 gg.toast("UNLI SLIDE ACTIVATED")
end
end

function h28()
SWIM1 = 0x6649948
setValues(il2cpp + SWIM1, 32, "h4000001CC0035FD6")
setValues(il2cpp + SWIM1 + 0x4, 32, "hC0035FD600007A44")
SWIM = gg.prompt({"Swim Boost Adjustable[1; 100]"}, nil, {"number"})
if SWIM and SWIM [1] then
setValues(il2cpp + SWIM1 + 0x8, 16, SWIM[1])
gg.toast("BOOST SWIM ACTIVATED")
end
end

function h29()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.setVisible(false)
gg.searchNumber("h 00 00 80 40 00 00 80 3F 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 40 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
results = gg.getResults(99999)
gg.editAll("h 00 00 48 42 00 00 80 3F 00 00 96 43 00 00 00 00 00 00 00 00 00 00 40 40", gg.TYPE_BYTE)
gg.toast("ANTHENA ACTIVATED")
end


function h30()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("4,611,686,019,501,129,728", gg.TYPE_QWORD)
gg.refineNumber("4,611,686,019,501,129,728", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("3,497,450,139,768,418,399", gg.TYPE_QWORD)
gg.refineNumber("3,497,450,139,768,418,399", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("4,572,054,341,912,048,435", gg.TYPE_QWORD)
gg.refineNumber("4,572,054,341,912,048,435", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("3,746,994,890,844,667,904", gg.TYPE_QWORD)
gg.refineNumber("3,746,994,890,844,667,904", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("9,187,343,237,679,939,583", gg.TYPE_QWORD)
gg.refineNumber("9,187,343,237,679,939,583", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("4,094,254,846,621,890,327", gg.TYPE_QWORD)
gg.refineNumber("4,094,254,846,621,890,327", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("4,683,734,607,009,413,071", gg.TYPE_QWORD)
gg.refineNumber("4,683,734,607,009,413,071", gg.TYPE_QWORD)
gg.getResults(9999999)
gg.editAll("0", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.setVisible(false)
gg.searchNumber("2", gg.TYPE_DWORD)
gg.refineNumber("-999", gg.TYPE_DWORD)
gg.getResults(9999999)
gg.clearResults()
gg.editAll("0", gg.TYPE_QWORD)
end


function h31()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300000045", gg.TYPE_DWORD)
gg.refineNumber("300000045", 4)
var = gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300000065", gg.TYPE_DWORD)
gg.refineNumber("300000065", 4)
var = gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300000090", gg.TYPE_DWORD)
gg.refineNumber("300000090", 4)
var = gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
end


function exit()
os.exit()
end

while true do
if gg.isVisible(true) then
RED = 1
gg.setVisible(false)
end
if RED == 1 then
main()
end
end
