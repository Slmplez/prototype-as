/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryEventListener
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.ISaveablePart
 *  org.eclipse.ui.ISelectionListener
 *  org.eclipse.ui.IViewPart
 *  org.eclipse.ui.IViewSite
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.part.IContributedContentsView
 *  org.eclipse.ui.part.IPage
 *  org.eclipse.ui.part.IPageBookViewPage
 *  org.eclipse.ui.part.IShowInSource
 *  org.eclipse.ui.part.IShowInTarget
 *  org.eclipse.ui.part.PageBook
 *  org.eclipse.ui.part.PageBookView
 *  org.eclipse.ui.part.PageBookView$PageRec
 *  org.eclipse.ui.part.ShowInContext
 */
package org.eclipse.ui.views.properties;

import java.util.HashSet;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.internal.views.ViewsPlugin;
import org.eclipse.ui.internal.views.properties.PropertiesMessages;
import org.eclipse.ui.part.IContributedContentsView;
import org.eclipse.ui.part.IPage;
import org.eclipse.ui.part.IPageBookViewPage;
import org.eclipse.ui.part.IShowInSource;
import org.eclipse.ui.part.IShowInTarget;
import org.eclipse.ui.part.PageBook;
import org.eclipse.ui.part.PageBookView;
import org.eclipse.ui.part.ShowInContext;
import org.eclipse.ui.views.properties.IPropertySheetPage;
import org.eclipse.ui.views.properties.PinPropertySheetAction;
import org.eclipse.ui.views.properties.PropertySheetPage;
import org.eclipse.ui.views.properties.PropertyShowInContext;

public class PropertySheet
extends PageBookView
implements ISelectionListener,
IShowInTarget,
IShowInSource,
IRegistryEventListener {
    public static final String HELP_CONTEXT_PROPERTY_SHEET_VIEW = "org.eclipse.ui.property_sheet_view_context";
    private static final String EXT_POINT = "org.eclipse.ui.propertiesView";
    private ISelection bootstrapSelection;
    private ISelection currentSelection;
    private IWorkbenchPart currentPart;
    private IAction pinPropertySheetAction = new PinPropertySheetAction();
    private HashSet ignoredViews;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public PropertySheet() {
        RegistryFactory.getRegistry().addListener((IRegistryEventListener)this, EXT_POINT);
    }

    protected IPage createDefaultPage(PageBook book) {
        Object page;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.views.properties.IPropertySheetPage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((page = (IPageBookViewPage)ViewsPlugin.getAdapter((Object)this, clazz, false)) == null) {
            page = new PropertySheetPage();
        }
        this.initPage((IPageBookViewPage)page);
        page.createControl((Composite)book);
        return page;
    }

    public void createPartControl(Composite parent) {
        super.createPartControl(parent);
        this.pinPropertySheetAction.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if ("checked".equals(event.getProperty())) {
                    PropertySheet.this.updateContentDescription();
                }
            }
        });
        IMenuManager menuManager = this.getViewSite().getActionBars().getMenuManager();
        menuManager.add((IContributionItem)new Separator("additions"));
        menuManager.add(this.pinPropertySheetAction);
        IToolBarManager toolBarManager = this.getViewSite().getActionBars().getToolBarManager();
        menuManager.add((IContributionItem)new Separator("additions"));
        toolBarManager.add(this.pinPropertySheetAction);
        this.getSite().getPage().getWorkbenchWindow().getWorkbench().getHelpSystem().setHelp((Control)this.getPageBook(), HELP_CONTEXT_PROPERTY_SHEET_VIEW);
    }

    public void dispose() {
        super.dispose();
        this.getSite().getPage().removePostSelectionListener((ISelectionListener)this);
        RegistryFactory.getRegistry().removeListener((IRegistryEventListener)this);
        this.currentPart = null;
        this.currentSelection = null;
        this.pinPropertySheetAction = null;
    }

    protected PageBookView.PageRec doCreatePage(IWorkbenchPart part) {
        IPropertySheetPage page;
        if (part instanceof PropertySheet) {
            return null;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.views.properties.IPropertySheetPage");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((page = (IPropertySheetPage)ViewsPlugin.getAdapter(part, clazz, false)) != null) {
            if (page instanceof IPageBookViewPage) {
                this.initPage((IPageBookViewPage)page);
            }
            page.createControl((Composite)this.getPageBook());
            return new PageBookView.PageRec(part, (IPage)page);
        }
        return null;
    }

    protected void doDestroyPage(IWorkbenchPart part, PageBookView.PageRec rec) {
        IPropertySheetPage page = (IPropertySheetPage)rec.page;
        page.dispose();
        rec.dispose();
    }

    protected IWorkbenchPart getBootstrapPart() {
        IWorkbenchPage page = this.getSite().getPage();
        if (page != null) {
            this.bootstrapSelection = page.getSelection();
            return page.getActivePart();
        }
        return null;
    }

    public void init(IViewSite site) throws PartInitException {
        site.getPage().addPostSelectionListener((ISelectionListener)this);
        super.init(site);
    }

    public void saveState(IMemento memento) {
        String secondaryId = this.getViewSite().getSecondaryId();
        if (secondaryId == null) {
            super.saveState(memento);
        } else {
            this.getViewSite().getPage().hideView((IViewPart)this);
        }
    }

    protected boolean isImportant(IWorkbenchPart part) {
        String partID = part.getSite().getId();
        boolean isPropertyView = this.getSite().getId().equals(partID);
        return !this.isPinned() && !isPropertyView && !this.isViewIgnored(partID);
    }

    public void partClosed(IWorkbenchPart part) {
        if (this.isPinned() && part.equals(this.currentPart)) {
            this.pinPropertySheetAction.setChecked(false);
        }
        super.partClosed(part);
    }

    protected void partVisible(IWorkbenchPart part) {
        super.partVisible(part);
    }

    protected void partHidden(IWorkbenchPart part) {
    }

    public void partActivated(IWorkbenchPart part) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.part.IContributedContentsView");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContributedContentsView view = (IContributedContentsView)ViewsPlugin.getAdapter(part, clazz, true);
        IWorkbenchPart source = null;
        if (view != null) {
            source = view.getContributingPart();
        }
        if (source != null) {
            super.partActivated(source);
        } else {
            super.partActivated(part);
        }
        if (this.isImportant(part)) {
            this.currentPart = part;
            this.currentSelection = null;
        }
        if (this.bootstrapSelection != null) {
            IPropertySheetPage page = (IPropertySheetPage)this.getCurrentPage();
            if (page != null) {
                page.selectionChanged(part, this.bootstrapSelection);
            }
            this.bootstrapSelection = null;
        }
    }

    public void selectionChanged(IWorkbenchPart part, ISelection sel) {
        if (sel == null || !this.isImportant(part) || sel.equals(this.currentSelection)) {
            return;
        }
        if (part == null || !part.equals(this.currentPart)) {
            return;
        }
        this.currentPart = part;
        this.currentSelection = sel;
        IPropertySheetPage page = (IPropertySheetPage)this.getCurrentPage();
        if (page != null) {
            page.selectionChanged(this.currentPart, this.currentSelection);
        }
        this.updateContentDescription();
    }

    private void updateContentDescription() {
        if (this.isPinned() && this.currentPart != null) {
            this.setContentDescription(NLS.bind((String)PropertiesMessages.Selection_description, (Object)this.currentPart.getTitle()));
        } else {
            this.setContentDescription("");
        }
    }

    protected Object getViewAdapter(Class key) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.ISaveablePart");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(key)) {
            return this.getSaveablePart();
        }
        return super.getViewAdapter(key);
    }

    protected ISaveablePart getSaveablePart() {
        IWorkbenchPart part = this.getCurrentContributingPart();
        if (part instanceof ISaveablePart) {
            return (ISaveablePart)part;
        }
        return null;
    }

    public boolean isPinned() {
        return this.pinPropertySheetAction != null && this.pinPropertySheetAction.isChecked();
    }

    public ShowInContext getShowInContext() {
        return new PropertyShowInContext(this.currentPart, this.currentSelection);
    }

    public boolean show(ShowInContext aContext) {
        if (!this.isPinned() && aContext instanceof PropertyShowInContext) {
            PropertyShowInContext context = (PropertyShowInContext)aContext;
            this.partActivated(context.getPart());
            this.selectionChanged(context.getPart(), context.getSelection());
            return true;
        }
        return false;
    }

    public void setPinned(boolean pinned) {
        this.pinPropertySheetAction.setChecked(pinned);
        this.updateContentDescription();
    }

    private HashSet getIgnoredViews() {
        if (this.ignoredViews == null) {
            this.ignoredViews = new HashSet();
            IExtensionRegistry registry = RegistryFactory.getRegistry();
            IExtensionPoint ep = registry.getExtensionPoint(EXT_POINT);
            if (ep != null) {
                IExtension[] extensions = ep.getExtensions();
                int i = 0;
                while (i < extensions.length) {
                    IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                    int j = 0;
                    while (j < elements.length) {
                        String id;
                        if ("excludeSources".equalsIgnoreCase(elements[j].getName()) && (id = elements[j].getAttribute("id")) != null) {
                            this.ignoredViews.add(id);
                        }
                        ++j;
                    }
                    ++i;
                }
            }
        }
        return this.ignoredViews;
    }

    private boolean isViewIgnored(String partID) {
        return this.getIgnoredViews().contains(partID);
    }

    public void added(IExtension[] extensions) {
        this.ignoredViews = null;
    }

    public void added(IExtensionPoint[] extensionPoints) {
        this.ignoredViews = null;
    }

    public void removed(IExtension[] extensions) {
        this.ignoredViews = null;
    }

    public void removed(IExtensionPoint[] extensionPoints) {
        this.ignoredViews = null;
    }
}

