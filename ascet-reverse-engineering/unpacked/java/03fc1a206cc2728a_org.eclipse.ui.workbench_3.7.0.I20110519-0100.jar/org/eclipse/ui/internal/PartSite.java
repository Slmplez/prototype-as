/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.internal.KeyBindingService;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PopupMenuExtender;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.progress.WorkbenchSiteProgressService;
import org.eclipse.ui.internal.services.IServiceLocatorCreator;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.internal.services.WorkbenchLocationService;
import org.eclipse.ui.internal.testing.WorkbenchPartTestable;
import org.eclipse.ui.services.IDisposable;

public abstract class PartSite
implements IWorkbenchPartSite {
    private IWorkbenchPartReference partReference;
    private IWorkbenchPart part;
    private IWorkbenchPage page;
    private String extensionID;
    private String pluginID;
    private String extensionName;
    private ISelectionProvider selectionProvider;
    private SubActionBars actionBars;
    private KeyBindingService keyBindingService;
    protected ArrayList menuExtenders;
    private WorkbenchSiteProgressService progressService;
    protected final ServiceLocator serviceLocator;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;

    public static final void registerContextMenu(String menuId, MenuManager menuManager, ISelectionProvider selectionProvider, boolean includeEditorInput, IWorkbenchPart part, Collection menuExtenders) {
        Iterator extenderItr = menuExtenders.iterator();
        boolean foundMatch = false;
        while (extenderItr.hasNext()) {
            PopupMenuExtender existingExtender = (PopupMenuExtender)extenderItr.next();
            if (!existingExtender.matches(menuManager, selectionProvider, part)) continue;
            existingExtender.addMenuId(menuId);
            foundMatch = true;
            break;
        }
        if (!foundMatch) {
            menuExtenders.add(new PopupMenuExtender(menuId, menuManager, selectionProvider, part, includeEditorInput));
        }
    }

    public PartSite(IWorkbenchPartReference ref, IWorkbenchPart part, IWorkbenchPage page) {
        this.partReference = ref;
        this.part = part;
        this.page = page;
        this.extensionID = "org.eclipse.ui.UnknownID";
        this.extensionName = "Unknown Name";
        WorkbenchWindow workbenchWindow = (WorkbenchWindow)page.getWorkbenchWindow();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IServiceLocatorCreator slc = (IServiceLocatorCreator)workbenchWindow.getService(clazz);
        this.serviceLocator = (ServiceLocator)slc.createServiceLocator(workbenchWindow, null, new IDisposable(){

            public void dispose() {
                Control control = PartSite.this.getPane().getControl();
                if (control != null && !control.isDisposed()) {
                    PartSite.this.getPane().doHide();
                }
            }
        });
        this.initializeDefaultServices();
    }

    private void initializeDefaultServices() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz, new WorkbenchLocationService("org.eclipse.ui.part.IWorkbenchPartSite", this.getWorkbenchWindow().getWorkbench(), this.getWorkbenchWindow(), this, null, null, 2));
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.ui.IWorkbenchPartSite");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz2, this);
    }

    public void dispose() {
        if (this.menuExtenders != null) {
            HashSet<MenuManager> managers = new HashSet<MenuManager>(this.menuExtenders.size());
            int i = 0;
            while (i < this.menuExtenders.size()) {
                PopupMenuExtender ext = (PopupMenuExtender)this.menuExtenders.get(i);
                managers.add(ext.getManager());
                ext.dispose();
                ++i;
            }
            if (managers.size() > 0) {
                Iterator iterator = managers.iterator();
                while (iterator.hasNext()) {
                    MenuManager mgr = (MenuManager)iterator.next();
                    mgr.dispose();
                }
            }
            this.menuExtenders = null;
        }
        if (this.keyBindingService != null) {
            this.keyBindingService.dispose();
            this.keyBindingService = null;
        }
        if (this.progressService != null) {
            this.progressService.dispose();
            this.progressService = null;
        }
        if (this.serviceLocator != null) {
            this.serviceLocator.dispose();
        }
        this.part = null;
    }

    public IActionBars getActionBars() {
        return this.actionBars;
    }

    public String getId() {
        return this.extensionID;
    }

    public IWorkbenchPage getPage() {
        return this.page;
    }

    public PartPane getPane() {
        return ((WorkbenchPartReference)this.partReference).getPane();
    }

    public IWorkbenchPart getPart() {
        return this.part;
    }

    public IWorkbenchPartReference getPartReference() {
        return this.partReference;
    }

    public String getPluginId() {
        return this.pluginID;
    }

    public String getRegisteredName() {
        return this.extensionName;
    }

    public ISelectionProvider getSelectionProvider() {
        return this.selectionProvider;
    }

    public Shell getShell() {
        PartPane pane = this.getPane();
        Display currentDisplay = Display.getCurrent();
        if (currentDisplay == null || currentDisplay != this.getWorkbenchWindow().getWorkbench().getDisplay()) {
            return this.getWorkbenchWindow().getShell();
        }
        if (pane == null) {
            return this.getWorkbenchWindow().getShell();
        }
        Shell s = pane.getShell();
        if (s == null) {
            return this.getWorkbenchWindow().getShell();
        }
        return s;
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.page.getWorkbenchWindow();
    }

    public void registerContextMenu(String menuID, MenuManager menuMgr, ISelectionProvider selProvider) {
        if (this.menuExtenders == null) {
            this.menuExtenders = new ArrayList(1);
        }
        PartSite.registerContextMenu(menuID, menuMgr, selProvider, true, this.getPart(), this.menuExtenders);
    }

    public void registerContextMenu(MenuManager menuMgr, ISelectionProvider selProvider) {
        this.registerContextMenu(this.getId(), menuMgr, selProvider);
    }

    public String[] getContextMenuIds() {
        if (this.menuExtenders == null) {
            return new String[0];
        }
        ArrayList menuIds = new ArrayList(this.menuExtenders.size());
        Iterator iter = this.menuExtenders.iterator();
        while (iter.hasNext()) {
            PopupMenuExtender extender = (PopupMenuExtender)iter.next();
            menuIds.addAll(extender.getMenuIds());
        }
        return menuIds.toArray(new String[menuIds.size()]);
    }

    public void setActionBars(SubActionBars bars) {
        this.actionBars = bars;
    }

    public void setConfigurationElement(IConfigurationElement configElement) {
        this.extensionID = configElement.getAttribute("id");
        this.pluginID = configElement.getNamespace();
        String name = configElement.getAttribute("name");
        if (name != null) {
            this.extensionName = name;
        }
    }

    protected void setPluginId(String pluginId) {
        this.pluginID = pluginId;
    }

    protected void setId(String id) {
        this.extensionID = id;
    }

    public void setPart(IWorkbenchPart newPart) {
        this.part = newPart;
    }

    protected void setRegisteredName(String name) {
        this.extensionName = name;
    }

    public void setSelectionProvider(ISelectionProvider provider) {
        this.selectionProvider = provider;
    }

    public IKeyBindingService getKeyBindingService() {
        if (this.keyBindingService == null) {
            this.keyBindingService = new KeyBindingService(this);
        }
        return this.keyBindingService;
    }

    protected String getInitialScopeId() {
        return null;
    }

    public final Object getAdapter(Class adapter) {
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.progress.IWorkbenchSiteProgressService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz == adapter) {
            return this.getSiteProgressService();
        }
        Class<?> clazz2 = class$4;
        if (clazz2 == null) {
            try {
                clazz2 = class$4 = Class.forName("org.eclipse.ui.testing.IWorkbenchPartTestable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2 == adapter) {
            return new WorkbenchPartTestable(this);
        }
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public void activateActionBars(boolean forceVisibility) {
        if (this.serviceLocator != null) {
            this.serviceLocator.activate();
        }
        if (this.actionBars != null) {
            this.actionBars.activate(forceVisibility);
        }
    }

    public void deactivateActionBars(boolean forceHide) {
        if (this.actionBars != null) {
            this.actionBars.deactivate(forceHide);
        }
        if (this.serviceLocator != null) {
            this.serviceLocator.deactivate();
        }
    }

    WorkbenchSiteProgressService getSiteProgressService() {
        if (this.progressService == null) {
            this.progressService = new WorkbenchSiteProgressService(this);
        }
        return this.progressService;
    }

    public final Object getService(Class key) {
        return this.serviceLocator.getService(key);
    }

    public final boolean hasService(Class key) {
        return this.serviceLocator.hasService(key);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("PartSite(id=");
        buffer.append(this.getId());
        buffer.append(",pluginId=");
        buffer.append(this.getPluginId());
        buffer.append(",registeredName=");
        buffer.append(this.getRegisteredName());
        buffer.append(",hashCode=");
        buffer.append(this.hashCode());
        buffer.append(')');
        return buffer.toString();
    }
}

