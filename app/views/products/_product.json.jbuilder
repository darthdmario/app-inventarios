json.extract! product, :id, :nombre, :cod_instituto, :cod_senecyt, :cod_fisico, :cod_anterior, :cod_serie, :descripcion, :color, :material, :marca, :estado, :references, :created_at, :updated_at
json.url product_url(product, format: :json)
