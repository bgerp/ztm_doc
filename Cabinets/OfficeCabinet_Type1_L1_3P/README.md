## Introduction

This folder is made to hold all the schematic of controll a single office in the building.
Features of Type 1 cabinet:
 - 3 Phase power supply
 - Self needs of the cabinet is placed on L1.
 - Clients are connected to L2 and L3.
 - Power analyser (metter) are included, measuring 87 parameters of the clients power supply and elf needs included.
 - Single plate cabbinnet.
 - Compact size 350/500/195, IP 65

## Contribution

- Contribution is permitted by the owner of the project by request from the contributor.

## Sheets and Explanation

Main power of the cabinet. In this Type 1 the power is [**3 phase**](https://en.wikipedia.org/wiki/Three-phase_electric_power).
![1 Main Power](.\exports\1_main_power.png)

**Clients Terminals** are terminals where the clients power lines are connects to the cabinet. Clients are sourcing power from it. This power has been measured and analysed by power analyser. The data has been sent to the main [**ERP**](https://bgerp.com/) of the building.
![2 Clients Terminals](exports\2_clients_terminals.png)

The operation voltage is 24VDC where it is powering PLC, and other modules inside the cabinet.
![3 Operation Voltage](exports\3_operation_voltage.png)

Sensors of the system are divided by few sheets, they are used to measure the parameters of the environment of the target zone. At this sheet this is tampers switches and PIR sensor. All active signals are connected through terminals to the main PLC of the cabinet.
![4 Sensors 1](exports\4_sensors_1.png)

This folio will be filled after precising the concept of the sensor group.
![5 Sensors 2](exports\5_sensors_2.png)

Drinking water folio is part of the sensor group, is is displaying how the drinking water is measured inside one target room.
![6 Drink Water](exports\6_drink_water.png)

Lamps of the room.
![7 Lamps](exports\7_lamps.png)

HVAC - consisting of 2 fans, 2 valves, 1 convector, 5 thermo sensors.
![8 HVAC](exports\8_hvac.png)

**PLC** or Controller is the main logic unit that takes actions for the room. 
![11 Controller](exports\11_controller.png)

Sheets of the terminal descriptions.
![12 Terminals](exports\12_terminals_1.png)
![13 Terminals](exports\13_terminals_2.png)
![14 Terminals](exports\14_terminals_3.png)

Monting diagram for placing all components in the space of the cabinet.
![15 Mounting](exports\15_mounting.png)

## Exports

 - PDF export can be found in [**export\office_cabinet.pdf**](exports\office_cabinet.pdf).

 - PNG images can also be found in [**exports**](.\\exports).