class Segmentation < ApplicationRecord
  # relationships
  has_many :segmentation_conditions

  # validations
  validates :name,
            presence: true

  def self.field_list
    Lead.column_names
        .reject { |item| item == 'id' }
        .map { |item| [Lead.human_attribute_name(item), item] }
  end

  def self.operators_list
    SegmentationCondition::OPERATORS
      .map { |item| [I18n.t("operators.#{item}"), item] }
  end

  def self.conjunctions_list
    SegmentationCondition::CONJUNCTIONS
      .map { |item| [I18n.t("conjunctions.#{item}"), item] }
  end

  def stored_query
    last_item = segmentation_conditions.size - 1

    query = nil
    segmentation_conditions.each_with_index do |c, _index|
      clause = "#{get_field(c)} #{get_operator(c)} ? "
      value = get_value(c)

      if query.nil?
        query = Lead.where(clause, value)
        next
      end

      if is_or(c)
        query = query.or(clause, value)
      else
        query = query.where(clause, value)
      end
    end
    pp query.to_sql
    query
  end

  private

  def is_or(c)
    get_conjunction(c) == 'or'
  end

  def get_field(condition)
    condition.field
  end

  def get_value(condition)
    case condition.operator
    when 'equals' then condition.value
    when 'diferent' then condition.value
    when 'greater' then condition.value
    when 'less' then condition.value
    when 'contains' then "%#{condition.value}%"
    when 'starts_with' then "#{condition.value}%"
    when 'ends_with' then "%#{condition.value}"
    end
  end

  def get_operator(condition)
    case condition.operator
    when 'equals' then '='
    when 'diferent' then '!='
    when 'greater' then '>'
    when 'less' then '<'
    when 'contains' then 'like'
    when 'starts_with' then 'like'
    when 'ends_with' then 'like'
    end
  end

  def get_conjunction(condition)
    condition.conjunction
  end
end
