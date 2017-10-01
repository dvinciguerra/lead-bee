class SegmentationCondition < ApplicationRecord
  belongs_to :segmentation

  # constants
  OPERATORS = %w[equals diferent greater less contains starts_with ends_with].freeze
  CONJUNCTIONS = %w[or and].freeze

  # validations
  validates :field,
            presence: true,
            inclusion: { in: Lead.column_names }

  validates :operator,
            presence: true,
            inclusion: { in: OPERATORS }

  validates :value,
            presence: true

  validates :conjunction,
            presence: true,
            inclusion: { in: CONJUNCTIONS }
end
