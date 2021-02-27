# Seu joão é um comerciante e ele precisa de um software que faça o calculo
# de porcetagem de desconto que ele dará os seus clientes no valor totl de compras,
# faça um software que solicite o valor total do ṕedido solicite o valor da porcentagem e logo após
# mostre o valor  com desconto e o valor descontado

# mudar o sistema para que ele pergunte qual o produto que o cliente pegou...
# e o valor total deste produto

# Seo valor total descontado der inferior a 10 reais oferecer um produto a mais no pedido
# perguntar o nome deste produto e o valor deste produto.

# O desconto de x% será dado no valor total com os items.


# João ficará MUITO feliz se vc resolver o problema dele.
require 'byebug'

system 'clear'

puts "Olá seu João tudo bem?\nVamos fazer o pedido do seu cliente"

puts "Digite o nome do seu cliente: "
    nome_cliente = gets.to_s.strip 

puts "Digite o nome produto: "
    nome_produto_1 = gets.to_s.strip

puts "Digite o valor do produto (#{nome_produto_1})"
    valor_produto_1 = gets.to_f

    system 'clear'

puts "Olá #{nome_cliente}, você gostaria de incluir mais um item em seu pedido, se fizer isto você poderá receber um desconto maior no valor total? (S/N)" 
    decisao_do_cliente = gets
    # lembre- se por ser uma codicional a linha 33 já me retorna um valor true || false
    # aqui eu faço o tratamento de string para receber o string (to_s) - maiscula (upcase) - sem espaço (strip) => 
     vai_adicionar_produto_a_mais = decisao_do_cliente.to_s.upcase.strip == "S"

     valor_total = valor_produto_1
     
     porcentagem_desconto = 0

     if vai_adicionar_produto_a_mais
        puts "Muito bem (#{nome_cliente}), qual o nome do novo produto que você deseja incluir "
           nome_produto_2 = gets.to_s.strip

        puts "Digite o valor do produto (#{nome_produto_2})"
            valor_produto_2 = gets.to_f

        puts "Perfeito (#{nome_cliente}), por você ter adicionado um produto a mais você ganhará mais 1% de desconto"
        
        porcentagem_desconto += 1

        valor_total += valor_produto_2
    end

    puts "Olá joão já temos #{porcentagem_desconto}% de desconto, você deseja acrescentar mais desconto.\n Coloque o valor do desconto ou digite 0 para não dar mais desconto "
    porcentagem_desconto += gets.to_f
        

valor_do_desconto = valor_total * porcentagem_desconto / 100

valor_total_descontado = valor_total - valor_do_desconto

#vou colocar agora os detalhes do meu sistema
system 'clear'

puts "Opa Seu Jõao o pedido do cliente #{nome_cliente} deu:"
puts "Itens: "
puts " - #{nome_produto_1}: R$ #{valor_produto_1}"
if vai_adicionar_produto_a_mais
    puts " - #{nome_produto_2} : R$ #{valor_produto_2}"
end

puts "======================================================"
puts "A porcentagem de desconto total foi de #{porcentagem_desconto}%"
puts "======================================================"
puts "Valor do desconto foi: R$ #{valor_do_desconto}"
puts "======================================================"
puts "Valor total: R$ #{valor_total_descontado}"
puts "======================================================"


