/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.AbstractGroupMarker
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.ToolBarContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.AbstractGroupMarker;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.ToolBarContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.IIdentifierListener;
import org.eclipse.ui.activities.IdentifierEvent;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.commands.CommandPersistence;
import org.eclipse.ui.internal.commands.CommandService;
import org.eclipse.ui.internal.expressions.AlwaysEnabledExpression;
import org.eclipse.ui.internal.handlers.HandlerPersistence;
import org.eclipse.ui.internal.handlers.HandlerProxy;
import org.eclipse.ui.internal.handlers.HandlerService;
import org.eclipse.ui.internal.keys.BindingPersistence;
import org.eclipse.ui.internal.keys.BindingService;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.menus.AbstractMenuAdditionCacheEntry;
import org.eclipse.ui.internal.menus.ContributionRoot;
import org.eclipse.ui.internal.menus.InternalMenuService;
import org.eclipse.ui.internal.menus.MenuAdditionCacheEntry;
import org.eclipse.ui.internal.menus.MenuLocationURI;
import org.eclipse.ui.internal.menus.MenuPersistence;
import org.eclipse.ui.internal.menus.ProxyMenuAdditionCacheEntry;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.AbstractContributionFactory;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IEvaluationService;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.statushandlers.StatusManager;

public final class WorkbenchMenuService
extends InternalMenuService {
    private static final String INDEX_AFTER_ADDITIONS = "after=additions";
    private static final String PROP_VISIBLE = "visible";
    private final MenuPersistence menuPersistence;
    private IEvaluationService evaluationService;
    private IPropertyChangeListener serviceListener;
    private IServiceLocator serviceLocator;
    private IActivityManagerListener activityManagerListener;
    private Map uriToFactories = new HashMap();
    private Map evaluationsByItem = new HashMap();
    private Map activityListenersByItem = new HashMap();
    private Set managersAwaitingUpdates = new HashSet();
    private HashMap populatedManagers = new HashMap();
    private IRegistryChangeListener registryChangeListener;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public WorkbenchMenuService(IServiceLocator serviceLocator) {
        this.menuPersistence = new MenuPersistence(this);
        this.serviceLocator = serviceLocator;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.evaluationService = (IEvaluationService)serviceLocator.getService(clazz);
        this.evaluationService.addServiceListener(this.getServiceListener());
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IWorkbenchLocationService wls = (IWorkbenchLocationService)serviceLocator.getService(clazz2);
        wls.getWorkbench().getActivitySupport().getActivityManager().addActivityManagerListener(this.getActivityManagerListener());
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        this.registryChangeListener = new IRegistryChangeListener(){

            public void registryChanged(IRegistryChangeEvent event) {
                Display display = PlatformUI.getWorkbench().getDisplay();
                if (display.isDisposed()) {
                    return;
                }
                display.syncExec(new Runnable(this, event){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ IRegistryChangeEvent val$event;
                    {
                        this.this$1 = var1_1;
                        this.val$event = iRegistryChangeEvent;
                    }

                    public void run() {
                        1.access$0(this.this$1).handleRegistryChanges(this.val$event);
                    }
                });
            }

            static /* synthetic */ WorkbenchMenuService access$0(1 var0) {
                return var0.WorkbenchMenuService.this;
            }
        };
        registry.addRegistryChangeListener(this.registryChangeListener);
    }

    private IActivityManagerListener getActivityManagerListener() {
        if (this.activityManagerListener == null) {
            this.activityManagerListener = new IActivityManagerListener(){

                public void activityManagerChanged(ActivityManagerEvent activityManagerEvent) {
                    if (activityManagerEvent.haveEnabledActivityIdsChanged()) {
                        WorkbenchMenuService.this.updateManagers();
                    }
                }
            };
        }
        return this.activityManagerListener;
    }

    private IPropertyChangeListener getServiceListener() {
        if (this.serviceListener == null) {
            this.serviceListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    if (event.getProperty().equals("org.eclipse.ui.services.notifying") && !((Boolean)event.getNewValue()).booleanValue()) {
                        WorkbenchMenuService.this.updateManagers();
                    }
                }
            };
        }
        return this.serviceListener;
    }

    public void updateManagers() {
        Object[] managers = this.managersAwaitingUpdates.toArray();
        this.managersAwaitingUpdates.clear();
        int i = 0;
        while (i < managers.length) {
            IContributionManager parent;
            IContributionManager mgr = (IContributionManager)managers[i];
            mgr.update(true);
            if (mgr instanceof ToolBarManager) {
                if (!this.updateCoolBar((ToolBarManager)mgr)) {
                    this.updateTrim((ToolBarManager)mgr);
                }
            } else if (mgr instanceof MenuManager && (parent = ((MenuManager)mgr).getParent()) != null) {
                parent.update(true);
            }
            ++i;
        }
    }

    private void updateTrim(ToolBarManager mgr) {
        ToolBar control = mgr.getControl();
        if (control == null || control.isDisposed()) {
            return;
        }
        LayoutUtil.resize((Control)control);
    }

    private boolean updateCoolBar(ToolBarManager mgr) {
        IWorkbenchWindow[] windows = PlatformUI.getWorkbench().getWorkbenchWindows();
        int i = 0;
        while (i < windows.length) {
            WorkbenchWindow window = (WorkbenchWindow)windows[i];
            ICoolBarManager cb = window.getCoolBarManager2();
            if (cb != null) {
                IContributionItem[] items = cb.getItems();
                int j = 0;
                while (j < items.length) {
                    IToolBarManager tbm;
                    if (items[j] instanceof ToolBarContributionItem && mgr == (tbm = ((ToolBarContributionItem)items[j]).getToolBarManager())) {
                        cb.update(true);
                        return true;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return false;
    }

    public final void addSourceProvider(ISourceProvider provider) {
    }

    public final void dispose() {
        this.menuPersistence.dispose();
        if (this.registryChangeListener != null) {
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            registry.removeRegistryChangeListener(this.registryChangeListener);
            this.registryChangeListener = null;
        }
        Iterator i = this.evaluationsByItem.values().iterator();
        while (i.hasNext()) {
            IEvaluationReference ref = (IEvaluationReference)i.next();
            this.evaluationService.removeEvaluationListener(ref);
        }
        this.evaluationsByItem.clear();
        this.managersAwaitingUpdates.clear();
        if (this.serviceListener != null) {
            this.evaluationService.removeServiceListener(this.serviceListener);
            this.serviceListener = null;
        }
        if (this.activityManagerListener != null) {
            IWorkbenchLocationService wls;
            IWorkbench workbench;
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((workbench = (wls = (IWorkbenchLocationService)this.serviceLocator.getService(clazz)).getWorkbench()) != null) {
                workbench.getActivitySupport().getActivityManager().removeActivityManagerListener(this.activityManagerListener);
            }
        }
    }

    public final void readRegistry() {
        this.menuPersistence.read();
    }

    public final void removeSourceProvider(ISourceProvider provider) {
    }

    private String getIdFromURI(MenuLocationURI uri) {
        return String.valueOf(uri.getScheme()) + ":" + uri.getPath();
    }

    public List getAdditionsForURI(MenuLocationURI uri) {
        if (uri == null) {
            return null;
        }
        ArrayList caches = (ArrayList)this.uriToFactories.get(this.getIdFromURI(uri));
        if (caches == null) {
            caches = new ArrayList();
            this.uriToFactories.put(this.getIdFromURI(uri), caches);
        }
        return caches;
    }

    public void addContributionFactory(AbstractContributionFactory factory) {
        if (factory == null || factory.getLocation() == null) {
            return;
        }
        MenuLocationURI uri = new MenuLocationURI(factory.getLocation());
        String factoryId = this.getIdFromURI(uri);
        ArrayList<AbstractContributionFactory> factories = (ArrayList<AbstractContributionFactory>)this.uriToFactories.get(factoryId);
        if (factories == null) {
            factories = new ArrayList<AbstractContributionFactory>();
            this.uriToFactories.put(factoryId, factories);
        }
        if (factory instanceof MenuAdditionCacheEntry && ((MenuAdditionCacheEntry)factory).hasAdditions()) {
            factories.add(0, factory);
        } else {
            factories.add(factory);
        }
        ArrayList<AbstractContributionFactory> factoryList = new ArrayList<AbstractContributionFactory>();
        factoryList.add(factory);
        List affectedManagers = this.getManagersFor(factoryId);
        Iterator mgrIter = affectedManagers.iterator();
        while (mgrIter.hasNext()) {
            ContributionManager mgr = (ContributionManager)mgrIter.next();
            ManagerPopulationRecord mpr = (ManagerPopulationRecord)this.populatedManagers.get(mgr);
            this.addContributionsToManager(mpr.serviceLocatorToUse, mpr.restriction, mgr, mpr.uri, mpr.recurse, factoryList);
            mgr.update(true);
        }
    }

    private List getManagersFor(String factoryId) {
        ArrayList<ContributionManager> mgrs = new ArrayList<ContributionManager>();
        Iterator mgrIter = this.populatedManagers.keySet().iterator();
        while (mgrIter.hasNext()) {
            ContributionManager mgr = (ContributionManager)mgrIter.next();
            ManagerPopulationRecord mpr = (ManagerPopulationRecord)this.populatedManagers.get(mgr);
            if (!factoryId.equals(mpr.uri)) continue;
            mgrs.add(mgr);
        }
        return mgrs;
    }

    public void removeContributionFactory(AbstractContributionFactory factory) {
        if (factory == null || factory.getLocation() == null) {
            return;
        }
        MenuLocationURI uri = new MenuLocationURI(factory.getLocation());
        String factoryId = this.getIdFromURI(uri);
        List factories = (List)this.uriToFactories.get(factoryId);
        if (factories != null) {
            List subCaches;
            if (factory instanceof MenuAdditionCacheEntry && (subCaches = ((MenuAdditionCacheEntry)factory).getSubCaches()) != null) {
                Iterator subCacheIter = subCaches.iterator();
                while (subCacheIter.hasNext()) {
                    AbstractMenuAdditionCacheEntry mace = (AbstractMenuAdditionCacheEntry)subCacheIter.next();
                    this.removeContributionFactory(mace);
                }
            }
            factories.remove(factory);
        }
        ArrayList<AbstractContributionFactory> factoryList = new ArrayList<AbstractContributionFactory>();
        factoryList.add(factory);
        List affectedManagers = this.getManagersFor(factoryId);
        Iterator mgrIter = affectedManagers.iterator();
        while (mgrIter.hasNext()) {
            ContributionManager mgr = (ContributionManager)mgrIter.next();
            this.removeContributionsForFactory((IContributionManager)mgr, factory);
            mgr.update(true);
        }
    }

    private boolean processAdditions(final IServiceLocator serviceLocatorToUse, Set restriction, final ContributionManager mgr, final AbstractContributionFactory cache, final Set itemsAdded) {
        if (!this.processFactory(mgr, cache)) {
            return true;
        }
        final int idx = this.getInsertionIndex(mgr, cache.getLocation());
        if (idx == -1) {
            return false;
        }
        final ContributionRoot ciList = new ContributionRoot(this, restriction, mgr, cache);
        ISafeRunnable run = new ISafeRunnable(){

            public void handleException(Throwable exception) {
            }

            public void run() throws Exception {
                int insertionIndex = idx;
                cache.createContributionItems(serviceLocatorToUse, ciList);
                if (ciList.getItems().size() > 0) {
                    ManagerPopulationRecord mpr = (ManagerPopulationRecord)WorkbenchMenuService.this.populatedManagers.get(mgr);
                    ContributionRoot contributions = mpr.getContributions(cache);
                    if (contributions != null) {
                        Iterator i = contributions.getItems().iterator();
                        while (i.hasNext()) {
                            IContributionItem item = (IContributionItem)i.next();
                            if (!item.equals(mgr.find(item.getId()))) continue;
                            --insertionIndex;
                        }
                    }
                    mpr.addFactoryContribution(cache, ciList);
                    Iterator ciIter = ciList.getItems().iterator();
                    while (ciIter.hasNext()) {
                        IContributionItem ici = (IContributionItem)ciIter.next();
                        if ((ici instanceof ContributionManager || ici instanceof IToolBarContributionItem || ici instanceof AbstractGroupMarker) && ici.getId() != null && !"".equals(ici.getId())) {
                            IContributionItem foundIci = mgr.find(ici.getId());
                            if (foundIci instanceof ContributionManager) {
                                if (((ContributionManager)ici).getSize() <= 0) continue;
                                Status status = new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Menu contribution id collision: " + ici.getId());
                                StatusManager.getManager().handle((IStatus)status);
                                continue;
                            }
                            if (foundIci instanceof IToolBarContributionItem) {
                                IToolBarManager toolBarManager = ((IToolBarContributionItem)ici).getToolBarManager();
                                if (!(toolBarManager instanceof ContributionManager) || ((ContributionManager)toolBarManager).getSize() <= 0) continue;
                                Status status = new Status(2, WorkbenchPlugin.PI_WORKBENCH, "Toolbar contribution id collision: " + ici.getId());
                                StatusManager.getManager().handle((IStatus)status);
                                continue;
                            }
                            if (foundIci instanceof AbstractGroupMarker) continue;
                        }
                        int oldSize = mgr.getSize();
                        mgr.insert(insertionIndex, ici);
                        if (ici.getId() != null) {
                            itemsAdded.add(ici.getId());
                        }
                        if (mgr.getSize() <= oldSize) continue;
                        ++insertionIndex;
                    }
                }
            }
        };
        SafeRunner.run((ISafeRunnable)run);
        return true;
    }

    private boolean processFactory(ContributionManager mgr, AbstractContributionFactory factory) {
        MenuLocationURI uri = new MenuLocationURI(factory.getLocation());
        if ("popup:org.eclipse.ui.popup.any".equals(String.valueOf(uri.getScheme()) + ':' + uri.getPath()) && mgr.indexOf("additions") == -1 && factory instanceof MenuAdditionCacheEntry) {
            MenuAdditionCacheEntry menuEntry = (MenuAdditionCacheEntry)factory;
            return menuEntry.contributeToAllPopups();
        }
        return true;
    }

    protected void removeContributionsForFactory(IContributionManager manager, AbstractContributionFactory factory) {
        ManagerPopulationRecord mpr = (ManagerPopulationRecord)this.populatedManagers.get(manager);
        mpr.removeFactoryContribution(factory);
    }

    private void releaseCache(ContributionRoot items) {
        items.release();
    }

    public void populateContributionManager(ContributionManager mgr, String uri) {
        this.populateContributionManager(this.serviceLocator, null, mgr, uri, true);
    }

    public void populateContributionManager(IServiceLocator serviceLocatorToUse, Set restriction, ContributionManager mgr, String uri, boolean recurse) {
        ManagerPopulationRecord mpr = (ManagerPopulationRecord)this.populatedManagers.get(mgr);
        if (mpr == null) {
            mpr = new ManagerPopulationRecord(serviceLocatorToUse, restriction, uri, recurse);
            this.populatedManagers.put(mgr, mpr);
        }
        MenuLocationURI contributionLocation = new MenuLocationURI(uri);
        List factories = this.getAdditionsForURI(contributionLocation);
        this.addContributionsToManager(serviceLocatorToUse, restriction, mgr, uri, recurse, factories);
    }

    public void addContributionsToManager(IServiceLocator serviceLocatorToUse, Set restriction, ContributionManager mgr, String uri, boolean recurse, List factories) {
        MenuLocationURI contributionLocation = new MenuLocationURI(uri);
        ArrayList<AbstractContributionFactory> retryList = new ArrayList<AbstractContributionFactory>();
        HashSet itemsAdded = new HashSet();
        Iterator iterator = factories.iterator();
        while (iterator.hasNext()) {
            AbstractContributionFactory cache = (AbstractContributionFactory)iterator.next();
            if (this.processAdditions(serviceLocatorToUse, restriction, mgr, cache, itemsAdded)) continue;
            retryList.add(cache);
        }
        boolean done = retryList.size() == 0;
        while (!done) {
            ArrayList curRetry = new ArrayList(retryList);
            int retryCount = retryList.size();
            retryList.clear();
            Iterator iterator2 = curRetry.iterator();
            while (iterator2.hasNext()) {
                AbstractContributionFactory cache = (AbstractContributionFactory)iterator2.next();
                if (this.processAdditions(serviceLocatorToUse, restriction, mgr, cache, itemsAdded)) continue;
                retryList.add(cache);
            }
            boolean bl = done = retryList.size() == 0 || retryList.size() == retryCount;
        }
        IContributionItem[] curItems = mgr.getItems();
        int i = 0;
        while (i < curItems.length) {
            IToolBarContributionItem tbci;
            if (curItems[i] instanceof ContributionManager) {
                String id = curItems[i].getId();
                if (id != null && id.length() > 0 && (recurse || itemsAdded.contains(id))) {
                    this.populateContributionManager(serviceLocatorToUse, restriction, (ContributionManager)curItems[i], String.valueOf(contributionLocation.getScheme()) + ":" + id, true);
                }
            } else if (curItems[i] instanceof IToolBarContributionItem && (tbci = (IToolBarContributionItem)curItems[i]).getId() != null && tbci.getId().length() > 0 && (recurse || itemsAdded.contains(tbci.getId()))) {
                this.populateContributionManager(serviceLocatorToUse, restriction, (ContributionManager)tbci.getToolBarManager(), String.valueOf(contributionLocation.getScheme()) + ":" + tbci.getId(), true);
            }
            ++i;
        }
    }

    private int getInsertionIndex(ContributionManager mgr, String location) {
        MenuLocationURI uri = new MenuLocationURI(location);
        String query = uri.getQuery();
        int additionsIndex = -1;
        if (query.length() == 0 || query.equals(INDEX_AFTER_ADDITIONS)) {
            additionsIndex = mgr.indexOf("additions");
            additionsIndex = additionsIndex == -1 ? mgr.getItems().length : ++additionsIndex;
        } else {
            String[] queryParts = Util.split(query, '=');
            if (queryParts.length > 1 && queryParts[1].length() > 0) {
                String modifier = queryParts[0];
                String id = queryParts[1];
                additionsIndex = mgr.indexOf(id);
                if (additionsIndex != -1 && !"before".equals(modifier)) {
                    if ("after".equals(modifier)) {
                        ++additionsIndex;
                    } else if ("endof".equals(modifier)) {
                        IContributionItem[] items = mgr.getItems();
                        ++additionsIndex;
                        while (additionsIndex < items.length) {
                            if (items[additionsIndex].isGroupMarker()) break;
                            ++additionsIndex;
                        }
                    }
                }
            }
        }
        return additionsIndex;
    }

    public IEvaluationContext getCurrentState() {
        return this.evaluationService.getCurrentState();
    }

    public void registerVisibleWhen(IContributionItem item, Expression visibleWhen, Set restriction, String identifierID) {
        if (item == null) {
            throw new IllegalArgumentException("item cannot be null");
        }
        if (visibleWhen == null) {
            throw new IllegalArgumentException("visibleWhen expression cannot be null");
        }
        if (this.evaluationsByItem.get(item) != null) {
            String id = item.getId();
            WorkbenchPlugin.log("item is already registered: " + (id == null ? "no id" : id));
            return;
        }
        IIdentifier identifier = null;
        if (identifierID != null) {
            identifier = PlatformUI.getWorkbench().getActivitySupport().getActivityManager().getIdentifier(identifierID);
        }
        ContributionItemUpdater listener = new ContributionItemUpdater(item, identifier);
        if (visibleWhen != AlwaysEnabledExpression.INSTANCE) {
            IEvaluationReference ref = this.evaluationService.addEvaluationListener(visibleWhen, listener, PROP_VISIBLE);
            if (restriction != null) {
                restriction.add(ref);
            }
            this.evaluationsByItem.put(item, ref);
        }
        this.activityListenersByItem.put(item, listener);
    }

    public void unregisterVisibleWhen(IContributionItem item, Set restriction) {
        IEvaluationReference ref;
        ContributionItemUpdater identifierListener = (ContributionItemUpdater)this.activityListenersByItem.remove(item);
        if (identifierListener != null) {
            identifierListener.dispose();
        }
        if ((ref = (IEvaluationReference)this.evaluationsByItem.remove(item)) == null) {
            return;
        }
        this.evaluationService.removeEvaluationListener(ref);
        if (restriction != null) {
            restriction.remove(ref);
        }
    }

    protected void releaseContributions(ContributionRoot items) {
        ContributionManager mgr = items.getManager();
        Iterator j = items.getItems().iterator();
        while (j.hasNext()) {
            IContributionItem item = (IContributionItem)j.next();
            this.releaseItem(item, items.restriction);
            mgr.remove(item);
        }
        this.releaseCache(items);
    }

    public void releaseContributions(ContributionManager mgr) {
        if (mgr == null) {
            return;
        }
        IContributionItem[] items = mgr.getItems();
        int i = 0;
        while (i < items.length) {
            if (items[i] instanceof ContributionManager) {
                this.releaseContributions((ContributionManager)items[i]);
            } else if (items[i] instanceof IToolBarContributionItem) {
                IToolBarContributionItem tbci = (IToolBarContributionItem)items[i];
                this.releaseContributions((ContributionManager)tbci.getToolBarManager());
            }
            ++i;
        }
        ManagerPopulationRecord mpr = (ManagerPopulationRecord)this.populatedManagers.remove(mgr);
        if (mpr != null) {
            mpr.releaseContributions();
        }
        this.managersAwaitingUpdates.remove(mgr);
    }

    private void releaseItem(IContributionItem item, Set restriction) {
        this.unregisterVisibleWhen(item, restriction);
        if (item instanceof ContributionManager) {
            this.releaseContributions((ContributionManager)item);
        } else if (item instanceof IToolBarContributionItem) {
            IToolBarContributionItem tbci = (IToolBarContributionItem)item;
            this.releaseContributions((ContributionManager)tbci.getToolBarManager());
        }
    }

    public void handleDynamicAdditions(List menuAdditions) {
        Iterator additionsIter = menuAdditions.iterator();
        while (additionsIter.hasNext()) {
            AbstractMenuAdditionCacheEntry newFactory = null;
            IConfigurationElement menuAddition = (IConfigurationElement)additionsIter.next();
            newFactory = this.isProgramaticContribution(menuAddition) ? new ProxyMenuAdditionCacheEntry(menuAddition.getAttribute("locationURI"), menuAddition.getNamespaceIdentifier(), menuAddition) : new MenuAdditionCacheEntry(this, menuAddition, menuAddition.getAttribute("locationURI"), menuAddition.getNamespaceIdentifier());
            if (newFactory == null) continue;
            this.addContributionFactory(newFactory);
        }
    }

    private boolean isProgramaticContribution(IConfigurationElement menuAddition) {
        return menuAddition.getAttribute("class") != null;
    }

    public void handleDynamicRemovals(List menuRemovals) {
        Iterator additionsIter = menuRemovals.iterator();
        while (additionsIter.hasNext()) {
            IConfigurationElement ceToRemove = (IConfigurationElement)additionsIter.next();
            AbstractMenuAdditionCacheEntry factoryToRemove = this.findFactory(ceToRemove);
            this.removeContributionFactory(factoryToRemove);
        }
    }

    private AbstractMenuAdditionCacheEntry findFactory(IConfigurationElement ceToRemove) {
        String uriStr = ceToRemove.getAttribute("locationURI");
        MenuLocationURI uri = new MenuLocationURI(uriStr);
        List factories = this.getAdditionsForURI(uri);
        Iterator iterator = factories.iterator();
        while (iterator.hasNext()) {
            AbstractMenuAdditionCacheEntry mace;
            AbstractContributionFactory factory = (AbstractContributionFactory)iterator.next();
            if (!(factory instanceof AbstractMenuAdditionCacheEntry) || !(mace = (AbstractMenuAdditionCacheEntry)factory).getConfigElement().equals((Object)ceToRemove)) continue;
            return mace;
        }
        return null;
    }

    private void handleMenuChanges(IRegistryChangeEvent event) {
        IExtensionDelta[] menuDeltas = event.getExtensionDeltas("org.eclipse.ui", "menus");
        ArrayList<IConfigurationElement> menuAdditions = new ArrayList<IConfigurationElement>();
        ArrayList<IConfigurationElement> menuRemovals = new ArrayList<IConfigurationElement>();
        int i = 0;
        while (i < menuDeltas.length) {
            IConfigurationElement[] ices = menuDeltas[i].getExtension().getConfigurationElements();
            int j = 0;
            while (j < ices.length) {
                if ("menuContribution".equals(ices[j].getName())) {
                    if (menuDeltas[i].getKind() == 1) {
                        menuAdditions.add(ices[j]);
                    } else {
                        menuRemovals.add(ices[j]);
                    }
                }
                ++j;
            }
            ++i;
        }
        if (menuAdditions.size() > 0) {
            this.handleDynamicAdditions(menuAdditions);
        }
        if (menuRemovals.size() > 0) {
            this.handleDynamicRemovals(menuRemovals);
        }
    }

    public void handleRegistryChanges(IRegistryChangeEvent event) {
        int i;
        IExtensionDelta[] deltas = event.getExtensionDeltas();
        if (deltas.length == 0) {
            return;
        }
        boolean isAddition = deltas[0].getKind() == 1;
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HandlerService handlerSvc = (HandlerService)this.serviceLocator.getService(clazz);
        HandlerPersistence handlerPersistence = handlerSvc.getHandlerPersistence();
        Class<?> clazz2 = class$3;
        if (clazz2 == null) {
            try {
                clazz2 = class$3 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CommandService cmdSvc = (CommandService)this.serviceLocator.getService(clazz2);
        CommandPersistence cmdPersistence = cmdSvc.getCommandPersistence();
        Class<?> clazz3 = class$4;
        if (clazz3 == null) {
            try {
                clazz3 = class$4 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BindingService bindingSvc = (BindingService)this.serviceLocator.getService(clazz3);
        BindingPersistence bindingPersistence = bindingSvc.getBindingPersistence();
        boolean needsUpdate = false;
        if (isAddition) {
            if (cmdPersistence.commandsNeedUpdating(event)) {
                cmdPersistence.reRead();
                needsUpdate = true;
            }
            if (handlerPersistence.handlersNeedUpdating(event)) {
                handlerPersistence.reRead();
                needsUpdate = true;
            }
            if (bindingPersistence.bindingsNeedUpdating(event)) {
                bindingPersistence.reRead();
                needsUpdate = true;
            }
            if (this.menuPersistence.menusNeedUpdating(event)) {
                this.handleMenuChanges(event);
                needsUpdate = true;
            }
        } else {
            if (this.menuPersistence.menusNeedUpdating(event)) {
                this.handleMenuChanges(event);
                needsUpdate = true;
            }
            if (bindingPersistence.bindingsNeedUpdating(event)) {
                bindingPersistence.reRead();
                needsUpdate = true;
            }
            if (handlerPersistence.handlersNeedUpdating(event)) {
                IExtensionDelta[] handlerDeltas = event.getExtensionDeltas("org.eclipse.ui", "handlers");
                i = 0;
                while (i < handlerDeltas.length) {
                    IConfigurationElement[] ices = handlerDeltas[i].getExtension().getConfigurationElements();
                    HandlerProxy.updateStaleCEs(ices);
                    ++i;
                }
                handlerPersistence.reRead();
                needsUpdate = true;
            }
            if (cmdPersistence.commandsNeedUpdating(event)) {
                cmdPersistence.reRead();
                needsUpdate = true;
            }
        }
        if (needsUpdate) {
            ContributionManager[] managers = this.populatedManagers.keySet().toArray(new ContributionManager[this.populatedManagers.keySet().size()]);
            i = 0;
            while (i < managers.length) {
                ContributionManager mgr = managers[i];
                mgr.update(false);
                ++i;
            }
        }
    }

    public MenuPersistence getMenuPersistence() {
        return this.menuPersistence;
    }

    public void populateContributionManager(ContributionManager mgr, String uri, boolean recurse) {
        this.populateContributionManager(this.serviceLocator, null, mgr, uri, recurse);
    }

    private final class ContributionItemUpdater
    implements IPropertyChangeListener,
    IIdentifierListener {
        private final IContributionItem item;
        private IIdentifier identifier;
        private boolean lastExpressionResult = true;

        private ContributionItemUpdater(IContributionItem item, IIdentifier identifier) {
            this.item = item;
            if (identifier != null) {
                this.identifier = identifier;
                this.identifier.addIdentifierListener(this);
                this.updateVisibility();
            }
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (event.getProperty() == WorkbenchMenuService.PROP_VISIBLE) {
                this.lastExpressionResult = event.getNewValue() != null ? (Boolean)event.getNewValue() : false;
                this.updateVisibility();
            }
        }

        private void updateVisibility() {
            boolean visible = this.identifier != null ? this.identifier.isEnabled() && this.lastExpressionResult : this.lastExpressionResult;
            this.item.setVisible(visible);
            IContributionManager parent = null;
            if (this.item instanceof ContributionItem) {
                parent = ((ContributionItem)this.item).getParent();
            } else if (this.item instanceof MenuManager) {
                parent = ((MenuManager)this.item).getParent();
            }
            if (parent != null) {
                parent.markDirty();
                WorkbenchMenuService.this.managersAwaitingUpdates.add(parent);
            }
        }

        public void identifierChanged(IdentifierEvent identifierEvent) {
            this.updateVisibility();
        }

        public void dispose() {
            if (this.identifier != null) {
                this.identifier.removeIdentifierListener(this);
            }
        }
    }

    private final class ManagerPopulationRecord {
        public IServiceLocator serviceLocatorToUse;
        public Set restriction;
        public String uri;
        public boolean recurse;
        Map factoryToItems = new HashMap();

        public ManagerPopulationRecord(IServiceLocator serviceLocatorToUse, Set restriction, String uri, boolean recurse) {
            this.serviceLocatorToUse = serviceLocatorToUse;
            this.restriction = restriction;
            this.uri = uri;
            this.recurse = recurse;
        }

        public void addFactoryContribution(AbstractContributionFactory factory, ContributionRoot ciList) {
            this.removeFactoryContribution(factory);
            this.factoryToItems.put(factory, ciList);
        }

        public void removeFactoryContribution(AbstractContributionFactory factory) {
            ContributionRoot items = (ContributionRoot)this.factoryToItems.remove(factory);
            if (items != null) {
                WorkbenchMenuService.this.releaseContributions(items);
            }
        }

        public ContributionRoot getContributions(AbstractContributionFactory factory) {
            return (ContributionRoot)this.factoryToItems.get(factory);
        }

        public void releaseContributions() {
            Collection cRoots = this.factoryToItems.values();
            Iterator crItem = cRoots.iterator();
            while (crItem.hasNext()) {
                ContributionRoot items = (ContributionRoot)crItem.next();
                WorkbenchMenuService.this.releaseContributions(items);
            }
            this.factoryToItems.clear();
        }
    }
}

