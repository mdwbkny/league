class ChargesController < ApplicationController

	def new
	end

	def create

		@amount = 2500

		customer = Stripe::Customer.create(
			:email  => params[:stripeEmail],
			:source => params[:stripeToken]
			)

		charge = Stripe::Charge:create(
			:customer    => customer.id,
			:amount      => @amount,
			:description => 'The League Dues for 2016 - 2017',
			:currency    => 'usd'
			)

	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to new_charge_path
end
