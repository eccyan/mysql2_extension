require 'active_support'

module Mysql2Extensions
  module ActiveRecord
    module Relation
      module UseIndex
        extend ::ActiveSupport::Concern

        def use_index(*indexes)
          connection = ::ActiveRecord::Base.connection
          quoted_indexes = indexes.map { |index| connection.quote_column_name(index.to_s) }
          from("#{connection.quote_table_name(table_name)} USE INDEX( #{indexes.join(', ')} )")
        end
      end
    end
  end
end
