class Usuario
  attr_accessor :nombre_usuario  
  attr_reader :cuenta_bancaria
    def initialize (nombre_banco, cuenta_bancaria = [])
      @nombre_usuario = nombre_usuario
      @cuenta_bancaria = cuenta_bancaria
    end

  def suma_total
    sub_total = 0
    self.cuenta_bancaria.each do |x|
      sub_total += x.saldo
    end
    "#{sub_total}"
  end
end

class CuentaBancaria 
    attr_accessor :nombre_banco, :numero_cuenta, :saldo

    def initialize (nombre_banco, numero_cuenta,saldo = 0) 
    @nombre_banco = nombre_banco
    @numero_cuenta = numero_cuenta
    @saldo = saldo
    end

    def transferir (monto, otra_cuenta)
        self.saldo -= monto
        otra_cuenta.saldo += monto
    end
end

cuenta_origen = CuentaBancaria.new('BCI', 12346789, 5000)
cuenta_destino = CuentaBancaria.new('Estado', 45678908, 5000)
cuenta_origen.transferir(5000,cuenta_destino)
usuario1 = Usuario.new('Ender',[cuenta_origen,cuenta_destino])

puts cuenta_destino.saldo
puts cuenta_origen.saldo
puts usuario1.suma_total