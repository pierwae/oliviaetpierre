class En::SubscriptionsController < ApplicationController
  def new
    if params[:saved].nil?
      required_params = 'nil'
    else
      required_params = params.require(:saved)
    end
    @subscription = Subscription.new

    case required_params
    when 'nil'
      @success = 'hidden'
      @error   = 'hidden'
    when 'true'
      @success = ''
      @error   = 'hidden'
    when 'false'
      @success = 'hidden'
      @error   = ''
    end
  end

  def create
    required_params = params.require(:subscription).permit(:first_name,
                                                           :last_name,
                                                           :email)
    subscription = Subscription.new(required_params)
    SubscriptionMailer.with(required_params).send_data.deliver_later if subscription.save
    redirect_to "/en/?saved=#{subscription.save}#first"
  end
end
