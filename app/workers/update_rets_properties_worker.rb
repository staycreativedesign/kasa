require 'retslibrary'
class UpdateRetsPropertiesWorker

  include Sidekiq::Worker
  include Retslibrary

  sidekiq_options queue: 'rets', :retry => false, :backtrace => true

  def perform(listing_id)
    begin
      rets_query = '(246=|A,B,C,CS,PS,Q,T,W,X),(61=|BROWARD,DADE,GLADES,HENDRY,INDNRIV,MARTIN,OKEECHB,OTHER,PALMBCH,STLUCIE),(157=*' + listing_id + '*)'
      client = Rets::Client.new({
        metadata_cache: Rets::Metadata::FileCache.new("/tmp/metadata"),
        metadata_serializer: Rets::Metadata::JsonSerializer.new,
        login_url:      'http://sef.rets.interealty.com/Login.asmx/Login',
        username:       'guilRWSmo',
        password:       'gt5160ms',
        agent:          'RETS-Connector/1.2',
        ua_password:    '123456',
        version:        'RETS/1.5',
      })

      begin
        client.login
      rescue => e
        puts 'Error: ' + e.message
        exit!
      end

      property = client.find :first, {
        class:          '1',
        limit:          1,
        query:          rets_query,
        resolve:        true,
        search_type:    'Property',
        standard_name:  1
      }

      prop                        = Property.find_or_initialize_by(mls_listing_number: property['ListingID'])
      prop[:city]                 = property['City']
      prop[:bedrooms]             = property['Bedrooms']
      prop[:current_list_price]   = property['ListPrice']
      prop[:full_bathrooms]       = property['BathsFull']
      prop[:half_bathrooms]       = property['BathsHalf']
      prop[:zip]                  = property['PostalCode']
      prop[:mls_name]             = property['ListAgentFirstName']
      prop[:listing_office]       = property['ListOfficeOfficeID']
      prop[:description]          = property['Remarks']
      ## Modifacations may be needed on properties model
      #prop[] = result[                    "Type"]
      #prop[] = result[                   "State"]
      #prop[] = result[               "CloseDate"]
      #prop[] = result[              "ClosePrice"]
      #prop[] = result[              "Directions"]
      #prop[] = result[              "LivingArea"]
      #prop[] = result[              "StreetName"]
      #prop[] = result[            "StreetNumber"]
      #prop[] = result[           "ListingStatus"]
      #prop[] = result[           "MapCoordinate"]
      #prop[] = result[        "ListAgentAgentID"]
      #prop[] = result[        "SaleAgentAgentID"]
      #prop[] = result[      "SaleOfficeOfficeID"]
      #prop[] = result[   "ModificationTimestamp"]
      #prop[] = result[   "SaleAgentNRDSMemberID"]
      prop.save

      #client = Rets::Client.new({
      #  metadata_cache: Rets::Metadata::FileCache.new("/tmp/metadata"),
      #  metadata_serializer: Rets::Metadata::JsonSerializer.new,
      #  login_url:      ENV["RETS_LOGIN_URL"],
      #  username:       ENV["RETS_USERNAME"],
      #  password:       ENV["RETS_PASSWORD"],
      #  agent:          ENV["RETS_AGENT"],
      #  ua_password:    ENV["RETS_UA_PASSWORD"],
      #  version:        ENV["RETS_VERSION"],
      #})

      #begin
      #  client.login
      #rescue => e
      #  puts 'Error: ' + e.message
      #  exit!
      #end
      photos = client.objects '*', {
        resource: 'Property',
        object_type: 'Photo',
        resource_id: property['sysid']
      }
      #debugger
      photos.each_with_index do |data, index|
        debugger
        prop.images.create(image: data.body)
        ## -- START: This is if your writing to a local filesystem --
        #dirname = "./public/photos/#{result['sysid']}"
        #unless File.directory?(dirname)
        #  FileUtils.mkdir_p(dirname)
        #end
        #File.open(dirname + "/property-#{index.to_s}.jpg", 'wb') do |file|
        #  file.write data.body
        #end
        ## -- END: This is if your writing to a local filesystem --
        prop.images.save
      end
    rescue => e
      puts 'Error: ' + e.message
      client.logout
      exit!
    end
    client.logout
  end
end
