# SpaceX

PowerShell module to interact with [api.spacexdata.com](https://github.com/r-spacex/SpaceX-API/wiki) (unofficial)

![alt text](/media/last-starman.jpg 'Starman')

## Table of Contents

- [Contributing](#contributing)
- [Usage](#usage)
  - [Installation](#installation)
  - [Commands](#commands-available)
  - [Installation](#installation)
  - [Launches data](#launches-data)
    - [Upcoming](#upcoming)
    - [Latest](#latest)
  - [Launch sites data](#launch-sites-data)
  - [Capsules data](#capsules-data)
  - [Parts data](#parts-data)
  - [Company data](#company-data)
  - [Rocket data](#rocket-data)
  - [Mission data](#mission-data)
- [Related posts](#related-posts)
- [Resources](#resources)


## Contributing

Contributions are more than welcome! (via pull requests or issues).

## Usage

### Installation

Install the module from the PowerShellGallery.

```powershell
Install-Module -Name SpaceX
```

### Commands available

The following commands are available

```powershell
Get-Command -module SpaceX
```

```text
CommandType Name            Version Source
----------- ----            ------- ------
Function    Get-SXCapsule   1.0.0.0 spacex
Function    Get-SXCompany   1.0.0.0 spacex
Function    Get-SXLaunch    1.0.0.0 spacex
Function    Get-SXLaunchpad 1.0.0.0 spacex
Function    Get-SXPart      1.0.0.0 spacex
Function    Get-SXRocket    1.0.0.0 spacex
```

### Launches data

#### Upcoming

```powershell
Get-SXLaunch -upcoming
```

```text
flight_number     : 55
launch_year       : 2018
launch_date_unix  : 1517941800
launch_date_utc   : 2018-02-06T18:30:00Z
launch_date_local : 2018-02-06T13:30:00-05:00
rocket            : @{rocket_id=falconheavy; rocket_name=Falcon Heavy; rocket_type=FT; 
                    first_stage=; second_stage=}
telemetry         : @{flight_club=}
reuse             : @{core=False; side_core1=True; side_core2=True; fairings=False; 
                    capsule=False}
launch_site       : @{site_id=ksc_lc_39a; site_name=KSC LC 39A; site_name_long=Kennedy 
                    Space Center Historic Launch Complex 39A}
launch_success    : 
links             : @{mission_patch=; reddit_campaign=https://www.reddit.com/r/spacex/com
                    ments/7hjp03/falcon_heavy_demo_launch_campaign_thread/; 
                    reddit_launch=; reddit_recovery=; reddit_media=; presskit=; 
                    article_link=; video_link=}
details           : 

flight_number     : 56
launch_year       : 2018
launch_date_unix  : 1518272520
launch_date_utc   : 2018-02-10T14:22:00Z
launch_date_local : 2018-02-10T09:22:00-05:00
rocket            : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT; 
                    first_stage=; second_stage=}
telemetry         : @{flight_club=}
reuse             : @{core=True; side_core1=False; side_core2=False; fairings=False; 
                    capsule=False}
launch_site       : @{site_id=vafb_slc_4e; site_name=VAFB SLC 4E; 
                    site_name_long=Vandenberg Air Force Base Space Launch Complex 4E}
launch_success    : 
links             : @{mission_patch=; reddit_campaign=https://www.reddit.com/r/spacex/com
                    ments/7qnflk/paz_microsat2a_2b_launch_campaign_thread/; 
                    reddit_launch=; reddit_recovery=; reddit_media=; presskit=; 
                    article_link=; video_link=}
details           : 

flight_number     : 57
launch_year       : 2018
launch_date_unix  : 1518566400
launch_date_utc   : 2018-02-14T00:00:00Z
launch_date_local : 2018-02-14T00:00:00-05:00
rocket            : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT; 
                    first_stage=; second_stage=}
telemetry         : @{flight_club=}
reuse             : @{core=False; side_core1=False; side_core2=False; fairings=False; 
                    capsule=False}
launch_site       : @{site_id=ccafs_slc_40; site_name=CCAFS SLC 40; site_name_long=Cape 
                    Canaveral Air Force Station Space Launch Complex 40}
launch_success    : 
links             : @{mission_patch=; reddit_campaign=https://www.reddit.com/r/spacex/com
                    ments/7r5pyn/hispasat_30w6_launch_campaign_thread/; reddit_launch=; 
                    reddit_recovery=; reddit_media=; presskit=; article_link=; 
                    video_link=}
details           : 
```

### Latest

```powershell
Get-SXLaunch -Latest
```

```text
flight_number     : 54
launch_year       : 2018
launch_date_unix  : 1517433900
launch_date_utc   : 2018-01-31T21:25:00Z
launch_date_local : 2018-01-31T16:25:00-05:00
rocket            : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT;
                    first_stage=; second_stage=}
telemetry         : @{flight_club=}
reuse             : @{core=True; side_core1=False; side_core2=False; fairings=False;
                    capsule=False}
launch_site       : @{site_id=ccafs_slc_40; site_name=CCAFS SLC 40; site_name_long=Cape
                    Canaveral Air Force Station Space Launch Complex 40}
launch_success    : True
links             : @{mission_patch=https://i.imgur.com/UJTbQ1f.png; reddit_campaign=http
                    s://www.reddit.com/r/spacex/comments/7olw86/govsat1_ses16_launch_camp
                    aign_thread/; reddit_launch=https://www.reddit.com/r/spacex/comments/
                    7tvtbh/rspacex_govsat1_official_launch_discussion/;
                    reddit_recovery=; reddit_media=https://www.reddit.com/r/spacex/commen
                    ts/7tzzwy/rspacex_govsat1_media_thread_videos_images_gifs/; presskit=
                    http://www.spacex.com/sites/spacex/files/govsat1presskit.pdf; article
                    _link=https://spaceflightnow.com/2018/01/31/spacex-rocket-flies-on-60
                    th-anniversary-of-first-u-s-satellite-launch/;
                    video_link=https://www.youtube.com/watch?v=ScYUA51-POQ}
details           : Reused booster from the classified NROL-76 mission in May 2017.
                    Following a successful experimental ocean landing that used three
                    engines, the booster unexpectedly remained intact; Elon Musk stated
                    in a tweet that SpaceX will attempt to tow the booster to shore.
```

### Launch sites data

```powershell
Get-SXLaunchpad
```

```text
id                : ccafs_slc_40
full_name         : Cape Canaveral Air Force Station Space Launch Complex 40
status            : active
location          : @{name=Cape Canaveral; region=Florida; latitude=28.5618571;
                    longitude=-80.577366}
vehicles_launched : {Falcon 9}
details           : SpaceX primary Falcon 9 launch pad, where all east coast Falcon 9s
                    launched prior to the AMOS-6 anomaly. Initially used to launch Titan
                    rockets for Lockheed Martin. Back online since CRS-13 on 2017-12-15.

id                : stls
full_name         : SpaceX South Texas Launch Site
status            : under construction
location          : @{name=Boca Chica Village; region=Texas; latitude=25.9972641;
                    longitude=-97.1560845}
vehicles_launched : {Falcon 9}
details           : SpaceX new launch site currently under construction to help keep up
                    with the Falcon 9 and Heavy manifests. Expected to be completed in
                    late 2018. Initially will be limited to 12 flights per year, and
                    only GTO launches.

id                : vafb_slc_4w
full_name         : Vandenberg Air Force Base Space Launch Complex 4W
status            : active
location          : @{name=Vandenberg Air Force Base; region=California;
                    latitude=34.6332043; longitude=-120.6156234}
vehicles_launched : {Falcon 9}
details           : SpaceX west coast landing pad, has not yet been used. Expected to
                    first be used during the Formosat-5 launch.

id                : ccafs_lc_13
full_name         : Cape Canaveral Air Force Station Space Launch Complex 13
status            : active
location          : @{name=Cape Canaveral; region=Florida; latitude=28.4857244;
                    longitude=-80.5449222}
vehicles_launched : {Falcon 9}
details           : SpaceX east coast landing pad, where the historic first landing
                    occurred. Originally used for early Atlas missiles and rockets from
                    Lockheed Martin. Currently being expanded to add two smaller pads
                    for Falcon Heavy RTLS missions.

...

```

### Capsules data

```powershell
Get-SXCapsule
```

```text
id                  : dragon1
name                : Dragon 1
type                : capsule
active              : True
crew_capacity       : 0
sidewall_angle_deg  : 15
orbit_duration_yr   : 2
heat_shield         : @{material=PICA-X; size_meters=3.6; temp_degrees=3000; 
                      dev_partner=NASA}
thrusters           : {@{type=Draco; amount=18; pods=4; fuel_1=nitrogen tetroxide; 
                      fuel_2=monomethylhydrazine; thrust=}}
launch_payload_mass : @{kg=6000; lb=13228}
launch_payload_vol  : @{cubic_meters=25; cubic_feet=883}
return_payload_mass : @{kg=3000; lb=6614}
return_payload_vol  : @{cubic_meters=11; cubic_feet=388}
pressurized_capsule : @{payload_volume=}
trunk               : @{trunk_volume=; cargo=}
height_w_trunk      : @{meters=7.2; feet=23.6}
diameter            : @{meters=3.7; feet=12}

id                  : dragon2
name                : Dragon 2
type                : capsule
active              : False
crew_capacity       : 0
sidewall_angle_deg  : 15
orbit_duration_yr   : 2
heat_shield         : @{material=PICA-X; size_meters=3.6; temp_degrees=3000; 
                      dev_partner=NASA}
thrusters           : {@{type=Draco; amount=18; pods=4; fuel_1=nitrogen tetroxide; 
                      fuel_2=monomethylhydrazine; thrust=}}
launch_payload_mass : @{kg=6000; lb=13228}
launch_payload_vol  : @{cubic_meters=25; cubic_feet=883}
return_payload_mass : @{kg=3000; lb=6614}
return_payload_vol  : @{cubic_meters=11; cubic_feet=388}
pressurized_capsule : @{payload_volume=}
trunk               : @{trunk_volume=; cargo=}
height_w_trunk      : @{meters=7.2; feet=23.6}
diameter            : @{meters=3.7; feet=12}

id                  : crewdragon
name                : Crew Dragon
type                : capsule
active              : False
crew_capacity       : 7
sidewall_angle_deg  : 15
orbit_duration_yr   : 2
heat_shield         : @{material=PICA-X; size_meters=3.6; temp_degrees=3000; 
                      dev_partner=NASA}
thrusters           : {@{type=Draco; amount=18; pods=4; fuel_1=nitrogen tetroxide; 
                      fuel_2=monomethylhydrazine; thrust=}, @{type=SuperDraco; amount=8; 
                      pods=4; fuel_1=dinitrogen tetroxide; fuel_2=monomethylhydrazine; 
                      thrust=}}
launch_payload_mass : @{kg=6000; lb=13228}
launch_payload_vol  : @{cubic_meters=25; cubic_feet=883}
return_payload_mass : @{kg=3000; lb=6614}
return_payload_vol  : @{cubic_meters=11; cubic_feet=388}
pressurized_capsule : @{payload_volume=}
trunk               : @{trunk_volume=; cargo=}
height_w_trunk      : @{meters=7.2; feet=23.6}
diameter            : @{meters=3.7; feet=12}

```

### Parts data

```powershell
Get-SXPart -Type Core
```

```text
core_serial     : B0003
status          : expended
original_launch : 2010-06-04
missions        : {Dragon Qualification Unit}
rtls_attempt    : False
rtls_landings   : 0
asds_attempt    : False
asds_landings   : 0
water_landing   : False
details         : Core expended on flight, no recovery effort. First flight of Falcon 9

core_serial     : B0004
status          : expended
original_launch : 2010-12-08
missions        : {COTS Demo Flight 1}
rtls_attempt    : False
rtls_landings   : 0
asds_attempt    : False
asds_landings   : 0
water_landing   : False
details         : First flight of Dragon

core_serial     : B0005
status          : expended
original_launch : 2012-05-22
missions        : {COTS Demo Flight 2}
rtls_attempt    : False
rtls_landings   : 0
asds_attempt    : False
asds_landings   : 0
water_landing   : False
details         :

core_serial     : B0006
status          : expended
original_launch : 2012-10-08
missions        : {SpaceX CRS-1, Orbcomm-OG2}
rtls_attempt    : False
rtls_landings   : 0
asds_attempt    : False
asds_landings   : 0
water_landing   : False
details         : Suffered engine out at T+1:19 but primary mission successful

...
```

### Company data

```powershell
Get-SXCompany
```

```text
name           : SpaceX
founder        : Elon Musk
founded        : 2002
employees      : 7000
vehicles       : 3
launch_sites   : 3
test_sites     : 1
ceo            : Elon Musk
cto            : Elon Musk
coo            : Gwynne Shotwell
cto_propulsion : Tom Mueller
valuation      : 15000000000
headquarters   : @{address=Rocket Road; city=Hawthorne; state=California}
summary        : SpaceX designs, manufactures and launches advanced rockets and
                 spacecraft. The company was founded in 2002 to revolutionize space
                 technology, with the ultimate goal of enabling people to live on other
                 planets.
```

### Rocket data

#### All rockets

```powershell
Get-SXRocket
```

```text


id               : falcon1
name             : Falcon 1
type             : rocket
active           : False
stages           : 2
boosters         : 0
cost_per_launch  : 67000000
success_rate_pct : 40
first_flight     : 2006-03-24
country          : Republic of the Marshall Islands
company          : SpaceX
height           : @{meters=22.25; feet=73}
diameter         : @{meters=1.68; feet=5.5}
mass             : @{kg=30146; lb=66460}
payload_weights  : {@{id=leo; name=Low Earth Orbit; kg=450; lb=992}}
first_stage      : @{reusable=False; engines=1; fuel_amount_tons=44.3; burn_time_sec=169; thrust_sea_level=; thrust_vacuum=}
second_stage     : @{engines=1; fuel_amount_tons=3.38; burn_time_sec=378; thrust=; payloads=}
engines          : @{number=1; type=merlin; version=1C; layout=single; engine_loss_max=0; propellant_1=liquid oxygen; propellant_2=RP-1 kerosene; thrust_sea_level=; thrust_vacuum=; thrust_to_weight=96}
landing_legs     : @{number=0; material=}
description      : The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel 
                   launch vehicle to go into orbit around the Earth.

id               : falcon9
name             : Falcon 9
type             : rocket
active           : True
stages           : 2
boosters         : 0
cost_per_launch  : 61200000
success_rate_pct : 94
first_flight     : 2010-06-04
country          : United States
company          : SpaceX
height           : @{meters=70; feet=229.6}
diameter         : @{meters=3.7; feet=12}
mass             : @{kg=549054; lb=1207920}
payload_weights  : {@{id=leo; name=Low Earth Orbit; kg=22800; lb=50265}, @{id=gto; name=Geosynchronous Transfer Orbit; kg=8300; lb=18300}, @{id=mars; name=Mars Orbit; kg=4020; lb=8860}}
first_stage      : @{reusable=True; engines=9; fuel_amount_tons=385; burn_time_sec=162; thrust_sea_level=; thrust_vacuum=}
second_stage     : @{engines=1; fuel_amount_tons=90; burn_time_sec=397; thrust=; payloads=}
engines          : @{number=9; type=merlin; version=1D+; layout=octaweb; engine_loss_max=2; propellant_1=liquid oxygen; propellant_2=RP-1 kerosene; thrust_sea_level=; thrust_vacuum=; thrust_to_weight=180.1}
landing_legs     : @{number=4; material=carbon fiber}
description      : Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.

id               : falconheavy
name             : Falcon Heavy
type             : rocket
active           : False
stages           : 2
boosters         : 2
cost_per_launch  : 90000000
success_rate_pct : 0
first_flight     : TBD
country          : United States
company          : SpaceX
height           : @{meters=70; feet=229.6}
diameter         : @{meters=12.2; feet=39.9}
mass             : @{kg=1420788; lb=3125735}
payload_weights  : {@{id=leo; name=Low Earth Orbit; kg=63800; lb=140660}, @{id=gto; name=Geosynchronous Transfer Orbit; kg=26700; lb=58860}, @{id=mars; name=Mars Orbit; kg=16800; lb=37040}, @{id=pluto; 
                   name=Pluto Orbit; kg=3500; lb=7720}}
first_stage      : @{reusable=True; engines=27; fuel_amount_tons=1155; cores=3; burn_time_sec=162; thrust_sea_level=; thrust_vacuum=}
second_stage     : @{engines=1; burn_time_sec=397; thrust=; payloads=}
engines          : @{number=27; type=merlin; version=1D+; layout=octaweb; engine_loss_max=6; propellant_1=subcooled liquid oxygen; propellant_2= RP-1 kerosene; thrust_sea_level=; thrust_vacuum=; 
                   thrust_to_weight=180.1}
landing_legs     : @{number=12; material=carbon fiber}
description      : With the ability to lift into orbit over 54 metric tons (119,000 lb)--a mass equivalent to a 737 jetliner loaded with passengers, crew, luggage and fuel--Falcon Heavy can lift more than 
                   twice the payload of the next closest operational vehicle, the Delta IV Heavy, at one-third the cost.
```

#### Specific rocket

```powershell
Get-SXRocket -Rocket falconheavy
```

```text


id               : falconheavy
name             : Falcon Heavy
type             : rocket
active           : False
stages           : 2
boosters         : 2
cost_per_launch  : 90000000
success_rate_pct : 0
first_flight     : TBD
country          : United States
company          : SpaceX
height           : @{meters=70; feet=229.6}
diameter         : @{meters=12.2; feet=39.9}
mass             : @{kg=1420788; lb=3125735}
payload_weights  : {@{id=leo; name=Low Earth Orbit; kg=63800; lb=140660}, @{id=gto; name=Geosynchronous Transfer Orbit; kg=26700; lb=58860}, @{id=mars; name=Mars Orbit; kg=16800; lb=37040}, @{id=pluto;
                   name=Pluto Orbit; kg=3500; lb=7720}}
first_stage      : @{reusable=True; engines=27; fuel_amount_tons=1155; cores=3; burn_time_sec=162; thrust_sea_level=; thrust_vacuum=}
second_stage     : @{engines=1; burn_time_sec=397; thrust=; payloads=}
engines          : @{number=27; type=merlin; version=1D+; layout=octaweb; engine_loss_max=6; propellant_1=subcooled liquid oxygen; propellant_2= RP-1 kerosene; thrust_sea_level=; thrust_vacuum=;
                   thrust_to_weight=180.1}
landing_legs     : @{number=12; material=carbon fiber}
description      : With the ability to lift into orbit over 54 metric tons (119,000 lb)--a mass equivalent to a 737 jetliner loaded with passengers, crew, luggage and fuel--Falcon Heavy can lift more than
                   twice the payload of the next closest operational vehicle, the Delta IV Heavy, at one-third the cost.

```

### Mission data

#### All missions

```powershell
Get-SXMission
```

```text
mission_name  : Iridium NEXT
mission_id    : F3364BF
manufacturers : {Orbital ATK}
payload_ids   : {Iridium NEXT 1, Iridium NEXT 2, Iridium NEXT 3, Iridium NEXT 4...}
wikipedia     : https://en.wikipedia.org/wiki/Iridium_satellite_constellation
website       : https://www.iridiumnext.com/
twitter       : https://twitter.com/IridiumBoss?lang=en
description   : In 2017, Iridium began launching Iridium NEXT, a second-generation worldwide network of
                telecommunications satellites, consisting of 66 active satellites, with another nine in-orbit spares
                and six on-ground spares. These satellites will incorporate features such as data transmission that
                were not emphasized in the original design. The constellation will provide L-band data speeds of up to
                128 kbit/s to mobile terminals, up to 1.5 Mbit/s to Iridium Pilot marine terminals, and high-speed
                Ka-band service of up to 8 Mbit/s to fixed/transportable terminals. The next-generation terminals and
                service are expected to be commercially available by the end of 2018. However, Iridium's proposed use
                of its next-generation satellites has raised concerns the service will harmfully interfere with GPS
                devices. The satellites will incorporate a secondary payload for Aireon, a space-qualified ADS-B data
                receiver. This is for use by air traffic control and, via FlightAware, for use by airlines. A tertiary
                payload on 58 satellites is a marine AIS ship-tracker receiver, for Canadian company exactEarth Ltd.
                Iridium can also be used to provide a data link to other satellites in space, enabling command and
                control of other space assets regardless of the position of ground stations and gateways.

mission_name  : Commercial Resupply Services
mission_id    : EE86F74
manufacturers : {SpaceX}
payload_ids   : {Dragon Qualification Unit, COTS Demo Flight 1, COTS Demo Flight 2, SpaceX CRS-1...}
wikipedia     : https://en.wikipedia.org/wiki/Commercial_Resupply_Services#SpaceX
website       : https://www.spacex.com/
twitter       : https://twitter.com/SpaceX
description   : Commercial Resupply Services (CRS) are a series of contracts awarded by NASA from 2008–2016 for
                delivery of cargo and supplies to the International Space Station (ISS) on commercially operated
                spacecraft. The first CRS contracts were signed in 2008 and awarded $1.6 billion to SpaceX for 12
                cargo transport missions and $1.9 billion to Orbital Sciences for 8 missions, covering deliveries to
                2016. In 2015, NASA extended the Phase 1 contracts by ordering an additional three resupply flights
                from SpaceX and one from Orbital Sciences. After additional extensions late in 2015, SpaceX is
                currently scheduled to have a total of 20 missions and Orbital 10. SpaceX began flying resupply
                missions in 2012, using Dragon cargo spacecraft launched on Falcon 9 rockets from Space Launch Complex
                40 at Cape Canaveral Air Force Station, Cape Canaveral, Florida. Orbital Sciences began deliveries in
                2013 using Cygnus spacecraft launched on the Antares rocket from Launch Pad 0A at the Mid-Atlantic
                Regional Spaceport (MARS), Wallops Island, Virginia. A second phase of contracts (known as CRS2) were
                solicited and proposed in 2014. They were awarded in January 2016 to Orbital ATK, Sierra Nevada
                Corporation, and SpaceX, for cargo transport flights beginning in 2019 and expected to last through
                2024.
```

#### Specific mission

```powershell
Get-SXMission -Mission F3364BF
```

```text
mission_name  : Iridium NEXT
mission_id    : F3364BF
manufacturers : {Orbital ATK}
payload_ids   : {Iridium NEXT 1, Iridium NEXT 2, Iridium NEXT 3, Iridium NEXT 4...}
wikipedia     : https://en.wikipedia.org/wiki/Iridium_satellite_constellation
website       : https://www.iridiumnext.com/
twitter       : https://twitter.com/IridiumBoss?lang=en
description   : In 2017, Iridium began launching Iridium NEXT, a second-generation worldwide network of
                telecommunications satellites, consisting of 66 active satellites, with another nine in-orbit spares
                and six on-ground spares. These satellites will incorporate features such as data transmission that
                were not emphasized in the original design. The constellation will provide L-band data speeds of up to
                128 kbit/s to mobile terminals, up to 1.5 Mbit/s to Iridium Pilot marine terminals, and high-speed
                Ka-band service of up to 8 Mbit/s to fixed/transportable terminals. The next-generation terminals and
                service are expected to be commercially available by the end of 2018. However, Iridium's proposed use
                of its next-generation satellites has raised concerns the service will harmfully interfere with GPS
                devices. The satellites will incorporate a secondary payload for Aireon, a space-qualified ADS-B data
                receiver. This is for use by air traffic control and, via FlightAware, for use by airlines. A tertiary
                payload on 58 satellites is a marine AIS ship-tracker receiver, for Canadian company exactEarth Ltd.
                Iridium can also be used to provide a data link to other satellites in space, enabling command and
                control of other space assets regardless of the position of ground stations and gateways.
```

## Related posts

* [SpaceX PowerShell module](https://lazywinadmin.github.io/2018/02/SpaceX_module.html) by [@LazyWinAdm](https://twitter.com/LazyWinAdm)

## Resources

* [Api.spacexdata.com documentation](https://github.com/r-spacex/SpaceX-API/wiki)