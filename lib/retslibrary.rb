# Resources
#
# http://sparkplatform.com/docs/api_services/listings
# https://www.flexmls.com/developers/rets/tutorials/example-rets-session/
#
# Sample Response:
#                    "Type" => "RE1",
#              "PostalCode" => "33317",
#                "Bedrooms" => "7",
#               "CloseDate" => "",
#               "BathsFull" => "5",
#               "BathsHalf" => "1",
#              "LivingArea" => "7124",
#   "ModificationTimestamp" => "2015-09-24T10:33:03",
#      "ListOfficeOfficeID" => "FOSR01",
#        "ListAgentAgentID" => "0090905",
#               "ListPrice" => "950000",
#      "ListAgentFirstName" => "Dean Upton",
#               "ListingID" => "A1542756",
#                 "Remarks" => "One acre of beauty in the middle of Plantation.  Magnificent palace just completed with all amenities--call for info.  Owner/builder.....7124 sq. ft.--two kitchens....",
#              "ClosePrice" => "",
#      "SaleOfficeOfficeID" => "",
#        "SaleAgentAgentID" => "",
#           "ListingStatus" => "A",
#              "StreetName" => "BROWARD BL",
#            "StreetNumber" => "5361",
#           "MapCoordinate" => "",
#                    "City" => "PLANTATN",
#                   "State" => "FL",
#              "Directions" => "",
#   "SaleAgentNRDSMemberID" => ""
module Retslibrary

  def rets_search_query
    '(246=|A,B,C,CS,PS,Q,T,W,X),(61=|BROWARD,DADE,GLADES,HENDRY,INDNRIV,MARTIN,OKEECHB,OTHER,PALMBCH,STLUCIE)'
  end

  def rets_query
    [
      '(246=|A),(61=|BROWARD)',
      '(246=|A),(61=|DADE)',
      '(246=|A),(61=|GLADES)',
      '(246=|A),(61=|HENDRY)',
      '(246=|A),(61=|INDNRIV)',
      '(246=|A),(61=|MARTIN)',
      '(246=|A),(61=|OKEECHB)',
      '(246=|A),(61=|OTHER)',
      '(246=|A),(61=|PALMBCH)',
      '(246=|A),(61=|STLUCIE)',

      '(246=|B),(61=|BROWARD)',
      '(246=|B),(61=|DADE)',
      '(246=|B),(61=|GLADES)',
      '(246=|B),(61=|HENDRY)',
      '(246=|B),(61=|INDNRIV)',
      '(246=|B),(61=|MARTIN)',
      '(246=|B),(61=|OKEECHB)',
      '(246=|B),(61=|OTHER)',
      '(246=|B),(61=|PALMBCH)',
      '(246=|B),(61=|STLUCIE)',

      '(246=|C),(61=|BROWARD)',
      '(246=|C),(61=|DADE)',
      '(246=|C),(61=|GLADES)',
      '(246=|C),(61=|HENDRY)',
      '(246=|C),(61=|INDNRIV)',
      '(246=|C),(61=|MARTIN)',
      '(246=|C),(61=|OKEECHB)',
      '(246=|C),(61=|OTHER)',
      '(246=|C),(61=|PALMBCH)',
      '(246=|C),(61=|STLUCIE)',

      '(246=|CS),(61=|BROWARD)',
      '(246=|CS),(61=|DADE)',
      '(246=|CS),(61=|GLADES)',
      '(246=|CS),(61=|HENDRY)',
      '(246=|CS),(61=|INDNRIV)',
      '(246=|CS),(61=|MARTIN)',
      '(246=|CS),(61=|OKEECHB)',
      '(246=|CS),(61=|OTHER)',
      '(246=|CS),(61=|PALMBCH)',
      '(246=|CS),(61=|STLUCIE)',

      '(246=|PS),(61=|BROWARD)',
      '(246=|PS),(61=|DADE)',
      '(246=|PS),(61=|GLADES)',
      '(246=|PS),(61=|HENDRY)',
      '(246=|PS),(61=|INDNRIV)',
      '(246=|PS),(61=|MARTIN)',
      '(246=|PS),(61=|OKEECHB)',
      '(246=|PS),(61=|OTHER)',
      '(246=|PS),(61=|PALMBCH)',
      '(246=|PS),(61=|STLUCIE)',

      '(246=|Q),(61=|BROWARD)',
      '(246=|Q),(61=|DADE)',
      '(246=|Q),(61=|GLADES)',
      '(246=|Q),(61=|HENDRY)',
      '(246=|Q),(61=|INDNRIV)',
      '(246=|Q),(61=|MARTIN)',
      '(246=|Q),(61=|OKEECHB)',
      '(246=|Q),(61=|OTHER)',
      '(246=|Q),(61=|PALMBCH)',
      '(246=|Q),(61=|STLUCIE)',

      '(246=|T),(61=|BROWARD)',
      '(246=|T),(61=|DADE)',
      '(246=|T),(61=|GLADES)',
      '(246=|T),(61=|HENDRY)',
      '(246=|T),(61=|INDNRIV)',
      '(246=|T),(61=|MARTIN)',
      '(246=|T),(61=|OKEECHB)',
      '(246=|T),(61=|OTHER)',
      '(246=|T),(61=|PALMBCH)',
      '(246=|T),(61=|STLUCIE)',

      '(246=|W),(61=|BROWARD)',
      '(246=|W),(61=|DADE)',
      '(246=|W),(61=|GLADES)',
      '(246=|W),(61=|HENDRY)',
      '(246=|W),(61=|INDNRIV)',
      '(246=|W),(61=|MARTIN)',
      '(246=|W),(61=|OKEECHB)',
      '(246=|W),(61=|OTHER)',
      '(246=|W),(61=|PALMBCH)',
      '(246=|W),(61=|STLUCIE)',

      '(246=|X),(61=|BROWARD)',
      '(246=|X),(61=|DADE)',
      '(246=|X),(61=|GLADES)',
      '(246=|X),(61=|HENDRY)',
      '(246=|X),(61=|INDNRIV)',
      '(246=|X),(61=|MARTIN)',
      '(246=|X),(61=|OKEECHB)',
      '(246=|X),(61=|OTHER)',
      '(246=|X),(61=|PALMBCH)',
      '(246=|X),(61=|STLUCIE)',
    ]
  end

  ##
  # This method makes the connection to RETS
  #
  def make_rets_connection

    #   Required. :login_url
    #   Required. :username
    #   Required. :password
    #   Required. :agent
    #   Required. :ua_password
    #   Required. :version
    client = Rets::Client.new({
      metadata_cache: Rets::Metadata::FileCache.new("/tmp/metadata"),
      metadata_serializer: Rets::Metadata::JsonSerializer.new,
      login_url:      ENV["RETS_LOGIN_URL"],
      username:       ENV["RETS_USERNAME"],
      password:       ENV["RETS_PASSWORD"],
      agent:          ENV["RETS_AGENT"],
      ua_password:    ENV["RETS_UA_PASSWORD"],
      version:        ENV["RETS_VERSION"],
    })

    begin
      client.login
    rescue => e
      puts 'Error: ' + e.message
      exit!
    end

    client

  end

  ##
  # This method gets property information
  #
  def find_rets_property

    # Required.  :first or :all
    # Required. :search_type (Property, Agent, Office)
    # Required. :class (Condo, Commerical, ...) or (A for Residential, B for Lots and Land, C for Residential Rentals)
    # Required. :query
    # optional. :limit
    property = client.find :first, {
      #metadata:       true,
      #format:         'COMPACT',
      search_type:    'Property',
      class:          '1',
      standard_name:  1,
      #query:         '(246=|A,B,C,CS,PS,Q,T,W,X),(61=|BROWARD,DADE,GLADES,HENDRY,INDNRIV,MARTIN,OKEECHB,OTHER,PALMBCH,STLUCIE),(19=|20),(25=3+)',
      #query:         '(246=|A,B,C,CS,PS,Q,T,W,X),(61=|BROWARD,DADE,GLADES,HENDRY,INDNRIV,MARTIN,OKEECHB,OTHER,PALMBCH,STLUCIE)',
      #query:         '(246=|A),(61=|BROWARD,DADE,GLADES,HENDRY,INDNRIV,MARTIN,OKEECHB,OTHER,PALMBCH,STLUCIE)',
      #query:          '(246=|A),(61=|BROWARD)',
      query:          "(ID=|#{})",
      limit:          4,
      resolve:        true
    }

    #unless DEBUG == false
    #  puts 'received property: '
    #  puts property.inspect
    #end
  end

  def pull_photos
    # Get all photos (*) for MLS ID 'mls_id'
    # Pass :object_id (ie '0', '1,2', wildcard '*')
    # The pass :resource (Property, Agent, MetaData, ...), :object_type (Photo, PhotoLarge), :rescource_id (ID of agent, MLS, ...)
    #photos = client.objects '*', {
    #  resource: 'Property',
    #  object_type: 'Photo',
    #  resource_id: '342371208'
    #}
    #photos.each_with_index do |data, index|
    #  File.open("property-#{index.to_s}.jpg", 'wb') do |file|
    #    file.write data.body
    #  end
    #end
    #puts photos.length.to_s + ' photos saved.'
  end

end

#  condition                     :string
#  description                   :text
#  fake_favorited                :integer
#  favorited                     :integer
#  featured_content_type         :string
#  featured_file_name            :string
#  featured_file_size            :integer
#  featured_updated_at           :datetime
#  full_address                  :string
#  garage_size                   :integer
#  has_garage                    :boolean
#  image_id                      :integer
#  last_update_description       :text
#  listing_office                :string
#  location                      :string
#  lot_sqft                      :decimal(, )
#  mls_date_added                :date
#  mls_date_modified             :date
#  mls_sources                   :string
#  property_type                 :string
#  short_description             :text
#  short_last_update_description :text
#  sold_price                    :decimal(, )
#  sqft                          :decimal(, )
#  sqft_price                    :decimal(, )
#  status                        :string
#  street_name                   :string
#  street_number                 :integer
#  unit_number                   :string
#  updated_at                    :datetime         not null
#  year_built                    :integer
#  zip                           :integer


# Array
# (
#     [sysid] => sysid
#     [1] => Property Type
#     [3] => Record Delete Flag
#     [4] => Record Delete Date
#     [5] => Last Transaction Code
#     [9] => Photos, Number of
#     [15] => Tax ID
#     [17] => Agent ID
#     [18] => Selling Agent ID
#     [19] => County
#     [32] => Beds
#     [33] => CDOM
#     [35] => Agent Name
#     [46] => Zip Code
#     [47] => Zip Plus 4
#     [49] => Address
#     [55] => Year Built
#     [59] => Status Change Date
#     [106] => Entry Date
#     [108] => Listing Date
#     [112] => Last Update Date
#     [138] => Office ID #
#     [140] => Sold Office ID
#     [143] => Str. Dir. Pre
#     [165] => Street #
#     [175] => ML# (w/Board ID)
#     [176] => List Price
#     [178] => Status
#     [391] => Sold Price
#     [406] => Sold Date
#     [410] => Sold Agent ID
#     [421] => Street Name
#     [1334] => Additional Public Remarks
#     [1335] => Additional Parcel Y/N
#     [1349] => Property Style
#     [1350] => Building Name/Number
#     [1354] => Bonus Room (Approx.)
#     [1368] => Minimum Lease
#     [1374] => # Times per Year
#     [1375] => Taxes
#     [1381] => Dining Room (Approx.)
#     [1384] => Dinette (Approx.)
#     [1397] => Elementary School
#     [1405] => Family Room (Approx.)
#     [1415] => Living Room (Approx.)
#     [1418] => HOA Fee
#     [1420] => High School
#     [1425] => Middle or Junior School
#     [1426] => Kitchen (Approx.)
#     [1432] => Legal Description
#     [1437] => Lot #
#     [1455] => Model/Make
#     [1457] => Public Remarks
#     [1466] => Master Bedroom (Approx.)
#     [1495] => 2nd Bedroom (Approx.)
#     [1514] => 3rd Bedroom (Approx.)
#     [1518] => 4th Bedroom (Approx.)
#     [1522] => 5th Bedroom (Approx.)
#     [1660] => Special Listing Type
#     [1670] => Subdivision #
#     [1709] => Financing Available
#     [1711] => Realtor Info
#     [1716] => Architectural Style
#     [1717] => Additional Rooms
#     [1718] => Location
#     [1720] => Utilities
#     [1722] => Water Extras
#     [1723] => Fireplace Description
#     [1724] => Master Bath Features
#     [1725] => Interior Layout
#     [1726] => Interior Features
#     [1727] => Kitchen Features
#     [1728] => Appliances Included
#     [1729] => Floor Covering
#     [1731] => Heating and Fuel
#     [1732] => Air Conditioning
#     [1733] => Exterior Construction
#     [1734] => Exterior Features
#     [1735] => Roof
#     [1736] => Garage Features
#     [1737] => Pool Type
#     [1739] => Foundation
#     [1743] => Community Features
#     [2292] => Str. Dir. Post
#     [2294] => Full Baths
#     [2296] => Half Baths
#     [2298] => Price Change Date
#     [2300] => Driving Directions
#     [2302] => City
#     [2304] => State ID
#     [2306] => Street Type
#     [2314] => Legal Subdivision Name
#     [2316] => Complex/Community Name/NCCB
#     [2320] => Zoning
#     [2322] => Lot Dimensions
#     [2326] => Square Foot Source
#     [2328] => Total Acreage
#     [2334] => Listing Type
#     [2338] => Trans Broker Comp
#     [2340] => Buyer Agent Comp
#     [2344] => Non-Rep Comp
#     [2346] => Sq Ft Heated
#     [2350] => Water Name
#     [2352] => Private Pool Y/N
#     [2362] => Lot Size
#     [2368] => Office Name
#     [2386] => Sell Agent Name
#     [2390] => Sell Office Name
#     [2455] => List Agent 2 ID
#     [2497] => Virtual Tour Link
#     [2606] => List Agent 2 Name
#     [2620] => Office Primary Board ID
#     [2622] => Lot Size [SqFt]
#     [2624] => Lot Size [Acres]
#     [2708] => MLS Zip
#     [2759] => LastImgTransDate
#     [2763] => LP/SqFt
#     [2765] => SP/SqFt
#     [2769] => ADOM
#     [2779] => Area (Range)
#     [2781] => Team Name
#     [2789] => Balcony/Porch/Lanai  (Approx)
#     [2791] => Building # Floors
#     [2793] => Annual CDD Fee
#     [2795] => CDD Y/N
#     [2797] => Condo Floor #
#     [2801] => Fireplace Y/N
#     [2803] => Floors in Unit
#     [2805] => Garage/Carport
#     [2809] => Homestead Y/N
#     [2811] => Maintenance Includes
#     [2813] => Max Pet Weight
#     [2819] => Property Description
#     [2823] => Special Tax Dist.Y/N (Tampa
#     [2854] => Unit #
#     [2856] => Total Units
#     [2879] => MH Width
#     [2899] => Mo.Maint.$(addition to HOA)
#     [2901] => HOA Payment Schedule
#     [2935] => LSC List Side
#     [2945] => Studio Dimensions
#     [2983] => SW Subdv Community Name
#     [2991] => Selling Agent 2 ID
#     [2992] => Listing Office 2 ID #
#     [2993] => Selling Office 2 ID
#     [2995] => Listing Office 2 Name
#     [2996] => Selling Office 2 Name
#     [3010] => Show Prop Address on Internet
#     [3011] => Water View
#     [3015] => Green Certifications
#     [3020] => Selling Agent 2 Name
#     [3021] => Great Room (Approx.)
#     [3022] => Waterfront Feet
#     [3026] => Subdivision Section Number
#     [3027] => Total Building SF
#     [3036] => Housing for Older Persons
#     [3048] => LSC Sell Side
#     [3062] => Special Sale Provision
#     [3063] => Water Access Y/N
#     [3064] => Water View Y/N
#     [3065] => Water Frontage Y/N
#     [3066] => Water Extras Y/N
#     [3067] => Water Frontage
#     [3068] => Water Access
#     [3074] => HOA/Comm Assn
#     [3075] => Pets Allowed Y/N
#     [3076] => Pet Restrictions
#     [3077] => Study/Den Dimensions
#     [3078] => Country
#     [3080] => # of Pets
#     [3084] => New Construction
#     [3085] => Construction Status
#     [3086] => Projected Completion Date
#     [3146] => Planned Unit Development
#     [3147] => HERS Index
#     [3148] => Flood Zone Code
#     [3149] => Land Lease Fee
#     [3165] => DPR Y/N
#     [3186] => Pool
#     [3187] => Public Remarks New
#     [3189] => Condo Maintenance Fee
#     [3190] => Condo Maint. Fee Schedule
# )
