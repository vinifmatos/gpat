Ransack.configure do |config|
  # Define a custom predicate for the ~ operator (PostgreSQL regex match)
  config.add_predicate 'regex',
                       arel_predicate: 'matches_regexp',
                       formatter: proc { |v| v },
                       validator: proc { |v| v.present? },
                       compounds: true,
                       type: :string
  config.add_predicate 'regex_insensitive',
                       arel_predicate: 'matches_regexp_insensitive',
                       formatter: proc { |v| v },
                       validator: proc { |v| v.present? },
                       compounds: true,
                       type: :string
end

# Extend Arel to add matches_regex function
module Arel
  module Predications
    def matches_regexp_insensitive(other)
      Arel::Nodes::Regexp.new(self, quoted_node(other), false)
    end
  end
end
