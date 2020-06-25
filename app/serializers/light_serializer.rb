class LightSerializer < ApplicationSerializer
  set_type :calculations

  attributes :value_a, :value_b, :operator, :result
end
