require 'arel'

module Mysql2Extensions
  module Arel
    module Visitors
      CALC_FOUND_ROWS = 'CALC_FOUND_ROWS'

      def visit_Mysql2Extensions_Arel_Nodes_CalcFoundRows o, a
        CALC_FOUND_ROWS
      end
    end
  end
end
