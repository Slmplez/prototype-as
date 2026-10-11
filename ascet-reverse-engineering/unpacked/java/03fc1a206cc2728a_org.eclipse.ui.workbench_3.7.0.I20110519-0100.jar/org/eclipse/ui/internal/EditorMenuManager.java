/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IContributionManagerOverrides
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.SubMenuManager
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.SubMenuManager;
import org.eclipse.ui.actions.RetargetAction;
import org.eclipse.ui.internal.PluginActionSetBuilder;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class EditorMenuManager
extends SubMenuManager {
    private ArrayList wrappers;
    private boolean enabledAllowed = true;
    private Overrides overrides = new Overrides();

    public EditorMenuManager(IMenuManager mgr) {
        super(mgr);
    }

    public IContributionItem[] getItems() {
        return this.getParentMenuManager().getItems();
    }

    public IContributionManagerOverrides getOverrides() {
        return this.overrides;
    }

    public void insertAfter(String id, IContributionItem item) {
        IContributionItem refItem = PluginActionSetBuilder.findInsertionPoint(id, null, (IContributionManager)this.getParentMenuManager(), false);
        if (refItem != null) {
            super.insertAfter(refItem.getId(), item);
        } else {
            WorkbenchPlugin.log("Reference item " + id + " not found for action " + item.getId());
        }
    }

    public void prependToGroup(String groupName, IContributionItem item) {
        this.insertAfter(groupName, item);
    }

    public void setVisible(boolean visible, boolean forceVisibility) {
        if (visible) {
            if (forceVisibility) {
                if (!this.enabledAllowed) {
                    this.setEnabledAllowed(true);
                }
            } else if (this.enabledAllowed) {
                this.setEnabledAllowed(false);
            }
            if (!this.isVisible()) {
                this.setVisible(true);
            }
        } else if (forceVisibility) {
            this.setVisible(false);
        } else {
            this.setEnabledAllowed(false);
        }
    }

    public void setEnabledAllowed(boolean enabledAllowed) {
        if (this.enabledAllowed == enabledAllowed) {
            return;
        }
        this.enabledAllowed = enabledAllowed;
        this.overrides.updateEnabledAllowed();
    }

    protected SubMenuManager wrapMenu(IMenuManager menu) {
        if (this.wrappers == null) {
            this.wrappers = new ArrayList();
        }
        EditorMenuManager manager = new EditorMenuManager(menu);
        this.wrappers.add(manager);
        return manager;
    }

    protected IAction[] getAllContributedActions() {
        HashSet set = new HashSet();
        this.getAllContributedActions(set);
        return set.toArray(new IAction[set.size()]);
    }

    protected void getAllContributedActions(HashSet set) {
        IContributionItem[] items = super.getItems();
        int i = 0;
        while (i < items.length) {
            this.getAllContributedActions(set, items[i]);
            ++i;
        }
        if (this.wrappers == null) {
            return;
        }
        Iterator iter = this.wrappers.iterator();
        while (iter.hasNext()) {
            EditorMenuManager element = (EditorMenuManager)((Object)iter.next());
            element.getAllContributedActions(set);
        }
    }

    protected void getAllContributedActions(HashSet set, IContributionItem item) {
        if (item instanceof MenuManager) {
            IContributionItem[] subItems = ((MenuManager)item).getItems();
            int j = 0;
            while (j < subItems.length) {
                this.getAllContributedActions(set, subItems[j]);
                ++j;
            }
        } else if (item instanceof ActionContributionItem) {
            set.add(((ActionContributionItem)item).getAction());
        }
    }

    private class Overrides
    implements IContributionManagerOverrides {
        private Overrides() {
        }

        public void updateEnabledAllowed() {
            IContributionItem[] items = EditorMenuManager.super.getItems();
            int i = 0;
            while (i < items.length) {
                IContributionItem item = items[i];
                item.update("enabled");
                ++i;
            }
            if (EditorMenuManager.this.wrappers != null) {
                i = 0;
                while (i < EditorMenuManager.this.wrappers.size()) {
                    EditorMenuManager manager = (EditorMenuManager)((Object)EditorMenuManager.this.wrappers.get(i));
                    manager.setEnabledAllowed(EditorMenuManager.this.enabledAllowed);
                    ++i;
                }
            }
        }

        public Boolean getEnabled(IContributionItem item) {
            if (item instanceof ActionContributionItem && ((ActionContributionItem)item).getAction() instanceof RetargetAction || EditorMenuManager.this.enabledAllowed) {
                return null;
            }
            return Boolean.FALSE;
        }

        public Integer getAccelerator(IContributionItem item) {
            if (this.getEnabled(item) == null) {
                return EditorMenuManager.this.getParentMenuManager().getOverrides().getAccelerator(item);
            }
            return new Integer(0);
        }

        public String getAcceleratorText(IContributionItem item) {
            return EditorMenuManager.this.getParentMenuManager().getOverrides().getAcceleratorText(item);
        }

        public String getText(IContributionItem item) {
            return EditorMenuManager.this.getParentMenuManager().getOverrides().getText(item);
        }

        public Boolean getVisible(IContributionItem item) {
            return EditorMenuManager.this.getParentMenuManager().getOverrides().getVisible(item);
        }
    }
}

