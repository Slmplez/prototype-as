/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.SubMenuManager
 *  org.eclipse.jface.action.SubToolBarManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.SubMenuManager;
import org.eclipse.jface.action.SubToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.SubActionBars2;
import org.eclipse.ui.internal.ActionSetMenuManager;
import org.eclipse.ui.internal.PluginActionCoolBarContributionItem;
import org.eclipse.ui.internal.provisional.application.IActionBarConfigurer2;
import org.eclipse.ui.services.IServiceLocator;

public class ActionSetActionBars
extends SubActionBars2 {
    private IActionBarConfigurer2 actionBarConfigurer = null;
    private String actionSetId;
    private ArrayList adjunctContributions = new ArrayList();
    private IToolBarManager coolItemToolBarMgr = null;
    private IToolBarContributionItem toolBarContributionItem = null;

    public ActionSetActionBars(IActionBars2 parent, IServiceLocator serviceLocator, IActionBarConfigurer2 actionBarConfigurer, String actionSetId) {
        super(parent, serviceLocator);
        this.actionSetId = actionSetId;
        this.actionBarConfigurer = actionBarConfigurer;
    }

    void addAdjunctContribution(IContributionItem item) {
        this.adjunctContributions.add(item);
    }

    protected SubMenuManager createSubMenuManager(IMenuManager parent) {
        return new ActionSetMenuManager(parent, this.actionSetId);
    }

    protected SubToolBarManager createSubToolBarManager(IToolBarManager parent) {
        return null;
    }

    public void dispose() {
        IContributionItem item;
        super.dispose();
        if (this.coolItemToolBarMgr == null) {
            return;
        }
        IContributionItem[] items = this.coolItemToolBarMgr.getItems();
        int i = 0;
        while (i < items.length) {
            PluginActionCoolBarContributionItem actionSetItem;
            item = items[i];
            if (item instanceof PluginActionCoolBarContributionItem && (actionSetItem = (PluginActionCoolBarContributionItem)item).getActionSetId().equals(this.actionSetId)) {
                this.coolItemToolBarMgr.remove(item);
                item.dispose();
            }
            ++i;
        }
        i = 0;
        while (i < this.adjunctContributions.size()) {
            item = (ContributionItem)this.adjunctContributions.get(i);
            IContributionManager parent = item.getParent();
            if (parent != null) {
                parent.remove(item);
                item.dispose();
            }
            ++i;
        }
        this.toolBarContributionItem = null;
        this.coolItemToolBarMgr = null;
        this.adjunctContributions = new ArrayList();
    }

    private IContributionItem findAlphabeticalOrder(String startId, String itemId, IContributionManager mgr) {
        IContributionItem[] items = mgr.getItems();
        int insertIndex = 0;
        while (insertIndex < items.length) {
            IContributionItem item = items[insertIndex];
            if (item.getId() != null && item.getId().equals(startId)) break;
            ++insertIndex;
        }
        int i = insertIndex + 1;
        while (i < items.length) {
            IContributionItem item = items[i];
            String testId = item.getId();
            if (item.isGroupMarker() || itemId != null && testId != null && itemId.compareTo(testId) < 1) break;
            insertIndex = i++;
        }
        if (insertIndex >= items.length) {
            return null;
        }
        return items[insertIndex];
    }

    String getActionSetId() {
        return this.actionSetId;
    }

    public IToolBarManager getToolBarManager() {
        ICoolBarManager coolBarManager = this.getCastedParent().getCoolBarManager();
        if (coolBarManager == null) {
            return null;
        }
        return this.actionBarConfigurer.createToolBarManager();
    }

    public IToolBarManager getToolBarManager(String actionId) {
        ICoolBarManager coolBarManager;
        String toolBarId = this.actionSetId;
        boolean isAdjunctType = false;
        if (!actionId.equals(this.actionSetId)) {
            toolBarId = actionId;
            isAdjunctType = true;
        }
        if ((coolBarManager = this.getCastedParent().getCoolBarManager()) == null) {
            return null;
        }
        if (this.coolItemToolBarMgr != null && !isAdjunctType) {
            return this.coolItemToolBarMgr;
        }
        IContributionItem cbItem = coolBarManager.find(toolBarId);
        if (cbItem instanceof IToolBarContributionItem) {
            IToolBarContributionItem tbcbItem = (IToolBarContributionItem)cbItem;
            this.coolItemToolBarMgr = tbcbItem.getToolBarManager();
            if (!isAdjunctType) {
                this.toolBarContributionItem = tbcbItem;
            }
        } else {
            this.coolItemToolBarMgr = this.actionBarConfigurer.createToolBarManager();
            IToolBarContributionItem toolBarContributionItem = this.actionBarConfigurer.createToolBarContributionItem(this.coolItemToolBarMgr, toolBarId);
            toolBarContributionItem.setParent((IContributionManager)this.coolItemToolBarMgr);
            toolBarContributionItem.setVisible(this.getActive());
            this.coolItemToolBarMgr.markDirty();
            IContributionItem refItem = this.findAlphabeticalOrder("additions", toolBarId, (IContributionManager)coolBarManager);
            if (refItem != null) {
                coolBarManager.insertAfter(refItem.getId(), (IContributionItem)toolBarContributionItem);
            } else {
                coolBarManager.add((IContributionItem)toolBarContributionItem);
            }
        }
        return this.coolItemToolBarMgr;
    }

    void removeAdjunctContribution(ContributionItem item) {
        this.adjunctContributions.remove(item);
    }

    protected void setActive(boolean set) {
        super.setActive(set);
        ICoolBarManager coolBarManager = this.getCastedParent().getCoolBarManager();
        if (coolBarManager == null) {
            return;
        }
        if (this.coolItemToolBarMgr != null) {
            IContributionItem[] items = this.coolItemToolBarMgr.getItems();
            int i = 0;
            while (i < items.length) {
                PluginActionCoolBarContributionItem actionSetItem;
                IContributionItem item = items[i];
                if (item instanceof PluginActionCoolBarContributionItem && (actionSetItem = (PluginActionCoolBarContributionItem)item).getActionSetId().equals(this.actionSetId)) {
                    item.setVisible(set);
                    this.coolItemToolBarMgr.markDirty();
                    if (!coolBarManager.isDirty()) {
                        coolBarManager.markDirty();
                    }
                }
                ++i;
            }
            this.coolItemToolBarMgr.update(false);
            if (this.toolBarContributionItem != null) {
                this.toolBarContributionItem.update("size");
            }
        }
        if (this.adjunctContributions.size() > 0) {
            Iterator i = this.adjunctContributions.iterator();
            while (i.hasNext()) {
                IContributionItem item = (IContributionItem)i.next();
                if (!(item instanceof ContributionItem)) continue;
                item.setVisible(set);
                IContributionManager manager = ((ContributionItem)item).getParent();
                manager.markDirty();
                manager.update(false);
                if (!coolBarManager.isDirty()) {
                    coolBarManager.markDirty();
                }
                item.update("size");
            }
        }
    }
}

