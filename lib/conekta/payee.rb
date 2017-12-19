module Conekta
  class Payee < Resource
    include Conekta::Operations::Find
    include Conekta::Operations::Where
    include Conekta::Operations::Create
    include Conekta::Operations::Delete
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    include Conekta::Operations::CreateMember

    attr_accessor :email, :name, :phone, :livemode, :default_destination_id,
                  :created_at

    def load_from(response=nil)
      if response
        super
      end
      payee = self
      if Conekta.api_version <= "1.0.0"
        self.payout_methods.each do |k,v|
          if !v.respond_to? :deleted || !v.deleted
            v.create_attr('payee', payee)
            self.payout_methods.set_val(k,v)
          end
        end
      else
        self.destinations.each do |k,v|
          if !v.respond_to? :deleted || !v.deleted
            v.create_attr('payee', payee)
            self.destinations.set_val(k,v)
          end
        end
      end
    end

    def create_payout_method(params)
      raise_version_error("1.0.0") if Conekta.api_version > "1.0.0"
      self.create_member('payout_methods', params)
    end

    def create_destination(params)
      raise_version_error("2.0.0") if Conekta.api_version <= "1.0.0"
      self.create_member('destinations', params)
    end

    private
    def raise_version_error(version)
      exception = Error.error_handler({
        "details" => [{
          "debug_message" => I18n.t(
            'error.conflict.version.unspecified',
            { resource: self.class.class_name, locale: :en }
          ),
          "message" => I18n.t(
            'error.conflict.version.unspecified_purchaser',
            { locale: Conekta.locale.to_sym }
          ),
          "param" => nil,
          "code" => "error.conflict.version.unspecified"
        }]
      }, 409)

      raise exception
    end
  end
end
