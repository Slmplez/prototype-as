/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuListener2
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.action.SubMenuManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuListener2;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.SubMenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.internal.ObjectActionContributorManager;
import org.eclipse.ui.internal.PluginActionContributionItem;
import org.eclipse.ui.internal.ViewerActionBuilder;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.menus.InternalMenuService;
import org.eclipse.ui.menus.IMenuService;

public class PopupMenuExtender
implements IMenuListener2,
IRegistryChangeListener {
    private static final int STATIC_ACTION_READ = 1;
    private static final int INCLUDE_EDITOR_INPUT = 2;
    private final MenuManager menu;
    private SubMenuManager menuWrapper;
    private final ISelectionProvider selProvider;
    private final IWorkbenchPart part;
    private Map staticActionBuilders = null;
    private int bitSet = 0;
    private ArrayList actionContributionCache = new ArrayList();
    private ArrayList managerContributionCache = new ArrayList();
    private boolean cleanupNeeded = false;
    private boolean contributionsPopulated = false;
    static /* synthetic */ Class class$0;

    public PopupMenuExtender(String id, MenuManager menu, ISelectionProvider prov, IWorkbenchPart part) {
        this(id, menu, prov, part, true);
    }

    public PopupMenuExtender(String id, MenuManager menu, ISelectionProvider prov, IWorkbenchPart part, boolean includeEditorInput) {
        this.menu = menu;
        this.selProvider = prov;
        this.part = part;
        if (includeEditorInput) {
            this.bitSet |= 2;
        }
        menu.addMenuListener((IMenuListener)this);
        if (!menu.getRemoveAllWhenShown()) {
            this.menuWrapper = new SubMenuManager((IMenuManager)menu);
            this.menuWrapper.setVisible(true);
        }
        this.readStaticActionsFor(id);
        Platform.getExtensionRegistry().addRegistryChangeListener((IRegistryChangeListener)this);
    }

    public Set getMenuIds() {
        if (this.staticActionBuilders == null) {
            return Collections.EMPTY_SET;
        }
        return this.staticActionBuilders.keySet();
    }

    public final void addMenuId(String menuId) {
        this.bitSet &= 0xFFFFFFFE;
        this.readStaticActionsFor(menuId);
    }

    public final boolean matches(MenuManager menuManager, ISelectionProvider selectionProvider, IWorkbenchPart part) {
        return this.menu == menuManager && this.selProvider == selectionProvider && this.part == part;
    }

    private void addEditorActions(IMenuManager mgr) {
        ISelectionProvider activeEditor = new ISelectionProvider(){

            public void addSelectionChangedListener(ISelectionChangedListener listener) {
                throw new UnsupportedOperationException("This ISelectionProvider is static, and cannot be modified.");
            }

            public ISelection getSelection() {
                if (PopupMenuExtender.this.part instanceof IEditorPart) {
                    IEditorPart editorPart = (IEditorPart)PopupMenuExtender.this.part;
                    return new StructuredSelection(new Object[]{editorPart.getEditorInput()});
                }
                return new StructuredSelection(new Object[0]);
            }

            public void removeSelectionChangedListener(ISelectionChangedListener listener) {
                throw new UnsupportedOperationException("This ISelectionProvider is static, and cannot be modified.");
            }

            public void setSelection(ISelection selection) {
                throw new UnsupportedOperationException("This ISelectionProvider is static, and cannot be modified.");
            }
        };
        if (ObjectActionContributorManager.getManager().contributeObjectActions(this.part, mgr, activeEditor)) {
            mgr.add((IContributionItem)new Separator());
        }
    }

    private void addObjectActions(IMenuManager mgr) {
        if (this.selProvider != null && ObjectActionContributorManager.getManager().contributeObjectActions(this.part, mgr, this.selProvider)) {
            mgr.add((IContributionItem)new Separator());
        }
    }

    private final void clearStaticActions() {
        this.bitSet &= 0xFFFFFFFE;
        if (this.staticActionBuilders != null) {
            Iterator staticActionBuilderItr = this.staticActionBuilders.values().iterator();
            while (staticActionBuilderItr.hasNext()) {
                Object staticActionBuilder = staticActionBuilderItr.next();
                if (!(staticActionBuilder instanceof ViewerActionBuilder)) continue;
                ((ViewerActionBuilder)staticActionBuilder).dispose();
            }
        }
    }

    private void addStaticActions(IMenuManager mgr) {
        if (this.staticActionBuilders != null) {
            Iterator staticActionBuilderItr = this.staticActionBuilders.values().iterator();
            while (staticActionBuilderItr.hasNext()) {
                ViewerActionBuilder staticActionBuilder = (ViewerActionBuilder)staticActionBuilderItr.next();
                staticActionBuilder.contribute(mgr, null, true);
            }
        }
    }

    public void menuAboutToShow(IMenuManager mgr) {
        IWorkbench workbench;
        IMenuManager originalManager = mgr;
        IWorkbenchPartSite site = this.part.getSite();
        if (site != null && (workbench = site.getWorkbenchWindow().getWorkbench()) instanceof Workbench) {
            Workbench realWorkbench = (Workbench)workbench;
            this.runCleanUp(realWorkbench);
            StructuredSelection input = null;
            if ((this.bitSet & 2) != 0 && this.part instanceof IEditorPart) {
                IEditorPart editorPart = (IEditorPart)this.part;
                input = new StructuredSelection(new Object[]{editorPart.getEditorInput()});
            }
            ISelection s = this.selProvider == null ? null : this.selProvider.getSelection();
            realWorkbench.addShowingMenus(this.getMenuIds(), s, (ISelection)input);
        }
        this.readStaticActions();
        if (this.menuWrapper != null) {
            mgr = this.menuWrapper;
            this.menuWrapper.removeAll();
        }
        this.addMenuContributions(originalManager);
        if ((this.bitSet & 2) != 0) {
            this.addEditorActions(mgr);
        }
        this.addObjectActions(mgr);
        this.addStaticActions(mgr);
        this.cleanUpContributionCache();
    }

    private void addMenuContributions(IMenuManager mgr) {
        IMenuService menuService;
        IWorkbenchPartSite iWorkbenchPartSite = this.part.getSite();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((menuService = (IMenuService)iWorkbenchPartSite.getService(clazz)) == null) {
            return;
        }
        if ((mgr.getRemoveAllWhenShown() || !this.contributionsPopulated) && mgr instanceof ContributionManager) {
            ContributionManager manager = (ContributionManager)mgr;
            this.contributionsPopulated = true;
            menuService.populateContributionManager(manager, "popup:org.eclipse.ui.popup.any");
            Iterator i = this.getMenuIds().iterator();
            while (i.hasNext()) {
                String id = "popup:" + i.next();
                if (menuService instanceof InternalMenuService) {
                    ((InternalMenuService)menuService).populateContributionManager(manager, id, false);
                    continue;
                }
                menuService.populateContributionManager(manager, id);
            }
        }
    }

    public final void menuAboutToHide(IMenuManager mgr) {
        IWorkbench workbench;
        this.gatherContributions(mgr);
        this.cleanupNeeded = true;
        IWorkbenchPartSite site = this.part.getSite();
        if (site != null && (workbench = site.getWorkbenchWindow().getWorkbench()) instanceof Workbench) {
            workbench.getDisplay().asyncExec(new Runnable(){

                public void run() {
                    Workbench realWorkbench = (Workbench)workbench;
                    PopupMenuExtender.this.runCleanUp(realWorkbench);
                }
            });
        }
    }

    private void runCleanUp(Workbench realWorkbench) {
        if (!this.cleanupNeeded) {
            return;
        }
        this.cleanupNeeded = false;
        realWorkbench.removeShowingMenus(this.getMenuIds(), null, null);
        this.cleanUpContributionCache();
    }

    private void gatherContributions(IMenuManager mgr) {
        IContributionItem[] items = mgr.getItems();
        int i = 0;
        while (i < items.length) {
            if (items[i] instanceof PluginActionContributionItem) {
                this.actionContributionCache.add(items[i]);
            } else if (items[i] instanceof IMenuManager) {
                if (items[i] instanceof ContributionManager) {
                    this.managerContributionCache.add(items[i]);
                }
                this.gatherContributions((IMenuManager)items[i]);
            }
            ++i;
        }
    }

    private void cleanUpContributionCache() {
        PluginActionContributionItem[] items;
        if (!this.actionContributionCache.isEmpty()) {
            items = this.actionContributionCache.toArray(new PluginActionContributionItem[this.actionContributionCache.size()]);
            this.actionContributionCache.clear();
            int i = 0;
            while (i < items.length) {
                items[i].dispose();
                ++i;
            }
        }
        if (!this.managerContributionCache.isEmpty() && this.menu.getRemoveAllWhenShown()) {
            IMenuService menuService;
            items = this.managerContributionCache.toArray(new ContributionManager[this.managerContributionCache.size()]);
            this.managerContributionCache.clear();
            IWorkbenchPartSite iWorkbenchPartSite = this.part.getSite();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((menuService = (IMenuService)iWorkbenchPartSite.getService(clazz)) instanceof InternalMenuService) {
                InternalMenuService realService = (InternalMenuService)menuService;
                int i = 0;
                while (i < items.length) {
                    realService.releaseContributions((ContributionManager)items[i]);
                    items[i].removeAll();
                    ++i;
                }
            }
        } else {
            this.managerContributionCache.clear();
        }
    }

    private final void readStaticActions() {
        if (this.staticActionBuilders != null) {
            Iterator menuIdItr = this.staticActionBuilders.keySet().iterator();
            while (menuIdItr.hasNext()) {
                String menuId = (String)menuIdItr.next();
                this.readStaticActionsFor(menuId);
            }
        }
    }

    private void readStaticActionsFor(String menuId) {
        Object object;
        if ((this.bitSet & 1) != 0) {
            return;
        }
        this.bitSet |= 1;
        if (menuId == null || menuId.length() < 1) {
            return;
        }
        if (this.staticActionBuilders == null) {
            this.staticActionBuilders = new HashMap();
        }
        if (!((object = this.staticActionBuilders.get(menuId)) instanceof ViewerActionBuilder)) {
            object = new ViewerActionBuilder();
            this.staticActionBuilders.put(menuId, object);
        }
        ViewerActionBuilder staticActionBuilder = (ViewerActionBuilder)object;
        staticActionBuilder.readViewerContributions(menuId, this.selProvider, this.part);
    }

    public void dispose() {
        IMenuService menuService;
        this.clearStaticActions();
        IWorkbenchPartSite iWorkbenchPartSite = this.part.getSite();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((menuService = (IMenuService)iWorkbenchPartSite.getService(clazz)) != null) {
            menuService.releaseContributions((ContributionManager)this.menu);
        }
        Platform.getExtensionRegistry().removeRegistryChangeListener((IRegistryChangeListener)this);
        this.menu.removeMenuListener((IMenuListener)this);
    }

    public void registryChanged(IRegistryChangeEvent event) {
        Display display = Display.getDefault();
        if (this.part != null) {
            display = this.part.getSite().getPage().getWorkbenchWindow().getWorkbench().getDisplay();
        }
        IExtensionDelta[] deltas = event.getExtensionDeltas();
        int i = 0;
        while (i < deltas.length) {
            IExtensionDelta delta = deltas[i];
            IExtensionPoint extensionPoint = delta.getExtensionPoint();
            if (extensionPoint.getNamespace().equals(WorkbenchPlugin.PI_WORKBENCH) && extensionPoint.getSimpleIdentifier().equals("popupMenus")) {
                boolean clearPopups = false;
                IConfigurationElement[] elements = delta.getExtension().getConfigurationElements();
                int j = 0;
                while (j < elements.length) {
                    IConfigurationElement element = elements[j];
                    if (element.getName().equals("viewerContribution")) {
                        clearPopups = true;
                        break;
                    }
                    ++j;
                }
                if (clearPopups) {
                    display.syncExec(new Runnable(){

                        public void run() {
                            PopupMenuExtender.this.clearStaticActions();
                        }
                    });
                }
            }
            ++i;
        }
    }

    public MenuManager getManager() {
        return this.menu;
    }
}

