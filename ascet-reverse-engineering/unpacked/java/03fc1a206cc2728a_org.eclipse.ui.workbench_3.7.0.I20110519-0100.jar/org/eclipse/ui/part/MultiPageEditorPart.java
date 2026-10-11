/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.dialogs.IPageChangeProvider
 *  org.eclipse.jface.dialogs.IPageChangedListener
 *  org.eclipse.jface.dialogs.PageChangedEvent
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.custom.CTabFolder
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.part;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.dialogs.IPageChangeProvider;
import org.eclipse.jface.dialogs.IPageChangedListener;
import org.eclipse.jface.dialogs.PageChangedEvent;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.INestableKeyBindingService;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.services.INestable;
import org.eclipse.ui.internal.services.IServiceLocatorCreator;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.EditorPart;
import org.eclipse.ui.part.IWorkbenchPartOrientation;
import org.eclipse.ui.part.MultiPageEditorActionBarContributor;
import org.eclipse.ui.part.MultiPageEditorSite;
import org.eclipse.ui.part.MultiPageSelectionProvider;
import org.eclipse.ui.part.PageSwitcher;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IServiceLocator;

public abstract class MultiPageEditorPart
extends EditorPart
implements IPageChangeProvider {
    private static final String COMMAND_NEXT_SUB_TAB = "org.eclipse.ui.navigate.nextSubTab";
    private static final String COMMAND_PREVIOUS_SUB_TAB = "org.eclipse.ui.navigate.previousSubTab";
    protected static final int PAGE_CONTAINER_SITE = 65535;
    private static final String TRACING_COMPONENT = "MPE";
    private INestable activeServiceLocator;
    private CTabFolder container;
    private ArrayList nestedEditors = new ArrayList(3);
    private List pageSites = new ArrayList(3);
    private IServiceLocator pageContainerSite;
    private ListenerList pageChangeListeners = new ListenerList(1);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    protected MultiPageEditorPart() {
    }

    public int addPage(Control control) {
        int index = this.getPageCount();
        this.addPage(index, control);
        return index;
    }

    public void addPage(int index, Control control) {
        this.createItem(index, control);
    }

    public int addPage(IEditorPart editor, IEditorInput input) throws PartInitException {
        int index = this.getPageCount();
        this.addPage(index, editor, input);
        return index;
    }

    public void addPage(int index, IEditorPart editor, IEditorInput input) throws PartInitException {
        IEditorSite site = this.createSite(editor);
        editor.init(site, input);
        Composite parent2 = new Composite(this.getContainer(), this.getOrientation(editor));
        parent2.setLayout((Layout)new FillLayout());
        editor.createPartControl(parent2);
        editor.addPropertyListener(new IPropertyListener(){

            public void propertyChanged(Object source, int propertyId) {
                MultiPageEditorPart.this.handlePropertyChange(propertyId);
            }
        });
        CTabItem item = this.createItem(index, (Control)parent2);
        item.setData((Object)editor);
        this.nestedEditors.add(editor);
    }

    private int getOrientation(IEditorPart editor) {
        if (editor instanceof IWorkbenchPartOrientation) {
            return ((IWorkbenchPartOrientation)((Object)editor)).getOrientation();
        }
        return this.getOrientation();
    }

    private CTabFolder createContainer(Composite parent) {
        parent.setLayout((Layout)new FillLayout());
        final CTabFolder newContainer = new CTabFolder(parent, 0x800400);
        newContainer.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                int newPageIndex = newContainer.indexOf((CTabItem)e.item);
                MultiPageEditorPart.this.pageChange(newPageIndex);
            }
        });
        newContainer.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                switch (e.detail) {
                    case 256: 
                    case 512: {
                        int detail = e.detail;
                        e.doit = true;
                        e.detail = 0;
                        Composite control = newContainer.getParent();
                        control.traverse(detail, new Event());
                    }
                }
            }
        });
        return newContainer;
    }

    private CTabItem createItem(int index, Control control) {
        CTabItem item = new CTabItem(this.getTabFolder(), 0, index);
        item.setControl(control);
        return item;
    }

    protected abstract void createPages();

    public final void createPartControl(Composite parent) {
        Composite pageContainer = this.createPageContainer(parent);
        this.container = this.createContainer(pageContainer);
        this.createPages();
        if (this.getActivePage() == -1) {
            IEditorSite serviceLocator;
            this.setActivePage(0);
            IEditorPart part = this.getEditor(0);
            if (part != null && (serviceLocator = part.getEditorSite()) instanceof INestable) {
                this.activeServiceLocator = (INestable)((Object)serviceLocator);
                this.activeServiceLocator.activate();
            }
        }
        this.initializePageSwitching();
        this.initializeSubTabSwitching();
    }

    protected void initializePageSwitching() {
        new PageSwitcher(this){

            public Object[] getPages() {
                int pageCount = MultiPageEditorPart.this.getPageCount();
                Object[] result = new Object[pageCount];
                int i = 0;
                while (i < pageCount) {
                    result[i] = new Integer(i);
                    ++i;
                }
                return result;
            }

            public String getName(Object page) {
                return MultiPageEditorPart.this.getPageText((Integer)page);
            }

            public ImageDescriptor getImageDescriptor(Object page) {
                Image image = MultiPageEditorPart.this.getPageImage((Integer)page);
                if (image == null) {
                    return null;
                }
                return ImageDescriptor.createFromImage((Image)image);
            }

            public void activatePage(Object page) {
                MultiPageEditorPart.this.setActivePage((Integer)page);
            }

            public int getCurrentPageIndex() {
                return MultiPageEditorPart.this.getActivePage();
            }
        };
    }

    private void initializeSubTabSwitching() {
        IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService service = (IHandlerService)iWorkbenchPartSite.getService(clazz);
        service.activateHandler(COMMAND_NEXT_SUB_TAB, (IHandler)new AbstractHandler(){

            public Object execute(ExecutionEvent event) throws ExecutionException {
                int n = MultiPageEditorPart.this.getPageCount();
                if (n == 0) {
                    return null;
                }
                int i = MultiPageEditorPart.this.getActivePage() + 1;
                if (i >= n) {
                    i = 0;
                }
                MultiPageEditorPart.this.setActivePage(i);
                return null;
            }
        });
        service.activateHandler(COMMAND_PREVIOUS_SUB_TAB, (IHandler)new AbstractHandler(){

            public Object execute(ExecutionEvent event) throws ExecutionException {
                int n = MultiPageEditorPart.this.getPageCount();
                if (n == 0) {
                    return null;
                }
                int i = MultiPageEditorPart.this.getActivePage() - 1;
                if (i < 0) {
                    i = n - 1;
                }
                MultiPageEditorPart.this.setActivePage(i);
                return null;
            }
        });
    }

    protected Composite createPageContainer(Composite parent) {
        return parent;
    }

    protected IEditorSite createSite(IEditorPart editor) {
        return new MultiPageEditorSite(this, editor);
    }

    public void dispose() {
        this.pageChangeListeners.clear();
        int i = 0;
        while (i < this.nestedEditors.size()) {
            IEditorPart editor = (IEditorPart)this.nestedEditors.get(i);
            this.disposePart(editor);
            ++i;
        }
        this.nestedEditors.clear();
        if (this.pageContainerSite instanceof IDisposable) {
            ((IDisposable)((Object)this.pageContainerSite)).dispose();
            this.pageContainerSite = null;
        }
        i = 0;
        while (i < this.pageSites.size()) {
            IServiceLocator sl = (IServiceLocator)this.pageSites.get(i);
            if (sl instanceof IDisposable) {
                ((IDisposable)((Object)sl)).dispose();
            }
            ++i;
        }
        this.pageSites.clear();
        super.dispose();
    }

    protected IEditorPart getActiveEditor() {
        int index = this.getActivePage();
        if (index != -1) {
            return this.getEditor(index);
        }
        return null;
    }

    public int getActivePage() {
        CTabFolder tabFolder = this.getTabFolder();
        if (tabFolder != null && !tabFolder.isDisposed()) {
            return tabFolder.getSelectionIndex();
        }
        return -1;
    }

    protected Composite getContainer() {
        return this.container;
    }

    protected Control getControl(int pageIndex) {
        return this.getItem(pageIndex).getControl();
    }

    protected IEditorPart getEditor(int pageIndex) {
        Object data;
        CTabItem item = this.getItem(pageIndex);
        if (item != null && (data = item.getData()) instanceof IEditorPart) {
            return (IEditorPart)data;
        }
        return null;
    }

    protected final IServiceLocator getPageSite(int pageIndex) {
        if (pageIndex == 65535) {
            return this.getPageContainerSite();
        }
        CTabItem item = this.getItem(pageIndex);
        if (item != null) {
            Object data = item.getData();
            if (data instanceof IEditorPart) {
                return ((IEditorPart)data).getSite();
            }
            if (data instanceof IServiceLocator) {
                return (IServiceLocator)data;
            }
            if (data == null) {
                IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IServiceLocatorCreator slc = (IServiceLocatorCreator)iWorkbenchPartSite.getService(clazz);
                IServiceLocator sl = slc.createServiceLocator(this.getSite(), null, new IDisposable(){

                    public void dispose() {
                        Control control = ((PartSite)MultiPageEditorPart.this.getSite()).getPane().getControl();
                        if (control != null && !control.isDisposed()) {
                            ((PartSite)MultiPageEditorPart.this.getSite()).getPane().doHide();
                        }
                    }
                });
                item.setData((Object)sl);
                this.pageSites.add(sl);
                return sl;
            }
        }
        return null;
    }

    private IServiceLocator getPageContainerSite() {
        if (this.pageContainerSite == null) {
            IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IServiceLocatorCreator slc = (IServiceLocatorCreator)iWorkbenchPartSite.getService(clazz);
            this.pageContainerSite = slc.createServiceLocator(this.getSite(), null, new IDisposable(){

                public void dispose() {
                    Control control = ((PartSite)MultiPageEditorPart.this.getSite()).getPane().getControl();
                    if (control != null && !control.isDisposed()) {
                        ((PartSite)MultiPageEditorPart.this.getSite()).getPane().doHide();
                    }
                }
            });
        }
        return this.pageContainerSite;
    }

    private CTabItem getItem(int pageIndex) {
        return this.getTabFolder().getItem(pageIndex);
    }

    protected int getPageCount() {
        CTabFolder folder = this.getTabFolder();
        if (folder != null && !folder.isDisposed()) {
            return folder.getItemCount();
        }
        return 0;
    }

    protected Image getPageImage(int pageIndex) {
        return this.getItem(pageIndex).getImage();
    }

    protected String getPageText(int pageIndex) {
        return this.getItem(pageIndex).getText();
    }

    private CTabFolder getTabFolder() {
        return this.container;
    }

    protected void handlePropertyChange(int propertyId) {
        this.firePropertyChange(propertyId);
    }

    public void init(IEditorSite site, IEditorInput input) throws PartInitException {
        this.setSite(site);
        this.setInput(input);
        site.setSelectionProvider((ISelectionProvider)new MultiPageSelectionProvider(this));
    }

    public boolean isDirty() {
        Iterator i = this.nestedEditors.iterator();
        while (i.hasNext()) {
            IEditorPart editor = (IEditorPart)i.next();
            if (!editor.isDirty()) continue;
            return true;
        }
        return false;
    }

    protected void pageChange(int newPageIndex) {
        ISelectionProvider selectionProvider;
        IPartService partService;
        this.deactivateSite(false, false);
        IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.IPartService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((partService = (IPartService)iWorkbenchPartSite.getService(clazz)).getActivePart() == this) {
            this.setFocus();
        }
        IEditorPart activeEditor = this.getEditor(newPageIndex);
        IEditorActionBarContributor contributor = this.getEditorSite().getActionBarContributor();
        if (contributor != null && contributor instanceof MultiPageEditorActionBarContributor) {
            ((MultiPageEditorActionBarContributor)contributor).setActivePage(activeEditor);
        }
        if (activeEditor != null && (selectionProvider = activeEditor.getSite().getSelectionProvider()) != null) {
            ISelectionProvider outerProvider = this.getSite().getSelectionProvider();
            if (outerProvider instanceof MultiPageSelectionProvider) {
                SelectionChangedEvent event = new SelectionChangedEvent(selectionProvider, selectionProvider.getSelection());
                MultiPageSelectionProvider provider = (MultiPageSelectionProvider)outerProvider;
                provider.fireSelectionChanged(event);
                provider.firePostSelectionChanged(event);
            } else if (Policy.DEBUG_MPE) {
                Tracing.printTrace((String)TRACING_COMPONENT, (String)("MultiPageEditorPart " + this.getTitle() + " did not propogate selection for " + activeEditor.getTitle()));
            }
        }
        this.activateSite();
        Object selectedPage = this.getSelectedPage();
        if (selectedPage != null) {
            this.firePageChanged(new PageChangedEvent((IPageChangeProvider)this, selectedPage));
        }
    }

    protected final void deactivateSite(boolean immediate, boolean containerSiteActive) {
        IServiceLocator containerSite;
        if (this.activeServiceLocator != null) {
            this.activeServiceLocator.deactivate();
            this.activeServiceLocator = null;
        }
        int pageIndex = this.getActivePage();
        IKeyBindingService service = this.getSite().getKeyBindingService();
        if (pageIndex < 0 || pageIndex >= this.getPageCount() || immediate) {
            if (service instanceof INestableKeyBindingService) {
                INestableKeyBindingService nestableService = (INestableKeyBindingService)service;
                nestableService.activateKeyBindingService(null);
            } else {
                WorkbenchPlugin.log("MultiPageEditorPart.deactivateSite()   Parent key binding service was not an instance of INestableKeyBindingService.  It was an instance of " + service.getClass().getName() + " instead.");
            }
        }
        if (containerSiteActive && (containerSite = this.getPageContainerSite()) instanceof INestable) {
            this.activeServiceLocator = (INestable)((Object)containerSite);
            this.activeServiceLocator.activate();
        }
    }

    protected final void activateSite() {
        if (this.activeServiceLocator != null) {
            this.activeServiceLocator.deactivate();
            this.activeServiceLocator = null;
        }
        IKeyBindingService service = this.getSite().getKeyBindingService();
        int pageIndex = this.getActivePage();
        IEditorPart editor = this.getEditor(pageIndex);
        if (editor != null) {
            if (service instanceof INestableKeyBindingService) {
                INestableKeyBindingService nestableService = (INestableKeyBindingService)service;
                nestableService.activateKeyBindingService(editor.getEditorSite());
            } else {
                WorkbenchPlugin.log("MultiPageEditorPart.activateSite()   Parent key binding service was not an instance of INestableKeyBindingService.  It was an instance of " + service.getClass().getName() + " instead.");
            }
            IEditorSite serviceLocator = editor.getEditorSite();
            if (serviceLocator instanceof INestable) {
                this.activeServiceLocator = (INestable)((Object)serviceLocator);
                this.activeServiceLocator.activate();
            }
        } else {
            CTabItem item = this.getItem(pageIndex);
            if (service instanceof INestableKeyBindingService) {
                INestableKeyBindingService nestableService = (INestableKeyBindingService)service;
                nestableService.activateKeyBindingService(null);
            } else {
                WorkbenchPlugin.log("MultiPageEditorPart.activateSite()   Parent key binding service was not an instance of INestableKeyBindingService.  It was an instance of " + service.getClass().getName() + " instead.");
            }
            if (item.getData() instanceof INestable) {
                this.activeServiceLocator = (INestable)item.getData();
                this.activeServiceLocator.activate();
            }
        }
    }

    private void disposePart(final IWorkbenchPart part) {
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void run() {
                IWorkbenchPartSite partSite = part.getSite();
                part.dispose();
                if (partSite instanceof MultiPageEditorSite) {
                    ((MultiPageEditorSite)partSite).dispose();
                }
            }

            public void handleException(Throwable e) {
            }
        });
    }

    public void removePage(int pageIndex) {
        Assert.isTrue((pageIndex >= 0 && pageIndex < this.getPageCount() ? 1 : 0) != 0);
        IEditorPart editor = this.getEditor(pageIndex);
        CTabItem item = this.getItem(pageIndex);
        IServiceLocator pageLocator = null;
        if (item.getData() instanceof IServiceLocator) {
            pageLocator = (IServiceLocator)item.getData();
        }
        Control pageControl = item.getControl();
        item.dispose();
        if (pageControl != null) {
            pageControl.dispose();
        }
        if (editor != null) {
            this.nestedEditors.remove(editor);
            this.disposePart(editor);
        }
        if (pageLocator != null) {
            this.pageSites.remove(pageLocator);
            if (pageLocator instanceof IDisposable) {
                ((IDisposable)((Object)pageLocator)).dispose();
            }
        }
    }

    protected void setActivePage(int pageIndex) {
        Assert.isTrue((pageIndex >= 0 && pageIndex < this.getPageCount() ? 1 : 0) != 0);
        this.getTabFolder().setSelection(pageIndex);
        this.pageChange(pageIndex);
    }

    protected void setControl(int pageIndex, Control control) {
        this.getItem(pageIndex).setControl(control);
    }

    public void setFocus() {
        this.setFocus(this.getActivePage());
    }

    private void setFocus(int pageIndex) {
        if (pageIndex < 0 || pageIndex >= this.getPageCount()) {
            return;
        }
        IEditorPart editor = this.getEditor(pageIndex);
        if (editor != null) {
            editor.setFocus();
        } else {
            Control control = this.getControl(pageIndex);
            if (control != null) {
                control.setFocus();
            }
        }
    }

    protected void setPageImage(int pageIndex, Image image) {
        this.getItem(pageIndex).setImage(image);
    }

    protected void setPageText(int pageIndex, String text) {
        this.getItem(pageIndex).setText(text);
    }

    public Object getAdapter(Class adapter) {
        IEditorPart innerEditor;
        Object result = super.getAdapter(adapter);
        if (result == null && Display.getCurrent() != null && (innerEditor = this.getActiveEditor()) != null && innerEditor != this) {
            result = Util.getAdapter(innerEditor, adapter);
        }
        return result;
    }

    public final IEditorPart[] findEditors(IEditorInput input) {
        ArrayList<IEditorPart> result = new ArrayList<IEditorPart>();
        int count = this.getPageCount();
        int i = 0;
        while (i < count) {
            IEditorPart editor = this.getEditor(i);
            if (editor != null && editor.getEditorInput() != null && editor.getEditorInput().equals(input)) {
                result.add(editor);
            }
            ++i;
        }
        return result.toArray(new IEditorPart[result.size()]);
    }

    public final void setActiveEditor(IEditorPart editorPart) {
        int count = this.getPageCount();
        int i = 0;
        while (i < count) {
            IEditorPart editor = this.getEditor(i);
            if (editor == editorPart) {
                this.setActivePage(i);
                break;
            }
            ++i;
        }
    }

    public Object getSelectedPage() {
        int index = this.getActivePage();
        if (index == -1) {
            return null;
        }
        IEditorPart editor = this.getEditor(index);
        if (editor != null) {
            return editor;
        }
        return this.getControl(index);
    }

    public void addPageChangedListener(IPageChangedListener listener) {
        this.pageChangeListeners.add((Object)listener);
    }

    public void removePageChangedListener(IPageChangedListener listener) {
        this.pageChangeListeners.remove((Object)listener);
    }

    private void firePageChanged(final PageChangedEvent event) {
        Object[] listeners = this.pageChangeListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IPageChangedListener l = (IPageChangedListener)listeners[i];
            SafeRunnable.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.pageChanged(event);
                }
            });
            ++i;
        }
    }
}

