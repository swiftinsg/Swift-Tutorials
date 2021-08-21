nav_declaration = """n("div",{ref:"wrapper",staticClass:"nav__wrapper"},[n("div",{staticClass:"nav__background"}),e._v(" "),e.hasOverlay?n("div",{staticClass:"nav-overlay",on:{click:e.closeNav}}):e._e(),e._v(" "),n("div",{staticClass:"nav-content"},[e.$slots.default?n("div",{staticClass:"nav-title"},[e._t("default")],2):e._e(),e._v(" "),e._t("after-title"),e._v(" "),n("div",{staticClass:"nav-menu"},[n("a",{ref:"axToggle",staticClass:"nav-ax-toggle",attrs:{href:"#",role:"button"},on:{click:function(t){return t.preventDefault(),e.toggleNav(t)}}},[n("span",{staticClass:"visuallyhidden"},[e.isOpen?[e._v("Close Menu")]:[e._v("Open Menu")]],2)]),e._v(" "),n("div",{ref:"tray",staticClass:"nav-menu-tray",on:{transitionend:function(t){return t.target!==t.currentTarget?null:e.onTransitionEnd(t)},click:e.handleTrayClick}},[e._t("tray",[n("NavMenuItems",[e._t("menu-items")],2)])],2)]),e._v(" "),n("div",{staticClass:"nav-actions"},[n("a",{staticClass:"nav-menucta",attrs:{href:"#",tabindex:"-1","aria-hidden":"true"},on:{click:function(t){return t.preventDefault(),e.toggleNav(t)}}},[n("span",{staticClass:"nav-menucta-chevron"})])])],2),e._v(" "),e._t("after-content")],2),e._v(" "),n("BreakpointEmitter",{attrs:{scope:e.BreakpointScopes.nav},on:{change:e.onBreakpointChange}})"""

file = open("Web/public/js/documentation-topic~topic~tutorials-overview.e7243158.js", "r+")
contents = file.read()

if nav_declaration in contents:
    print("Found Nav Bar, getting rid of it.")
    contents = contents.replace(nav_declaration, "")
    file.close()
    
    file = open("Web/public/js/documentation-topic~topic~tutorials-overview.e7243158.js", "w")
    file.write(contents)
    file.close()
else:
    print("No Nav Bar found, very sad.")
