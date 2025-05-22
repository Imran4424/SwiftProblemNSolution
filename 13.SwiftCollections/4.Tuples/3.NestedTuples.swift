
// here we gonna learn about how to declare nested tuples


var productInfo = (device: "Macbook Pro M1 Pro 14 inch", owner: (first: "Shah Md. Imran", last: "Hossain"))

// access tuple elements 
print("Product Name:", productInfo.device)
print("Product Owner First name:", productInfo.owner.first)
print("Product Owner Last name:", productInfo.owner.last)

print("")

// you can also access nested tuples in indexing way

// access tuple elements with indexing
print("Product Name:", productInfo.0)
print("Product Owner First name:", productInfo.1.0)
print("Product Owner Last name:", productInfo.1.1)