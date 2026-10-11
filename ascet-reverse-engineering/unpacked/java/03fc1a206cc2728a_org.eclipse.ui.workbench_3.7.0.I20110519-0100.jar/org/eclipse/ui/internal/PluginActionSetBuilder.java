/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.action.AbstractGroupMarker
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.action.AbstractGroupMarker;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.ActionSetActionBars;
import org.eclipse.ui.internal.ActionSetContributionItem;
import org.eclipse.ui.internal.ActionSetSeparator;
import org.eclipse.ui.internal.IActionSetContributionItem;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.PluginActionBuilder;
import org.eclipse.ui.internal.PluginActionCoolBarContributionItem;
import org.eclipse.ui.internal.PluginActionSet;
import org.eclipse.ui.internal.WWinPluginAction;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.services.IDisposable;

public class PluginActionSetBuilder
extends PluginActionBuilder {
    private PluginActionSet actionSet;
    private IWorkbenchWindow window;
    private ArrayList adjunctContributions = new ArrayList(0);

    public void buildMenuAndToolBarStructure(PluginActionSet set, IWorkbenchWindow window) {
        ActionSetContribution contribution;
        int i;
        this.actionSet = set;
        this.window = window;
        this.cache = null;
        this.currentContribution = null;
        this.targetID = null;
        this.targetContributionTag = "actionSet";
        this.readElements(new IConfigurationElement[]{set.getConfigElement()});
        if (this.cache != null) {
            i = 0;
            while (i < this.cache.size()) {
                contribution = (ActionSetContribution)this.cache.get(i);
                contribution.contribute(this.actionSet.getBars(), true, true);
                if (contribution.isAdjunctContributor()) {
                    this.adjunctContributions.add(contribution);
                }
                ++i;
            }
        }
        i = 0;
        while (i < this.adjunctContributions.size()) {
            contribution = (ActionSetContribution)this.adjunctContributions.get(i);
            ActionSetActionBars bars = this.actionSet.getBars();
            int j = 0;
            while (j < contribution.adjunctActions.size()) {
                ActionDescriptor adjunctAction = (ActionDescriptor)contribution.adjunctActions.get(j);
                contribution.contributeAdjunctCoolbarAction(adjunctAction, bars);
                ++j;
            }
            ++i;
        }
        this.registerBinding(set);
    }

    protected ActionDescriptor createActionDescriptor(IConfigurationElement element) {
        String pulldown;
        boolean pullDownStyle = false;
        String style = element.getAttribute("style");
        pullDownStyle = style != null ? style.equals("pulldown") : (pulldown = element.getAttribute("pulldown")) != null && pulldown.equals("true");
        ActionDescriptor desc = null;
        desc = pullDownStyle ? new ActionDescriptor(element, 5, this.window) : new ActionDescriptor(element, 3, this.window);
        WWinPluginAction action = (WWinPluginAction)desc.getAction();
        action.setActionSetId(this.actionSet.getDesc().getId());
        this.actionSet.addPluginAction(action);
        return desc;
    }

    protected PluginActionBuilder.BasicContribution createContribution() {
        return new ActionSetContribution(this.actionSet.getDesc().getId(), this.window);
    }

    public static IContributionItem findInsertionPoint(String startId, String sortId, IContributionManager mgr, boolean startVsEnd) {
        IContributionItem[] items = mgr.getItems();
        int insertIndex = 0;
        while (insertIndex < items.length) {
            if (startId.equals(items[insertIndex].getId())) break;
            ++insertIndex;
        }
        if (insertIndex >= items.length) {
            return null;
        }
        int compareMetric = 0;
        if (startVsEnd) {
            compareMetric = 1;
        }
        int nX = insertIndex + 1;
        while (nX < items.length) {
            String testId;
            IContributionItem item = items[nX];
            if (item.isSeparator() || item.isGroupMarker() || !(item instanceof IActionSetContributionItem) || sortId != null && sortId.compareTo(testId = ((IActionSetContributionItem)item).getActionSetId()) < compareMetric) break;
            insertIndex = nX++;
        }
        return items[insertIndex];
    }

    static void processActionSets(ArrayList pluginActionSets, WorkbenchWindow window) {
        PluginActionSetBuilder[] builders = new PluginActionSetBuilder[pluginActionSets.size()];
        int i = 0;
        while (i < pluginActionSets.size()) {
            PluginActionSet set = (PluginActionSet)pluginActionSets.get(i);
            PluginActionSetBuilder builder = new PluginActionSetBuilder();
            builder.readActionExtensions(set, window);
            builders[i] = builder;
            ++i;
        }
        i = 0;
        while (i < builders.length) {
            PluginActionSetBuilder builder = builders[i];
            builder.processAdjunctContributions();
            ++i;
        }
    }

    protected void processAdjunctContributions() {
        int i = 0;
        while (i < this.adjunctContributions.size()) {
            ActionSetContribution contribution = (ActionSetContribution)this.adjunctContributions.get(i);
            ActionSetActionBars bars = this.actionSet.getBars();
            int j = 0;
            while (j < contribution.adjunctActions.size()) {
                ActionDescriptor adjunctAction = (ActionDescriptor)contribution.adjunctActions.get(j);
                contribution.contributeAdjunctCoolbarAction(adjunctAction, bars);
                ++j;
            }
            ++i;
        }
    }

    protected void readActionExtensions(PluginActionSet set, IWorkbenchWindow window) {
        this.actionSet = set;
        this.window = window;
        this.cache = null;
        this.currentContribution = null;
        this.targetID = null;
        this.targetContributionTag = "actionSet";
        this.readElements(new IConfigurationElement[]{set.getConfigElement()});
        if (this.cache != null) {
            int i = 0;
            while (i < this.cache.size()) {
                ActionSetContribution contribution = (ActionSetContribution)this.cache.get(i);
                contribution.contribute(this.actionSet.getBars(), true, true);
                if (contribution.isAdjunctContributor()) {
                    this.adjunctContributions.add(contribution);
                }
                ++i;
            }
            this.registerBinding(set);
        } else {
            WorkbenchPlugin.log("Action Set is empty: " + set.getDesc().getId());
        }
    }

    private void registerBinding(PluginActionSet set) {
        IExtensionTracker tracker = this.window.getExtensionTracker();
        Binding binding = new Binding();
        binding.builder = this;
        binding.set = set;
        binding.window = this.window;
        binding.tracker = tracker;
        tracker.registerObject(set.getConfigElement().getDeclaringExtension(), (Object)binding, 0);
        set.setBuilder(binding);
    }

    protected void removeActionExtensions(PluginActionSet set, IWorkbenchWindow window) {
        this.actionSet = set;
        this.window = window;
        this.currentContribution = null;
        this.targetID = null;
        this.targetContributionTag = "actionSet";
        String id = set.getDesc().getId();
        if (this.cache != null) {
            int i = 0;
            while (i < this.cache.size()) {
                ActionSetContribution contribution = (ActionSetContribution)this.cache.get(i);
                contribution.revokeContribution((WorkbenchWindow)window, this.actionSet.getBars(), id);
                if (contribution.isAdjunctContributor()) {
                    int j = 0;
                    while (j < contribution.adjunctActions.size()) {
                        ActionDescriptor adjunctAction = (ActionDescriptor)contribution.adjunctActions.get(j);
                        contribution.revokeAdjunctCoolbarAction(adjunctAction, this.actionSet.getBars());
                        ++j;
                    }
                }
                ++i;
            }
        }
    }

    private static class ActionSetContribution
    extends PluginActionBuilder.BasicContribution {
        private String actionSetId;
        private WorkbenchWindow window;
        protected ArrayList adjunctActions = new ArrayList(0);

        public ActionSetContribution(String id, IWorkbenchWindow window) {
            this.actionSetId = id;
            this.window = (WorkbenchWindow)window;
        }

        protected void addGroup(IContributionManager mgr, String name) {
            IContributionItem refItem = PluginActionSetBuilder.findInsertionPoint("additions", this.actionSetId, mgr, true);
            ActionSetSeparator group = new ActionSetSeparator(name, this.actionSetId);
            if (refItem == null) {
                mgr.add((IContributionItem)group);
            } else {
                mgr.insertAfter(refItem.getId(), (IContributionItem)group);
            }
        }

        public void contribute(IActionBars bars, boolean menuAppendIfMissing, boolean toolAppendIfMissing) {
            int i;
            IMenuManager menuMgr = bars.getMenuManager();
            IToolBarManager toolBarMgr = bars.getToolBarManager();
            if (this.menus != null && menuMgr != null) {
                i = 0;
                while (i < this.menus.size()) {
                    IConfigurationElement menuElement = (IConfigurationElement)this.menus.get(i);
                    this.contributeMenu(menuElement, menuMgr, menuAppendIfMissing);
                    ++i;
                }
            }
            if (this.actions != null) {
                i = 0;
                while (i < this.actions.size()) {
                    ActionDescriptor ad = (ActionDescriptor)this.actions.get(i);
                    if (menuMgr != null) {
                        this.contributeMenuAction(ad, menuMgr, menuAppendIfMissing);
                    }
                    if (toolBarMgr != null) {
                        if (bars instanceof ActionSetActionBars) {
                            this.contributeCoolbarAction(ad, (ActionSetActionBars)bars);
                        } else {
                            this.contributeToolbarAction(ad, toolBarMgr, toolAppendIfMissing);
                        }
                    }
                    ++i;
                }
            }
        }

        protected void contributeAdjunctCoolbarAction(ActionDescriptor ad, ActionSetActionBars bars) {
            IContributionItem refItem;
            String toolBarId = ad.getToolbarId();
            String toolGroupId = ad.getToolbarGroupId();
            String contributingId = bars.getActionSetId();
            ICoolBarManager coolBarMgr = bars.getCoolBarManager();
            if (coolBarMgr == null) {
                return;
            }
            PluginAction action = ad.getAction();
            PluginActionCoolBarContributionItem actionContribution = new PluginActionCoolBarContributionItem(action);
            actionContribution.setMode(ad.getMode());
            bars.addAdjunctContribution((IContributionItem)actionContribution);
            IToolBarManager toolBarManager = bars.getToolBarManager(toolBarId);
            IContributionItem groupMarker = toolBarManager.find(toolGroupId);
            if (groupMarker == null) {
                toolBarManager.add((IContributionItem)new Separator(toolGroupId));
            }
            if ((refItem = this.findAlphabeticalOrder(toolGroupId, contributingId, (IContributionManager)toolBarManager)) != null && refItem.getId() != null) {
                toolBarManager.insertAfter(refItem.getId(), (IContributionItem)actionContribution);
            } else {
                toolBarManager.add((IContributionItem)actionContribution);
            }
            toolBarManager.update(false);
        }

        protected void contributeCoolbarAction(ActionDescriptor ad, ActionSetActionBars bars) {
            String toolBarId = ad.getToolbarId();
            String toolGroupId = ad.getToolbarGroupId();
            if (toolBarId == null && toolGroupId == null) {
                return;
            }
            String contributingId = bars.getActionSetId();
            if (toolBarId == null || toolBarId.equals("")) {
                toolBarId = contributingId;
            }
            if (!toolBarId.equals(contributingId)) {
                if (!this.isValidCoolItemId(toolBarId, this.window)) {
                    toolBarId = contributingId;
                } else {
                    this.adjunctActions.add(ad);
                    return;
                }
            }
            PluginAction action = ad.getAction();
            PluginActionCoolBarContributionItem actionContribution = new PluginActionCoolBarContributionItem(action);
            actionContribution.setMode(ad.getMode());
            IToolBarManager toolBar = bars.getToolBarManager(toolBarId);
            IContributionItem groupMarker = toolBar.find(toolGroupId);
            if (groupMarker == null) {
                toolBar.add((IContributionItem)new Separator(toolGroupId));
            }
            toolBar.prependToGroup(toolGroupId, (IContributionItem)actionContribution);
            toolBar.update(false);
        }

        private boolean isValidCoolItemId(String id, WorkbenchWindow window) {
            ActionSetRegistry registry = WorkbenchPlugin.getDefault().getActionSetRegistry();
            if (registry.findActionSet(id) != null) {
                return true;
            }
            if (window != null) {
                return window.isWorkbenchCoolItemId(id);
            }
            return false;
        }

        protected void insertMenuGroup(IMenuManager menu, AbstractGroupMarker marker) {
            if (this.actionSetId != null) {
                IContributionItem[] items = menu.getItems();
                int i = 0;
                while (i < items.length) {
                    String testId;
                    IContributionItem item = items[i];
                    if ((item.isSeparator() || item.isGroupMarker()) && item instanceof IActionSetContributionItem && this.actionSetId.compareTo(testId = ((IActionSetContributionItem)item).getActionSetId()) < 0) {
                        menu.insertBefore(items[i].getId(), (IContributionItem)marker);
                        return;
                    }
                    ++i;
                }
            }
            menu.add((IContributionItem)marker);
        }

        private IContributionItem findAlphabeticalOrder(String startId, String itemId, IContributionManager mgr) {
            IContributionItem[] items = mgr.getItems();
            int insertIndex = 0;
            while (insertIndex < items.length) {
                IContributionItem item = items[insertIndex];
                if (startId != null && startId.equals(item.getId())) break;
                ++insertIndex;
            }
            int i = insertIndex + 1;
            while (i < items.length) {
                IContributionItem item = items[i];
                if (item.isGroupMarker()) break;
                String testId = null;
                if (item instanceof PluginActionCoolBarContributionItem) {
                    testId = ((PluginActionCoolBarContributionItem)item).getActionSetId();
                }
                if (testId == null || itemId != null && testId != null && itemId.compareTo(testId) < 1) break;
                insertIndex = i++;
            }
            if (insertIndex >= items.length) {
                return null;
            }
            return items[insertIndex];
        }

        public boolean isAdjunctContributor() {
            return this.adjunctActions.size() > 0;
        }

        protected void insertAfter(IContributionManager mgr, String refId, IContributionItem item) {
            IContributionItem refItem = PluginActionSetBuilder.findInsertionPoint(refId, this.actionSetId, mgr, true);
            if (refItem != null) {
                mgr.insertAfter(refItem.getId(), item);
            } else {
                WorkbenchPlugin.log("Reference item " + refId + " not found for action " + item.getId());
            }
        }

        protected void revokeContribution(WorkbenchWindow window, IActionBars bars, String id) {
            this.revokeActionSetFromMenu((IMenuManager)window.getMenuManager(), id);
            this.revokeActionSetFromCoolbar(window.getCoolBarManager2(), id);
        }

        protected void revokeAdjunctCoolbarAction(ActionDescriptor ad, ActionSetActionBars bars) {
            String toolBarId = ad.getToolbarId();
            ICoolBarManager coolBarMgr = bars.getCoolBarManager();
            PluginAction action = ad.getAction();
            PluginActionCoolBarContributionItem actionContribution = new PluginActionCoolBarContributionItem(action);
            actionContribution.setMode(ad.getMode());
            bars.removeAdjunctContribution((ContributionItem)actionContribution);
            IContributionItem cbItem = coolBarMgr.find(toolBarId);
            if (cbItem != null) {
                coolBarMgr.remove(cbItem);
            }
        }

        private void revokeActionSetFromMenu(IMenuManager menuMgr, String actionsetId) {
            IContributionItem[] items = menuMgr.getItems();
            ArrayList<IContributionItem> itemsToRemove = new ArrayList<IContributionItem>();
            int i = 0;
            while (i < items.length) {
                String id;
                if (items[i] instanceof IMenuManager) {
                    this.revokeActionSetFromMenu((IMenuManager)items[i], actionsetId);
                } else if (items[i] instanceof ActionSetContributionItem) {
                    id = ((ActionSetContributionItem)items[i]).getActionSetId();
                    if (actionsetId.equals(id)) {
                        itemsToRemove.add(items[i]);
                    }
                } else if (items[i] instanceof Separator) {
                    id = ((Separator)items[i]).getId();
                    if (actionsetId.equals(id)) {
                        itemsToRemove.add(items[i]);
                    }
                } else if (items[i] instanceof GroupMarker && actionsetId.equals(id = ((GroupMarker)items[i]).getId())) {
                    itemsToRemove.add(items[i]);
                }
                ++i;
            }
            Iterator iter = itemsToRemove.iterator();
            while (iter.hasNext()) {
                IContributionItem item = (IContributionItem)iter.next();
                menuMgr.remove(item);
            }
            menuMgr.update(true);
        }

        private void revokeActionSetFromCoolbar(ICoolBarManager coolbarMgr, String actionsetId) {
            IContributionItem[] items = coolbarMgr.getItems();
            ArrayList<IContributionItem> itemsToRemove = new ArrayList<IContributionItem>();
            int i = 0;
            while (i < items.length) {
                String id = items[i].getId();
                if (actionsetId.equals(id)) {
                    itemsToRemove.add(items[i]);
                } else if (items[i] instanceof IToolBarManager) {
                    this.revokeActionSetFromToolbar((IToolBarManager)items[i], actionsetId);
                } else if (items[i] instanceof IToolBarContributionItem) {
                    id = ((IToolBarContributionItem)items[i]).getId();
                    if (actionsetId.equals(id)) {
                        itemsToRemove.add(items[i]);
                    }
                } else if (items[i] instanceof GroupMarker && actionsetId.equals(id = ((GroupMarker)items[i]).getId())) {
                    itemsToRemove.add(items[i]);
                }
                ++i;
            }
            Iterator iter = itemsToRemove.iterator();
            while (iter.hasNext()) {
                coolbarMgr.remove((IContributionItem)iter.next());
            }
            coolbarMgr.update(true);
        }

        private void revokeActionSetFromToolbar(IToolBarManager toolbarMgr, String actionsetId) {
            IContributionItem[] items = toolbarMgr.getItems();
            ArrayList<IContributionItem> itemsToRemove = new ArrayList<IContributionItem>();
            int i = 0;
            while (i < items.length) {
                String id = items[i].getId();
                if (id.equals(actionsetId)) {
                    itemsToRemove.add(items[i]);
                } else if (items[i] instanceof PluginActionCoolBarContributionItem) {
                    id = ((PluginActionCoolBarContributionItem)items[i]).getActionSetId();
                    if (actionsetId.equals(id)) {
                        itemsToRemove.add(items[i]);
                    }
                } else if (items[i] instanceof ActionContributionItem) {
                    id = ((ActionContributionItem)items[i]).getId();
                    if (actionsetId.equals(id)) {
                        itemsToRemove.add(items[i]);
                    }
                } else if (items[i] instanceof GroupMarker && actionsetId.equals(id = ((GroupMarker)items[i]).getId())) {
                    itemsToRemove.add(items[i]);
                }
                ++i;
            }
            Iterator iter = itemsToRemove.iterator();
            while (iter.hasNext()) {
                toolbarMgr.remove((IContributionItem)iter.next());
            }
            toolbarMgr.update(true);
        }
    }

    public static class Binding
    implements IDisposable {
        PluginActionSetBuilder builder;
        PluginActionSet set;
        IWorkbenchWindow window;
        IExtensionTracker tracker;

        public void dispose() {
            if (this.tracker != null) {
                this.tracker.unregisterObject(this.set.getConfigElement().getDeclaringExtension(), (Object)this);
                this.tracker = null;
            }
        }
    }
}

