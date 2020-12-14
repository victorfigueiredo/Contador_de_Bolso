module pedidoatual
    private
    def set_pedido
        @pedido = Pedido.find(session[:pedido_id])
    rescue ActiveRecord::RecordNotFound
        @pedido = pedido.create
        session[:pedido_id] = @pedido.pedido_id
    end
end