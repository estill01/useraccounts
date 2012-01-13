BRAND = "Agendo"

case Rails.env
  when "development"
    DOMAIN = "localhost:3000"
  when "production"
    DOMAIN = ""
end


