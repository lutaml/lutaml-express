# frozen_string_literal: true

require 'expressir'
require 'expressir/express_exp/parser'

module Lutaml
  module Express
    module Parsers
      # Class for parsing .exp schema files into Expressir::Model::Repository
      class Exp
        # @param [String] io - file object with path to .exp file
        #        [Hash] options - options for parsing
        #
        # @return [Expressir::Model::Repository]
        def self.parse(io, options = {})
          Expressir::ExpressExp::Parser.from_exp(io.path)
        end
      end
    end
  end
end