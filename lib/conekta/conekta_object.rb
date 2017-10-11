module Conekta
  class ConektaObject < Hash
    attr_reader :values

    def initialize
      @values = Hash.new
    end

    def set_val(k,v)
      @values ||= {}
      @values[k] = v
      self[k] = v
    end

    def unset_key(k)
      @values.delete(k)
      self.delete(k)
    end

    def first
      self[0]
    end

    def last
      self[self.keys.last]
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

    def inspect
      if self.respond_to? :each
        if self.class.class_name != "ConektaObject"
          self.to_s
        else
          self.to_a.map{|x| x[1] }
        end
      else
        super
      end
    end

    def self.class_name
      self.name.split('::')[-1]
    end

    def class_name
      self.class.name.split('::')[-1]
    end

    def create_attr(k,v)
      # Conflict with Resource Class Url
      k = "_#{k}" if k.to_s == "method"

      if ! k.to_s.match(/-/) and ! k.to_s.match(/^[0-9]+/)
        create_method( "#{k}=".to_sym ) { |val|
            instance_variable_set( "@" + k, val)
        }
        self.send("#{k}=".to_sym, v)
        self.class.send(:remove_method, "#{k}=".to_sym)
        create_method( k.to_sym ) {
          instance_variable_get( "@" + k )
        }
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

    def create_method(name, &block)
        self.class.send(:define_method, name, &block)
    end

    def load_from_enumerable(k,v)
      if v.respond_to? :each and !v.instance_of?(ConektaObject)
        v = Conekta::Util.convert_to_conekta_object(k,v)
      end

      if self.instance_of?(ConektaObject)
        self[k] = v
      else
        self.create_attr(k,v)
      end
      self.set_val(k,v)
    end

  end
end
