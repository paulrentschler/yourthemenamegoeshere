from Products.CMFCore.utils import getToolByName

THEMENAME='Your Theme Name Goes Here'

def uninstall(portal):
    skins_tool = getToolByName(portal, 'portal_skins')

    # Try to clean up
    try:
        del skins_tool['selections'][THEMENAME]
    except:
        pass

    # Set a reasonable default skin
    if skins_tool.getDefaultSkin() == THEMENAME:
        skins = skins_tool.getSkinSelections()
        default_skins = ['Sunburst Theme', 'Plone Classic Theme', 'Plone Default']
        for ds in default_skins:
            if ds in skins:
                skins_tool.default_skin = ds
                break
        if skins_tool.getDefaultSkin() == THEMENAME:
            return "%s uninstalled, but unable to set a default skin." % THEMENAME

        return "%s uninstalled; default skin set to %s." % (THEMENAME, ds)
    return "%s uninstalled." % THEMENAME

