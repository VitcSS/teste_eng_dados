SELECT
    nome_cliente,
    SUM(ganho_total_empresa) as ganho_total_empresa,
    SUM(total_liquido_cliente) as total_liquido_cliente
FROM
    (SELECT
        nome_cliente,
        SUM(valor_total)*percentual*0.01 as ganho_total_empresa,
        CASE 
            WHEN C.percentual_desconto <> 0 then C.valor_total*(100-C.percentual_desconto)*0.01
            ELSE C.valor_total
        END AS total_liquido_cliente
    FROM transacao C
    INNER JOIN (
        SELECT
            B.*,
            A.nome as nome_cliente
        FROM cliente A
        INNER JOIN contrato B ON A.cliente_id = B.cliente_id
        --where ativo = True
    ) D ON C.contrato_id = D.contrato_id
    GROUP BY nome_cliente, percentual)
GROUP BY nome_cliente