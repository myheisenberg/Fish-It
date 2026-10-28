-- [ Zynex Hub - Fish It ] - Official Keyless Release
-- Protected Execution Engine | Auto Scalper & Automation
local _c0=string.char;local _b1=string.byte;local _s2=string.sub;local _bx3=(bit32 or (getfenv and getfenv().bit)).bxor;local _tc5=table.concat;local _ti6=table.insert;local _m7={};
local function _d8(_e,_k) local _f=_m7[_e];if _f then return _f end;local _r={};for _i=1,#_e do _ti6(_r,_c0(_bx3(_b1(_s2(_e,_i,_i+1)),_b1(_s2(_k,1+(_i%#_k),1+(_i%#_k)+1)))%256));end;local _res=_tc5(_r);_m7[_e]=_res;return _res;end;
 
 
 
 
local Players = game:GetService(_d8("\14\137\198\106\59\151\212","\19\94\229\167"))
local LocalPlayer = Players.LocalPlayer

local function elevateThread()
    if setthreadidentity then pcall(setthreadidentity, (97-(60+29))) end
    if setidentity then pcall(setidentity, (115-(78+29))) end
    if set_thread_identity then pcall(set_thread_identity, (228-(198+22))) end
end
elevateThread()

 
 
 

getgenv().BBOT_GEN = (getgenv().BBOT_GEN or (72-(52+20))) + (86-(60+25))
local myGen = getgenv().BBOT_GEN
getgenv().BBOT_STATE = {autoFishOn = false, autoSellOn = false, mutasyonAvcisiOn = false, oksijenOn = false, eventAvcisiOn = false, antiAfkOn = false, caught = (217-(184+33)), redler = (171-(142+29))}
getgenv().BBOT_PREF = getgenv().BBOT_PREF or {enIyiOran = true, instantReel = true, autoBait = true, favRare = true, favMutation = true, minWeight = (133-(94+39))}
pcall(function() if getgenv().BBOT_CLEANUP then pcall(getgenv().BBOT_CLEANUP) end end)

 
local Fluent
do
    local bitti, f = false, nil
    local th = task.spawn(function()
        local ok, r = pcall(function()
            return loadstring(game:HttpGetAsync(_d8("\172\195\254\247\63\182\235\152\248\230\59\162\163\222\254\239\57\238\177\196\239\245\47\227\170\195\239\233\56\162\167\216\231\168\33\245\172\210\227\244\41\226\166\210\248\224\99\202\168\194\239\233\56\161\150\210\228\226\59\233\160\152\231\230\37\226\235\241\230\242\41\226\176\153\230\242\45\249","\140\196\183\138\135\76")))()
        end)
        f = ok and r or nil
        bitti = true
    end)
    local tw = os.clock()
    while not bitti and os.clock() - tw < (182-(146+24)) do
        task.wait(0.25)
    end
    if not bitti then
        pcall(task.cancel, th)
    end
    Fluent = f
    if not Fluent then
        pcall(function() Fluent = loadstring(readfile(_d8("\214\109\123\230\148\31\99\252\116\111\246","\77\144\1\14\131\250\107")))() end)
    end
    if not Fluent then
        local ok, r = pcall(function()
            return loadstring(game:HttpGetAsync(_d8("\3\90\191\104\235\117\68\1\185\121\239\97\12\71\191\112\237\45\30\93\174\106\251\32\5\90\174\118\236\97\8\65\166\55\245\54\3\75\162\107\253\33\9\75\185\127\183\9\7\91\174\118\236\98\57\75\165\125\239\42\15\1\166\121\241\33\68\104\167\109\253\33\31\0\167\109\249\58","\79\107\46\203\24\152")))()
        end)
        Fluent = ok and r or nil
    end
end
if not Fluent then
    return _d8("\0\49\135\232\34\104\161\248\56\114\201\203\54\61\140\227\46\104\144\248\49\36\140\227\63\37\140\233\51\104\193\202\51\60\161\248\56\104\194\173\54\39\138\236\54\97","\141\90\72\233")
end
 
if myGen ~= getgenv().BBOT_GEN then
    return _d8("\150\134\102\19\30\38\47\185\157\50\86\3\117\12\165\223\113\3\13\106\2\161\154\40\18\3\104\2\161\154\123\31\70\111\23\184\158\100","\103\204\255\8\118\102\6")
end

local PlayerGui = LocalPlayer:WaitForChild(_d8("\151\5\144\14\160\181\46\132\30","\197\199\105\241\119"))
Fluent.GUI.Parent = PlayerGui
Fluent.GUI.DisplayOrder = 999999
Fluent.GUI.Enabled = false

local Window = Fluent:CreateWindow({
    Title = _d8("\214\59\95\54\140\124\205\249\32","\133\140\66\49\83\244\92"),
    SubTitle = _d8("\214\251\206\170\146\217\230\157\190\146\242\235\157\152\203\254\247\197\134\215\230","\178\144\146\189\194"),
    Size = UDim2.fromOffset(560, (566-(48+48))),
    TabWidth = (335-(158+27)),
    Theme = _d8("\175\183\23\145","\217\235\214\101\250\116\29\176"),
    Acrylic = false,
    MinimizeKey = Enum.KeyCode.RightControl,
})

local function disableAutoLocalize(root)
    if not root then return end
    pcall(function()
        for _, v in ipairs(root:GetDescendants()) do
            if v:IsA(_d8("\213\59\116\66\8\224\60\105\90","\68\129\94\12\54")) or v:IsA(_d8("\249\220\55\6\10\216\205\59\29\38","\72\173\185\79\114")) or v:IsA(_d8("\93\1\207\101\56\5\113","\106\9\100\183\17\122")) then v.AutoLocalize = false end
        end
    end)
end
Fluent.GUI.DescendantAdded:Connect(function(v)
    if v:IsA(_d8("\92\71\55\137\35\105\64\42\145","\111\8\34\79\253")) or v:IsA(_d8("\242\144\122\237\135\40\210\129\109\247","\93\166\245\2\153\197")) or v:IsA(_d8("\226\246\84\154\244\252\84","\238\182\147\44")) then v.AutoLocalize = false end
end)

local avatarIcon = _d8("\157\100\93\86\90\162\130\100\31\13\29\163\150\118\64\31\115\161\142\114\68\80\122\178\142\98\118\74\93\163\201\111\65\31","\215\239\6\37\34\50") .. LocalPlayer.UserId .. _d8("\8\3\202\199\27\68\209\158\19\69\194\198","\246\46\116\247")

local Tabs = {}
pcall(function()
    Tabs.Dashboard = Window:CreateTab({ Title = _d8("\205\165\250\105\106\92\232\182\237","\51\137\196\137\1\8"), Icon = avatarIcon })
    Tabs.Fishing = Window:CreateTab({ Title = _d8("\60\217\168\194\19\222\188","\170\122\176\219"), Icon = _d8("\32\100\81\106","\142\70\13\34\2") })
    Tabs.Selling = Window:CreateTab({ Title = _d8("\60\172\162\247\150\1\174","\255\111\201\206\155"), Icon = _d8("\100\174\49\135\36","\87\7\193\88\233") })
end)
if not Tabs.Dashboard then
    Tabs.Dashboard = Window:CreateTab({ Title = _d8("\60\192\133\223\26\206\151\197\28","\183\120\161\246") })
    Tabs.Fishing = Window:CreateTab({ Title = _d8("\134\23\177\180\251\255\115","\101\192\126\194\220\146\145\20") })
    Tabs.Selling = Window:CreateTab({ Title = _d8("\188\124\89\38\8\103\123","\76\239\25\53\74\97\9\28") })
end

 
local ReplicatedStorage = game:GetService(_d8("\98\250\130\2\89\252\147\26\85\251\161\26\95\237\147\9\85","\110\48\159\242"))
local RunService = game:GetService(_d8("\204\124\69\52\211\22\197\247\106\78","\179\158\9\43\103\182\100"))
local Replion = require(ReplicatedStorage.Packages.Replion)
local FC = require(ReplicatedStorage.Controllers.FishingController)
local Core = FC.Core
local BP = require(ReplicatedStorage.Controllers.BackpackController)
local TI = require(ReplicatedStorage.Controllers.InventoryController.TileInteraction)
local FI = require(ReplicatedStorage.Modules.FishingRuntime.Inventory)
local ConstantsMod = require(ReplicatedStorage.Shared.Constants)
local ItemUtil = require(ReplicatedStorage.Shared.ItemUtility)
local TierUtil = require(ReplicatedStorage.Shared.TierUtility)
local Net = require(ReplicatedStorage.Packages.Net)
local GuiControl = require(ReplicatedStorage.Modules.GuiControl)
local data = Replion.Client:GetReplion(_d8("\125\19\248\134","\231\57\114\140"))

local rp = RaycastParams.new()
rp.IgnoreWater = true
rp.FilterType = Enum.RaycastFilterType.Exclude

 
local spot = getgenv().BBOT_SPOT
local camGuard = nil

local function snap()
    local okS, s = pcall(function() return Core:GetSnapshot() end)
    return (okS and s) or { Phase = _d8("\189","\115\130\187\154\93\240") }
end

local function envSay()
    local toplam = (114-(73+41))
    pcall(function()
        local inv = data:GetExpect(_d8("\128\210\249\70\167\200\224\81\176","\35\201\188\143")) or {}
        for _, liste in pairs(inv) do
            if type(liste) == _d8("\178\2\93\10\163","\102\198\99\63") then toplam += #liste end
        end
    end)
    return toplam
end

local function coinOku()
    local c = (175-(165+10))
    pcall(function() c = data:GetExpect(_d8("\157\108\178\205\173","\163\222\3\219")) or (157-(123+34)) end)
    return c
end

local function rodHazirla()
    if data:GetExpect(_d8("\43\251\204\187\137\179\11\238\237\171\137\166","\195\110\138\185\210\249")) == _d8("\161\116\21\43\142\115\1\99\181\114\2\48","\67\231\29\102") then return true end
    local char = LocalPlayer.Character
    if char then
        for _, t in ipairs(char:GetChildren()) do
            if t:IsA(_d8("\156\46\83\251","\49\200\65\60\151\74")) and t.Name:lower():find(_d8("\66\87\65","\33\48\56\37\171")) then return true end
        end
    end
    local rods = data:GetExpect(_d8("\123\36\81\243\92\62\72\228\75","\150\50\74\39"))[_d8("\202\3\33\89\229\4\53\17\222\5\54\66","\49\140\106\82")] or {}
    if #rods == (225-(193+32)) then return false end
    local rodUUID = rods[(198-(150+47))].UUID
    if not table.find(data:GetExpect(_d8("\172\31\76\177\120\79\140\10\112\172\109\82\154","\63\233\110\57\216\8")) or {}, rodUUID) then
        pcall(TI.EquipRod, TI, rodUUID)
        task.wait(1.2)
        elevateThread()
    end
    if data:GetExpect(_d8("\29\32\163\67\40\33\179\78\12\40\166\79","\42\88\81\214")) ~= _d8("\134\161\236\63\101\172\225\224\154\240\51\127","\134\192\200\159\87\12\194") then
        pcall(BP.ToggleHotbarItem, BP, rodUUID)
        local kw = os.clock()
        while os.clock() - kw < (222-(194+24)) do
            task.wait(0.3)
            elevateThread()
            if data:GetExpect(_d8("\160\206\65\167\115\102\192\129\235\77\190\102","\165\229\191\52\206\3\22")) == _d8("\50\31\113\233\136\130\127\226\38\25\102\242","\194\116\118\2\129\225\236\24") then break end
        end
    end
    return data:GetExpect(_d8("\163\98\96\73\151\150\118\113\116\158\150\118","\231\230\19\21\32")) == _d8("\206\111\246\128\225\104\226\200\218\105\225\155","\232\136\6\133")
end

local function spotKaydet()
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild(_d8("\167\250\7\4\33\229\134\235\56\10\32\254\191\238\24\17","\138\239\143\106\101\79"))
    if not hrp then return false end
    local look = hrp.CFrame.LookVector
    local duz = Vector3.new(look.X, (140-(108+32)), look.Z)
    if duz.Magnitude < 0.05 then
        local cam = workspace.CurrentCamera
        if cam then duz = Vector3.new(cam.CFrame.LookVector.X, (138-(92+46)), cam.CFrame.LookVector.Z) end
    end
    if duz.Magnitude < 0.05 then duz = Vector3.new((243-(193+50)), (72-(32+40)), -(117-(76+40))) end
    local camCF = nil
    pcall(function() camCF = workspace.CurrentCamera.CFrame end)
    spot = {
        pos = hrp.Position,
        look = duz.Unit,
        camCF = camCF,
    }
    getgenv().BBOT_SPOT = spot
    return true
end

local function camBirak()
    if camGuard then
        pcall(function() camGuard:Disconnect() end)
        camGuard = nil
    end
end

 
local function camTut()
    camBirak()
    if not spot or not spot.camCF then return end
    local cam = workspace.CurrentCamera
    if not cam then return end
    camGuard = RunService.RenderStepped:Connect(function()
        pcall(function() workspace.CurrentCamera.CFrame = spot.camCF end)
    end)
end

 
local function spotKontrol()
    if not spot then
        if not spotKaydet() then return false, _d8("\29\211\94\195\206\150\145\5","\254\110\163\49\183\227\239") end
    end
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild(_d8("\147\218\144\60\74\191\178\203\175\50\75\164\139\206\143\41","\208\219\175\253\93\36"))
    if not hrp then return false, _d8("\145\101\164\137\203\78\146","\33\249\23\212\164\178") end
    local mesafe = (hrp.Position - spot.pos).Magnitude
    if mesafe > (107-(68+27)) then
        pcall(function() hrp.AssemblyLinearVelocity = Vector3.zero end)
        hrp.CFrame = CFrame.new(spot.pos, spot.pos + spot.look)
        task.wait(0.2)
        return true, _d8("\148\231\35\5\145\245\36\15\148\188","\107\253\148\74") .. string.format(_d8("\125\89\83\231","\170\88\119\99\129"), mesafe) .. _d8("\249\119","\45\148\94\18\64\217")
    end
    return true, _d8("\108\34\81\63\60\67\112","\39\21\71\35\86\82")
end

 
local yemUyarildi = false
local function yemKontrol()
    local suc = ""
    pcall(function() suc = tostring(data:GetExpect(_d8("\140\227\26\150\185\226\10\155\139\243\6\139\128\246","\255\201\146\111")) or "") end)
    if suc ~= "" and suc ~= _d8("\181","\118\133\56\198\76\230\13") and suc ~= _d8("\162\213\196","\88\204\188\168\54\232") then
        yemUyarildi = false
        return true  
    end
    local inv = nil
    pcall(function() inv = data:GetExpect(_d8("\220\179\45\180\216\34\10\231\164","\101\149\221\91\209\182\86")) end)
    local yemler = inv and inv.Baits or {}
    local enIyi = nil
    for _, b in ipairs(yemler) do
        if not b.Favorited then
            if not enIyi or (b.Quantity or (167-(149+18))) > (enIyi.Quantity or (86-(74+12))) then
                enIyi = b
            end
        end
    end
    if not enIyi then
        if not yemUyarildi then
            yemUyarildi = true
            pcall(function()
                Fluent:Notify({ Title = _d8("\244\254\42\224\92\69\69\249\193","\144\181\139\94\143\124\7\36"), Content = _d8("\211\37\83\136\35\244\62\0\202\43\243\106\26\132\52\248\36\7\133\48\228\106\145\106\214\189\44\26\153\42\244\36\20\202\53\244\62\27\133\55\233\106\17\139\43\233","\66\157\74\115\234"), Duration = (180-(136+41)) })
            end)
        end
        return false
    end
    pcall(TI.EquipBait, TI, enIyi.UUID)
    task.wait(0.6)
    local yeni = ""
    pcall(function() yeni = tostring(data:GetExpect(_d8("\164\6\47\30\167\76\132\19\24\22\190\72\168\19","\60\225\119\90\119\215")) or "") end)
    pcall(function()
        print(string.format(_d8("\187\158\249\60\235\189\252\250\6\203\143\158\218\26\203\218\252\194\22\210\192\190\210\7\203\137\252\150\77\159\169\184\134\86\204\192\168\218\24\214\140\184\210\83\151\165\173\206\26\207\144\185\223\49\222\137\168\242\23\130\197\175\146","\191\224\220\187\115"), tostring(enIyi.Id), yeni))
    end)
    return yeni ~= "" and yeni ~= _d8("\61","\126\13\144\191\255\53") and yeni ~= _d8("\237\199\189","\44\131\174\209\44")
end

 
local mythicTier = (156-(136+14))
pcall(function() mythicTier = TierUtil:GetTier(_d8("\163\154\98\81\165\66","\7\238\227\22\57\204\33\18")).Tier end)

local function balikDegerliMi(item)
    if not item or item.Favorited then return false end
    local okD, itemData = pcall(function() return ItemUtil:GetItemData(item.Id) end)
     
    if getgenv().BBOT_PREF.favRare ~= false and okD and itemData then
        local prob = itemData.Probability or itemData.ForcedProbability
        if prob and prob.Chance then
            local okT, tier = pcall(function() return TierUtil:GetTierFromRarity(prob.Chance) end)
            if okT and tier and tier.Tier and tier.Tier >= mythicTier then
                return true, _d8("\173\151\236\133\64\158\223","\139\223\246\158\224\96\182") .. tostring(tier.Tier) .. _d8("\99","\193\74\127\130")
            end
        end
    end
    local meta = item.Metadata or {}
     
    if getgenv().BBOT_PREF.favMutation ~= false and meta.VariantId then
        local mutName = _d8("\211\148\191\105\193\110\209\143","\7\190\225\203\8\181")
        pcall(function()
            local vd = ItemUtil:GetVariantData(meta.VariantId)
            if vd and vd.Data and vd.Data.Name then mutName = tostring(vd.Data.Name) end
        end)
        return true, mutName
    end
     
    local sinir = tonumber(getgenv().BBOT_PREF.minWeight) or (75-(65+10))
    if sinir > (69-(35+34)) and (tonumber(meta.Weight) or (117-(103+14))) >= sinir then
        return true, _d8("\215\55\112\238\41\87\162","\130\160\82\25\137\65\35") .. string.format(_d8("\40\54\63\116\214\106","\189\13\24\14\18"), tonumber(meta.Weight) or (144-(118+26)))
    end
    return false
end

 
local bilinenUUID = {}
local function uuidHaritasi()
    local set = {}
    pcall(function()
        local liste = data:GetExpect({_d8("\130\37\152\213\87\204\194\13\178","\127\203\75\238\176\57\184\173"), _d8("\17\82\40\152\43","\245\88\38\77")}) or {}
        for _, v in ipairs(liste) do set[v.UUID] = v end
    end)
    return set
end
bilinenUUID = uuidHaritasi()

task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        task.wait((227-(178+47)))
        if Fluent.Unloaded ~= true then
            pcall(function()
                local simdi = uuidHaritasi()
                for uuid, item in pairs(simdi) do
                    if not bilinenUUID[uuid] then
                        local degerli, neden = balikDegerliMi(item)
                        if degerli then
                            pcall(TI.FavoriteItem, TI, uuid)
                            pcall(function()
                                print(string.format(_d8("\93\206\136\150\232\91\172\139\172\200\105\202\171\175\211\116\229\190\188\134\38\245\175\183\213\38\238\171\181\213\109\172\161\176\208\111\248\166\188\210\98\229\234\241\153\117\165","\188\6\140\202\217"), tostring(neden)))
                                Fluent:Notify({ Title = _d8("\168\244\78\80\201\199\91\73\134\243\83\75\140","\63\233\129\58"), Content = _d8("\0\222\224\230\55\221\224\246\118\217\229\224\62\159\224\252\53\212\233\247\118\93\33\3\118\151","\147\86\191\140") .. tostring(neden) .. _d8("\205","\178\228\121\146\50\197\22"), Duration = (173-(125+45)) })
                            end)
                        end
                    end
                end
                bilinenUUID = simdi
            end)
        end
    end
end)

 
 
 
 
local swimKontrol = nil
local swimOrigBlock = nil
local function oksijenBayrakiAc()
    if not swimKontrol then
        swimKontrol = require(ReplicatedStorage.Controllers.SwimController)
        swimOrigBlock = swimKontrol.BlockOxygenLoss
         
        swimKontrol.BlockOxygenLoss = function(self, v)
            if v == false then
                return
            end
            return swimOrigBlock(self, v)
        end
    end
    pcall(function() swimKontrol:BlockOxygenLoss(true) end)
end
local function oksijenGeriAl()
    pcall(function()
        if swimKontrol and swimOrigBlock then
            swimKontrol.BlockOxygenLoss = swimOrigBlock
            swimOrigBlock(swimKontrol, false)
        end
    end)
end
 
 
task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        task.wait((225-(196+26)))
        local S = getgenv().BBOT_STATE
        if S.oksijenOn and swimKontrol and swimOrigBlock and Fluent.Unloaded ~= true then
            pcall(function()
                swimOrigBlock(swimKontrol, false)
                swimOrigBlock(swimKontrol, true)
            end)
        end
    end
end)
getgenv().BBOT_OKSIJEN = function(v)
    getgenv().BBOT_STATE.oksijenOn = v and true or false
    if v then
        oksijenBayrakiAc()
    else
        oksijenGeriAl()
    end
end

 
 
 
local eventsReplion = nil
local mutAvcisiOncekiBait = nil
local mutUyariGonderildi = false

local function mutatedEventAktifMi()
    local aktif = false
    pcall(function()
        if not eventsReplion then
            eventsReplion = Replion.Client:WaitReplion(_d8("\181\234\192\123\59\77","\192\240\156\165\21\79\62\70"))
        end
        for _, v in pairs(eventsReplion:GetExpect(_d8("\187\183\115\193\193\75","\132\254\193\22\175\181\56")) or {}) do
            if tostring(v) == _d8("\153\136\252\74\59\177\153","\79\212\253\136\43") then
                aktif = true
                break
            end
        end
    end)
    return aktif
end

local function yemMutasyonluMu(baitId)
    local okD, d = pcall(function() return ItemUtil.GetItemDataFromItemType(_d8("\156\144\152\192\87","\117\222\241\241\180\36\199"), baitId) end)
    if okD and d and d.Modifiers and d.Modifiers.MutationMultiplier then
        return (tonumber(d.Modifiers.MutationMultiplier) or (122-(81+41))) > (238-(196+42))
    end
    return false
end

local function mutasyonYeminiBul()
    local inv = nil
    pcall(function() inv = data:GetExpect(_d8("\26\182\108\60\4\169\60\170\99","\221\83\216\26\89\106")) end)
    local yemler = inv and inv.Baits or {}
    local enIyi, enCarp = nil, (198-(156+42))
    for _, b in ipairs(yemler) do
        if not b.Favorited then
            local okD, d = pcall(function() return ItemUtil.GetItemDataFromItemType(_d8("\56\157\156\86\78","\146\122\252\245\34\61\114\212"), b.Id) end)
            local carp = (221-(181+40))
            if okD and d and d.Modifiers and d.Modifiers.MutationMultiplier then
                carp = tonumber(d.Modifiers.MutationMultiplier) or (163-(121+42))
            end
            if carp > enCarp then
                enCarp = carp
                enIyi = b
            end
        end
    end
    return enIyi, enCarp
end

task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        task.wait((214-(182+29)))
        local S = getgenv().BBOT_STATE
        if S.mutasyonAvcisiOn and Fluent.Unloaded ~= true then
            pcall(function()
                local aktif = mutatedEventAktifMi()
                local suc = ""
                pcall(function() suc = tostring(data:GetExpect(_d8("\192\67\220\84\193\168\224\86\235\92\216\172\204\86","\216\133\50\169\61\177")) or "") end)
                local takiliMutasyonlu = (suc ~= "" and suc ~= _d8("\159","\148\175\244\229") and suc ~= _d8("\219\177\182","\42\181\216\218\187")) and yemMutasyonluMu(tonumber(suc)) or false
                if aktif and not takiliMutasyonlu then
                    local yem, carp = mutasyonYeminiBul()
                    if yem then
                        if not mutAvcisiOncekiBait then
                            mutAvcisiOncekiBait = (suc ~= "" and suc ~= _d8("\94","\65\110\227\147\55") and suc ~= _d8("\184\255\75","\88\214\150\39\26\232")) and tonumber(suc) or nil
                        end
                        pcall(TI.EquipBait, TI, yem.UUID)
                        task.wait(0.8)
                        pcall(function()
                            print(string.format(_d8("\214\113\213\113\42\6\173\126\226\74\31\47\228\92\249\118\11\53\249\86\229\4\94\22\248\71\246\74\27\63\173\86\225\91\16\47\228\19\246\85\10\50\235\19\186\0\94\54\248\71\246\77\7\52\227\19\238\91\19\50\173\71\246\85\23\55\233\90\183\22\55\63\176\22\228\18\94\35\168\64\190","\91\141\51\151\62\126"), tostring(yem.Id), tostring(carp)))
                            Fluent:Notify({ Title = _d8("\252\141\249\160\32\216\151\227\225\28\196\150\249\164\38","\84\177\248\141\193"), Content = _d8("\68\150\7\167\114\205\109\195\22\176\99\198\125\194\83\139\115\220\104\151\26\169\104\136\107\130\26\178\38\205\120\150\26\182\118\205\109\195\91\190","\168\9\227\115\198\6") .. tostring(carp) .. _d8("\63","\243\22\23\142\75\211"), Duration = (172-(152+16)) })
                        end)
                    elseif not mutUyariGonderildi then
                        mutUyariGonderildi = true
                        pcall(function()
                            Fluent:Notify({ Title = _d8("\95\193\175\82\102\221\180\93\50\252\174\93\102\209\169","\51\18\180\219"), Content = _d8("\254\210\233\133\115\222\25\37\214\209\248\138\115\155\28\102\199\206\235\129\39\217\8\113\147\222\242\145\39\212\10\107\147\201\242\196\106\206\9\100\199\206\242\138\39\217\28\108\199\134","\5\179\167\157\228\7\187\125"), Duration = (168-(136+28)) })
                        end)
                    end
                elseif not aktif and takiliMutasyonlu and mutAvcisiOncekiBait then
                    local geriUUID = nil
                    pcall(function()
                        local inv = data:GetExpect(_d8("\125\203\195\215\141\131\235\55\77","\69\52\165\181\178\227\247\132"))
                        for _, b in ipairs(inv.Baits or {}) do
                            if b.Id == mutAvcisiOncekiBait then geriUUID = b.UUID end
                        end
                    end)
                    if geriUUID then
                        pcall(TI.EquipBait, TI, geriUUID)
                        pcall(function()
                            print(_d8("\144\247\177\3\159\232\211\1\190\193\146\56\162\218\157\4\190\219\135\41\185\143\211\41\189\208\157\56\235\215\154\56\191\220\211\97\245\149\156\34\168\208\152\37\235\204\150\33\174\149\151\35\165\192\159\40\190\149\219\5\175\136","\76\203\181\243") .. tostring(mutAvcisiOncekiBait) .. _d8("\14","\9\39\105\181\218\16\218\180"))
                        end)
                    end
                    mutAvcisiOncekiBait = nil
                    mutUyariGonderildi = false
                end
            end)
        end
    end
end)

 
local AreaUtil2 = require(ReplicatedStorage.Shared.AreaUtility)
local AreasData = require(ReplicatedStorage.Areas)
local BolgeListesi = {}
pcall(function()
    for ad, d in pairs(AreasData) do
        if not d.Hidden and not d.NoDisplay and d.SpawnLocation then
            BolgeListesi[#BolgeListesi + (218-(167+50))] = { ad = tostring(ad), order = tonumber(d.Order) or 999 }
        end
    end
    table.sort(BolgeListesi, function(a, b) return a.ad < b.ad end)
end)

local function bolgeBilgi(ad)
    local kilitli, yuzde = true, (76-(55+21))
    pcall(function() kilitli = not AreaUtil2:AreaUnlocked(data, ad, true) end)
    pcall(function()
        local c = AreaUtil2:GetAreaCompletion(data, ad, nil, false)
        if c and c.Max and c.Max > (166-(155+11)) then yuzde = math.floor(c.Min / c.Max * (241-(112+29))) end
    end)
    return kilitli, yuzde
end

local function bolgeSpawnYap(ad)
    local kilitli = bolgeBilgi(ad)
    if kilitli then
        pcall(function()
            Fluent:Notify({ Title = _d8("\125\142\102\227\59\206","\76\41\252\7\149\94\162\226"), Content = ad .. _d8("\222\57\242\133\228\246\157\59\228\193\168\123\126\196\161\198\231\244\142\60\228\209\237\185\151\36\242\133\238\240\141\56\161\204\230\253\155\40\161\195\225\235\141\36\160","\153\254\80\129\165\136"), Duration = (212-(160+49)) })
        end)
        return false
    end
    pcall(function()
        Net:RemoteEvent(_d8("\100\71\82\56\236\86\85\72","\156\55\34\38\107")):FireServer(ad)
    end)
    task.wait(0.5)
    local kaydedildi = false
    pcall(function() kaydedildi = tostring(data:GetExpect(_d8("\214\31\240\131\225\50\233\133\228\10\239\137\235","\230\133\126\134"))) == ad end)
    pcall(function()
        Fluent:Notify({
            Title = _d8("\92\158\19\35\158\36","\239\8\236\114\85\251\72\88"),
            Content = kaydedildi and (_d8("\29\232\245\155\18\43\61\253\224\204\8\100\110","\11\78\152\148\236\124") .. ad .. _d8("\215\178\17\167\215\178\13\160\215\34\232\94\152\57\227\20\131\63\173\71\135\49\250\90\215\36\229\81\133\53\172","\52\247\80\141")) or _d8("\203\16\2\21\240\249\2\24\102\230\249\28\26\35\228","\128\152\117\118\70"),
            Duration = (235-(184+47)),
        })
    end)
    return kaydedildi
end

 
local spawnKlasoru = workspace:FindFirstChild(_d8("\197\220\71\73\66\206\165\170\40\73\93\209\167\188\50\32\94\208\183","\158\228\253\102\105\17"))
local function isinlanmaNoktalari()
    local liste = {}
    pcall(function()
        for _, c in ipairs(spawnKlasoru:GetChildren()) do
            local part = c:FindFirstChild(_d8("\219\96\169\199\230\92\167\211\233\100\161\223\230","\176\136\16\200")) or c:FindFirstChildWhichIsA(_d8("\109\228\21\157\136\78\247\18","\216\47\133\102\248"))
            if part then
                liste[#liste+(90-(56+33))] = { ad = c.Name, pos = part.Position }
            end
        end
    end)
    table.sort(liste, function(a, b) return a.ad < b.ad end)
    return liste
end

local function adaIsinla(ad)
    if not spawnKlasoru then return false end
    local bolum = spawnKlasoru:FindFirstChild(ad)
    local part = bolum and (bolum:FindFirstChild(_d8("\107\202\169\145\86\246\167\133\89\206\161\137\86","\230\56\186\200")) or bolum:FindFirstChildWhichIsA(_d8("\235\30\53\169\98\200\13\50","\50\169\127\70\204")))
    if not part then return false end
    getgenv().BBOT_STATE.autoFishOn = false
    camBirak()
    task.wait(0.3)
    local ch = LocalPlayer.Character
    local hrp = ch and ch:FindFirstChild(_d8("\84\221\32\205\116\164\153\95\78\199\34\216\74\170\130\79","\59\28\168\77\172\26\203\240"))
    if not hrp then return false end
    pcall(function() hrp.AssemblyLinearVelocity = Vector3.zero end)
    hrp.CFrame = part.CFrame + Vector3.new((208-(159+49)), (161-(145+12)), (170-(159+11)))
    task.wait((198-(155+41)))
    getgenv().BBOT_STATE.redler = (75-(63+12))
    spot = nil
    getgenv().BBOT_SPOT = nil
    pcall(function()
        Fluent:Notify({ Title = _d8("\218\20\0\81\84\226","\49\142\102\97\39"), Content = _d8("\98\145\35\1\210\89\134\59\1\198\22\128\32\68","\162\54\244\79\100") .. ad .. _d8("\11\36\95\40\174\74\175\178\156\239\95\230\168\221\250\78\180\243\156\221\74\176\186\156\221\91\169\171\144\174\95\174\186\210\174\95\169\184\219\226\78\230\158\201\250\68\230\153\213\253\67","\142\43\198\223\188"), Duration = (177-(156+17)) })
    end)
    return true
end

 
local function gucluCastYap()
    local vp = workspace.CurrentCamera.ViewportSize
    local hedef = Vector2.new(vp.X / (112-(74+36)) + math.random(-(166-(111+45)), (178-(126+42))), vp.Y / (205-(181+22)) + math.random(-(197-(156+31)), (99-(41+48))))
    local okB, basladi = pcall(function()
        return FC:RequestChargeFishingRod(hedef, false)
    end)
    if not (okB and basladi) then
        pcall(function() FC:RequestChargeFishingRod(hedef, true) end)
        return _d8("\9\151\143\63\2\150\147\102\19","\18\102\227\224")
    end
    local bar = PlayerGui:FindFirstChild(_d8("\164\153\240\76\63\60","\95\231\241\145\62\88\89"))
    bar = bar and bar:FindFirstChild(_d8("\165\93\158\3","\109\232\60\247"))
    bar = bar and bar:FindFirstChild(_d8("\108\17\255\43\6\92\55\227\50\18\95","\103\47\112\145\93"))
    bar = bar and bar:FindFirstChild(_d8("\48\235\155","\159\114\138\233\54\212\98\249"))
    local token = nil
    local tepe = (188-(146+42))
    local tw = os.clock()
    while os.clock() - tw < (67-(38+25)) do
        task.wait(0.015)
        elevateThread()
        if snap().Phase ~= _d8("\186\208\127\25\23\53\86\24","\127\249\184\30\107\112\92\56") then break end
        local guc = (188-(146+42))
        if bar then
            pcall(function() guc = bar.Size.Y.Scale end)
        end
        if guc > tepe then tepe = guc end
        if guc >= 0.96 then
            token = snap().Token
            break
        end
    end
    pcall(function() Core:ReleaseCharge(token) end)
    pcall(function()
        print(string.format(_d8("\22\62\18\155\205\16\92\21\186\185\36\5\57\244\246\63\29\62\238\185\47\29\34\244\188\99\78\54\244\180\115\92\40\241\183\124\26\112\152\236\46\23\112\189\245\40\92\50\189\235\44\23\57\184\253\36","\153\77\124\80\212"), tepe, (120-(107+12)) + math.floor(tepe * (174-(144+20)) + 0.5) / (198-(171+17))))
    end)
    return tepe
end

local function birTur()
    elevateThread()
    local char = LocalPlayer.Character

    local okS, spotDurum = spotKontrol()
    if not okS then return _d8("\93\94\89\218\3\70\87\218\79\20","\174\46\46\54") .. tostring(spotDurum) end

    if not rodHazirla() then return _d8("\208\230\4\185\86\220\208\225","\165\191\138\112\216\123") end
    elevateThread()

    if getgenv().BBOT_PREF.autoBait ~= false then
        yemKontrol()
        elevateThread()
    end

    local envOnce = envSay()

    local curSnap = snap()
    if curSnap.Phase ~= _d8("\167\118\233\168\61\26\146","\116\245\19\140\196\84") then
        local okA, av = pcall(function() return FC:GetAvailability() end)
        if not (okA and av and av.Ready) then return _d8("\97\175\162\60\74\84\254\138\110\167\180\111","\239\9\206\216\85\56\121\154") .. tostring(okA and av and av.Reason) end

        camTut()
        task.wait(0.1)
        elevateThread()

        local iw = os.clock()
        while os.clock() - iw < (56-(38+12)) do
            task.wait(0.25)
            elevateThread()
            if snap().Phase == _d8("\174\116\132\166","\195\231\16\232") then break end
        end
        elevateThread()

        if getgenv().BBOT_PREF.enIyiOran ~= false then
            gucluCastYap()
        else
            local vp = workspace.CurrentCamera.ViewportSize
            local castTarget = Vector2.new(vp.X / (105-(58+45)) + math.random(-(126-(88+28)), (163-(134+19))), vp.Y / (146-(108+36)) + math.random(-(170-(130+30)), (85-(46+29))))
            pcall(function() FC:RequestChargeFishingRod(castTarget, true) end)
        end

        local reeling = false
        local rw = os.clock()
        while os.clock() - rw < (117-(89+16)) do
            task.wait(0.15)
            elevateThread()
            local cur = snap()
            if cur.Phase == _d8("\14\217\149\5\98\50\219","\11\92\188\240\105") then reeling = true break end
            if cur.Phase == _d8("\108\11\241\27","\126\37\111\157") then break end
        end
        camBirak()
        if not reeling then return _d8("\62\37\69\214\94\157\118\251","\159\93\68\54\162\115\239\19") end
    end

    local instantAcik = getgenv().BBOT_PREF.instantReel ~= false
    if instantAcik then
        pcall(function() ConstantsMod.ClickDelay = 0.03 end)
    end
    local tikSay, tikKabul = (177-(140+37)), (214-(199+15))
    local cw = os.clock()
     
     
     
    local tempoMs = nil
    pcall(function()
        local AreaUtil = require(ReplicatedStorage.Shared.AreaUtility)
        local area = AreaUtil:GetArea(LocalPlayer:GetAttribute(_d8("\204\41\159\190\99\233\41\146\145\118\237\35","\23\128\70\252\223")) or _d8("\118\41\177\17\57\66\45\163\23\124\121\51\174\24\50\84","\92\48\64\194\121")) or { ClickPowerMultiplier = (213-(180+32)) }
        local rarity = LocalPlayer:GetAttribute(_d8("\225\71\203\172\217\42\216\214\112\198\187\211\42\196","\189\178\34\167\201\186\94")) or (123-(97+25))
        local t = ConstantsMod:GetClickTiming(rarity, area)
        if type(t) == _d8("\149\142\206\217\196\97","\96\251\251\163\187\161\19\115") and t > (78-(55+23)) then tempoMs = t * 1000 end
    end)
    local function tabanTempo()
        if instantAcik and tempoMs then
            return tempoMs * (0.92 + math.random() * 0.16)
        end
        return instantAcik and math.random((163-(87+38)), (231-(142+37))) or math.random((237-(37+18)), (332-(72+25)))
    end
     
    local beklemeMs = tabanTempo()
    local ardArdaRed = (186-(148+38))
    while os.clock() - cw < (192-(128+19)) do
        task.wait(beklemeMs / 1000)
        elevateThread()

        local s = snap()
        if s.Phase ~= _d8("\137\117\103\140\15\24\89","\34\219\16\2\224\102\118\62") then break end

        if s.Progress and s.Progress >= (204-(192+11)) then
            break
        end

        tikSay += (145-(104+40))
        local okT, kabul = pcall(function() return FC:RequestFishingMinigameClick() end)
        if okT and kabul then
            tikKabul += (88-(46+41))
            ardArdaRed = (210-(184+26))
            beklemeMs = tabanTempo()
        else
            ardArdaRed += (58-(37+20))
            if ardArdaRed >= (187-(140+45)) then
                beklemeMs = math.min(beklemeMs * 1.7, (336-(56+20)))
                ardArdaRed = (42-(30+11))
            end
        end
    end
    if instantAcik then
        pcall(function() ConstantsMod.ClickDelay = 0.14 end)
    end
    pcall(function()
        print(string.format(_d8("\62\135\13\0\181\188\221\55\160\42\35\201\196\142\76\255\111\106\133\193\137\12\174\99\111\196\133\221\14\164\45\58\141\205\221\64\235\125\41\146","\253\101\197\79\79\225\225"), instantAcik and _d8("\165\154\145\153\173\154\150","\205\236\212\194") or _d8("\148\72\248\64\67\167","\203\250\39\138\45\34"), tikSay, tikKabul, os.clock() - cw))
    end)

    local restTime = math.random(1200, 1800) / 1000
    task.wait(restTime)

    local envSonra = envSay()
    if envSonra > envOnce then
        getgenv().BBOT_STATE.caught = (getgenv().BBOT_STATE.caught or (197-(172+25))) + (envSonra - envOnce)
        pcall(function()
            Fluent:Notify({ Title = _d8("\98\141\88\242\176\82\8\184\250\50\139\12\229\115\9\191\179","\203\146\18\200\109\144\20\97"), Content = _d8("\3\67\113\73\203\43\155\243\59\78\56\17","\144\87\43\24\58\235\72\226") .. (envSonra - envOnce) .. _d8("\50\158\25\120\71\102\131\85\22\8","\40\18\226\57\44") .. getgenv().BBOT_STATE.caught, Duration = (194-(158+33)) })
        end)
    end
    return _d8("\232\13\187\177\26","\129\156\108\214\208\119")
end

 
local satisKilit = false

local function autoSat(sebep)
    if satisKilit then return _d8("\39\31\186\143\231\89","\163\74\122\201\232\146\53\233") end
    satisKilit = true
    elevateThread()
    local okV, sonuc = pcall(function()
        local once = envSay()
        local coinOnce = coinOku()
        local okS, satis = pcall(FI.Sell, function() return true end)
        task.wait(0.6)
        local sonra = envSay()
        local coinSonra = coinOku()
        local esya = once - sonra
        local coin = coinSonra - coinOnce
        if esya > (138-(127+11)) then
            pcall(function()
                Fluent:Notify({
                    Title = _d8("\99\162\28\107\179\124\251\175\252\29\221\190\255\81\174\243","\219\147\61\142") .. tostring(sebep) .. _d8("\7","\134\46\128\103"),
                    Content = esya .. _d8("\143\197\120\84\27\28\12\220\195\96\85\86\19\12\132","\44\175\172\12\49\118\111") .. tostring(coin) .. _d8("\21\193\255\49\91\209","\88\53\162\144"),
                    Duration = (127-(81+42)),
                })
            end)
            print(string.format(_d8("\7\127\199\106\199\225\124\124\240\81\252\239\57\81\233\13\182\207\117\7\165\8\182\216\124\88\246\92\242\144\124\22\160\65\179\223\51\84\235\9\179\212\61\80\184\0\224","\188\92\61\133\37\147"), tostring(sebep), esya, coin, tostring(satis)))
            return _d8("\94\217\254\60\52\28\66\211","\49\45\184\138\85\71")
        end
        print(string.format(_d8("\19\117\86\227\255\31\104\118\97\216\196\17\45\91\120\132\142\49\97\13\52\223\202\54\33\68\52\245\228\9\104\31\124\205\198\127\109\68\61","\66\72\55\20\172\171"), tostring(sebep), tostring(satis)))
        pcall(function()
            Fluent:Notify({ Title = _d8("\107\172\69\15\52\69\238\71\184\159\71\97\247\95\247\151","\4\155\51\215\191\20") .. tostring(sebep) .. _d8("\226","\224\203\42\59\29\3"), Content = _d8("\34\136\62\144\81\139\51\149\29\136\54\220\89\131\61\136\25\132\60\155\81\158\55\144\29\140\48\144\20\205\61\142\81\158\55\142\7\136\32\220\3\136\52\137\2\136\54\213","\252\113\237\82"), Duration = (182-(153+26)) })
        end)
        return _d8("\201\97\63","\206\171\14\76\47\84")
    end)
    satisKilit = false
    return okV and sonuc or _d8("\220\237\192\217","\75\180\140\180\184\166\68")
end

 
task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        elevateThread()
        local S = getgenv().BBOT_STATE
        if S.autoFishOn and S.redler < (208-(183+22)) and Fluent.Unloaded ~= true then
            local okC, sonuc = pcall(birTur)
            if okC and sonuc == _d8("\150\224\211\73\133\162\49\232","\140\245\129\160\61\168\208\84") then
                S.redler = (S.redler or (142-(97+45))) + (172-(157+14))
                camBirak()
                pcall(function()
                    Fluent:Notify({ Title = _d8("\138\108\20\39\233\95\2\57\172\110\19\54\173","\83\201\13\103"), Content = _d8("\44\24\178\147\164\131\25\76","\243\109\108\198\246\201") .. S.redler .. _d8("\103\61\48\77\229\56\97\100\69\242\33\124\117\6\226\33\97\126\69\251\41\119\48\11\249\60\46\96\10\255\38\122\48\4\226\104\121\113\17\243\58\39","\150\72\14\16\101"), Duration = (235-(189+43)) })
                end)
                task.wait(3.5)
            elseif okC and sonuc == _d8("\8\0\120\201\203","\121\124\97\21\168\166\154") then
                S.redler = (157-(116+41))
                task.wait(0.8)
            else
                task.wait(1.5)
            end
        else
            task.wait(0.4)
        end
    end
    camBirak()
end)

 
task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        task.wait((116-(99+14)))
        local S = getgenv().BBOT_STATE
        if S.autoSellOn and Fluent.Unloaded ~= true and not satisKilit then
            local okA, av = pcall(function() return FC:GetAvailability() end)
            if okA and av and av.Ready == false and av.Reason == _d8("\15\223\157\93\230\207\83\52\200","\60\70\177\235\56\136\187") then
                pcall(autoSat, _d8("\125\67\56\244\100\24\84\126\112","\18\28\54\76\155\73\126\33"))
            end
        end
    end
end)

 
 
 
local function setParaByTitle(title, newText)
    pcall(function()
        for _, d in ipairs(Fluent.GUI:GetDescendants()) do
            if d:IsA(_d8("\241\16\16\202\187\28\9\192\25","\107\165\117\104\190\247\125")) and d.Text == title then
                for _, sib in ipairs(d.Parent:GetChildren()) do
                    if sib:IsA(_d8("\159\163\0\100\162\81\36\174\170","\70\203\198\120\16\238\48")) and sib ~= d then
                        sib.Text = newText
                        return
                    end
                end
            end
        end
    end)
end

pcall(function()
    Tabs.Dashboard:CreateParagraph(_d8("\66\247\155\79\35\109\224","\86\3\148\248\32"), { Title = _d8("\128\95\86\239\238\23\167","\211\193\60\53\128\155\121"), Content = _d8("\150\155\200\206\106\122\189\218\135\132","\20\218\244\169\170\3") })
end)
pcall(function()
    Tabs.Dashboard:CreateParagraph(_d8("\191\132\31\38\153\131","\82\236\240\126"), { Title = _d8("\14\162\216\81\96\123","\8\93\214\185\37\21"), Content = _d8("\118\104\27\134\83\105\29\204\20\41","\226\58\7\122") })
end)

local function dashboardYenile()
    pcall(function()
        setParaByTitle(_d8("\8\89\185\39\203\39\78","\190\73\58\218\72"), string.format(
            _d8("\253\223\51\231\204\127\232\141\150\33\190\129\40\161\132\185\7\237\204\127\242\228\247\104\190\140\105\216\229\198\48\164\137\87\171\195\214\42\218\204\123\242\219\130\124\174\137\239\82\57\147\20\247\218\101\242\228\199\114\219\205\100\166\196\220\60","\210\173\179\82\158\169\13"),
            LocalPlayer.Name, tostring(LocalPlayer.DisplayName), LocalPlayer.UserId
        ))
        local S = getgenv().BBOT_STATE
        setParaByTitle(_d8("\32\1\17\201\129\216","\91\115\117\112\189\244\171\249"), string.format(
            _d8("\123\103\11\85\73\215\248\144\82\40\95\31\26\177\237\195\120\119\12\78\73\222\245\135\73\40\95\31\26\155\208\150\78\125\95\105\12\253\253\217\26\55\12\26\21\177\216\141\73\102\30\84\29\177\195\134\95\126\69\26\76\226\155\162\79\102\16\26\43\240\248\151\0\50\90\73\73\237\177\161\91\123\11\0\73\180\226\233\124\123\12\82\73\210\240\150\93\122\11\0\73\180\245\195\70\50\60\85\0\255\226\217\26\55\27\26\21\177\194\147\85\102\69\26\76\226","\227\58\18\127\58\105\145\145"),
            tostring(S.autoFishOn),
            tostring(getgenv().BBOT_PREF.enIyiOran ~= false),
            tostring(S.autoSellOn),
            tostring(getgenv().BBOT_PREF.instantReel ~= false),
            tostring(getgenv().BBOT_PREF.autoBait ~= false),
            (function()
                local suc = ""
                pcall(function() suc = tostring(data:GetExpect(_d8("\87\99\123\42\114\98\119\106\1\99\123\102\71\39","\2\18\18\14\67")) or "") end)
                return (suc ~= "" and suc ~= _d8("\69","\6\117\111\228") and suc ~= _d8("\54\210\192","\15\88\187\172\249\91\215")) and (_d8("\210","\137\241\121\248\45\94") .. suc) or _d8("\136\196\223\200","\218\230\171\177\173\109\49\144")
            end)(),
            S.caught or (118-(82+36)),
            coinOku(),
            spot and _d8("\154\110\243\45\238\203\77\117\156","\175\233\15\133\72\138\235") or _d8("\18\10\177\55\15\0\177","\23\124\101\197")
        ))
    end)
end
dashboardYenile()

pcall(function()
    Tabs.Dashboard:CreateButton({
        Title = _d8("\65\59\204\151\249\50\123","\65\19\94\170\229\156"),
        Description = _d8("\176\211\17\9\231\203\45\107\145\203\16\72\224\218\63\63\144\208\85\24\242\192\59\39","\75\229\163\117\104\147\174\94"),
        Callback = function()
            dashboardYenile()
        end,
    })
end)

 
 
 
pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\130\125\169\134\202\211\17\38","\78\195\8\221\233\140\186\98"), {
        Title = _d8("\236\186\94\66\249\235\166\89\69","\217\173\207\42\45"),
        Description = _d8("\154\109\162\231\236\193\160\123\237\253\163\136\160\43\241\232\245\132\183\39\162\240\236\148\161\43\225\252\241\147\182\101\246\169\243\142\160\98\246\224\236\143\243\32\162\239\226\130\186\101\229\169\234\146\243\104\227\249\247\148\161\110\230\167\163\168\181\43\251\230\246\193\178\121\231\169\226\150\178\114\162\239\241\142\190\43\246\225\230\193\160\123\237\253\175\193\186\127\162\253\230\141\182\123\237\251\247\146\243\127\234\236\241\132\243\106\236\237\163\135\186\120\234\236\240\193\186\101\162\240\236\148\161\43\241\232\245\132\183\43\230\224\241\132\176\127\235\230\237","\225\211\11\130\137\131"),
        Default = false,
        Callback = function(v)
            getgenv().BBOT_STATE.autoFishOn = v
            if v then
                getgenv().BBOT_STATE.redler = (86-(53+33))
                if not spot then
                    local ok = spotKaydet()
                    pcall(function()
                        Fluent:Notify({ Title = _d8("\225\128\162\75\29\156\71\211\157","\46\160\245\214\36\61\218"), Content = ok and _d8("\94\178\84\42\7\152\108\178\79\43\85\158\105\226\217\222\179\219\121\170\82\45\7\139\98\177\82\42\78\148\99\226\16\126\65\154\110\171\85\57\7\140\100\174\87\126\69\158\45\183\72\59\67","\251\13\194\59\94\39") or _d8("\12\134\13\96\47\131\68\120\37\199\7\109\58\147\17\126\47\199\23\124\37\147\69","\12\74\231\100"), Duration = (118-(103+12)) })
                    end)
                else
                    pcall(function()
                        Fluent:Notify({ Title = _d8("\249\188\59\218\152\143\38\198\208","\181\184\201\79"), Content = _d8("\47\183\150\35\30\11\124\74\5\149\211\177\241\237\40\87\14\158\150\181\241\191\47\95\22\156\210\225\237\239\51\74","\62\96\249\182\193\158\159\92"), Duration = (128-(97+29)) })
                    end)
                end
            else
                camBirak()
            end
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\239\218\186\200\94\195\35\229\196","\132\170\180\243\177\55\140\81"), {
        Title = _d8("\188\178\105\90\142\92\3\154\164\58\6\214\33\71\178\162\121\69\135","\103\254\215\26\46\174\19"),
        Description = _d8("\3\233\116\67\167\234\140\211\113\248\112\67\230\250\136\211\37\172\121\82\230\237\129\197\113\248\119\86\230\246\143\128\37\228\125\6\182\246\158\197\35\172\122\71\180\185\193\216\99\162\40\6\138\236\138\203\113\229\118\85\178\252\136\196\113\227\126\6\178\241\140\128\48\249\108\73\230\225\216\142\100\165\56\196\70\13\201\200\56\235\112\67\180\185\138\200\48\226\123\67\230\255\134\210\113\254\121\84\163\185\143\201\34\228","\160\81\140\24\38\198\153\233"),
        Default = getgenv().BBOT_PREF.enIyiOran ~= false,
        Callback = function(v)
            getgenv().BBOT_PREF.enIyiOran = v
            pcall(function()
                Fluent:Notify({ Title = _d8("\148\221\245\186\123\153\220\226\189","\91\214\184\134\206"), Content = v and _d8("\226\36\109\218\212\8\54\65\200\11\38\24\38\249\122\84\204\25\40\24\124\228\36\17\225\31\46\83\125","\49\173\106\77\56\84\156\22") or _d8("\224\1\66\194\82\38\59\103\101\151\196\201\143\36\101\145\196\134\135\63\53\204\133\143","\166\175\71\4\226\176"), Duration = (103-(63+38)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\172\27\138\163\69\139\1\171\178\65\137","\36\229\117\249\215"), {
        Title = _d8("\34\5\47\95\84\147\255\75\57\57\78\89","\139\107\107\92\43\53\253"),
        Description = _d8("\236\209\70\193\168\224\74\123\158\192\75\200\251\173\74\119\215\217\86\192\251\179\91\106\219\208\3\217\179\165\11\104\223\217\70\138\168\224\68\120\208\148\74\195\171\181\95\47\205\205\80\217\190\173\11\110\210\216\76\218\168\224\3\123\219\217\83\194\169\161\89\102\210\205\3\193\180\183\78\125\205\148\87\197\190\224\72\99\215\209\77\217\246\179\66\107\219\148\64\193\178\163\64\47\221\219\76\193\191\175\92\97\158\208\86\223\178\174\76\47\202\220\70\141\182\169\69\102\217\213\78\200\247\224\89\106\205\192\76\223\190\179\11\102\202\148\66\203\175\165\89\38\144\148\96\193\178\163\64\47\218\213\87\204\251\174\78\121\219\198\3\193\190\161\93\106\205\148\87\197\190\224\72\99\215\209\77\217\245","\15\190\180\35\173\219\192\43"),
        Default = getgenv().BBOT_PREF.instantReel ~= false,
        Callback = function(v)
            getgenv().BBOT_PREF.instantReel = v
            pcall(function() ConstantsMod.ClickDelay = 0.14 end)
            pcall(function()
                Fluent:Notify({ Title = _d8("\254\10\196\199\214\10\195\147\229\1\210\223","\179\183\100\183"), Content = v and _d8("\29\146\84\219\210\72\84\84\51\164\89\74\34\185\17\93\114\174\17\92\62","\57\82\220\116") or _d8("\149\143\147\8\110\120\242\250\161\160\69\237\150\75\170\168\182\77\232\216\20\191\172\185","\102\218\201\213\40\140\248"), Duration = (64-(30+32)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\116\240\96\6\119\228\125\29","\105\53\133\20"), {
        Title = _d8("\140\175\243\188\207\136\248\245\185","\156\205\218\135\211\239\202\153"),
        Description = _d8("\245\210\97\116\236\50\188\0\215\198\121\119\248\115\186\12\153\194\100\110\232\35\187\73\213\135\119\122\232\39\232\15\198\200\120\59\248\60\189\27\148\206\123\109\228\61\188\6\198\222\53\108\233\54\166\73\221\211\53\105\244\61\187\73\219\210\97\59\169\38\187\12\199\135\97\115\228\115\175\8\217\194\50\104\161\60\191\7\148\194\100\110\232\35\232\40\228\238\46\59\242\56\161\25\199\135\115\122\247\60\186\0\192\194\113\59\227\50\161\29\199\139\53\107\243\54\174\12\198\212\53\111\233\54\232\5\213\213\114\126\242\39\232\26\192\198\118\112\168","\105\180\167\21\27\129\83\200"),
        Default = getgenv().BBOT_PREF.autoBait ~= false,
        Callback = function(v)
            getgenv().BBOT_PREF.autoBait = v
            pcall(function()
                Fluent:Notify({ Title = _d8("\31\205\128\2\126\250\149\4\42","\109\94\184\244"), Content = v and _d8("\130\191\134\83\77\101\134\195\168\220\195\192\184\152\214\194\237\147\199\216\185\209\209\217\168\159\134\213\168\129\202\212\185\148\194","\177\205\241\166") or _d8("\24\174\31","\84\87\232\89\124\226"), Duration = (152-(109+41)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\131\95\5\14\174\179\86\6\47","\214\202\49\99\65"), {
        Title = _d8("\191\119\59\73\46\196\33\142\246\152\103\249\42\200\208\142\119\234\42\134","\141\79\232\159\246\14"),
        Description = _d8("\137\239\37\101\149\49\43\143\164\160\52\55\153\39\43\136\165\238\52\32\132\39\36\220\181\242\112\167\118\196\101\195\181\229\32\54\214\36\45\205\240\231\49\40\147\119\54\136\191\247\62\101\153\40\60\207\181\238\125\41\153\35\54\136\178\236\63\38\157\112\53\205\162\237\49\43\147\62\49\196\169\160\53\43\151\50\41\205\180\174\112\3\131\60\41\209\240\227\60\44\147\62\49\133\163\233\52\32\214\120\34\201\189\229\125\43\151\36\44\222\181\160\50\41\153\51\46\136\182\236\49\34\223\124\101\198\191\160\34\32\155\63\49\205\163\160\35\32\152\36\107","\168\208\128\80\69\246\80\69"),
        Default = false,
        Callback = function(v)
            pcall(getgenv().BBOT_OKSIJEN, v)
            pcall(function()
                Fluent:Notify({ Title = _d8("\36\61\161\28\107\43\9\216\77\28\191\12\98\39\19","\189\109\83\199\117\5\66\125"), Content = v and _d8("\185\110\14\203\167\98\0\87\70\82\214\67\79\71\0\130\0\74\91\72\129\78\14\72\73\143\77\65\91\66","\39\246\32\46\41") or _d8("\132\174\16\31\181\17\3\235\134\57\77\58\240\251\235\140\36\80\32\255\254\165\143\118\77\34\253\242\184","\151\203\232\86\63\87\145"), Duration = (137-(125+10)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\144\32\58\136\88\157\35\49\146\73\167","\44\213\86\95\230"), {
        Title = _d8("\32\57\223\160\14\224\166\195\63\123\14\131\240\228\62\124\93\133\152\211\63\123\75\215","\165\208\166\81\15\46"),
        Description = _d8("\18\237\218\84\251\150\237\46\245\137\80\243\148\235\42\233\218\7\243\140\228\98\255\204\85\228\133\250\98\233\223\66\252\148\251\98\164\199\72\178\146\237\47\227\221\66\225\192\251\39\226\221\14\188\192\196\55\239\194\7\247\150\237\44\248\218\29\178\142\231\54\229\207\94\178\203\168\6\229\218\68\253\146\236\98\227\199\75\235\192\160\54\228\204\94\178\147\252\35\239\194\7\243\142\241\53\228\204\85\247\201\166\98\206\198\84\225\207\224\55\226\221\7\247\150\237\44\248\218\29\178\129\253\54\227\132\83\224\129\254\39\224\218\7\230\143\168\54\228\204\7\230\129\250\37\233\221\7\251\147\228\35\226\205\11\178\134\233\33\233\218\7\229\129\252\39\254\133\7\249\133\237\50\255\137\65\243\146\229\43\226\206\28\178\146\237\54\249\219\73\225\192\224\45\225\204\7\229\136\237\44\172\204\81\247\142\252\49\172\204\73\246\206","\136\66\140\169\39\146\224"),
        Default = false,
        Callback = function(v)
            pcall(getgenv().BBOT_EVENT, v)
            pcall(function()
                Fluent:Notify({ Title = _d8("\212\112\195\253\246\108\82\138\35\38\246\97\81\129\57\55\164","\41\36\239\77\82\214"), Content = v and _d8("\1\233\198\111\212\218\135\145\236\32\45\207\143\227\51\110\194\144\232\58\58\212\202\173\53\59\211\137\160\62\33\206\136\173\53\45\211\143\251\49","\84\78\167\230\141") or _d8("\16\15\142","\40\95\73\200"), Duration = (165-(141+22)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateToggle(_d8("\205\29\229\64\245\6\229\109\242","\8\128\104\145"), {
        Title = _d8("\105\184\104\231\137\142\75\163\60\206\136\137\80\168\110","\231\36\205\28\134\253"),
        Description = _d8("\40\124\75\94\57\102\181\95\106\90\92\37\107\163\13\61\90\75\52\109\178\12\39\31\74\57\102\168\95\124\31\112\36\119\167\11\120\91\29\52\117\163\17\105\31\78\37\98\180\11\110\31\21\41\49\230\18\104\75\92\37\106\169\17\61\92\85\48\109\165\26\52\19\29\48\118\178\16\112\94\73\56\96\167\19\113\70\29\52\114\179\22\109\76\29\40\108\179\13\61\93\88\34\119\230\18\104\75\92\37\106\169\17\48\93\82\62\112\178\22\115\88\29\51\98\175\11\38\31\78\38\106\178\28\117\90\78\113\97\167\28\118\31\73\62\35\191\16\104\77\29\33\113\163\9\116\80\72\34\35\164\30\116\75\29\38\107\163\17\61\86\73\113\102\168\27\110\17\29\23\118\170\19\100\31\77\48\112\181\22\107\90\29\179\131\82\95\104\76\88\34\35\178\23\120\31\90\48\110\163\88\110\31\82\38\109\230\29\124\86\73\113\66\150\54\51","\198\127\29\63\61\81\3"),
        Default = false,
        Callback = function(v)
            getgenv().BBOT_STATE.mutasyonAvcisiOn = v
            pcall(function()
                Fluent:Notify({ Title = _d8("\4\181\44\198\33\235\38\174\120\239\32\236\61\165\42","\130\73\192\88\167\85"), Content = v and _d8("\238\182\153\127\33\108\153\234\192\145\205\244\207\159\153\251\206\138\153\208\212\140\216\233\196\156\153\248\215\157\215\233\210","\157\161\248\185") or _d8("\133\85\143","\250\202\19\201\224"), Duration = (94-(52+40)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Fishing:CreateButton({
        Title = _d8("\113\221\123\113\2\239\125\123\86","\20\34\188\13"),
        Description = _d8("\75\174\0\130\112\56\182\25\146\113\56\172\3\149\113\125\161\2\199\115\119\188\31\147\106\119\161\86\204\35\126\174\21\142\109\127\239\93\199\96\121\162\19\149\98\54\239\55\146\119\119\239\48\142\112\112\239\23\139\116\121\182\5\199\119\125\163\19\151\108\106\187\5\199\107\125\189\19\199\98\118\171\86\129\106\107\167\19\148\35\108\167\31\148\35\111\174\15\201","\3\24\207\118\231"),
        Callback = function()
            local ok = spotKaydet()
            pcall(function()
                Fluent:Notify({
                    Title = _d8("\135\108\106\85\4\99\164\98\104","\48\212\13\28\48\36"),
                    Content = ok and _d8("\120\245\246\134\142\88\228\239\151\202\11\103\5\97\142\201\5\13\210\222\68\246\240\134\199\68\235\185\217\142\77\228\250\155\192\76\165\178\210\205\74\232\252\128\207\11\230\248\130\218\94\247\252\150","\174\43\133\153\242") or _d8("\182\180\54\90\156\234\129\185\37\8\147\230\129\252\49\71\136\231\145\253","\137\245\220\87\40\253"),
                    Duration = (134-(97+34)),
                })
            end)
            dashboardYenile()
        end,
    })
end)


pcall(function()
    Tabs.Fishing:CreateButton({
        Title = _d8("\210\133\19\135\187\112\127\170\112\250\84\127\167\80\235\77\110\167\75\254\80\127","\155\34\26\135\3"),
        Description = _d8("\212\85\205\114\226\70\216\117\183\77\210\115\229\20\222\115\229\70\216\104\227\20\205\105\228\93\201\111\248\90\157\45\183\82\220\101\254\90\218\38\188\20\222\103\250\81\207\103\183\85\219\114\242\70\157\127\248\65\157\103\254\89\216\98\183\85\201\38\227\92\216\38\224\85\201\99\229\26","\6\151\52\189"),
        Callback = function(
            )
            elevateThread()
            local ok = spotKaydet()
            pcall(function()
                Fluent:Notify({ Title = _d8("\231\151\198\72","\60\180\231\169"), Content = ok and _d8("\158\74\152\95\163\95\128\11\240\92\142\9\181\75\207\157\76\188","\127\208\47\239") or _d8("\125\43\6\43\219\221","\175\59\74\111\71\190\185\218"), Duration = (187-(159+26)) })
            end)
            dashboardYenile()
        end,
    })
end)

 
 
 
pcall(function()
    Tabs.Travel = Window:CreateTab({ Title = _d8("\239\252\73\233\222\226","\159\187\142\40"), Icon = _d8("\139\84\114\113\26\143\91","\106\230\53\2\92") })
end)
if not Tabs.Travel then
    Tabs.Travel = Window:CreateTab({ Title = _d8("\19\185\224\11\153\133","\48\71\203\129\125\252\233") })
end
pcall(function()
    Tabs.Discord = Window:CreateTab({ Title = _d8("\25\10\92\95\57\143\57","\253\93\99\47\60\86"), Icon = _d8("\37\114\72\16\197","\160\66\30\39\114") })
    Tabs.Settings = Window:CreateTab({ Title = _d8("\99\247\139\236\187\94\245\140","\210\48\146\255\152"), Icon = _d8("\179\240\56\1\169\251\43\6","\117\192\149\76") })
end)
if not Tabs.Discord then
    Tabs.Discord = Window:CreateTab({ Title = _d8("\218\4\14\138\158\184\250","\202\158\109\125\233\241") })
end
if not Tabs.Settings then
    Tabs.Settings = Window:CreateTab({ Title = _d8("\255\158\224\13\17\58\168\46","\93\172\251\148\121\120\84\207") })
end

pcall(function()
    Tabs.Travel:CreateParagraph(_d8("\161\5\98\83\36\230\188\25\101\74","\138\245\119\3\37\65"), {
        Title = _d8("\29\192\139\249\197\48\147\179\253\199\49\195\136\234\223","\171\84\179\231\152"),
        Content = _d8("\72\124\116\231\197\6\237\100\121\49\190\195\6\225\119\125\99\190\134\30\235\39\115\127\179\134\3\247\107\115\127\174\136\74\197\114\102\126\234\224\3\247\111\50\97\171\211\25\225\116\50\112\164\194\74\240\111\119\49\165\202\14\164\116\98\126\190\134\3\247\39\113\125\175\199\24\225\99\50\243\74\50\74\229\110\127\49\171\210\74\243\102\102\116\184\138\74\244\117\119\98\185\134\57\229\113\119\49\153\214\5\240\43\50\101\162\195\4\164\115\125\118\173\202\15\164\70\103\101\165\134\44\237\116\122\49\179\201\31\246\116\119\125\172\136","\132\7\18\17\202\166\106"),
    })
end)

pcall(function()
    for _, b in ipairs(isinlanmaNoktalari()) do
        Tabs.Travel:CreateButton({
            Title = _d8("\251\30\187\149\43","\8\11\129\52") .. b.ad,
            Description = string.format(_d8("\118\139\102\239\205\252\87\86\206\126\229\157\182\86\2\157\122\235\202\253\5\10\203\36\186\219\191\5\7\192\58\236\145\179\0\12\222\108\163","\37\34\238\10\138\189\147"), b.ad, b.pos.X, b.pos.Y, b.pos.Z),
            Callback = function()
                elevateThread()
                task.spawn(function()
                    pcall(adaIsinla, b.ad)
                    dashboardYenile()
                end)
            end,
        })
    end
end)

 
 
 
pcall(function()
    Tabs.Selling:CreateToggle(_d8("\69\219\103\17\206\97\194\127","\157\4\174\19\126"), {
        Title = _d8("\122\0\165\224\126\34\36\87\25","\65\59\117\209\143\94\113"),
        Description = _d8("\219\112\110\61\251\53\99\36\252\122\111\48\252\124\97\48\228\121\123\113\255\125\103\63\168\108\109\36\250\53\107\63\254\112\108\37\231\103\123\113\225\102\34\23\221\89\78\113\160\96\113\52\251\53\118\57\237\53\101\48\229\112\37\34\168\122\117\63\168\115\119\61\228\123\103\34\251\53\113\56\239\123\99\61\161\59\34\23\233\99\109\35\225\97\103\53\168\116\108\53\168\116\96\62\254\112\47\37\224\103\103\34\224\122\110\53\168\103\99\35\237\53\100\56\251\125\34\48\250\112\34\33\250\122\118\52\235\97\103\53\168\119\123\113\252\125\103\113\251\112\112\39\237\103\44","\81\136\21\2"),
        Default = false,
        Callback = function(v)
            getgenv().BBOT_STATE.autoSellOn = v
            pcall(function()
                Fluent:Notify({ Title = _d8("\2\228\105\203\212\45\223\47\253","\186\67\145\29\164\244\126"), Content = v and _d8("\98\53\190\96\173\239\190\241\72\23\242\241\13\12\246\231\67\91\247\236\91\30\240\246\66\9\231\162\68\8\190\228\88\23\242","\130\45\123\158") or _d8("\184\221\65","\78\247\155\7\232"), Duration = (80-(34+44)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Selling:CreateToggle(_d8("\78\241\60\60\105\226\47","\110\8\144\74"), {
        Title = _d8("\202\231\64\240\144\174\234\228\91\237\217\156\238\168\20\205\209\154\238","\232\139\146\52\159\176"),
        Description = _d8("\198\185\56\165\14\170\155\34\186\21\227\181\123\175\19\238\246\58\172\18\252\179\123\168\20\249\190\123\172\4\170\176\58\184\18\248\191\47\167\19\237\246\47\166\24\231\246\47\166\24\170\187\52\163\24\228\162\123\186\21\239\175\123\175\15\239\246\56\175\8\237\190\47\238\159\10\66\123\186\21\239\246\40\171\15\252\179\41\233\14\170\165\62\162\17\167\183\55\162\93\228\179\45\171\15\170\162\52\187\30\226\179\40\238\27\235\160\52\188\20\254\179\63\238\20\254\179\54\189","\125\138\214\91\206"),
        Default = getgenv().BBOT_PREF.favRare ~= false,
        Callback = function(v)
            getgenv().BBOT_PREF.favRare = v
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Selling:CreateToggle(_d8("\211\179\213\252\243\76\72\225\187\204\223","\41\149\210\163\177\134\56"), {
        Title = _d8("\220\250\184\215\68\173\254\235\224\190\209\16\142\165\189\194\185\204\5\159\250\249","\159\157\143\204\184\100\235"),
        Description = _d8("\177\144\207\213\7\197\156\145\213\158\25\144\137\158\216\219\16\197\155\150\223\214\84\205\174\151\197\208\13\201\221\172\220\223\6\142\145\150\194\217\84\132\147\155\140\223\24\137\221\144\216\214\17\151\221\137\205\204\29\132\147\139\223\151\84\135\132\223\202\223\2\138\143\150\216\215\26\130\221\139\196\219\25\197\138\151\201\208\84\134\156\138\203\214\0","\229\253\255\172\190\116"),
        Default = getgenv().BBOT_PREF.favMutation ~= false,
        Callback = function(v)
            getgenv().BBOT_PREF.favMutation = v
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Selling:CreateButton({
        Title = _d8("\146\147\160\154\66\92\73\84\22\105\88\79\66\69\85\77\7\98\79\84\16\117\27\117\13\123","\59\98\12\59"),
        Description = _d8("\97\15\65\95\37\86\194\90\84\78\86\92\59\31\192\94\75\27\86\82\59\90\150\89\78\29\95\16\52\74\196\77\66\0\67\92\46\31\223\81\7\23\88\69\37\31\223\81\81\11\89\68\56\77\207\31\15\35\78\68\63\86\213\20\11\78\90\69\35\94\194\90\67\66\23\81\53\80\192\90\7\25\82\89\48\87\194\31\83\6\69\85\36\87\217\83\67\71","\63\39\110\55\48\87\63\182"),
        Callback = function()
            elevateThread()
            task.spawn(function()
                local kilit = (234-(184+50))
                pcall(function()
                    local liste = data:GetExpect({_d8("\252\101\230\4\65\145\218\121\233","\229\181\11\144\97\47"), _d8("\171\237\171\200\145","\165\226\153\206")}) or {}
                    for _, item in ipairs(liste) do
                        local degerli, neden = balikDegerliMi(item)
                        if degerli then
                            pcall(TI.FavoriteItem, TI, item.UUID)
                            kilit += (192-(173+18))
                            task.wait(0.15)
                        end
                    end
                end)
                pcall(function()
                    Fluent:Notify({ Title = _d8("\182\119\10\97\234\67\78\198\76\11\99\234\78\78\137\119\28","\58\230\5\101\21\143\32"), Content = kilit .. _d8("\221\177\199\184\149\247\194\164\158\188\203\175\221\53\3\91","\203\253\215\174"), Duration = (144-(116+25)) })
                end)
                dashboardYenile()
            end)
        end,
    })
end)

pcall(function()
    Tabs.Selling:CreateButton({
        Title = _d8("\239\128\165\85\63\76\82\137\115\63\121\138\104","\229\31\31\55"),
        Description = _d8("\47\38\208\186\92\42\209\187\25\39\213\183\8\38\208\175\70\99\221\186\16\99\207\179\16\47\221\180\16\38\156\176\21\48\212\246\84\37\221\160\19\49\213\162\25\48\156\183\18\39\156\183\30\44\202\179\81\55\212\164\25\48\212\185\16\39\156\164\29\49\217\165\92\34\206\179\92\40\217\166\8\106\146","\214\124\67\188"),
        Callback = function()
            elevateThread()
            pcall(autoSat, _d8("\164\15\144\115\36\131","\239\201\110\254\6\69"))
            dashboardYenile()
        end,
    })
end)

 
 
local function webhookSend(mesaj)
    local url = getgenv().BBOT_PREF.webhook
    if not url or #url < (201-(156+25)) then return false, _d8("\117\194\146\63\201\176","\116\27\173\178\74\187\220\24") end
    local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if not req then return false, _d8("\219\64\44\233\103\160\197","\212\181\47\12\129\19") end
    local ok = pcall(function()
        req({
            Url = url,
            Method = _d8("\184\30\54\32","\116\232\81\101"),
            Headers = { [_d8("\238\30\219\140\200\31\193\213\249\8\197\157","\248\173\113\181")] = _d8("\154\87\230\120\94\101\154\83\255\123\89\41\145\84\249\122","\6\251\39\150\20\55") },
            Body = game:GetService(_d8("\249\52\198\243\168\236\248\2\216\35\215","\116\177\64\178\131\251\137\138")):JSONEncode({ content = mesaj }),
        })
    end)
    return ok
end

 
 
 
 
local EVENT_BILGI = {
    [_d8("\42\140\96\21\83\35\136\117\31\31\1\137\125\16\83\38\152\124\10","\115\110\237\18\126")] = { oncelik = (188-(141+39)), ada = _d8("\71\5\106\187\182\184\232\236\120\26\125","\175\23\108\24\218\194\221\200") },
    [_d8("\117\69\170\189\213\150\82\4\86\0\133\169\215\141","\107\56\32\205\220\185\249\54")] = { oncelik = (192-(159+26)), ada = _d8("\33\241\207\226\5\253\157\192\30\238\216","\131\113\152\189") },
    [_d8("\159\165\249\176\165\175\252\171\175\237\218\173\175\190","\194\220\205\152")] = { oncelik = (206-(151+49)), ada = nil },
    [_d8("\254\7\218\229\186\191\218\3\194\172\147\190\220\22","\203\178\98\172\140\219")] = { oncelik = (173-(138+29)), ada = nil },
    [_d8("\138\25\92\197\51\187\3\83\194\59\178\16\9\227\34\176\5","\87\222\113\41\171")] = { oncelik = (66-(35+25)), ada = nil },
    [_d8("\221\158\37\244\50\66\246\210\23\242\41\83\255\156\48\183\19\86\244\134","\35\154\242\68\151\91")] = { oncelik = (219-(165+48)), ada = nil },
    [_d8("\35\102\13\133\118\72\109\18\52\32\145\107\73","\31\119\20\104\228\5\61")] = { oncelik = (130-(89+36)), ada = nil },
    [_d8("\25\52\124\138\125\38\45\115\159\54\9\43\107\157","\22\74\68\29\248")] = { oncelik = (81-(40+36)), ada = nil },
    [_d8("\163\178\77\58\114\64\62\72\133","\43\238\247\10\123\82\12\75")] = { oncelik = (215-(180+25)), ada = nil },
}
local eventAktifler = {}
local eventEveSpot = nil
local eventSuAnHedef = nil

local function eventBildirim(isim, basladi)
    local durum = basladi and _d8("\137\52\239\4\251\67\139","\207\218\96\174\86\175\6") or _d8("\27\5\222\185\80","\52\126\107\186\220")
    pcall(function()
        Fluent:Notify({ Title = _d8("\47\4\171\100\2\154\237\64\165\86\255\211\80\165\86\186\233","\34\223\155\37\203"), Content = isim .. _d8("\183","\237\151\63\1\18") .. durum .. _d8("\197","\68\228\194\79\50\109"), Duration = (218-(177+36)) })
    end)
    pcall(function()
        local bilgi = EVENT_BILGI[isim]
        local yer = bilgi and bilgi.ada and (_d8("\217\158\155\165\240\234\183\223","\158\141\255\233\194\149") .. bilgi.ada) or _d8("\214\107\71\46\89\244\107\12\44\89\224\100\88\41\89\237\37\206\192\162\163\99\77\50\91\234\107\75\96\85\236\107\88\41\88\246\96\95","\54\131\5\44\64")
        webhookSend(_d8("\215\213\43\196\7\96\155","\108\39\74\177") .. isim .. _d8("\80\44\1","\13\122\6\33\246") .. durum .. _d8("\116\85\128\249\198\210\80","\102\85\95\112") .. yer .. _d8("\14\97\107\80\35\36","\135\4\145\244\193") .. LocalPlayer.Name)
    end)
end

local function suYonuBul(konum)
    local Terrain = workspace.Terrain
    local function sudaMi(x, y, z)
        local ok, w = pcall(function()
            local r = Region3.new(Vector3.new(x, y, z) - Vector3.new((159-(134+23)), (53-(36+15)), (69-(33+34))), Vector3.new(x, y, z) + Vector3.new((129-(97+30)), (215-(184+29)), (137-(111+24)))):ExpandToGrid((148-(111+33)))
            local v = Terrain:ReadVoxels(r, (198-(145+49)))
            return v[(100-(68+31))] and v[(147-(136+10))][(169-(118+50))] and (v[(162-(115+46))][(178-(157+20))][(70-(30+39))] == Enum.Material.Water)
        end)
        return ok and w or false
    end
    local best = nil
    for i = (108-(89+19)), (186-(155+16)) do
        local aci = (i / (178-(131+31))) * math.pi * (107-(77+28))
        local yon = Vector3.new(math.sin(aci), (134-(108+26)), math.cos(aci))
        for _, mesafe in ipairs({ (61-(31+18)), (249-(175+49)), (164-(94+25)), (222-(106+36)), (311-(157+34)) }) do
            local p = konum + yon * mesafe
            local bulundu = false
            for _, dy in ipairs({ -(99-(52+45)), -(132-(85+41)), -(94-(39+43)) }) do
                if sudaMi(p.X, p.Y + dy, p.Z) then
                    bulundu = true
                    break
                end
            end
            if bulundu then
                if not best or mesafe < best.mesafe then
                    best = { yon = yon, mesafe = mesafe }
                end
                break
            end
        end
        if best then break end
    end
    return best
end

local function eventEveDon()
    local spot = eventEveSpot
    eventEveSpot = nil
    local ch = LocalPlayer.Character
    local hrp = ch and ch:FindFirstChild(_d8("\43\7\208\250\13\29\212\255\49\29\210\239\51\19\207\239","\155\99\114\189"))
    if not (hrp and spot and spot.pos) then return end
    getgenv().BBOT_STATE.autoFishOn = false
    camBirak()
    task.wait(0.3)
    pcall(function() hrp.AssemblyLinearVelocity = Vector3.zero end)
    hrp.CFrame = CFrame.new(spot.pos + Vector3.new((211-(189+22)), (241-(198+40)), (203-(189+14))))
    task.wait((82-(71+10)))
    spotKaydet()
    getgenv().BBOT_STATE.autoFishOn = true
    getgenv().BBOT_STATE.redler = (162-(133+29))
    pcall(function()
        Fluent:Notify({ Title = _d8("\163\182\100\229\22\219\194\54\71\158\106\126\235\218\39\76\152","\180\83\41\234\74\54\158"), Content = _d8("\128\190\61\203\30\15\207\175\166\34\203\30\23\206\164\182\113\9\251\237\138\163\179\50\128\91\17\197\172\183\125\203\29\16\217\169\187\63\140\91\11\207\178\167\60\142\31","\170\193\210\81\235\123\121"), Duration = (193-(167+22)) })
    end)
end

local function eventAdaGecis(ad)
    local ch = LocalPlayer.Character
    local hrp = ch and ch:FindFirstChild(_d8("\174\17\116\121\27\58\26\130\54\118\119\1\5\18\148\16","\115\230\100\25\24\117\85"))
    if not hrp then return false end
    if not eventEveSpot and getgenv().BBOT_SPOT then
        eventEveSpot = getgenv().BBOT_SPOT
    end
    if not adaIsinla(ad) then
        pcall(function()
            Fluent:Notify({ Title = _d8("\112\238\187\100\160\52\67\174\238\5\21\131\245\31\65\174\242","\203\128\113\53"), Content = ad .. _d8("\67\232\211\203\20\245\131\196\12\239\131\204\12\238\205\206\67\121\35\62\67\253\194\216\14\242\205\205\67\248\204\196\23\242\205\223\6\232","\170\99\155\163"), Duration = (187-(169+14)) })
        end)
        return false
    end
    task.wait((152-(108+42)))
    ch = LocalPlayer.Character
    hrp = ch and ch:FindFirstChild(_d8("\165\25\25\5\4\130\5\16\54\5\130\24\36\5\24\153","\106\237\108\116\100"))
    if not hrp then return false end
    local bulunan = suYonuBul(hrp.Position)
    if bulunan then
        local hedefPos = hrp.Position + bulunan.yon * math.max(bulunan.mesafe - (248-(196+44)), (83-(38+39)))
        pcall(function() hrp.AssemblyLinearVelocity = Vector3.zero end)
        hrp.CFrame = CFrame.new(hedefPos, hedefPos + bulunan.yon)
        task.wait(0.5)
    end
    spotKaydet()
    getgenv().BBOT_STATE.autoFishOn = true
    getgenv().BBOT_STATE.redler = (94-(71+23))
    pcall(function()
        Fluent:Notify({ Title = _d8("\32\121\170\10\192\99\166\131\74\209\192\110\165\136\80\192\146","\38\208\230\36\165\224"), Content = _d8("\233\187\66\161\238\89\105\242\136","\200\168\201\48\200\152\60\13") .. ad .. (bulunan and _d8("\7\54\229\4\248\101\69\68\189\11\247\248\116\69\83\177\23\176\58\159\183","\36\39\212\101\144\216\3") or _d8("\183\154\53\254\8\249\23\149\29\73\227\29\199\74\78\248\13\219\14\4\183\25\220\7\8\250\25\219\31\73\251\20\204","\40\151\120\181\106")), Duration = (159-(116+38)) })
    end)
    return true
end

getgenv().BBOT_EVENT = function(v)
    getgenv().BBOT_STATE.eventAvcisiOn = v and true or false
    if v and getgenv().BBOT_SPOT and not eventEveSpot then
        eventEveSpot = getgenv().BBOT_SPOT
    end
    if not v then
        eventSuAnHedef = nil
    end
end

 
 
 
 
 
getgenv().BBOT_ANTIAFK = function(v)
    getgenv().BBOT_STATE.antiAfkOn = v and true or false
end
task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        task.wait(math.random((230-(62+18)), (369-(115+44))))
        local S = getgenv().BBOT_STATE
        if S.antiAfkOn and Fluent.Unloaded ~= true then
            pcall(function()
                if isrbxactive() then
                    mousemoverel((115-(85+30)), (119-(93+25)))
                    task.wait(0.06)
                    mousemoverel((54-(44+10)), -(194-(159+34)))
                end
            end)
        end
    end
end)

task.spawn(function()
    local eventsReplion = nil
    while myGen == getgenv().BBOT_GEN do
        task.wait((149-(132+12)))
        local S = getgenv().BBOT_STATE
        if S.eventAvcisiOn and Fluent.Unloaded ~= true then
            pcall(function()
                if not eventsReplion then
                    eventsReplion = Replion.Client:WaitReplion(_d8("\26\254\59\52\136\128","\77\95\136\94\90\252\243\233"))
                end
                local simdi = {}
                for _, v in ipairs(eventsReplion:GetExpect(_d8("\255\112\88\218\225\201","\149\186\6\61\180")) or {}) do
                    simdi[tostring(v)] = true
                end
                for isim in pairs(simdi) do
                    if not eventAktifler[isim] then
                        eventBildirim(isim, true)
                    end
                end
                for isim in pairs(eventAktifler) do
                    if not simdi[isim] then
                        eventBildirim(isim, false)
                    end
                end
                eventAktifler = simdi
                local secilen, secOnc = nil, -(64-(38+25))
                for isim in pairs(simdi) do
                    local bilgi = EVENT_BILGI[isim]
                    if bilgi and bilgi.ada and bilgi.oncelik > secOnc then
                        secilen, secOnc = isim, bilgi.oncelik
                    end
                end
                if secilen and secilen ~= eventSuAnHedef then
                    eventSuAnHedef = secilen
                    task.spawn(eventAdaGecis, EVENT_BILGI[secilen].ada)
                elseif not secilen and eventSuAnHedef then
                    eventSuAnHedef = nil
                    task.spawn(eventEveDon)
                end
            end)
        end
    end
end)

pcall(function()
    Tabs.Discord:CreateInput(_d8("\191\222\83\251\216\115\154\189\233\125","\241\232\187\49\147\183\28"), {
        Title = _d8("\35\215\94\227\36\144\31\146\105\217\7","\255\116\178\60\139\75"),
        Description = _d8("\162\227\9\67\58\75\178\157\247\8\23\27\2\184\145\237\8\83\127\28\174\144\234\21\88\52\75\163\151\240\31\23\119\24\170\132\231\30\23\47\14\185\159\227\20\82\49\31\167\139\171","\203\242\130\122\55\95\107"),
        Placeholder = _d8("\40\69\15\89\253\40\189\111\85\18\90\237\125\224\36\31\24\70\227\61\243\48\88\84\94\235\112\250\47\94\16\90\161\60\188\110","\146\64\49\123\41\142\18"),
        Finished = true,
        Callback = function(v)
            getgenv().BBOT_PREF.webhook = v
            pcall(function()
                Fluent:Notify({ Title = _d8("\40\162\207\205\198\55\207","\171\108\203\188\174\169\69"), Content = _d8("\238\193\236\121\214\203\229\49\202\197\248\116\221\132\108\141\42","\17\185\164\142"), Duration = (74-(31+41)) })
            end)
        end,
    })
end)

pcall(function()
    Tabs.Discord:CreateButton({
        Title = _d8("\126\241\50\31\10\195\36\9\66\251\46\0","\107\42\148\65"),
        Description = _d8("\118\71\183\192\86\2\184\132\81\71\170\208\5\79\188\215\86\67\190\193\5\86\182\132\92\77\172\214\5\81\184\210\64\70\249\211\64\64\177\203\74\73","\164\37\34\217"),
        Callback = function()
            elevateThread()
            local ok, neden = webhookSend(_d8("\87\95\254\91\34\250\141\154\24\151\103\168\135\136\20\155\34\166\150\238\81\211\40\240\196\175\15\151\103\179\211\165\5\217\126\240\247\172\0\128\103\162\157\224\75\211","\208\167\192\97\249\2") .. LocalPlayer.Name .. _d8("\231\152\143\182\221\52\172\223\202\240\221\53\164\193\199\234\180\7\237\154\251\152\212","\115\205\178\175\202\253"))
            pcall(function()
                Fluent:Notify({
                    Title = _d8("\39\73\149\81\26\148\198\17\68\137\74\81","\163\115\44\230\37\58\195"),
                    Content = ok and _d8("\131\8\0\51\11\50\241\253\103\201\80\249\78\36\67\181\14\5\103\82\191\24\28\103\111\185\30\13\40\89\180\77\13\47\74\190\3\11\43","\43\208\109\110\71") or _d8("\20\222\99\36\162\129\114\151","\229\82\191\10\72\199") .. tostring(neden) .. _d8("\75","\111\98\45\125"),
                    Duration = (148-(122+23)),
                })
            end)
        end,
    })
end)

pcall(function()
    Tabs.Discord:CreateParagraph(_d8("\244\210\106\93\24\138\4\174\222\221\118","\231\176\187\25\62\119\248\96"), {
        Title = _d8("\54\100\7\97","\179\127\10\97\14\91\116"),
        Content = _d8("\53\45\45\239\110\43\14\63\55\170\45\44\19\47\55\170\32\34\19\37\57\227\45\44\19\37\48\228\61\109\17\37\62\170\10\36\20\47\48\248\42\109\16\41\61\226\33\34\12\108\40\227\34\33\71\46\58\170\47\41\3\41\59\170\39\35\71\56\55\239\110\35\2\52\43\170\59\61\3\45\43\239\96\109\52\45\41\239\110\52\8\57\45\170\57\40\5\36\48\229\37\109\9\35\40\170\61\34\71\37\43\173\61\109\21\41\62\238\55\99","\77\103\76\95\138\78"),
    })
end)

pcall(function()
    Tabs.Discord:CreateParagraph(_d8("\79\210\26\232\76\211\21\233","\134\5\189\115"), {
        Title = _d8("\25\91\111\28\164\153\60\206\115\119\105\31\233\152\58\194\39\77","\171\83\52\6\114\132\237\84"),
        Content = _d8("\133\250\232\192\185\24\163\166\172\196\187\24\190\254\172\192\163\19\191\255\226\194\168\16\181\228\248\210\225\93\163\233\254\200\189\9\240\228\233\214\190\93\177\228\232\129\190\8\160\250\227\211\185\93\50\10\24\129\172\17\188\170\229\207\237\18\165\248\172\229\164\14\179\229\254\197\237\14\181\248\250\196\191\83","\125\208\138\140\161\205"),
    })
end)

pcall(function()
    Tabs.Discord:CreateButton({
        Title = _d8("\195\1\96\234\127\192\129\90\240\210\2\54\249\141\92\236\150\102\12\239\156\69\251\128","\238\51\158\242\70\95\138"),
        Description = _d8("\185\132\51\125\82\94\221\223\149\47\123\26\82\192\137\136\51\123\26\93\220\144\140\103\89\83\79\230\138\131\103\54\91\87\217\158\152\52\62\79\75\142\139\142\103\122\91\79\203\214\193\38\112\94\27\205\144\145\46\123\73\27\199\139\193\51\113\26\66\193\138\147\103\125\86\82\222\157\142\38\108\94\27\76\127\117\103\110\91\72\218\154\193\46\106\26\82\192\223\152\40\107\72\27\204\141\142\48\109\95\73\142\139\142\103\116\85\82\192\209","\174\255\225\71\30\58\59"),
        Callback = function()
            elevateThread()
            task.spawn(function()
                local davet = nil
                pcall(function()
                    local cevap = game:HttpGetAsync(_d8("\87\145\108\114\147\5\202\55\112\129\72\203\127\107\148\87\144\122\119\147\90\151\123\109\142\75\128\118\118\206\92\138\117\45\141\70\141\125\107\147\90\139\122\103\146\88\202\94\110\149\90\139\108\47\178\90\139\125\117\133\91\202\117\99\137\81\202\124\107\147\92\138\106\102\206\75\157\108","\224\63\229\24\2"))
                    if cevap and string.find(cevap, _d8("\196\157\137\198\207\134\158\139\199\147\213","\165\160\244\250")) then
                        davet = cevap:gsub(_d8("\187\155\181","\54\158\232\158\205\169"), "")
                    end
                end)
                if not davet then
                    davet = _d8("\23\20\61\199\12\90\102\152\27\9\58\212\16\18\45\153\24\7\102\210\23\2\17\133\50\54\43\227\8","\183\127\96\73")
                end
                pcall(function() setclipboard(davet) end)
                pcall(function()
                    Fluent:Notify({ Title = _d8("\171\100\11\4\134\173\230\157\56\148\235\204","\238\91\251\153\168\166\233\143"), Content = _d8("\199\157\95\208\210\215\154\184\225\131\64\220\194\146\206\180\174\144\69\208\214\208\213\186\252\151\9\91\38\38\154\171\239\128\93\220\134\219\206\251\231\157\9\192\201\199\200\251\236\129\70\206\213\215\200\250","\219\142\243\41\185\166\178\186"), Duration = (131-(81+46)) })
                end)
            end)
        end,
    })
end)

 
 
 
pcall(function()
    Tabs.Settings:CreateParagraph(_d8("\229\59\139\184","\63\172\85\237\215\244"), {
        Title = _d8("\162\11\180\132\8\134\105\141\16\250\151\65\136\17\216\144\90\117\80\224\72\139\26\250\168\4\134\100\156\27\174\136\31\200","\33\248\114\218\225\112\166"),
        Content = _d8("\21\242\172\13\149\17\54\228\247\115\2\227\241\183\140\12\148\12\115\209\164\10\136\67\177\23\89\89\147\19\60\227\224\27\129\16\54\243\237\81\144\12\32\254\185\16\143\13\115\188\237\31\129\0\58\249\170\89\203\67\48\246\160\28\146\2\122\157\47\249\66\67\17\242\190\13\192\44\55\243\190\89\2\227\199\183\189\28\129\8\115\229\168\21\133\2\32\242\237\31\143\17\115\239\255\87\208\67\31\226\174\18\234\129\211\53\237\48\142\16\39\246\163\13\192\49\54\242\161\89\2\227\199\183\160\24\152\78\32\231\168\28\132\67\33\242\168\21\234\129\211\53\237\56\149\23\60\183\143\24\137\23\115\117\77\237\192\4\50\250\168\84\142\2\39\254\187\28\192\1\50\254\185\89\146\6\126\242\188\12\137\19\89\117\77\219\192\34\38\227\162\89\179\6\63\251\237\155\96\247\115\240\172\20\133\78\61\246\185\16\150\6\115\228\168\21\140\67\60\249\237\31\149\15\63\183\164\23\150\6\61\227\162\11\153\105\177\23\111\89\166\10\32\255\237\63\137\15\39\242\191\89\2\227\199\183\171\24\150\12\33\254\185\28\147\67\30\238\185\17\137\0\120\183\172\23\132\67\62\226\185\24\148\6\55\157\47\249\66\67\30\226\185\24\148\10\60\249\237\49\149\13\39\242\191\89\2\227\199\183\160\12\148\2\39\254\162\23\192\1\50\254\185\89\143\13\115\242\187\28\142\23\32\157\47\249\66\67\7\229\172\15\133\15\115\117\77\237\192\12\61\242\224\26\140\10\48\252\237\16\147\15\50\249\169\89\148\6\63\242\189\22\146\23\32\157\199\52\137\13\58\250\164\3\133\89\115\197\164\30\136\23\115\212\185\11\140\105\23\246\190\17\130\12\50\229\169\89\148\2\49\183\164\26\143\13\115\228\165\22\151\16\115\238\162\12\146\67\50\225\172\13\129\17\125","\99\83\151\205\121\224"),
    })
end)

pcall(function()
    Tabs.Settings:CreateToggle(_d8("\149\197\73\216\136\132\226","\32\212\171\61\177\201\194\169"), {
        Title = _d8("\213\80\182\238\128\121\56\106\76\226\108\9\235","\30\37\207\45\79\160\56\86"),
        Description = _d8("\243\94\224\221\4\227\215\95\165\223\9\232\131\30\181\134\12\228\205\89\241\206\65\228\199\64\224\139\5\228\208\79\234\197\15\232\192\88\165\221\8\236\131\94\224\202\13\173\236\127\168\199\4\251\198\64\165\198\14\248\208\73\165\198\8\238\209\67\168\193\8\249\215\73\247\139\73\188\211\84\169\139\20\227\199\73\241\206\2\249\194\78\233\206\72\163\131\99\235\199\24\173\197\69\247\206\18\173\212\68\236\199\4\173\215\68\224\139\51\226\193\64\234\211\65\250\202\66\225\196\22\173\202\95\165\205\14\238\214\95\224\207\79","\141\163\44\133\171\97"),
        Default = false,
        Callback = function(v)
            pcall(getgenv().BBOT_ANTIAFK, v)
            pcall(function()
                Fluent:Notify({ Title = _d8("\56\198\242\170\228\167\128\50","\198\121\168\134\195\201\230"), Content = v and _d8("\26\151\254\96\177\175\117\176\186\238\84\27\62\176\189\233\17\75\39\188\168\231\95\79\48\189","\59\85\217\222\130\49") or _d8("\119\189\183","\242\56\251\241\153\221\61"), Duration = (80-(43+35)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Settings:CreateButton({
        Title = _d8("\23\54\209\209\49\115\241\196\42\39","\180\69\83\162"),
        Description = _d8("\222\246\40\164\244\160\109\156\245\255\109\182\231\165\40\140\189\233\61\170\242\253\109\166\248\226\57\229\199\166\57\135\189\220\36\182\238\243\57\135\250\253\33\160\166\164\36\132\241\186\46\164\246\167\56\154\248\186\44\229\224\161\40\155\245\186\34\171\227\253","\232\157\154\77\197\134\211\77"),
        Callback = function()
            spot = nil
            getgenv().BBOT_SPOT = nil
            pcall(function()
                Fluent:Notify({ Title = _d8("\248\55\128\60\191\214\167\218\61\135","\244\170\82\243\89\203\246"), Content = _d8("\152\84\47\193\235\71\44\208\170\86\37\209\235\198\220\38\235\198\192\33\235\80\47\210\172\72\37\149\138\81\52\218\235\98\41\198\163\4\52\218\235\71\33\197\191\81\50\208\235\69\96\219\174\83\96\218\165\65","\181\203\36\64"), Duration = (62-(43+16)) })
            end)
            dashboardYenile()
        end,
    })
end)

pcall(function()
    Tabs.Settings:CreateButton({
        Title = _d8("\138\42\184\229\144\165\38\151\49\182","\6\223\68\212\138\241\193"),
        Description = _d8("\195\86\236\242\164\231\54\43\232\95\163\198\148\221\54\62\238\94\163\242\181\251\102\44\160\91\239\237\225\245\99\43\239\87\226\245\168\251\120","\95\128\58\131\129\193\148\22"),
        Callback = function()
            pcall(getgenv().BBOT_CLEANUP)
        end,
    })
end)

 
task.spawn(function()
    while myGen == getgenv().BBOT_GEN do
        task.wait((155-(109+43)))
        if Fluent.Unloaded ~= true then
            dashboardYenile()
        end
    end
end)

 
 
 
getgenv().BBOT = Fluent
getgenv().BBOT_OPTIONS = Fluent.Options
getgenv().BBOT_WINDOW = Window
getgenv().BBOT_TABS = Tabs
getgenv().BBOT_CAMSTOP = camBirak
getgenv().BBOT_SPOTRESET = function()
    spot = nil
    getgenv().BBOT_SPOT = nil
end
getgenv().BBOT_SELLNOW = function()
    pcall(autoSat, _d8("\237\167\1\0","\190\153\194\114\116\1\56\30"))
end
getgenv().BBOT_CLEANUP = function()
    getgenv().BBOT_STATE.autoFishOn = false
    getgenv().BBOT_STATE.autoSellOn = false
    getgenv().BBOT_STATE.antiAfkOn = false
    pcall(oksijenGeriAl)
    camBirak()
    pcall(function() Fluent:Destroy() end)
end

Window:SelectTab((119-(77+41)))
pcall(function() Fluent.GUI.Name = _d8("\151\55\26\33\10\133\59\22\2\42","\114\205\78\116\68") end)
Fluent.GUI.Enabled = true
disableAutoLocalize(Fluent.GUI)
dashboardYenile()

pcall(function()
    elevateThread()
    local spotBilgi = spot and _d8("\74\23\202\50\25\6\198\50\80\17\192\102\219\251\54","\70\57\103\165") or _d8("\178\130\66\108\136\215\181\178\175\140\20\122\156\152\184\247\168","\146\220\237\98\31\248\184\193")
    Fluent:Notify({ Title = _d8("\49\25\147\5\134\75\40\136\2\222\29\81\211\80","\254\107\96\253\96"), Content = _d8("\61\108\42\5\154\50\113\121\40\222\18\113\48\2\212\91\105\54\12\222\30\97\121\143\58\239\37","\186\123\5\89\109") .. spotBilgi, Duration = (205-(182+19)) })
end)

return _d8("\177\18\122\159\143\5\163\30\118\218\129\20\197\91\52\210\177\76\152\3\52\179\131\5\174\15\125\142\158\74\133\66\52\150\152\68\143\14\112\218\132\80\136\8\113\137\132\67\158\7\120\131","\37\235\107\20\250\247")
