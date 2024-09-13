resource "aws_ssm_parameter" "params" {
  count     = length(var.params)
  name      = var.params[count.index].name
  type      = var.params[count.index].type
  value     = var.params[count.index].value
  overwrite = true
  key_id    = "6598f70e-d6cc-452a-a255-e8cfabb934e0"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopsprojects.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopsprojects.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopsprojects.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopsprojects.store:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopsprojects.store:8080/", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devopsprojects.store:27017/catalogue", type = "String" },

    { name = "roboshop.dev.user.redis_host", value = "redis-dev.devopsprojects.store", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.devopsprojects.store:27017/users", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.devopsprojects.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.devopsprojects.store", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.devopsprojects.store:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.devopsprojects.store", type = "String" },


    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.devopsprojects.store", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.devopsprojects.store", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.devopsprojects.store", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" },

    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    
#    { name = "roboshop.dev.dispatch.amqp_user", value = "roboshop", type = "String" },
 #   { name = "roboshop.dev.dispatch.amqp_pass", value = "roboshop123", type = "SecureString" },
 #   { name = "roboshop.dev.dispatch.rabbitmq_host", value = "rabbitmq-dev.devopsprojects.store", type = "String" },

]
}
    
    





