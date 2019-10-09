listings = [
  {
    user_id: 1
  }, {
    user_id: 1
  }
]

items = [
  {
    name: "Nintendo Switch",
    listing_id: 1,
    description: "The Nintendo Switch[a] is a video game console developed by Nintendo, released on March 3, 2017. It is a hybrid console that can be used as a stationary and portable device. Its wireless Joy-Con controllers, with standard buttons and directional analog sticks for user input, motion sensing, and tactile feedback, can attach to both sides of the console to support handheld-style play. They can also connect to a Grip accessory to provide a traditional home console gamepad form, or be used individually in the hand like the Wii Remote and Nunchuk, supporting local multiplayer modes. The Nintendo Switch's software supports online gaming through Internet connectivity, as well as local wireless ad hoc connectivity with other Switch consoles. Nintendo Switch games and software are available on both physical flash-based ROM cartridges and digital distribution via Nintendo eShop; the system does not use region locking. As an eighth-generation console, the Nintendo Switch competes with Microsoft's Xbox One and Sony's PlayStation 4.",
    price: 249.00
  }, {
    name: "PlayStation 4",
    listing_id: 2,
    description: "The PlayStation 4 (officially abbreviated as PS4) is an eighth-generation home video game console developed by Sony Interactive Entertainment. Announced as the successor to the PlayStation 3 in February 2013, it was launched on November 15 in North America, November 29 in Europe, South America and Australia, and on February 22, 2014, in Japan. It competes with Microsoft's Xbox One and Nintendo's Wii U and Switch.",
    price: 299.99
  }
]

listings.each { |list| Listing.create(list) }
items.each { |product| Item.create(product) }