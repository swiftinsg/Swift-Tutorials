nav_declaration = """e.isTargetIDE?e._e():a("Nav",{attrs:{title:e.title,diffAvailability:e.diffAvailability,interfaceLanguage:e.interfaceLanguage,objcPath:e.objcPath,swiftPath:e.swiftPath,parentTopicIdentifiers:e.parentTopicIdentifiers,isSymbolDeprecated:e.isSymbolDeprecated,isSymbolBeta:e.isSymbolBeta,currentTopicTags:e.tags}}),"""

frameworks_declaration = """,e.modules?a("FrameworkList",{attrs:{frameworks:e.modules}}):e._e(),e._v(" "),e.extendsFramework?a("FrameworkList",{staticClass:"extends-framework",attrs:{title:"Extends",frameworks:[{name:e.extendsFramework}]}}):e._e(),e._v(" ")"""

path = "Web/public/js/documentation-topic.d0b0a554.js"
file = open(path, "r+")
contents = file.read()

if nav_declaration in contents:
    print("Found Nav Bar, getting rid of it.")
    contents = contents.replace(nav_declaration, "")
    
    contents = contents.replace(frameworks_declaration, "")    
    
    file.close()
    
    file = open(path, "w")
    file.write(contents)
    file.close()
else:
    print("No Nav Bar found, very sad.")
