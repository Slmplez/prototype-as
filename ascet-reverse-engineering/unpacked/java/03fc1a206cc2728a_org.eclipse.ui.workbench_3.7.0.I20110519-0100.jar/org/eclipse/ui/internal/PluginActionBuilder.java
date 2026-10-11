/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.AbstractGroupMarker
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.AbstractGroupMarker;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.PluginActionContributionItem;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public abstract class PluginActionBuilder
extends RegistryReader {
    protected String targetID;
    protected String targetContributionTag;
    protected BasicContribution currentContribution;
    protected ArrayList cache;
    private static boolean allowIdeLogging = false;

    public final void contribute(IMenuManager menu, IToolBarManager toolbar, boolean appendIfMissing) {
        if (this.cache == null) {
            return;
        }
        int i = 0;
        while (i < this.cache.size()) {
            BasicContribution contribution = (BasicContribution)this.cache.get(i);
            contribution.contribute(menu, appendIfMissing, toolbar, appendIfMissing);
            ++i;
        }
    }

    protected abstract ActionDescriptor createActionDescriptor(IConfigurationElement var1);

    protected BasicContribution createContribution() {
        return new BasicContribution();
    }

    protected String getTargetID(IConfigurationElement element) {
        String value = element.getAttribute("targetID");
        return value != null ? value : "???";
    }

    protected String getID(IConfigurationElement element) {
        String value = element.getAttribute("id");
        return value != null ? value : "???";
    }

    protected void readContributions(String id, String tag, String extensionPoint) {
        this.cache = null;
        this.currentContribution = null;
        this.targetID = id;
        this.targetContributionTag = tag;
        this.readRegistry(Platform.getExtensionRegistry(), "org.eclipse.ui", extensionPoint);
    }

    protected boolean readElement(IConfigurationElement element) {
        String tag = element.getName();
        if (tag.equals("objectContribution")) {
            return true;
        }
        if (tag.equals(this.targetContributionTag)) {
            String id;
            if (!(this.targetID == null || (id = this.getTargetID(element)) != null && id.equals(this.targetID))) {
                return true;
            }
            this.currentContribution = this.createContribution();
            this.readElementChildren(element);
            if (this.cache == null) {
                this.cache = new ArrayList(4);
            }
            this.cache.add(this.currentContribution);
            this.currentContribution = null;
            return true;
        }
        if (tag.equals("menu")) {
            this.currentContribution.addMenu(element);
            return true;
        }
        if (tag.equals("action")) {
            this.currentContribution.addAction(this.createActionDescriptor(element));
            return true;
        }
        return false;
    }

    public static void setAllowIdeLogging(boolean b) {
        allowIdeLogging = b;
    }

    private static void ideLog(String msg) {
        if (allowIdeLogging) {
            WorkbenchPlugin.log(msg);
        }
    }

    protected static class BasicContribution {
        protected ArrayList menus;
        protected ArrayList actions;

        protected BasicContribution() {
        }

        public void addMenu(IConfigurationElement element) {
            if (this.menus == null) {
                this.menus = new ArrayList(1);
            }
            this.menus.add(element);
        }

        public void addAction(ActionDescriptor desc) {
            if (this.actions == null) {
                this.actions = new ArrayList(3);
            }
            this.actions.add(desc);
        }

        public void contribute(IMenuManager menu, boolean menuAppendIfMissing, IToolBarManager toolbar, boolean toolAppendIfMissing) {
            int i;
            if (this.menus != null && menu != null) {
                i = 0;
                while (i < this.menus.size()) {
                    IConfigurationElement menuElement = (IConfigurationElement)this.menus.get(i);
                    this.contributeMenu(menuElement, menu, menuAppendIfMissing);
                    ++i;
                }
            }
            if (this.actions != null) {
                i = 0;
                while (i < this.actions.size()) {
                    ActionDescriptor ad = (ActionDescriptor)this.actions.get(i);
                    if (menu != null) {
                        this.contributeMenuAction(ad, menu, menuAppendIfMissing);
                    }
                    if (toolbar != null) {
                        this.contributeToolbarAction(ad, toolbar, toolAppendIfMissing);
                    }
                    ++i;
                }
            }
        }

        protected void contributeMenu(IConfigurationElement menuElement, IMenuManager mng, boolean appendIfMissing) {
            IMenuManager newMenu;
            IContributionItem sep;
            String id = menuElement.getAttribute("id");
            String label = menuElement.getAttribute("label");
            String path = menuElement.getAttribute("path");
            String icon = menuElement.getAttribute("icon");
            ImageDescriptor image = null;
            if (icon != null) {
                String extendingPluginId = menuElement.getDeclaringExtension().getContributor().getName();
                image = AbstractUIPlugin.imageDescriptorFromPlugin(extendingPluginId, icon);
            }
            if (label == null) {
                WorkbenchPlugin.log("Plugin '" + menuElement.getContributor().getName() + "' invalid Menu Extension (label == null): " + id);
                return;
            }
            String group = null;
            if (path != null) {
                int loc = path.lastIndexOf(47);
                if (loc != -1) {
                    group = path.substring(loc + 1);
                    path = path.substring(0, loc);
                } else {
                    group = path;
                    path = null;
                }
            }
            IMenuManager parent = mng;
            if (path != null && (parent = mng.findMenuUsingPath(path)) == null) {
                PluginActionBuilder.ideLog("Plugin '" + menuElement.getContributor().getName() + "' invalid Menu Extension (Path '" + path + "' is invalid): " + id);
                return;
            }
            if (group == null) {
                group = "additions";
            }
            if ((sep = parent.find(group)) == null) {
                if (appendIfMissing) {
                    this.addGroup((IContributionManager)parent, group);
                } else {
                    WorkbenchPlugin.log("Plugin '" + menuElement.getContributor().getName() + "' invalid Menu Extension (Group '" + group + "' is invalid): " + id);
                    return;
                }
            }
            if ((newMenu = parent.findMenuUsingPath(id)) == null) {
                newMenu = new MenuManager(label, image, id);
            }
            try {
                this.insertAfter((IContributionManager)parent, group, (IContributionItem)newMenu);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                WorkbenchPlugin.log("Plugin '" + menuElement.getContributor().getName() + "' invalid Menu Extension (Group '" + group + "' is missing): " + id);
            }
            newMenu = parent.findMenuUsingPath(id);
            if (newMenu == null) {
                WorkbenchPlugin.log("Could not find new menu: " + id);
            }
            IConfigurationElement[] children = menuElement.getChildren();
            int i = 0;
            while (i < children.length) {
                String childName = children[i].getName();
                if (childName.equals("separator")) {
                    this.contributeSeparator(newMenu, children[i]);
                } else if (childName.equals("groupMarker")) {
                    this.contributeGroupMarker(newMenu, children[i]);
                }
                ++i;
            }
        }

        protected void contributeMenuAction(ActionDescriptor ad, IMenuManager menu, boolean appendIfMissing) {
            IContributionItem sep;
            String mpath = ad.getMenuPath();
            String mgroup = ad.getMenuGroup();
            if (mpath == null && mgroup == null) {
                return;
            }
            IMenuManager parent = menu;
            if (mpath != null && (parent = parent.findMenuUsingPath(mpath)) == null) {
                PluginActionBuilder.ideLog("Plug-in '" + ad.getPluginId() + "' contributed an invalid Menu Extension (Path: '" + mpath + "' is invalid): " + ad.getId());
                return;
            }
            if (mgroup == null) {
                mgroup = "additions";
            }
            if ((sep = parent.find(mgroup)) == null) {
                if (appendIfMissing) {
                    this.addGroup((IContributionManager)parent, mgroup);
                } else {
                    WorkbenchPlugin.log("Plug-in '" + ad.getPluginId() + "' contributed an invalid Menu Extension (Group: '" + mgroup + "' is invalid): " + ad.getId());
                    return;
                }
            }
            try {
                this.insertAfter((IContributionManager)parent, mgroup, ad);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                WorkbenchPlugin.log("Plug-in '" + ad.getPluginId() + "' contributed an invalid Menu Extension (Group: '" + mgroup + "' is missing): " + ad.getId());
            }
        }

        protected void contributeSeparator(IMenuManager menu, IConfigurationElement element) {
            String id = element.getAttribute("name");
            if (id == null || id.length() <= 0) {
                return;
            }
            IContributionItem sep = menu.find(id);
            if (sep != null) {
                return;
            }
            this.insertMenuGroup(menu, (AbstractGroupMarker)new Separator(id));
        }

        protected void contributeGroupMarker(IMenuManager menu, IConfigurationElement element) {
            String id = element.getAttribute("name");
            if (id == null || id.length() <= 0) {
                return;
            }
            IContributionItem marker = menu.find(id);
            if (marker != null) {
                return;
            }
            this.insertMenuGroup(menu, (AbstractGroupMarker)new GroupMarker(id));
        }

        protected void contributeToolbarAction(ActionDescriptor ad, IToolBarManager toolbar, boolean appendIfMissing) {
            String tId = ad.getToolbarId();
            String tgroup = ad.getToolbarGroupId();
            if (tId == null && tgroup == null) {
                return;
            }
            if (tgroup == null) {
                tgroup = "additions";
            }
            IContributionItem sep = null;
            sep = toolbar.find(tgroup);
            if (sep == null) {
                if (appendIfMissing) {
                    this.addGroup((IContributionManager)toolbar, tgroup);
                } else {
                    WorkbenchPlugin.log("Plug-in '" + ad.getPluginId() + "' invalid Toolbar Extension (Group '" + tgroup + "' is invalid): " + ad.getId());
                    return;
                }
            }
            try {
                this.insertAfter((IContributionManager)toolbar, tgroup, ad);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                WorkbenchPlugin.log("Plug-in '" + ad.getPluginId() + "' invalid Toolbar Extension (Group '" + tgroup + "' is missing): " + ad.getId());
            }
        }

        protected void insertMenuGroup(IMenuManager menu, AbstractGroupMarker marker) {
            menu.add((IContributionItem)marker);
        }

        protected void insertAfter(IContributionManager mgr, String refId, ActionDescriptor desc) {
            PluginActionContributionItem item = new PluginActionContributionItem(desc.getAction());
            item.setMode(desc.getMode());
            this.insertAfter(mgr, refId, (IContributionItem)item);
        }

        protected void insertAfter(IContributionManager mgr, String refId, IContributionItem item) {
            mgr.insertAfter(refId, item);
        }

        protected void addGroup(IContributionManager mgr, String name) {
            mgr.add((IContributionItem)new Separator(name));
        }

        public void dispose() {
        }

        protected void disposeActions() {
            if (this.actions != null) {
                int i = 0;
                while (i < this.actions.size()) {
                    PluginAction proxy = ((ActionDescriptor)this.actions.get(i)).getAction();
                    proxy.dispose();
                    ++i;
                }
                this.actions = null;
            }
        }
    }
}

