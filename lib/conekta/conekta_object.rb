module Conekta
  class ConektaObject < Hash
    attr_reader :id
    attr_reader :values
    def initialize(id=nil)
      @values = Hash.new
      @id = id.to_s
    end
    def set_val(k,v)
      @values[k] = v
    end
    def unset_key(k)
      @values.delete(k)
    end
    def load_from(response)
      if response.instance_of?(Array)
        response.each_with_index do |v, i|
          load_from_enumerable(i,v)
        end
      elsif response.kind_of?(Hash)
        response = response.to_hash if response.class != Hash
        response.each do |k,v|
          load_from_enumerable(k,v)
        end
      end
    end
    def to_s
      @values.inspect
    end
    def self.class_name
      self.name.split('::')[-1]
    end
    def inspect
      if self.respond_to? :each
        self.to_s
      else
        super
      end
    end
    protected
    def to_hash
      hash = Hash.new
      self.values.each do |k,v|
        hash[k] = v
      end
      hash
    end
    def load_from_enumerable(k,v)
      if v.respond_to? :each and !v.instance_of?(ConektaObject)
        v = Conekta::Util.convert_to_conekta_object(v)
      end
      if self.instance_of?(ConektaObject)
        self[k] = v
      else
        self.class.send(:define_method, k.to_sym, Proc.new {v})
      end
      self.set_val(k,v)
    end
  end
end
