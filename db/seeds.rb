# Supprime toutes les données existantes dans la table avant d'ajouter de nouvelles données
PotatoPrice.delete_all

start_date = DateTime.new(2023, 1, 1)
end_date = DateTime.now

# Itère sur chaque jour entre la date de début et la date de fin
(start_date..end_date).each do |date|
  # Itère sur chaque heure de la journée
  24.times do |hour|
    # Génère un prix fictif
    price = rand(100.00..120.00)
    # Crée un enregistrement dans la table potato_prices avec la date, l'heure et le prix
    PotatoPrice.create!(
      time: date + hour.hours,
      price: price
    )
  end
end