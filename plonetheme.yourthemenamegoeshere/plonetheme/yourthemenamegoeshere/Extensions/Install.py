from Products.CMFCore.utils import getToolByName

def uninstall(portal):
    skins_tool = getToolByName(portal, 'portal_skins')
    import pdb; pdb.set_trace()
