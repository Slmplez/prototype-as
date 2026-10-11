/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.part;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.INestableKeyBindingService;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.KeyBindingService;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.PopupMenuExtender;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.part.IMultiPageEditorSiteHolder;
import org.eclipse.ui.internal.services.INestable;
import org.eclipse.ui.internal.services.IServiceLocatorCreator;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.internal.services.WorkbenchLocationService;
import org.eclipse.ui.part.MultiPageEditorPart;
import org.eclipse.ui.part.MultiPageSelectionProvider;
import org.eclipse.ui.services.IDisposable;

public class MultiPageEditorSite
implements IEditorSite,
INestable {
    private IEditorPart editor;
    private ArrayList menuExtenders;
    private MultiPageEditorPart multiPageEditor;
    private ISelectionChangedListener postSelectionChangedListener = null;
    private ISelectionChangedListener selectionChangedListener = null;
    private ISelectionProvider selectionProvider = null;
    private IKeyBindingService service = null;
    private final ServiceLocator serviceLocator;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public MultiPageEditorSite(MultiPageEditorPart multiPageEditor, IEditorPart editor) {
        Assert.isNotNull((Object)multiPageEditor);
        Assert.isNotNull((Object)editor);
        this.multiPageEditor = multiPageEditor;
        this.editor = editor;
        IWorkbenchPartSite parentServiceLocator = multiPageEditor.getSite();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IServiceLocatorCreator slc = (IServiceLocatorCreator)parentServiceLocator.getService(clazz);
        this.serviceLocator = (ServiceLocator)slc.createServiceLocator(multiPageEditor.getSite(), null, new IDisposable(){

            public void dispose() {
                Control control = ((PartSite)MultiPageEditorSite.this.getMultiPageEditor().getSite()).getPane().getControl();
                if (control != null && !control.isDisposed()) {
                    ((PartSite)MultiPageEditorSite.this.getMultiPageEditor().getSite()).getPane().doHide();
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
        this.serviceLocator.registerService(clazz, new WorkbenchLocationService("org.eclipse.ui.part.MultiPageEditorSite", this.getWorkbenchWindow().getWorkbench(), this.getWorkbenchWindow(), this.getMultiPageEditor().getSite(), this, null, 3));
        Class<?> clazz2 = class$2;
        if (clazz2 == null) {
            try {
                clazz2 = class$2 = Class.forName("org.eclipse.ui.internal.part.IMultiPageEditorSiteHolder");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz2, new IMultiPageEditorSiteHolder(){

            public MultiPageEditorSite getSite() {
                return MultiPageEditorSite.this;
            }
        });
    }

    public final void activate() {
        this.serviceLocator.activate();
    }

    public final void deactivate() {
        this.serviceLocator.deactivate();
    }

    public void dispose() {
        if (this.menuExtenders != null) {
            int i = 0;
            while (i < this.menuExtenders.size()) {
                ((PopupMenuExtender)this.menuExtenders.get(i)).dispose();
                ++i;
            }
            this.menuExtenders = null;
        }
        if (this.service != null) {
            IKeyBindingService parentService = this.getMultiPageEditor().getEditorSite().getKeyBindingService();
            if (parentService instanceof INestableKeyBindingService) {
                INestableKeyBindingService nestableParent = (INestableKeyBindingService)parentService;
                nestableParent.removeKeyBindingService(this);
            }
            if (this.service instanceof KeyBindingService) {
                ((KeyBindingService)this.service).dispose();
            }
            this.service = null;
        }
        if (this.serviceLocator != null) {
            this.serviceLocator.dispose();
        }
    }

    public IEditorActionBarContributor getActionBarContributor() {
        return null;
    }

    public IActionBars getActionBars() {
        return this.multiPageEditor.getEditorSite().getActionBars();
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    public ILabelDecorator getDecoratorManager() {
        return this.getWorkbenchWindow().getWorkbench().getDecoratorManager().getLabelDecorator();
    }

    public IEditorPart getEditor() {
        return this.editor;
    }

    public String getId() {
        return "";
    }

    public IKeyBindingService getKeyBindingService() {
        if (this.service == null) {
            this.service = this.getMultiPageEditor().getEditorSite().getKeyBindingService();
            if (this.service instanceof INestableKeyBindingService) {
                INestableKeyBindingService nestableService = (INestableKeyBindingService)this.service;
                this.service = nestableService.getKeyBindingService(this);
            } else {
                WorkbenchPlugin.log("MultiPageEditorSite.getKeyBindingService()   Parent key binding service was not an instance of INestableKeyBindingService.  It was an instance of " + this.service.getClass().getName() + " instead.");
            }
        }
        return this.service;
    }

    public MultiPageEditorPart getMultiPageEditor() {
        return this.multiPageEditor;
    }

    public IWorkbenchPage getPage() {
        return this.getMultiPageEditor().getSite().getPage();
    }

    public IWorkbenchPart getPart() {
        return this.editor;
    }

    public String getPluginId() {
        return "";
    }

    private ISelectionChangedListener getPostSelectionChangedListener() {
        if (this.postSelectionChangedListener == null) {
            this.postSelectionChangedListener = new ISelectionChangedListener(){

                public void selectionChanged(SelectionChangedEvent event) {
                    MultiPageEditorSite.this.handlePostSelectionChanged(event);
                }
            };
        }
        return this.postSelectionChangedListener;
    }

    public String getRegisteredName() {
        return "";
    }

    private ISelectionChangedListener getSelectionChangedListener() {
        if (this.selectionChangedListener == null) {
            this.selectionChangedListener = new ISelectionChangedListener(){

                public void selectionChanged(SelectionChangedEvent event) {
                    MultiPageEditorSite.this.handleSelectionChanged(event);
                }
            };
        }
        return this.selectionChangedListener;
    }

    public ISelectionProvider getSelectionProvider() {
        return this.selectionProvider;
    }

    public final Object getService(Class key) {
        return this.serviceLocator.getService(key);
    }

    public Shell getShell() {
        return this.getMultiPageEditor().getSite().getShell();
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.getMultiPageEditor().getSite().getWorkbenchWindow();
    }

    protected void handlePostSelectionChanged(SelectionChangedEvent event) {
        ISelectionProvider parentProvider = this.getMultiPageEditor().getSite().getSelectionProvider();
        if (parentProvider instanceof MultiPageSelectionProvider) {
            SelectionChangedEvent newEvent = new SelectionChangedEvent(parentProvider, event.getSelection());
            MultiPageSelectionProvider prov = (MultiPageSelectionProvider)parentProvider;
            prov.firePostSelectionChanged(newEvent);
        }
    }

    protected void handleSelectionChanged(SelectionChangedEvent event) {
        ISelectionProvider parentProvider = this.getMultiPageEditor().getSite().getSelectionProvider();
        if (parentProvider instanceof MultiPageSelectionProvider) {
            SelectionChangedEvent newEvent = new SelectionChangedEvent(parentProvider, event.getSelection());
            MultiPageSelectionProvider prov = (MultiPageSelectionProvider)parentProvider;
            prov.fireSelectionChanged(newEvent);
        }
    }

    public final boolean hasService(Class key) {
        return this.serviceLocator.hasService(key);
    }

    public void registerContextMenu(MenuManager menuManager, ISelectionProvider selProvider) {
        this.getMultiPageEditor().getSite().registerContextMenu(menuManager, selProvider);
    }

    public final void registerContextMenu(MenuManager menuManager, ISelectionProvider selectionProvider, boolean includeEditorInput) {
        this.registerContextMenu(this.getId(), menuManager, selectionProvider, includeEditorInput);
    }

    public void registerContextMenu(String menuID, MenuManager menuMgr, ISelectionProvider selProvider) {
        if (this.menuExtenders == null) {
            this.menuExtenders = new ArrayList(1);
        }
        PartSite.registerContextMenu(menuID, menuMgr, selProvider, true, this.editor, this.menuExtenders);
    }

    public final void registerContextMenu(String menuId, MenuManager menuManager, ISelectionProvider selectionProvider, boolean includeEditorInput) {
        if (this.menuExtenders == null) {
            this.menuExtenders = new ArrayList(1);
        }
        PartSite.registerContextMenu(menuId, menuManager, selectionProvider, includeEditorInput, this.editor, this.menuExtenders);
    }

    public void setSelectionProvider(ISelectionProvider provider) {
        ISelectionProvider oldSelectionProvider = this.selectionProvider;
        this.selectionProvider = provider;
        if (oldSelectionProvider != null) {
            oldSelectionProvider.removeSelectionChangedListener(this.getSelectionChangedListener());
            if (oldSelectionProvider instanceof IPostSelectionProvider) {
                ((IPostSelectionProvider)oldSelectionProvider).removePostSelectionChangedListener(this.getPostSelectionChangedListener());
            } else {
                oldSelectionProvider.removeSelectionChangedListener(this.getPostSelectionChangedListener());
            }
        }
        if (this.selectionProvider != null) {
            this.selectionProvider.addSelectionChangedListener(this.getSelectionChangedListener());
            if (this.selectionProvider instanceof IPostSelectionProvider) {
                ((IPostSelectionProvider)this.selectionProvider).addPostSelectionChangedListener(this.getPostSelectionChangedListener());
            } else {
                this.selectionProvider.addSelectionChangedListener(this.getPostSelectionChangedListener());
            }
        }
    }
}

