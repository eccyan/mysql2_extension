require 'arel'

module Mysql2Extensions
  module Arel
    module SelectManager
      def calc_found_rows
        @ctx.set_quantifier = ::Arel::Nodes::CalcFoundRows.new
      end
    end
  end
end
