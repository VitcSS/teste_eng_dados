SELECT
    *
FROM transacao B
LEFT JOIN (
    SELECT
        B.*,
        A.nome as nome_cliente
    FROM cliente A
    INNER JOIN contrato B ON A.cliente_id = B.cliente_id
    WHERE ativo = 1
) D ON B.contrato_id = D.contrato_id