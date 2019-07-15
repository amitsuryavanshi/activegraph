require 'neo4j/version'

require 'neo4j-core'
require 'neo4j/core/query_ext' # From this gem

require 'neo4j/active_base'
require 'neo4j/model_schema'
require 'neo4j/active_base/session_registry'

require 'active_model'
require 'active_support/concern'
require 'active_support/core_ext/class/attribute.rb'
require 'active_support/core_ext/class/subclasses.rb'
require 'json'

require 'neo4j/errors'
require 'neo4j/config'
require 'neo4j/wrapper'
require 'neo4j/active_rel/rel_wrapper'
require 'neo4j/active_node/node_wrapper'
require 'neo4j/shared/type_converters'
require 'neo4j/shared/rel_type_converters'
require 'neo4j/shared/marshal'
require 'neo4j/type_converters'
require 'neo4j/paginated'
require 'neo4j/schema/operation'

require 'neo4j/timestamps'
require 'neo4j/undeclared_properties'

require 'neo4j/shared/callbacks'
require 'neo4j/shared/filtered_hash'
require 'neo4j/shared/declared_property/index'
require 'neo4j/shared/declared_property'
require 'neo4j/shared/declared_properties'
require 'neo4j/shared/enum'
require 'neo4j/shared/mass_assignment'
require 'neo4j/shared/attributes'
require 'neo4j/shared/typecasted_attributes'
require 'neo4j/shared/property'
require 'neo4j/shared/persistence'
require 'neo4j/shared/validations'
require 'neo4j/shared/identity'
require 'neo4j/shared/serialized_properties'
require 'neo4j/shared/typecaster'
require 'neo4j/shared/initialize'
require 'neo4j/shared/query_factory'
require 'neo4j/shared/cypher'
require 'neo4j/shared/permitted_attributes'
require 'neo4j/shared'

require 'neo4j/active_rel/callbacks'
require 'neo4j/active_rel/initialize'
require 'neo4j/active_rel/property'
require 'neo4j/active_rel/persistence/query_factory'
require 'neo4j/active_rel/persistence'
require 'neo4j/active_rel/validations'
require 'neo4j/active_rel/query'
require 'neo4j/active_rel/related_node'
require 'neo4j/active_rel/types'
require 'neo4j/active_rel'

require 'neo4j/active_node/node_list_formatter'
require 'neo4j/active_node/dependent'
require 'neo4j/active_node/dependent/query_proxy_methods'
require 'neo4j/active_node/dependent/association_methods'
require 'neo4j/active_node/enum'
require 'neo4j/active_node/query_methods'
require 'neo4j/active_node/query/include'
require 'neo4j/active_node/query/query_proxy_methods'
require 'neo4j/active_node/query/query_proxy_methods_of_mass_updating'
require 'neo4j/active_node/query/query_proxy_enumerable'
require 'neo4j/active_node/query/query_proxy_find_in_batches'
require 'neo4j/active_node/query/query_proxy_eager_loading'
require 'neo4j/active_node/query/query_proxy_eager_loading/association_tree'
require 'neo4j/active_node/query/query_proxy_link'
require 'neo4j/active_node/labels/index'
require 'neo4j/active_node/labels/reloading'
require 'neo4j/active_node/labels'
require 'neo4j/active_node/id_property/accessor'
require 'neo4j/active_node/id_property'
require 'neo4j/active_node/callbacks'
require 'neo4j/active_node/initialize'
require 'neo4j/active_node/property'
require 'neo4j/active_node/persistence'
require 'neo4j/active_node/validations'
require 'neo4j/active_node/rels'
require 'neo4j/active_node/reflection'
require 'neo4j/active_node/unpersisted'
require 'neo4j/active_node/has_n'
require 'neo4j/active_node/has_n/association_cypher_methods'
require 'neo4j/active_node/has_n/association/rel_wrapper'
require 'neo4j/active_node/has_n/association/rel_factory'
require 'neo4j/active_node/has_n/association'
require 'neo4j/active_node/query/query_proxy'
require 'neo4j/active_node/query'
require 'neo4j/active_node/scope'
require 'neo4j/active_node'

module Neo4j
  extend ActiveSupport::Autoload
  autoload :Migrations
  autoload :Migration
end

load 'neo4j/tasks/migration.rake'

require 'neo4j/active_node/orm_adapter'
if defined?(Rails)
  require 'rails/generators'
  require 'rails/generators/neo4j_generator'
end
