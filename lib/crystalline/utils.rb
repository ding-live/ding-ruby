# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

module Crystalline
  extend T::Sig

  class FieldAugmented
    include MetadataFields
  end

  sig { params(complex: Object).returns(Object) }
  def self.to_dict(complex)
    if complex.is_a? Array
      complex.map { |v| Crystalline.to_dict(v) }
    elsif complex.is_a? Hash
      complex.transform_values { |v| Crystalline.to_dict(v) }
    elsif complex.is_a? Crystalline::FieldAugmented
      complex.to_dict
    else
      val_to_string complex, primitives: false
    end
  end

  def self.to_json(complex)
    JSON.dump(to_dict(complex))
  end

  sig { params(data: Object, type: Object).returns(Object) }
  def self.unmarshal_json(data, type)
    if T.simplifiable? type
      type = T.simplify_type type
    end
    if type.instance_of?(Class) && type < ::Crystalline::FieldAugmented
      type.from_dict(data)
    elsif T.arr? type
      data.map { |v| Crystalline.unmarshal_json(v, T.arr_of(type)) }
    elsif T.hash? type
      data.transform_values { |v| Crystalline.unmarshal_json(v, T.hash_of(type)) }
    else
      data
    end
  end

  sig { params(val: Object, primitives: T::Boolean).returns(Object) }
  def self.val_to_string(val, primitives: true)
    if val.is_a? T::Enum
      val.serialize
    elsif val.is_a? DateTime
      val.strftime('%Y-%m-%dT%H:%M:%S.%NZ')
    elsif primitives
      val.to_s
    else
      val
    end
  end

  sig { params(klass: T.any(Class, T::Types::TypedArray, T::Types::TypedHash)).returns(Integer) }
  def self.non_nilable_attr_count(klass)
    # somewhat sane sort ordering for Union deserialization.
    # All Crystalline objects return the number of non-nilable fields
    # All non-string primitives return 2
    # All arrays and hashes return 1
    # Strings return 0 (since any data can deserialize to a string, it should be our last attempt)
    if klass.respond_to? :fields
      return -1 * klass.fields.count do |field|
        !T.nilable? field.type
      end
    else
      if klass == String
        return 0
      elsif klass.is_a?(T::Types::TypedArray) || klass.is_a?(T::Types::TypedHash)
        return 1
      end
      return 2
    end
  end
end
