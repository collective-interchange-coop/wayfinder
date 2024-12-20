# frozen_string_literal: true

# This migration comes from better_together (originally 20240520221428)
class CreateBetterTogetherGeographyCountries < ActiveRecord::Migration[7.0]
  def change
    create_bt_table :countries, prefix: 'better_together_geography' do |t|
      t.bt_identifier
      t.bt_location(char_length: 2)
      t.bt_protected
      t.bt_community(:geography_country)
      t.bt_slug
    end
  end
end
