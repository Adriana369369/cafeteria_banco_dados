-- Criação da tabela produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(5,2)
);

-- Inserção de 3 produtos
INSERT INTO produtos (id, nome, preco) VALUES (1, 'Café Expresso', 5.50);
INSERT INTO produtos (id, nome, preco) VALUES (2, 'Cappuccino', 7.00);
INSERT INTO produtos (id, nome, preco) VALUES (3, 'Pão de Queijo', 4.00);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    produto_id INTEGER,
    quantidade INTEGER,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserção de 3 pedidos
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (1, 1, 2, '2025-06-09');
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (2, 3, 1, '2025-06-09');
INSERT INTO pedidos (id, produto_id, quantidade, data_pedido) VALUES (3, 2, 1, '2025-06-08');
