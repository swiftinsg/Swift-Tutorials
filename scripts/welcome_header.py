# Replace this with that

original = """{"roleHeading":"Article","title":"swiftinsg","""
new = """{"roleHeading":"swiftinsg","title":"Tutorials","""

path = "Web/public/data/documentation/swiftinsg/documentation.json"

file = open(path, "r+")
contents = file.read()
contents = contents.replace(original, new)
file.close()

file = open(path, "w")
file.write(contents)
file.close()
