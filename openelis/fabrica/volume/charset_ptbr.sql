-- Laboratorio brasileiro: acrescenta as letras do portugues aos nomes (o padrao de fabrica e o frances). E o que o
-- administrador faria em Site Information; roda antes da aplicacao subir, que le o valor na partida.
UPDATE clinlims.site_information SET value = value || 'áãíóõúÁÃÍÓÕÚ'
 WHERE name IN ('firstNameCharset', 'lastNameCharset') AND value NOT LIKE '%ã%';
