/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.part;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.SubActionBars;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.PopupMenuExtender;
import org.eclipse.ui.internal.part.IPageSiteHolder;
import org.eclipse.ui.internal.services.INestable;
import org.eclipse.ui.internal.services.IServiceLocatorCreator;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.internal.services.WorkbenchLocationService;
import org.eclipse.ui.part.IPageSite;
import org.eclipse.ui.services.IDisposable;

public class PageSite
implements IPageSite,
INestable {
    private ArrayList menuExtenders;
    private IViewSite parentSite;
    private ISelectionProvider selectionProvider;
    private final ServiceLocator serviceLocator;
    private SubActionBars subActionBars;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public PageSite(final IViewSite parentViewSite) {
        Assert.isNotNull((Object)parentViewSite);
        this.parentSite = parentViewSite;
        this.subActionBars = new SubActionBars(parentViewSite.getActionBars(), this);
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IServiceLocatorCreator slc = (IServiceLocatorCreator)this.parentSite.getService(clazz);
        this.serviceLocator = (ServiceLocator)slc.createServiceLocator(parentViewSite, null, new IDisposable(){

            public void dispose() {
                Control control = ((PartSite)((Object)parentViewSite)).getPane().getControl();
                if (control != null && !control.isDisposed()) {
                    ((PartSite)((Object)parentViewSite)).getPane().doHide();
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
        this.serviceLocator.registerService(clazz, new WorkbenchLocationService("org.eclipse.ui.part.PageSite", this.getWorkbenchWindow().getWorkbench(), this.getWorkbenchWindow(), this.parentSite, null, this, 3));
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.ui.internal.part.IPageSiteHolder");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz2, new IPageSiteHolder(){

            public IPageSite getSite() {
                return PageSite.this;
            }
        });
    }

    protected void dispose() {
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
        this.subActionBars.dispose();
        this.serviceLocator.dispose();
    }

    public IActionBars getActionBars() {
        return this.subActionBars;
    }

    public Object getAdapter(Class adapter) {
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public IWorkbenchPage getPage() {
        return this.parentSite.getPage();
    }

    public ISelectionProvider getSelectionProvider() {
        return this.selectionProvider;
    }

    public final Object getService(Class key) {
        return this.serviceLocator.getService(key);
    }

    public Shell getShell() {
        return this.parentSite.getShell();
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.parentSite.getWorkbenchWindow();
    }

    public final boolean hasService(Class key) {
        return this.serviceLocator.hasService(key);
    }

    public void registerContextMenu(String menuID, MenuManager menuMgr, ISelectionProvider selProvider) {
        if (this.menuExtenders == null) {
            this.menuExtenders = new ArrayList(1);
        }
        PartSite.registerContextMenu(menuID, menuMgr, selProvider, false, this.parentSite.getPart(), this.menuExtenders);
    }

    public void setSelectionProvider(ISelectionProvider provider) {
        this.selectionProvider = provider;
    }

    public void activate() {
        this.serviceLocator.activate();
    }

    public void deactivate() {
        this.serviceLocator.deactivate();
    }
}

