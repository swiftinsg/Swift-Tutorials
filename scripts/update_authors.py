import requests
import functools

r = requests.get('https://api.github.com/repos/swiftinsg/Swift-Tutorials/contributors')

output = r.json()

formatted_data = list(map(lambda user: "**[{}]({})** | {}".format(user['login'], user['html_url'], user['contributions']), output))

table_data = functools.reduce(lambda a, b: a + "\n" + b, formatted_data)

table_header = 'Author | Commits\n--- | ---'

table = table_header + "\n" + table_data

start_marker = """@Comment {
    potato
}"""
end_marker = """@Comment {
    end-potato
}"""

file = open("Sources/swiftinsg/Documentation.docc/Documentation.md", "r+")
data = file.read()

start_location = data.find(start_marker)
end_location = data.find(end_marker)

top = data[:start_location]
middle = "\n{}\n{}\n".format(start_marker, table)
bottom = data[end_location:]

rebuilt_file = top + middle + bottom

file.close()

file = open("Sources/swiftinsg/Documentation.docc/Documentation.md", "w")

file.write(rebuilt_file)
