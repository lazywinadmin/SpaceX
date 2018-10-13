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
  - [API data](#api-data)
  - [Rocket data](#rocket-data)
  - [Mission data](#mission-data)
  - [Ship data](#ship-data)
  - [Roadster data](#roadster-data)
  - [Payload data](#payload-data)
  - [Dragon Capsule data](#dragon-capsule-data)
  - [Core data](#core-data)
  - [Historical events](#historical-events)
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
Function    Get-SXApi       1.0.0.2 SpaceX
Function    Get-SXCapsule   1.0.0.2 SpaceX
Function    Get-SXCompany   1.0.0.2 SpaceX
Function    Get-SXLaunch    1.0.0.2 SpaceX
Function    Get-SXLaunchpad 1.0.0.2 SpaceX
Function    Get-SXMission   1.0.0.2 SpaceX
Function    Get-SXPart      1.0.0.2 SpaceX
Function    Get-SXRocket    1.0.0.2 SpaceX
```

### Launches data

#### Upcoming

```powershell
Get-SXLaunch -Upcoming
```

```text
flight_number           : 70
mission_name            : Es’hail 2
mission_id              : {}
launch_year             : 2018
launch_date_unix        : 1541030400
launch_date_utc         : 2018-11-01T00:00:00.000Z
launch_date_local       : 2018-10-31T20:00:00-04:00
is_tentative            : True
tentative_max_precision : month
rocket                  : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT; first_stage=; second_stage=;
                          fairings=}
ships                   : {}
telemetry               : @{flight_club=}
launch_site             : @{site_id=ccafs_slc_40; site_name=CCAFS SLC 40; site_name_long=Cape Canaveral Air Force
                          Station Space Launch Complex 40}
launch_success          :
links                   : @{mission_patch=; mission_patch_small=; reddit_campaign=; reddit_launch=; reddit_recovery=;
                          reddit_media=; presskit=; article_link=; wikipedia=; video_link=;
                          flickr_images=System.Object[]}
details                 :
upcoming                : True
static_fire_date_utc    :
static_fire_date_unix   :

flight_number           : 71
mission_name            : SSO-A
mission_id              : {}
launch_year             : 2018
launch_date_unix        : 1542585600
launch_date_utc         : 2018-11-19T00:00:00.000Z
launch_date_local       : 2018-11-18T16:00:00-08:00
is_tentative            : True
tentative_max_precision : day
rocket                  : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT; first_stage=; second_stage=;
                          fairings=}
ships                   : {}
telemetry               : @{flight_club=}
launch_site             : @{site_id=vafb_slc_4e; site_name=VAFB SLC 4E; site_name_long=Vandenberg Air Force Base Space
                          Launch Complex 4E}
launch_success          :
links                   : @{mission_patch=; mission_patch_small=; reddit_campaign=; reddit_launch=; reddit_recovery=;
                          reddit_media=; presskit=; article_link=; wikipedia=; video_link=;
                          flickr_images=System.Object[]}
details                 :
upcoming                : True
static_fire_date_utc    :
static_fire_date_unix   :

flight_number           : 72
mission_name            : CRS-16
mission_id              : {EE86F74}
launch_year             : 2018
launch_date_unix        : 1543353540
launch_date_utc         : 2018-11-27T21:19:00.000Z
launch_date_local       : 2018-11-27T16:19:00-05:00
is_tentative            : True
tentative_max_precision : hour
rocket                  : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT; first_stage=; second_stage=;
                          fairings=}
ships                   : {}
telemetry               : @{flight_club=}
launch_site             : @{site_id=ccafs_slc_40; site_name=CCAFS SLC 40; site_name_long=Cape Canaveral Air Force
                          Station Space Launch Complex 40}
launch_success          :
links                   : @{mission_patch=; mission_patch_small=; reddit_campaign=; reddit_launch=; reddit_recovery=;
                          reddit_media=; presskit=; article_link=; wikipedia=; video_link=;
                          flickr_images=System.Object[]}
details                 :
upcoming                : True
static_fire_date_utc    :
static_fire_date_unix   :
```

#### Latest

```powershell
Get-SXLaunch -Latest
```

```text
flight_number           : 69
mission_name            : SAOCOM 1A
mission_id              : {}
launch_year             : 2018
launch_date_unix        : 1538965320
launch_date_utc         : 2018-10-08T02:22:00.000Z
launch_date_local       : 2018-10-07T19:22:00-07:00
is_tentative            : False
tentative_max_precision : hour
rocket                  : @{rocket_id=falcon9; rocket_name=Falcon 9; rocket_type=FT; first_stage=; second_stage=;
                          fairings=}
ships                   : {}
telemetry               : @{flight_club=https://www.flightclub.io/result/2d?code=SAOCOM1A}
launch_site             : @{site_id=vafb_slc_4e; site_name=VAFB SLC 4E; site_name_long=Vandenberg Air Force Base Space
                          Launch Complex 4E}
launch_success          : True
links                   : @{mission_patch=https://images2.imgbox.com/66/d2/oVB1ofaZ_o.png;
                          mission_patch_small=https://images2.imgbox.com/ae/11/H85gskPQ_o.png; reddit_campaign=https://
                          www.reddit.com/r/spacex/comments/9fwj9o/saocom_1a_launch_campaign_thread/; reddit_launch=http
                          s://www.reddit.com/r/spacex/comments/9lazvr/rspacex_saocom_1a_official_launch_discussion/;
                          reddit_recovery=; reddit_media=https://www.reddit.com/r/spacex/comments/9m3ly5/rspacex_saocom
                          _1a_media_thread_videos_images_gifs/;
                          presskit=https://www.spacex.com/sites/spacex/files/saocom1apresskit.pdf; article_link=https:/
                          /spaceflightnow.com/2018/10/08/spacex-aces-first-rocket-landing-in-california-after-launching
                          -argentine-satellite/; wikipedia=https://en.wikipedia.org/wiki/SAOCOM;
                          video_link=https://www.youtube.com/watch?v=vr_C6LQ7mHc; flickr_images=System.Object[]}
details                 : SpaceX's seventeenth flight of 2018 will be the first launch of the Saocom Earth observation
                          satellite constellation of the Argentine Space Agency CONAE. The second launch of Saocom 1B
                          will happen in 2019. This flight will mark the first RTLS launch out of Vandenberg, with a
                          landing on the concrete pad at SLC-4W, very close to the launch pad.
upcoming                : False
static_fire_date_utc    : 2018-10-02T21:00:00.000Z
static_fire_date_unix   : 1538514000
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
#### All Capsules
```powershell
Get-SXCapsule
```

```text
capsule_serial       : C105
capsule_id           : dragon1
status               : unknown
original_launch      : 2014-04-18T19:25:00.000Z
original_launch_unix : 1397849100
missions             : {@{name=CRS-3; flight=14}}
landings             : 1
type                 : Dragon 1.1
details              : First Dragon v1.1 capsule
reuse_count          : 0

capsule_serial       : C106
capsule_id           : dragon1
status               : active
original_launch      : 2014-09-21T05:52:00.000Z
original_launch_unix : 1411278720
missions             : {@{name=CRS-4; flight=18}, @{name=CRS-11; flight=41}}
landings             : 2
type                 : Dragon 1.1
details              : First Dragon capsule to be reused
reuse_count          : 1

capsule_serial       : C107
capsule_id           : dragon1
status               : unknown
original_launch      : 2015-01-10T09:47:00.000Z
original_launch_unix : 1420883220
missions             : {@{name=CRS-5; flight=19}}
landings             : 1
type                 : Dragon 1.1
details              :
reuse_count          : 0
```

#### Specific Capsule
```powershell
Get-SXCapsule -Capsule C109
```

```text
capsule_serial       : C109
capsule_id           : dragon1
status               : destroyed
original_launch      : 2015-06-28T14:21:00.000Z
original_launch_unix : 1435501260
missions             : {@{name=CRS-7; flight=24}}
landings             : 0
type                 : Dragon 1.1
details              : Destroyed on impact after F9 launch failure
reuse_count          : 0
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
valuation      : 27500000000
headquarters   : @{address=Rocket Road; city=Hawthorne; state=California}
links          : @{website=https://www.spacex.com/; flickr=https://www.flickr.com/photos/spacex/;
                 twitter=https://twitter.com/SpaceX; elon_twitter=https://twitter.com/elonmusk}
summary        : SpaceX designs, manufactures and launches advanced rockets and spacecraft. The company was founded in
                 2002 to revolutionize space technology, with the ultimate goal of enabling people to live on other
                 planets.
```

### API data

```powershell
Get-SXApi
```

```text
project_name      : SpaceX-API
version           : 3.0.0
project_link      : https://github.com/r-spacex/SpaceX-API
docs              : https://documenter.getpostman.com/view/2025350/RWaEzAiG
organization      : r/SpaceX
organization_link : https://github.com/r-spacex
description       : Open Source REST API for rocket, core, capsule, pad, and launch data, created and maintained by
                    the developers of the r/SpaceX organization
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

### Ship data

#### All ships

```powershell
Get-SXShip
```

```text
ship_id             : AMERICANCHAMPION
ship_name           : American Champion
ship_model          : 
ship_type           : Tug
roles               : {Support Ship, Barge Tug}
active              : False
imo                 : 7434016
mmsi                : 367020820
abs                 : 571252
class               : 7604342
weight_lbs          : 588000
weight_kg           : 266712
year_built          : 1976
home_port           : Port of Los Angeles
status              : Stopped
speed_kn            : 0
course_deg          : 
position            : @{latitude=30.52757; longitude=-88.10252}
successful_landings : 
attempted_landings  : 
missions            : {@{name=COTS 1; flight=7}, @{name=COTS 2; flight=8}}
url                 : https://www.marinetraffic.com/en/ais/details/ships/shipid:434663/vessel:AMERICAN%20CHAMPION
image               : https://i.imgur.com/woCxpkj.jpg

ship_id             : AMERICANISLANDER
ship_name           : American Islander
ship_model          : 
ship_type           : Cargo
roles               : {Dragon Recovery}
active              : False
imo                 : 
mmsi                : 367035570
abs                 : 
class               : 
weight_lbs          : 
weight_kg           : 
year_built          : 
home_port           : Port of Los Angeles
status              : Stopped
speed_kn            : 0
course_deg          : 
position            : @{latitude=33.73421; longitude=-118.2635}
successful_landings : 
attempted_landings  : 
missions            : {@{name=CRS-1; flight=9}, @{name=CRS-2; flight=10}, @{name=CRS-3; flight=14}, @{name=CRS-4; flight=18}}
url                 : https://www.marinetraffic.com/en/ais/details/ships/shipid:435112/vessel:AMERICAN%20ISLANDER
image               : https://i.imgur.com/jmj8Sh2.jpg

ship_id             : AMERICANSPIRIT
ship_name           : American Spirit
ship_model          : 
ship_type           : Cargo
roles               : {Support Ship}
active              : False
imo                 : 
mmsi                : 
abs                 : 
class               : 
weight_lbs          : 
weight_kg           : 
year_built          : 
home_port           : Port of Los Angeles
status              : 
speed_kn            : 
course_deg          : 
position            : @{latitude=; longitude=}
successful_landings : 
attempted_landings  : 
missions            : {@{name=CASSIOPE; flight=11}}
url                 : 
image               : 
```

#### Specific ship

```powershell
Get-SXShip -ShipID RACHEL
```

```text
ship_id             : RACHEL
ship_name           : RACHEL
ship_model          : 
ship_type           : Tug
roles               : {ASDS Tug}
active              : False
imo                 : 7600378
mmsi                : 367488370
abs                 : 576417
class               : 7611785
weight_lbs          : 688000
weight_kg           : 312072
year_built          : 1976
home_port           : Port Canaveral
status              : Underway Using Engine
speed_kn            : 5.7
course_deg          : 256
position            : @{latitude=29.55419; longitude=-90.91056}
successful_landings : 
attempted_landings  : 
missions            : {@{name=Bangabandhu-1; flight=61}}
url                 : https://www.marinetraffic.com/en/ais/details/ships/shipid:447352/vessel:RACHEL
image               : https://i.imgur.com/IpYJWUW.jpg
```

### Roadster data

```powershell
Get-SXRoadster
```

```text
name               : Elon Musk's Tesla Roadster
launch_date_utc    : 2/6/18 8:45:00 PM
launch_date_unix   : 1517949900
launch_mass_kg     : 1350
launch_mass_lbs    : 2976
norad_id           : 43205
epoch_jd           : 2458405.30868056
orbit_type         : heliocentric
apoapsis_au        : 1.6637452059669
periapsis_au       : 0.986022718110123
semi_major_axis_au : 162.732406797965
eccentricity       : 0.255766734021751
inclination        : 1.0775293866441
longitude          : 317.094877300248
periapsis_arg      : 177.48756497167
period_days        : 557.012820498545
speed_kph          : 72280.548
speed_mph          : 44913.036391308
earth_distance_km  : 256669718.449737
earth_distance_mi  : 159487119.622832
mars_distance_km   : 193942231.905947
mars_distance_mi   : 120510078.58163
flickr_images      : {https://farm5.staticflickr.com/4615/40143096241_11128929df_b.jpg, https://farm5.staticflickr.com/4702/40110298232_91b32d0cc0_b.jpg, https://farm5.staticflickr.com/4676/40110297852_5e794b3258_b.jpg, https://farm5.staticflickr.com/4745/40110304192_6e3e9a7a1b_b.jpg}
wikipedia          : https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster
details            : Elon Musk's Tesla Roadster is an electric sports car that served as the dummy payload for the February 2018 Falcon Heavy test flight and is now an artificial satellite of the Sun. Starman, a mannequin dressed in a spacesuit, occupies the driver's seat. The car and rocket are products of Tesla and SpaceX, both companies founded by Elon Musk. This 2008-model Roadster was previously used by Musk for commuting, and is the only consumer car sent into space.
```

### Payload data

#### All payloads

```powershell
Get-SXPayload
```

```text
payload_id       : FalconSAT-2
norad_id         : {}
reused           : False
customers        : {DARPA}
nationality      : United States
manufacturer     : SSTL
payload_type     : Satellite
payload_mass_kg  : 20
payload_mass_lbs : 43
orbit            : LEO
orbit_params     : @{reference_system=geocentric; regime=low-earth; longitude=; semi_major_axis_km=; eccentricity=; periapsis_km=400; apoapsis_km=500; inclination_deg=39; period_min=; lifespan_years=; epoch=; mean_motion=; raan=; arg_of_pericenter=; mean_anomaly=}

payload_id       : DemoSAT
norad_id         : {}
reused           : False
customers        : {DARPA}
nationality      : United States
manufacturer     : SpaceX
payload_type     : Satellite
payload_mass_kg  : 
payload_mass_lbs : 
orbit            : LEO
orbit_params     : @{reference_system=geocentric; regime=low-earth; longitude=; semi_major_axis_km=; eccentricity=; periapsis_km=; apoapsis_km=; inclination_deg=; period_min=; lifespan_years=; epoch=; mean_motion=; raan=; arg_of_pericenter=; mean_anomaly=}

payload_id       : Trailblazer
norad_id         : {}
reused           : False
customers        : {NASA}
nationality      : United States
manufacturer     : Space Dev
payload_type     : Satellite
payload_mass_kg  : 
payload_mass_lbs : 
orbit            : LEO
orbit_params     : @{reference_system=geocentric; regime=low-earth; longitude=; semi_major_axis_km=; eccentricity=; periapsis_km=; apoapsis_km=; inclination_deg=; period_min=; lifespan_years=; epoch=; mean_motion=; raan=; arg_of_pericenter=; mean_anomaly=}
```

#### Specific payload

```powershell
Get-SXPayload -PayloadID "CRS-19"
```

```text
payload_id        : CRS-19
norad_id          : {}
cap_serial        : 
reused            : True
customers         : {NASA (CRS)}
nationality       : United States
manufacturer      : SpaceX
payload_type      : Dragon 1.1
payload_mass_kg   : 
payload_mass_lbs  : 
orbit             : ISS
orbit_params      : @{reference_system=geocentric; regime=low-earth; longitude=; semi_major_axis_km=; eccentricity=; periapsis_km=; apoapsis_km=; inclination_deg=; period_min=; lifespan_years=; epoch=; mean_motion=; raan=; arg_of_pericenter=; mean_anomaly=}
mass_returned_kg  : 
mass_returned_lbs : 
flight_time_sec   : 
cargo_manifest    : 
```

### Dragon capsule data

#### All dragon capsule data

```powershell
Get-SXDragon
```

```text
id                  : dragon1
name                : Dragon 1
type                : capsule
active              : True
crew_capacity       : 0
sidewall_angle_deg  : 15
orbit_duration_yr   : 2
dry_mass_kg         : 4200
dry_mass_lb         : 9300
first_flight        : 2010-12-08
heat_shield         : @{material=PICA-X; size_meters=3.6; temp_degrees=3000; dev_partner=NASA}
thrusters           : {@{type=Draco; amount=18; pods=4; fuel_1=nitrogen tetroxide; fuel_2=monomethylhydrazine; thrust=}}
launch_payload_mass : @{kg=6000; lb=13228}
launch_payload_vol  : @{cubic_meters=25; cubic_feet=883}
return_payload_mass : @{kg=3000; lb=6614}
return_payload_vol  : @{cubic_meters=11; cubic_feet=388}
pressurized_capsule : @{payload_volume=}
trunk               : @{trunk_volume=; cargo=}
height_w_trunk      : @{meters=7.2; feet=23.6}
diameter            : @{meters=3.7; feet=12}
flickr_images       : {https://www.spacex.com/sites/spacex/files/styles/media_gallery_large/public/2015_-_04_crs5_dragon_orbit13.jpg?itok=9p8_l7UP, https://www.spacex.com/sites/spacex/files/styles/media_gallery_large/public/2012_-_4_dragon_grapple_cots2-1.jpg?itok=R2-SeuMX, https://farm3.staticflickr.com/2815/32761844973_4b55b27d3c_b.jpg, https://farm9.staticflickr.com/8618/16649075267_d18cbb4342_b.jpg}
wikipedia           : https://en.wikipedia.org/wiki/SpaceX_Dragon
description         : Dragon is a reusable spacecraft developed by SpaceX, an American private space transportation company based in Hawthorne, California. Dragon is launched into space by the SpaceX Falcon 9 two-stage-to-orbit launch vehicle. The Dragon spacecraft was originally designed for human travel, but so far has only been used to deliver cargo to the International Space Station (ISS).

id                  : dragon2
name                : Dragon 2
type                : capsule
active              : False
crew_capacity       : 7
sidewall_angle_deg  : 15
orbit_duration_yr   : 2
dry_mass_kg         : 6350
dry_mass_lb         : 14000
first_flight        : 2018-11-01
heat_shield         : @{material=PICA-X; size_meters=3.6; temp_degrees=3000; dev_partner=NASA}
thrusters           : {@{type=Draco; amount=18; pods=4; fuel_1=nitrogen tetroxide; fuel_2=monomethylhydrazine; thrust=}, @{type=SuperDraco; amount=8; pods=4; fuel_1=dinitrogen tetroxide; fuel_2=monomethylhydrazine; thrust=}}
launch_payload_mass : @{kg=6000; lb=13228}
launch_payload_vol  : @{cubic_meters=25; cubic_feet=883}
return_payload_mass : @{kg=3000; lb=6614}
return_payload_vol  : @{cubic_meters=11; cubic_feet=388}
pressurized_capsule : @{payload_volume=}
trunk               : @{trunk_volume=; cargo=}
height_w_trunk      : @{meters=7.2; feet=23.6}
diameter            : @{meters=3.7; feet=12}
flickr_images       : {https://farm8.staticflickr.com/7647/16581815487_6d56cb32e1_b.jpg, https://farm1.staticflickr.com/780/21119686299_c88f63e350_b.jpg, https://farm9.staticflickr.com/8588/16661791299_a236e2f5dc_b.jpg}
wikipedia           : https://en.wikipedia.org/wiki/Dragon_2
description         : Dragon 2 (also Crew Dragon, Dragon V2, or formerly DragonRider) is the second version of the SpaceX Dragon spacecraft, which will be a human-rated vehicle. It includes a set of four side-mounted thruster pods with two SuperDraco engines each, which can serve as a launch escape system or launch abort system (LAS). In addition, it has much larger windows, new flight computers and avionics, and redesigned solar arrays, and a modified outer mold line from the initial cargo Dragon that has been flying for several years.
```

#### Specific dragon capsule

```powershell
Get-SXDragon -DragonID dragon1
```

```text
id                  : dragon1
name                : Dragon 1
type                : capsule
active              : True
crew_capacity       : 0
sidewall_angle_deg  : 15
orbit_duration_yr   : 2
dry_mass_kg         : 4200
dry_mass_lb         : 9300
first_flight        : 2010-12-08
heat_shield         : @{material=PICA-X; size_meters=3.6; temp_degrees=3000; dev_partner=NASA}
thrusters           : {@{type=Draco; amount=18; pods=4; fuel_1=nitrogen tetroxide; fuel_2=monomethylhydrazine; thrust=}}
launch_payload_mass : @{kg=6000; lb=13228}
launch_payload_vol  : @{cubic_meters=25; cubic_feet=883}
return_payload_mass : @{kg=3000; lb=6614}
return_payload_vol  : @{cubic_meters=11; cubic_feet=388}
pressurized_capsule : @{payload_volume=}
trunk               : @{trunk_volume=; cargo=}
height_w_trunk      : @{meters=7.2; feet=23.6}
diameter            : @{meters=3.7; feet=12}
flickr_images       : {https://www.spacex.com/sites/spacex/files/styles/media_gallery_large/public/2015_-_04_crs5_dragon_orbit13.jpg?itok=9p8_l7UP, https://www.spacex.com/sites/spacex/files/styles/media_gallery_large/public/2012_-_4_dragon_grapple_cots2-1.jpg?itok=R2-SeuMX, https://farm3.staticflickr.com/2815/32761844973_4b55b27d3c_b.jpg, https://farm9.staticflickr.com/8618/16649075267_d18cbb4342_b.jpg}
wikipedia           : https://en.wikipedia.org/wiki/SpaceX_Dragon
description         : Dragon is a reusable spacecraft developed by SpaceX, an American private space transportation company based in Hawthorne, California. Dragon is launched into space by the SpaceX Falcon 9 two-stage-to-orbit launch vehicle. The Dragon spacecraft was originally designed for human travel, but so far has only been used to deliver cargo to the International Space Station (ISS).
```

### Core data

#### All core data

```powershell
Get-SXCore
```

```text
core_serial          : B1052
block                : 5
status               : active
original_launch      : 
original_launch_unix : 
missions             : {}
reuse_count          : 0
rtls_attempts        : 0
rtls_landings        : 0
asds_attempts        : 0
asds_landings        : 0
water_landing        : False
details              : On test stand at McGregor.

core_serial          : B1053
block                : 5
status               : active
original_launch      : 
original_launch_unix : 
missions             : {}
reuse_count          : 0
rtls_attempts        : 0
rtls_landings        : 0
asds_attempts        : 0
asds_landings        : 0
water_landing        : False
details              : Testing at McGregor.

core_serial          : Merlin1A
block                : 
status               : expended
original_launch      : 3/24/06 10:30:00 PM
original_launch_unix : 1143239400
missions             : {@{name=FalconSat; flight=1}}
reuse_count          : 0
rtls_attempts        : 0
rtls_landings        : 0
asds_attempts        : 0
asds_landings        : 0
water_landing        : False
details              : Engine failure at T+33 seconds resulted in loss of vehicle
```

#### Specific core

```powershell
Get-SXCore -Serial B1032
```

```text
core_serial          : B1032
block                : 3
status               : destroyed
original_launch      : 5/1/17 11:15:00 AM
original_launch_unix : 1493637300
missions             : {@{name=NROL-76; flight=39}, @{name=SES-16 / GovSat-1; flight=54}}
reuse_count          : 1
rtls_attempts        : 1
rtls_landings        : 1
asds_attempts        : 0
asds_landings        : 0
water_landing        : True
details              : Daytime RTLS landing, helped launch first SpaceX mission for the NRO
```

### Historical Event data

#### All historical events

```powershell
Get-SXHistory
```

```text
id              : 1
title           : Falcon 1 Makes History
event_date_utc  : 9/28/08 11:15:00 PM
event_date_unix : 1222643700
flight_number   : 4
details         : Falcon 1 becomes the first privately developed liquid fuel rocket to reach Earth orbit.
links           : @{reddit=; article=http://www.spacex.com/news/2013/02/11/flight-4-launch-update-0; wikipedia=https://en.wikipedia.org/wiki/Falcon_1}

id              : 2
title           : SpaceX Wins $1.6B CRS Contract
event_date_utc  : 12/23/08 1:00:00 AM
event_date_unix : 1229994000
flight_number   : 
details         : NASA awards SpaceX $1.6B Commercial Resupply Services (CRS) contract.
links           : @{reddit=; article=https://www.nasaspaceflight.com/2008/12/spacex-and-orbital-win-huge-crs-contract-from-nasa/; wikipedia=https://en.wikipedia.org/wiki/Commercial_Resupply_Services}

id              : 3
title           : Falcon 1 Flight 5 Makes History
event_date_utc  : 7/13/09 3:35:00 AM
event_date_unix : 1247456100
flight_number   : 5
details         : Falcon 1 Flight 5 makes history, becoming the first privately developed liquid fuel rocket to deliver a commercial satellite to Earth orbit.
links           : @{reddit=; article=http://www.spacex.com/news/2013/02/12/falcon-1-flight-5; wikipedia=https://en.wikipedia.org/wiki/Falcon_1}
```

#### Specific historical event

```powershell
Get-SXHistory -ID 1
```

```text
id              : 1
title           : Falcon 1 Makes History
event_date_utc  : 9/28/08 11:15:00 PM
event_date_unix : 1222643700
flight_number   : 4
details         : Falcon 1 becomes the first privately developed liquid fuel rocket to reach Earth orbit.
links           : @{reddit=; article=http://www.spacex.com/news/2013/02/11/flight-4-launch-update-0; wikipedia=https://en.wikipedia.org/wiki/Falcon_1}
```

## Related posts

* [SpaceX PowerShell module](https://lazywinadmin.github.io/2018/02/SpaceX_module.html) by [@LazyWinAdm](https://twitter.com/LazyWinAdm)

## Resources

* [Api.spacexdata.com documentation](https://github.com/r-spacex/SpaceX-API/wiki)