<div align="center">
  <h1>ESCKaybeden</h1>
</div>

- **_ESCKaybeden#0488_**
- [**_Youtube_**](https://www.youtube.com/channel/UCwmyBjDNow69-4A2jCRe4Sg)
- [**Discord**](https://discord.gg/2drcthqyAF)


 **_VehicleShop_** 
```lua
TriggerServerEvent("esc_carkey:newcarkey", GetVehicleNumberPlateText(buycar), data.model)
```
<img align="center" alt="VehicleShopImage" src="https://cdn.discordapp.com/attachments/959996073882050610/959997496153763870/carkey-trig.png"/>


## QBCore

 **_qb-inventory/server/main.lua_**  *_"inventory:server:UseItemSlot"_*
```lua
elseif	itemData.name == "carkey" then
TriggerClientEvent("esc_carkey:use", src, itemData.info.plate,  itemData.info.model)
```
<img align="center" alt="Inventory UseItemSlot" src="https://cdn.discordapp.com/attachments/912538828630265946/962700611416096818/carkey_qb_server_useslot.png"/>


 **_qb-inventory/server/main.lua_**  *_"inventory:server:UseItem"_*
```lua
elseif	itemData.name == "carkey" then
TriggerClientEvent("esc_carkey:use", src, itemData.info.plate,  itemData.info.model)
```
<img align="center" alt="Inventory UseItem" src="https://cdn.discordapp.com/attachments/912538828630265946/962700714222682172/carkey_qb_server_useitem.png"/>

## ESX

 **_inventory/server/main.lua_**  *_"inventory:server:UseItemSlot"_*
```lua
elseif	itemData.name == "carkey" then
TriggerClientEvent("esc_carkey:use", src, itemData.info.plate,  itemData.info.model)
```
<img align="center" alt="Inventory UseItemSlot" src="https://cdn.discordapp.com/attachments/912538828630265946/962701872819478579/carkey_esx_server_useitemslot.png"/>


 **_inventory/server/main.lua_**  *_"inventory:server:UseItem"_*
```lua
elseif	itemData.name == "carkey" then
TriggerClientEvent("esc_carkey:use", src, itemData.info.plate,  itemData.info.model)
```
<img align="center" alt="Inventory UseItem" src="https://cdn.discordapp.com/attachments/912538828630265946/962701872479744001/carkey_esx_server_useitem.png"/>


<div align="center">
  <h1> Customize </h1>
</div>

[![Video](https://cdn.discordapp.com/attachments/959996073882050610/959996154622398534/carkey.png)](https://www.youtube.com/watch?v=e28gst7Hptk "Video")

