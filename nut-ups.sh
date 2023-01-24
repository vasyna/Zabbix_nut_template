#!/bin/bash

state_num(){
    case $state in
 OL)  echo 1 ;;
 OB)  echo 2 ;;
 LB)  echo 3 ;;
 RB)  echo 4 ;;
 CHRG)  echo 5 ;;
 DISCHRG) echo 6 ;;
 BYPASS)  echo 7 ;;
 CAL)  echo 8 ;;
 OFF)  echo 9 ;;
 OVER)  echo 10 ;;
 TRIM)  echo 11 ;;
 BOOST)  echo 12 ;;
 ALARM)  echo 13 ;;
 * )  echo 0 ;;
    esac
}

alarm_num(){
    case "$alarm" in
 INVERTER_AC_OVER_VOLTAGE)  echo 1;;
 INVERTER_AC_UNDER_VOLTAGE)  echo 2;;
 INVERTER_OVER_OR_UNDER_FREQ)  echo 3;;
 BYPASS_AC_OVER_VOLTAGE)  echo 4;;
 BYPASS_AC_UNDER_VOLTAGE)  echo 5;;
 BYPASS_OVER_OR_UNDER_FREQ) echo 6;;
 INPUT_AC_OVER_VOLTAGE) echo 7;;
 INPUT_AC_UNDER_VOLTAGE) echo 8;;
 INPUT_UNDER_OR_OVER_FREQ) echo 9;;
 OUTPUT_OVER_VOLTAGE) echo 10;;
 OUTPUT_UNDER_VOLTAGE) echo 11;;
 OUTPUT_UNDER_OR_OVER_FREQ) echo 12;;
 REMOTE_EMERGENCY_PWR_OFF) echo 13;;
 REMOTE_GO_TO_BYPASS) echo 14;;
 BUILDING_ALARM_6) echo 15;;
 BUILDING_ALARM_5) echo 16;;
 BUILDING_ALARM_4) echo 17;;
 BUILDING_ALARM_3) echo 18;;
 BUILDING_ALARM_2) echo 19;;
 BUILDING_ALARM_1) echo 20;;
 STATIC_SWITCH_OVER_TEMP) echo 21;;
 CHARGER_OVER_TEMP) echo 22;;
 CHARGER_LOGIC_PWR_FAIL) echo 23;;
 CHARGER_OVER_VOLTAGE_OR_CURRENT) echo 24;;
 INVERTER_OVER_TEMP) echo 25;;
 OUTPUT_OVERLOAD) echo 26;;
 RECTIFIER_INPUT_OVER_CURRENT) echo 27;;
 INVERTER_OUTPUT_OVER_CURRENT) echo 28;;
 DC_LINK_OVER_VOLTAGE) echo 29;;
 DC_LINK_UNDER_VOLTAGE) echo 30;;
 RECTIFIER_FAILED) echo 31;;
 INVERTER_FAULT) echo 32;;
 BATTERY_CONNECTOR_FAIL) echo 33;;
 BYPASS_BREAKER_FAIL) echo 34;;
 CHARGER_FAIL) echo 35;;
 RAMP_UP_FAILED) echo 36;;
 STATIC_SWITCH_FAILED) echo 37;;
 ANALOG_AD_REF_FAIL) echo 38;;
 BYPASS_UNCALIBRATED) echo 39;;
 RECTIFIER_UNCALIBRATED) echo 40;;
 OUTPUT_UNCALIBRATED) echo 41;;
 INVERTER_UNCALIBRATED) echo 42;;
 DC_VOLT_UNCALIBRATED) echo 43;;
 OUTPUT_CURRENT_UNCALIBRATED) echo 44;;
 RECTIFIER_CURRENT_UNCALIBRATED) echo 45;;
 BATTERY_CURRENT_UNCALIBRATED) echo 46;;
 INVERTER_ON_OFF_STAT_FAIL) echo 47;;
 BATTERY_CURRENT_LIMIT) echo 48;;
 INVERTER_STARTUP_FAIL) echo 49;;
 ANALOG_BOARD_AD_STAT_FAIL) echo 50;;
 OUTPUT_CURRENT_OVER_100) echo 51;;
 BATTERY_GROUND_FAULT) echo 52;;
 WAITING_FOR_CHARGER_SYNC) echo 53;;
 NV_RAM_FAIL) echo 54;;
 ANALOG_BOARD_AD_TIMEOUT) echo 55;;
 SHUTDOWN_IMMINENT) echo 56;;
 BATTERY_LOW) echo 57;;
 UTILITY_FAIL) echo 58;;
 OUTPUT_SHORT_CIRCUIT) echo 59;;
 UTILITY_NOT_PRESENT) echo 60;;
 FULL_TIME_CHARGING) echo 61;;
 FAST_BYPASS_COMMAND) echo 62;;
 AD_ERROR) echo 63;;
 INTERNAL_COM_FAIL) echo 64;;
 RECTIFIER_SELFTEST_FAIL) echo 65;;
 RECTIFIER_EEPROM_FAIL) echo 66;;
 RECTIFIER_EPROM_FAIL) echo 67;;
 INPUT_LINE_VOLTAGE_LOSS) echo 68;;
 BATTERY_DC_OVER_VOLTAGE) echo 69;;
 POWER_SUPPLY_OVER_TEMP) echo 70;;
 POWER_SUPPLY_FAIL) echo 71;;
 POWER_SUPPLY_5V_FAIL) echo 72;;
 POWER_SUPPLY_12V_FAIL) echo 73;;
 HEATSINK_OVER_TEMP) echo 74;;
 HEATSINK_TEMP_SENSOR_FAIL) echo 75;;
 RECTIFIER_CURRENT_OVER_125) echo 76;;
 RECTIFIER_FAULT_INTERRUPT_FAIL) echo 77;;
 RECTIFIER_POWER_CAPASITOR_FAIL) echo 78;;
 INVERTER_PROGRAM_STACK_ERROR) echo 79;;
 INVERTER_BOARD_SELFTEST_FAIL) echo 80;;
 INVERTER_AD_SELFTEST_FAIL) echo 81;;
 INVERTER_RAM_SELFTEST_FAIL) echo 82;;
 NV_MEMORY_CHECKSUM_FAIL) echo 83;;
 PROGRAM_CHECKSUM_FAIL) echo 84;;
 INVERTER_CPU_SELFTEST_FAIL) echo 85;;
 NETWORK_NOT_RESPONDING) echo 86;;
 FRONT_PANEL_SELFTEST_FAIL) echo 87;;
 NODE_EEPROM_VERIFICATION_ERROR) echo 88;;
 OUTPUT_AC_OVER_VOLT_TEST_FAIL) echo 89;;
 OUTPUT_DC_OVER_VOLTAGE) echo 90;;
 INPUT_PHASE_ROTATION_ERROR) echo 91;;
 INVERTER_RAMP_UP_TEST_FAILED) echo 92;;
 INVERTER_OFF_COMMAND) echo 93;;
 INVERTER_ON_COMMAND) echo 94;;
 TO_BYPASS_COMMAND) echo 95;;
 FROM_BYPASS_COMMAND) echo 96;;
 AUTO_MODE_COMMAND) echo 97;;
 EMERGENCY_SHUTDOWN_COMMAND) echo 98;;
 SETUP_SWITCH_OPEN) echo 99;;
 INVERTER_OVER_VOLT_INT) echo 100;;
 INVERTER_UNDER_VOLT_INT) echo 101;;
 ABSOLUTE_DCOV_ACOV) echo 102;;
 PHASE_A_CURRENT_LIMIT) echo 103;;
 PHASE_B_CURRENT_LIMIT) echo 104;;
 PHASE_C_CURRENT_LIMIT) echo 105;;
 BYPASS_NOT_AVAILABLE) echo 106;;
 RECTIFIER_BREAKER_OPEN) echo 107;;
 BATTERY_CONTACTOR_OPEN) echo 108;;
 INVERTER_CONTACTOR_OPEN) echo 109;;
 BYPASS_BREAKER_OPEN) echo 110;;
 INV_BOARD_ACOV_INT_TEST_FAIL) echo 111;;
 INVERTER_OVER_TEMP_TRIP) echo 112;;
 INV_BOARD_ACUV_INT_TEST_FAIL) echo 113;;
 INVERTER_VOLTAGE_FEEDBACK_ERROR) echo 114;;
 DC_UNDER_VOLTAGE_TIMEOUT) echo 115;;
 AC_UNDER_VOLTAGE_TIMEOUT) echo 116;;
 DC_UNDER_VOLTAGE_WHILE_CHARGE) echo 117;;
 INVERTER_VOLTAGE_BIAS_ERROR) echo 118;;
 RECTIFIER_PHASE_ROTATION) echo 119;;
 BYPASS_PHASER_ROTATION) echo 120;;
 SYSTEM_INTERFACE_BOARD_FAIL) echo 121;;
 PARALLEL_BOARD_FAIL) echo 122;;
 LOST_LOAD_SHARING_PHASE_A) echo 123;;
 LOST_LOAD_SHARING_PHASE_B) echo 124;;
 LOST_LOAD_SHARING_PHASE_C) echo 125;;
 DC_OVER_VOLTAGE_TIMEOUT) echo 126;;
 BATTERY_TOTALLY_DISCHARGED) echo 127;;
 INVERTER_PHASE_BIAS_ERROR) echo 128;;
 INVERTER_VOLTAGE_BIAS_ERROR_2) echo 129;;
 DC_LINK_BLEED_COMPLETE) echo 130;;
 LARGE_CHARGER_INPUT_CURRENT) echo 131;;
 INV_VOLT_TOO_LOW_FOR_RAMP_LEVEL) echo 132;;
 LOSS_OF_REDUNDANCY) echo 133;;
 LOSS_OF_SYNC_BUS) echo 134;;
 RECTIFIER_BREAKER_SHUNT_TRIP) echo 135;;
 LOSS_OF_CHARGER_SYNC) echo 136;;
 INVERTER_LOW_LEVEL_TEST_TIMEOUT) echo 137;;
 OUTPUT_BREAKER_OPEN) echo 138;;
 CONTROL_POWER_ON) echo 139;;
 INVERTER_ON) echo 140;;
 CHARGER_ON) echo 141;;
 BYPASS_ON) echo 142;;
 BYPASS_POWER_LOSS) echo 143;;
 ON_MANUAL_BYPASS) echo 144;;
 BYPASS_MANUAL_TURN_OFF) echo 145;;
 INVERTER_BLEEDING_DC_LINK_VOLT) echo 146;;
 CPU_ISR_ERROR) echo 147;;
 SYSTEM_ISR_RESTART) echo 148;;
 PARALLEL_DC) echo 149;;
 BATTERY_NEEDS_SERVICE) echo 150;;
 BATTERY_CHARGING) echo 151;;
 BATTERY_NOT_CHARGED) echo 152;;
 DISABLED_BATTERY_TIME) echo 153;;
 SERIES_7000_ENABLE) echo 154;;
 OTHER_UPS_ON) echo 155;;
 PARALLEL_INVERTER) echo 156;;
 UPS_IN_PARALLEL) echo 157;;
 OUTPUT_BREAKER_REALY_FAIL) echo 158;;
 CONTROL_POWER_OFF) echo 159;;
 LEVEL_2_OVERLOAD_PHASE_A) echo 160;;
 LEVEL_2_OVERLOAD_PHASE_B) echo 161;;
 LEVEL_2_OVERLOAD_PHASE_C) echo 162;;
 LEVEL_3_OVERLOAD_PHASE_A) echo 163;;
 LEVEL_3_OVERLOAD_PHASE_B) echo 164;;
 LEVEL_3_OVERLOAD_PHASE_C) echo 165;;
 LEVEL_4_OVERLOAD_PHASE_A) echo 166;;
 LEVEL_4_OVERLOAD_PHASE_B) echo 167;;
 LEVEL_4_OVERLOAD_PHASE_C) echo 168;;
 UPS_ON_BATTERY) echo 169;;
 UPS_ON_BYPASS) echo 170;;
 LOAD_DUMPED) echo 171;;
 LOAD_ON_INVERTER) echo 172;;
 UPS_ON_COMMAND) echo 173;;
 UPS_OFF_COMMAND) echo 174;;
 LOW_BATTERY_SHUTDOWN) echo 175;;
 AUTO_ON_ENABLED) echo 176;;
 SOFTWARE_INCOMPABILITY_DETECTED) echo 177;;
 INVERTER_TEMP_SENSOR_FAILED) echo 178;;
 DC_START_OCCURED) echo 179;;
 IN_PARALLEL_OPERATION) echo 180;;
 SYNCING_TO_BYPASS) echo 181;;
 RAMPING_UPS_UP) echo 182;;
 INVERTER_ON_DELAY) echo 183;;
 CHARGER_ON_DELAY) echo 184;;
 WAITING_FOR_UTIL_INPUT) echo 185;;
 CLOSE_BYPASS_BREAKER) echo 186;;
 TEMPORARY_BYPASS_OPERATION) echo 187;;
 SYNCING_TO_OUTPUT) echo 188;;
 BYPASS_FAILURE) echo 189;;
 AUTO_OFF_COMMAND_EXECUTED) echo 190;;
 AUTO_ON_COMMAND_EXECUTED) echo 191;;
 BATTERY_TEST_FAILED) echo 192;;
 FUSE_FAIL) echo 193;;
 FAN_FAIL) echo 194;;
 SITE_WIRING_FAULT) echo 195;;
 BACKFEED_CONTACTOR_FAIL) echo 196;;
 ON_BUCK) echo 197;;
 ON_BOOST) echo 198;;
 ON_DOUBLE_BOOST) echo 199;;
 BATTERIES_DISCONNECTED) echo 200;;
 UPS_CABINET_OVER_TEMP) echo 201;;
 TRANSFORMER_OVER_TEMP) echo 202;;
 AMBIENT_UNDER_TEMP) echo 203;;
 AMBIENT_OVER_TEMP) echo 204;;
 CABINET_DOOR_OPEN) echo 205;;
 CABINET_DOOR_OPEN_VOLT_PRESENT) echo 206;;
 AUTO_SHUTDOWN_PENDING) echo 207;;
 TAP_SWITCHING_REALY_PENDING) echo 208;;
 UNABLE_TO_CHARGE_BATTERIES) echo 209;;
 STARTUP_FAILURE_CHECK_EPO) echo 210;;
 AUTOMATIC_STARTUP_PENDING) echo 211;;
 MODEM_FAILED) echo 212;;
 INCOMING_MODEM_CALL_STARTED) echo 213;;
 OUTGOING_MODEM_CALL_STARTED) echo 214;;
 MODEM_CONNECTION_ESTABLISHED) echo 215;;
 MODEM_CALL_COMPLETED_SUCCESS) echo 216;;
 MODEM_CALL_COMPLETED_FAIL) echo 217;;
 INPUT_BREAKER_FAIL) echo 218;;
 SYSINIT_IN_PROGRESS) echo 219;;
 AUTOCALIBRATION_FAIL) echo 220;;
 SELECTIVE_TRIP_OF_MODULE) echo 221;;
 INVERTER_OUTPUT_FAILURE) echo 222;;
 ABNORMAL_OUTPUT_VOLT_AT_STARTUP) echo 223;;
 RECTIFIER_OVER_TEMP) echo 224;;
 CONFIG_ERROR) echo 225;;
 REDUNDANCY_LOSS_DUE_TO_OVERLOAD) echo 226;;
 ON_ALTERNATE_AC_SOURCE) echo 227;;
 IN_HIGH_EFFICIENCY_MODE) echo 228;;
 SYSTEM_NOTICE_ACTIVE) echo 229;;
 SYSTEM_ALARM_ACTIVE) echo 230;;
 ALTERNATE_POWER_SOURCE_NOT_AVAILABLE) echo 231;;
 CURRENT_BALANCE_FAILURE) echo 232;;
 CHECK_AIR_FILTER) echo 233;;
 SUBSYSTEM_NOTICE_ACTIVE) echo 234;;
 SUBSYSTEM_ALARM_ACTIVE) echo 235;;
 CHARGER_ON_COMMAND) echo 236;;
 CHARGER_OFF_COMMAND) echo 237;;
 UPS_NORMAL) echo 238;;
 INVERTER_PHASE_ROTATION) echo 239;;
 UPS_OFF) echo 240;;
 EXTERNAL_COMMUNICATION_FAILURE) echo 241;;
 BATTERY_TEST_INPROGRESS) echo 242;;
 SYSTEM_TEST_INPROGRESS) echo 243;;
 BATTERY_TEST_ABORTED) echo 244;;
 * )      echo "0" ;;
    esac
}

other_val(){
    case "$val" in
 "Error: Variable not supported by UPS")  echo "NA" ;;
 * )      echo $val ;;
    esac
}

ups=$1
if [ $ups = ups.discovery ]; then
    echo -e "{\n\t\"data\":["
    first=1
    /bin/upsc -l $2 2>&1 | grep -v SSL | while read discovered ; do
        if [[ "$discovered" != "Error: Access denied" ]]; then
                if [[ "$discovered" != "Error: Connection failure: Connection refused" ]]; then
                        if [[ "$discovered" != "Error: Connection failure: No route to host" ]]; then
                                if [ $first -eq 0 ]; then
                                    echo -e ","
                                fi
                                echo -en "\t\t{ \"{#UPSNAME}\":\t\"${discovered}\" }"
                                first=0
                        fi
                fi
        fi
    done
    echo -e "\n\t]\n}"
else

hostname=$2
key=$3
case $key in
    ups.status)  state=`/bin/upsc $ups@$hostname $key 2>&1 | grep -v SSL|awk '{print $1}'`;state_num;exit;;
    ups.status-2) state=`/bin/upsc $ups@$hostname ups.status 2>&1 | grep -v SSL|awk '{print $2}'`;state_num;exit;;
    ups.status-3) state=`/bin/upsc $ups@$hostname ups.status 2>&1 | grep -v SSL|awk '{print $3}'`;state_num;exit;;
    ups.status-4) state=`/bin/upsc $ups@$hostname ups.status 2>&1 | grep -v SSL|awk '{print $4}'`;state_num;exit;;
    ups.status-5) state=`/bin/upsc $ups@$hostname ups.status 2>&1 | grep -v SSL|awk '{print $5}'`;state_num;exit;;
    ups.alarm )  alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $1}'`;alarm_num;exit;;
    ups.alarm-2) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $2}'`;alarm_num;exit;;
    ups.alarm-3) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $3}'`;alarm_num;exit;;
    ups.alarm-4) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $4}'`;alarm_num;exit;;
    ups.alarm-5) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $5}'`;alarm_num;exit;;
    ups.alarm-6) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $6}'`;alarm_num;exit;;
    ups.alarm-7) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $7}'`;alarm_num;exit;;
    ups.alarm-8) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $8}'`;alarm_num;exit;;
    ups.alarm-9) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $9}'`;alarm_num;exit;;
    ups.alarm-10) alarm=`/bin/upsc $ups@$hostname ups.alarm 2>&1 | grep -v SSL|awk '{print $10}'`;alarm_num;exit;;
    * )   val=`/bin/upsc $ups@$hostname $key  2>&1 | grep -v SSL`;other_val;exit;;

esac
fi
