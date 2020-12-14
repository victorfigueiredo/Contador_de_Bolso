class ApplicationController < ActionController::Base
    #before_action :authenticate_user!
    include Pedidoatual
    before_action :set_pedido
end
