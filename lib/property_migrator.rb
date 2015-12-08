require 'rets'

class PropertyMigrator

  PROPERTY_COUNT = 5000

  attr_accessor :client

  def initialize
    self.client = Rets::Client.new(credentials)
  end

  def attributes
    map reduce( fetch )
  end

private

  def reduce(properties)
    keys = %w(206 247 922 924 10 129 232 25 214)
    #61 - county removed
    #248 - street number

    properties.collect do |attributes|
      attributes.select{ |key, value| keys.include? key }
    end
  end

  def map(properties)
    dictionary = {
      current_list_price: '206', #206 - price
      bedrooms: '25', #25 - Bedrooms
      #street_number: '248', #248 - Street Number
      full_address: '247', #247 - Street
      city: '922', #922 - City
      state: '924', #924 - State
      #county: '61', #61 - County
      zip: '10', #10 - Zipcode first
      sqft: '129', #129 - Living area sqft
      lot_sqft: '232', #232 - Lot size sqft
      last_update_description: '214', #214 - Last update description
    }

    properties.collect do |attributes|
      mapped = {}

      dictionary.each_with_object({}) do |field, attrs|
        mapped[field[0]] = attributes[field[1]]
      end

      # build_full_address_for(mapped)
    end
  end

  # def build_full_address_for(attributes)
  #   full_address = [
  #     attributes.delete(:street_number),
  #     attributes.delete(:street),
  #     attributes.delete(:city),
  #     attributes.delete(:state),
  #     attributes.delete(:zip)
  #   ].join ' '

  #   attributes.tap {|a| a[:full_address] = full_address }
  # end

  def fetch
    self.client.login

    property = self.client.find(:all, {
      search_type: 'Property',
      class: '1',
      query: '(246=|A,B,C,CS,PS,Q,T,W,X),(61=|BROWARD)',
      limit: PROPERTY_COUNT,
      metadata: true,
      format: "COMPACT-DECODED"
    })

    self.client.logout

    property
  end

  def credentials
    {
      login_url:      "http://sef.rets.interealty.com/Login.asmx/Login",
      username:       "guilRWSmo",
      password:       "gt5160ms",
      agent:          "RETS-Connector/1.2",
      ua_password:    "123456",
      version:        "RETS/1.5"
    }
  end

  def dictionary
  end
end
