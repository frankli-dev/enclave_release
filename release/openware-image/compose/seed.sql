INSERT INTO markets (symbol, base_unit, quote_unit, amount_precision, price_precision, min_price, max_price, min_amount, position, data, state, engine_id, created_at, updated_at)
VALUES
('ethbtc', 'eth', 'btc', '4', '4', '0.0001000000000000', '0.0000000000000000', '0.0001000000000000', '103', '{}', 'enabled', '2', NOW(), NOW()),
('ethusd', 'eth', 'usd', '4', '4', '0.0001000000000000', '0.0000000000000000', '0.0001000000000000', '101', '{}', 'enabled', '2', NOW(), NOW()),
('trstbtc', 'trst', 'btc', '4', '4', '0.0001000000000000', '0.0000000000000000', '0.0001000000000000', '104', '{}', 'enabled', '2', NOW(), NOW()),
('trsteth', 'trst', 'eth', '4', '4', '0.0001000000000000', '0.0000000000000000', '0.0001000000000000', '105', '{}', 'enabled', '2', NOW(), NOW()),
('trstusd', 'trst', 'usd', '4', '4', '0.0001000000000000', '0.0000000000000000', '0.0001000000000000', '102', '{}', 'enabled', '2', NOW(), NOW());

UPDATE markets SET engine_id = 2;

INSERT INTO members (id, uid, username, email, level, role, members.group, state, created_at, updated_at)
VALUES
('1', 'U487205863', 'Bob', 'jefferson@crist.biz', '3', 'bench', 'vip-0', 'active', NOW(), NOW()),
('2', 'U180977303', 'Alice', 'napoleonreinger@goyettehahn.com', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('3', 'U835000656', 'Tamara', 'carmeloerdman@herman.io', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('4', 'U260596984', 'Billy', 'sonny@bogisich.io', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('5', 'U876658599', 'John', 'jermaine@breitenberglangosh.io', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('6', 'U447324758', 'Lohse', 'yolanda@kulas.co', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('7', 'U408283129', 'Wryn', 'arnulfo@oconnellgusikowski.com', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('8', 'U271077155', 'Liam', 'vivienpadberg@barton.net', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('9', 'U274470943', 'Oliver', 'josueluettgen@hegmann.net', '3', 'member', 'vip-0', 'active', NOW(), NOW()),
('10', 'U313725406', 'Olivia', 'james@lindgren.co', '3', 'member', 'vip-0', 'active', NOW(), NOW());
