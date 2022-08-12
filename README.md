# Zabbix NUT Template

Данный шаблон позволяет мониторить UPS обслуживаемые (совместимые) NUT. При этом непосредственно обработка данных и сам запрос происходят на сервере zabbix, что минимизирует настройку и дальнейшее обслуживание. Т.е. можно мониторить ИБП подключенный к Synology или сервер NUT живущий на Windows.

Шаблон позволяет вести учет нескольких UPS обслуживаемых одним NUT сервером. Соответственно для каждого UPS будут созданы свои элементы и свои триггеры.
Для каждого сервера NUT необходимо создавать свой узел. Если же использовать шаблон как задумывалось автором размещая скрипты на каждом сервер NUT (т.е. там должен быть установлен zabbix агент), то можно добавлять шаблон к существующим узлам.

Данная инструкция подразумевает выполнение скрипта на агенте расположенном на саммом сервере Zabbix.

1. На серверах NUT разрешаем подключение клиентов с нужных интерфейсов (/etc/nut/upsd.conf параметр LISTEN)
2. nut-ups.conf помещаем в каталог пользовательских конфигураций:
/etc/zabbix/zabbix_agentd.d/nut-ups.conf
3. nut-ups.sh помещаем в каталог скриптов:
/usr/local/share/zabbix/externalscripts/nut-ups.sh
4. Даем nut-ups.sh права на выполнение (проверить от чьего имени запускается заббик агент и ему так же дать соответствующие права)
5. Перезапускаем агент заббикса
>sudo systemctl restart zabbix-agent
6. Импортируем шаблон
7. Создаем узел, добавляем ему интерфейс Тип - Агент, IP Адрес - 127.0.0.1 и порт на котором висит zabbix агент (10050 по умолчанию), добавляем шаблон и макрос {$UPSHOST} равный имени хоста на котором висит NUT (т.е. если мониторим NUT расположенный на устройстве с доменным именем server.mydomain.local, то {$UPSHOST}=server.mydomain.local)
8. Ждем автообнаружения

Проверить автообнаружение UPS на сервере:

    /usr/local/share/zabbix/externalscripts/nut-ups.sh ups.discovery 1c-server.mcb
    {
        "data":[
            { "{#UPSNAME}": "UPS1" }
        ]
    }



Проверить корректность работы скрипта и увдеть получаемые данные можно такие образом:

    /usr/local/share/zabbix/externalscripts/nut-ups.sh ups1 1c-server.mcb
    battery.capacity: 9.00 battery.charge: 100 battery.charge.low: 20 battery.charge.restart: 0 battery.protection: yes battery.runtime: 771 battery.type: PbAc device.mfr: EATON device.model: Eaton 5P 1150 device.serial: G116G32111 device.type: ups driver.name: usbhid-ups driver.parameter.pollfreq: 30 driver.parameter.pollinterval: 2 driver.parameter.port: auto driver.version: Windows-v2.6.5-5-7-g72f380c driver.version.data: MGE HID 1.32 driver.version.internal: 0.38 input.frequency.nominal: 50 input.voltage.nominal: 230 outlet.1.status: on output.current: 1.80 output.frequency: 50.0 output.frequency.nominal: 50 output.powerfactor: 0.82 output.voltage: 224.1 output.voltage.nominal: 230 ups.beeper.status: enabled ups.delay.shutdown: 20 ups.delay.start: 30 ups.efficiency: 92 ups.firmware: 02.14.0026 ups.load: 44 ups.mfr: EATON ups.model: Eaton 5P 1150 ups.power: 403 ups.power.nominal: 1150 ups.productid: ffff ups.realpower: 331 ups.realpower.nominal: 770 ups.serial: G116G32111 ups.shutdown: enabled ups.start.reboot: yes ups.status: OL CHRG ups.test.interval: 2592000 ups.test.result: Done and passed ups.timer.shutdown: -1 ups.timer.start: -1 ups.type: offline / line interactive ups.vendorid: 0463

За основу был взят шаблон с https://sysadminmosaic.ru/nut/nut?redirect=1#zabbix


