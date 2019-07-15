module Neo4j
  module ActiveNode
    module Query
      module Include
        extend ActiveSupport::Concern

        included do
          attr_accessor :included_scope
        end

        def include_scope(name, &block)
          (@included_scope ||= {})[name] = block
          self
        end
      end
    end
  end
end