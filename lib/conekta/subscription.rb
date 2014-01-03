module Conekta
  class Subscription < Resource
    include Conekta::Operations::Update
    include Conekta::Operations::CustomAction
    def url
      if id == nil || id == ""
        raise Error.new('Could not get the id of ' + self.class.class_name + ' instance.')
      end
      self.customer.url + "/subscription"
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
