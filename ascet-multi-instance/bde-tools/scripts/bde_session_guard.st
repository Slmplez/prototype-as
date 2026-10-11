[:database :component |
 | access interface owner |
 access := database dbAccess. interface := database dbInterface. owner := component item.
 [:current :fresh |
   (current dbAccess == access) and: [
     (current dbInterface == interface) and: [fresh item == owner]]
 ]
]
