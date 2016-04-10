module Conekta
  class Subscription < Resource
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    def _url
      raise Error.new(
        I18n.t('error.resource.id',  { resource: self.class.class_name, locale: :en }),
        I18n.t('error.resource.id_purchaser',  { locale: Conekta.locale.to_sym })) if (id.nil? || id.empty?)
      self.customer._url + "/subscription"
    end
    def pause
      custom_action(:post, 'pause')
    end
    def resume
      custom_action(:post, 'resume')
    end
    def cancel
      custom_action(:post, 'cancel')
    end
  end
end
