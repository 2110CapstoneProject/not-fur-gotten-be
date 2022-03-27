require 'rails_helper'

RSpec.describe NotFurgottenSchema do
  it 'matches the dumped schema (rails graphql:schema:dump)' do
    aggregate_failures do
      #without rstrip n line 7 it fails because of whitespace
      expect(described_class.to_definition.rstrip).to eq(File.read(Rails.root.join('schema.graphql')).rstrip)
      expect(described_class.to_json).to eq(File.read(Rails.root.join('schema.json')).rstrip)
    end 
  end 
end 