from pyspark.sql import SparkSession, DataFrame
from pyspark.sql.types import StructType, StructField, IntegerType, StringType, BooleanType, DoubleType

class desafio_engenheiro:
    def __init__(self, spark : SparkSession) -> None:
        self.spark : SparkSession = spark
        self.cliente = self.create_client_table()
        self.contrato = self.create_contract_table()
        self.transacao = self.create_transaction_table()

    def create_client_table(self)->DataFrame:
        cliente_schema = StructType([
            StructField("cliente_id", IntegerType(), False),
            StructField("nome", StringType(), False)
        ])
        cliente_data = [(1, "Cliente A"), (2, "Cliente B"), (3, "Cliente C"), (4, "Cliente D")]
        return self.spark.createDataFrame(cliente_data, schema=cliente_schema)
    
    def create_contract_table(self)->DataFrame:
        # Create the contrato DataFrame and schema
        contrato_schema = StructType([
            StructField("contrato_id", IntegerType(), False),
            StructField("ativo", BooleanType(), False),
            StructField("percentual", DoubleType(), False),
            StructField("cliente_id", IntegerType(), False)
        ])
        contrato_data = [(1, True, 2.00, 1), (2, False, 1.95, 1), (3, True, 1.00, 2), (4, True, 3.00, 4)]
        return self.spark.createDataFrame(contrato_data, schema=contrato_schema)
    
    def create_transaction_table(self)->DataFrame:
        transacao_schema = StructType([
            StructField("transacao_id", IntegerType(), False),
            StructField("contrato_id", IntegerType(), False),
            StructField("valor_total", DoubleType(), False),
            StructField("percentual_desconto", DoubleType(), True)
        ])
        transacao_data = [(1, 1, 3000.00, 6.99), (2, 2, 4500.00, 15.00), (3, 1, 57989.00, 1.45), (4, 4, 1.00, None), (5, 4, 35.00, None)]
        return self.spark.createDataFrame(transacao_data, schema=transacao_schema)
