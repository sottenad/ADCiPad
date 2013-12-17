class OrderMailer < ActionMailer::Base
  default from: "admin@adcapp.com"
  
  def new_order_email(order)
    @order = order
    @url  = 'http://adcapp.herokuapp.com'
    mail(to: 'sottenad@gmail.com', subject: 'Order Received')
  end
end
