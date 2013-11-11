require "active_support"
require "mysql2_extensions/version"
require "mysql2_extensions/active_record/base/use_index"
require "mysql2_extensions/active_record/relation/use_index"
require "mysql2_extensions/arel/nodes/terminal"
require "mysql2_extensions/arel/visitors/visitor"
require "mysql2_extensions/arel/select_manager"

ActiveSupport.on_load(:active_record) do
  ActiveRecord::Base.send     :include, Mysql2Extensions::ActiveRecord::Base::UseIndex
  ActiveRecord::Relation.send :include, Mysql2Extensions::ActiveRecord::Relation::UseIndex
  Arel::Nodes.send            :include, Mysql2Extensions::Arel::Nodes
  Arel::Visitors::MySQL.send  :include, Mysql2Extensions::Arel::Visitors
  Arel::SelectManager.send    :include, Mysql2Extensions::Arel::SelectManager
end
