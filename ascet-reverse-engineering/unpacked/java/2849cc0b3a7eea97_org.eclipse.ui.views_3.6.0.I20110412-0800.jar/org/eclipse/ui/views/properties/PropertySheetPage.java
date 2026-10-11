/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.help.IContext
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.util.ConfigureColumns
 *  org.eclipse.jface.viewers.CellEditor
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.jface.window.SameShellProvider
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceAdapter
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.IPartListener
 *  org.eclipse.ui.ISaveablePart
 *  org.eclipse.ui.ISharedImages
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.help.IContextComputer
 *  org.eclipse.ui.help.IWorkbenchHelpSystem
 *  org.eclipse.ui.part.CellEditorActionHandler
 *  org.eclipse.ui.part.Page
 */
package org.eclipse.ui.views.properties;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.help.IContext;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.util.ConfigureColumns;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.jface.window.SameShellProvider;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceAdapter;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.help.IContextComputer;
import org.eclipse.ui.help.IWorkbenchHelpSystem;
import org.eclipse.ui.internal.views.ViewsPlugin;
import org.eclipse.ui.internal.views.properties.PropertiesMessages;
import org.eclipse.ui.part.CellEditorActionHandler;
import org.eclipse.ui.part.Page;
import org.eclipse.ui.views.properties.CategoriesAction;
import org.eclipse.ui.views.properties.CopyPropertyAction;
import org.eclipse.ui.views.properties.DefaultsAction;
import org.eclipse.ui.views.properties.FilterAction;
import org.eclipse.ui.views.properties.ICellEditorActivationListener;
import org.eclipse.ui.views.properties.IPropertySheetEntry;
import org.eclipse.ui.views.properties.IPropertySheetPage;
import org.eclipse.ui.views.properties.IPropertySourceProvider;
import org.eclipse.ui.views.properties.PropertySheetEntry;
import org.eclipse.ui.views.properties.PropertySheetSorter;
import org.eclipse.ui.views.properties.PropertySheetViewer;

public class PropertySheetPage
extends Page
implements IPropertySheetPage,
IAdaptable {
    public static final String HELP_CONTEXT_PROPERTY_SHEET_PAGE = "org.eclipse.ui.property_sheet_page_help_context";
    private PropertySheetViewer viewer;
    private PropertySheetSorter sorter;
    private IPropertySheetEntry rootEntry;
    private IPropertySourceProvider provider;
    private DefaultsAction defaultsAction;
    private FilterAction filterAction;
    private CategoriesAction categoriesAction;
    private CopyPropertyAction copyAction;
    private ICellEditorActivationListener cellEditorActivationListener;
    private CellEditorActionHandler cellEditorActionHandler;
    private Clipboard clipboard;
    private IWorkbenchPart sourcePart;
    private PartListener partListener = new PartListener();
    private Action columnsAction;
    static /* synthetic */ Class class$0;

    public void createControl(Composite parent) {
        this.viewer = new PropertySheetViewer(parent);
        this.viewer.setSorter(this.sorter);
        if (this.rootEntry == null) {
            PropertySheetEntry root = new PropertySheetEntry();
            if (this.provider != null) {
                root.setPropertySourceProvider(this.provider);
            }
            this.rootEntry = root;
        }
        this.viewer.setRootEntry(this.rootEntry);
        this.viewer.addActivationListener(this.getCellEditorActivationListener());
        this.viewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                PropertySheetPage.this.handleEntrySelection(event.getSelection());
            }
        });
        this.initDragAndDrop();
        this.makeActions();
        MenuManager menuMgr = new MenuManager("#PopupMenu");
        menuMgr.add((IAction)this.copyAction);
        menuMgr.add((IContributionItem)new Separator());
        menuMgr.add((IAction)this.defaultsAction);
        Menu menu = menuMgr.createContextMenu(this.viewer.getControl());
        this.viewer.getControl().setMenu(menu);
        this.viewer.getControl().addHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent e) {
                IPropertySheetEntry entry;
                Object helpContextId;
                IStructuredSelection selection = (IStructuredSelection)PropertySheetPage.this.viewer.getSelection();
                if (!selection.isEmpty() && (helpContextId = (entry = (IPropertySheetEntry)selection.getFirstElement()).getHelpContextIds()) != null) {
                    IWorkbenchHelpSystem helpSystem = PlatformUI.getWorkbench().getHelpSystem();
                    if (helpContextId instanceof String) {
                        helpSystem.displayHelp((String)helpContextId);
                        return;
                    }
                    Object context = this.getFirstContext(helpContextId, e);
                    if (context instanceof IContext) {
                        helpSystem.displayHelp((IContext)context);
                    } else if (context instanceof String) {
                        helpSystem.displayHelp((String)context);
                    }
                    return;
                }
                PlatformUI.getWorkbench().getHelpSystem().displayHelp(PropertySheetPage.HELP_CONTEXT_PROPERTY_SHEET_PAGE);
            }

            private Object getFirstContext(Object helpContext, HelpEvent e) {
                Object[] contexts = helpContext instanceof IContextComputer ? ((IContextComputer)helpContext).getLocalContexts(e) : (Object[])helpContext;
                if (contexts.length > 0) {
                    return contexts[0];
                }
                return null;
            }
        });
    }

    public void dispose() {
        super.dispose();
        if (this.sourcePart != null) {
            this.sourcePart.getSite().getPage().removePartListener((IPartListener)this.partListener);
        }
        if (this.rootEntry != null) {
            this.rootEntry.dispose();
            this.rootEntry = null;
        }
        if (this.clipboard != null) {
            this.clipboard.dispose();
            this.clipboard = null;
        }
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.ISaveablePart");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(adapter)) {
            return this.getSaveablePart();
        }
        return null;
    }

    protected ISaveablePart getSaveablePart() {
        if (this.sourcePart instanceof ISaveablePart) {
            return (ISaveablePart)this.sourcePart;
        }
        return null;
    }

    private ICellEditorActivationListener getCellEditorActivationListener() {
        if (this.cellEditorActivationListener == null) {
            this.cellEditorActivationListener = new ICellEditorActivationListener(){

                public void cellEditorActivated(CellEditor cellEditor) {
                    if (PropertySheetPage.this.cellEditorActionHandler != null) {
                        PropertySheetPage.this.cellEditorActionHandler.addCellEditor(cellEditor);
                    }
                }

                public void cellEditorDeactivated(CellEditor cellEditor) {
                    if (PropertySheetPage.this.cellEditorActionHandler != null) {
                        PropertySheetPage.this.cellEditorActionHandler.removeCellEditor(cellEditor);
                    }
                }
            };
        }
        return this.cellEditorActivationListener;
    }

    public Control getControl() {
        if (this.viewer == null) {
            return null;
        }
        return this.viewer.getControl();
    }

    public void handleEntrySelection(ISelection selection) {
        if (this.defaultsAction != null) {
            if (selection.isEmpty()) {
                this.defaultsAction.setEnabled(false);
                return;
            }
            boolean editable = this.viewer.getActiveCellEditor() != null;
            this.defaultsAction.setEnabled(editable);
        }
    }

    protected void initDragAndDrop() {
        int operations = 1;
        Transfer[] transferTypes = new Transfer[]{TextTransfer.getInstance()};
        DragSourceAdapter listener = new DragSourceAdapter(){

            public void dragSetData(DragSourceEvent event) {
                PropertySheetPage.this.performDragSetData(event);
            }

            public void dragFinished(DragSourceEvent event) {
            }
        };
        DragSource dragSource = new DragSource(this.viewer.getControl(), operations);
        dragSource.setTransfer(transferTypes);
        dragSource.addDragListener((DragSourceListener)listener);
    }

    void performDragSetData(DragSourceEvent event) {
        IStructuredSelection selection = (IStructuredSelection)this.viewer.getSelection();
        if (selection.isEmpty()) {
            return;
        }
        IPropertySheetEntry entry = (IPropertySheetEntry)selection.getFirstElement();
        StringBuffer buffer = new StringBuffer();
        buffer.append(entry.getDisplayName());
        buffer.append("\t");
        buffer.append(entry.getValueAsString());
        event.data = buffer.toString();
    }

    private void makeActions() {
        ISharedImages sharedImages = PlatformUI.getWorkbench().getSharedImages();
        this.defaultsAction = new DefaultsAction(this.viewer, "defaults");
        this.defaultsAction.setText(PropertiesMessages.Defaults_text);
        this.defaultsAction.setToolTipText(PropertiesMessages.Defaults_toolTip);
        this.defaultsAction.setImageDescriptor(ViewsPlugin.getViewImageDescriptor("elcl16/defaults_ps.gif"));
        this.defaultsAction.setDisabledImageDescriptor(ViewsPlugin.getViewImageDescriptor("dlcl16/defaults_ps.gif"));
        this.defaultsAction.setEnabled(false);
        this.filterAction = new FilterAction(this.viewer, "filter");
        this.filterAction.setText(PropertiesMessages.Filter_text);
        this.filterAction.setToolTipText(PropertiesMessages.Filter_toolTip);
        this.filterAction.setImageDescriptor(ViewsPlugin.getViewImageDescriptor("elcl16/filter_ps.gif"));
        this.filterAction.setChecked(false);
        this.categoriesAction = new CategoriesAction(this.viewer, "categories");
        this.categoriesAction.setText(PropertiesMessages.Categories_text);
        this.categoriesAction.setToolTipText(PropertiesMessages.Categories_toolTip);
        this.categoriesAction.setImageDescriptor(ViewsPlugin.getViewImageDescriptor("elcl16/tree_mode.gif"));
        this.categoriesAction.setChecked(true);
        this.columnsAction = new Action(PropertiesMessages.Columns_text){

            public void run() {
                Tree tree = (Tree)PropertySheetPage.this.viewer.getControl();
                ConfigureColumns.forTree((Tree)tree, (IShellProvider)new SameShellProvider((Control)tree));
            }
        };
        this.columnsAction.setToolTipText(PropertiesMessages.Columns_toolTip);
        Shell shell = this.viewer.getControl().getShell();
        this.clipboard = new Clipboard(shell.getDisplay());
        this.copyAction = new CopyPropertyAction(this.viewer, "copy", this.clipboard);
        this.copyAction.setText(PropertiesMessages.CopyProperty_text);
        this.copyAction.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_COPY"));
    }

    public void makeContributions(IMenuManager menuManager, IToolBarManager toolBarManager, IStatusLineManager statusLineManager) {
        toolBarManager.add((IAction)this.categoriesAction);
        toolBarManager.add((IAction)this.filterAction);
        toolBarManager.add((IAction)this.defaultsAction);
        menuManager.add((IAction)this.categoriesAction);
        menuManager.add((IAction)this.filterAction);
        menuManager.add((IAction)this.columnsAction);
        this.viewer.setStatusLineManager(statusLineManager);
    }

    public void refresh() {
        if (this.viewer == null) {
            return;
        }
        this.viewer.setInput(this.viewer.getInput());
    }

    public void selectionChanged(IWorkbenchPart part, ISelection selection) {
        if (this.viewer == null) {
            return;
        }
        if (this.sourcePart != null) {
            this.sourcePart.getSite().getPage().removePartListener((IPartListener)this.partListener);
            this.sourcePart = null;
        }
        if (selection instanceof IStructuredSelection) {
            this.sourcePart = part;
            this.viewer.setInput(((IStructuredSelection)selection).toArray());
        }
        if (this.sourcePart != null) {
            this.sourcePart.getSite().getPage().addPartListener((IPartListener)this.partListener);
        }
    }

    public void setActionBars(IActionBars actionBars) {
        super.setActionBars(actionBars);
        this.cellEditorActionHandler = new CellEditorActionHandler(actionBars);
        this.cellEditorActionHandler.setCopyAction((IAction)this.copyAction);
    }

    public void setFocus() {
        this.viewer.getControl().setFocus();
    }

    public void setPropertySourceProvider(IPropertySourceProvider newProvider) {
        this.provider = newProvider;
        if (this.rootEntry instanceof PropertySheetEntry) {
            ((PropertySheetEntry)this.rootEntry).setPropertySourceProvider(this.provider);
            this.viewer.setRootEntry(this.rootEntry);
        }
    }

    public void setRootEntry(IPropertySheetEntry entry) {
        this.rootEntry = entry;
        if (this.viewer != null) {
            this.viewer.setRootEntry(this.rootEntry);
        }
    }

    protected void setSorter(PropertySheetSorter sorter) {
        this.sorter = sorter;
        if (this.viewer != null) {
            this.viewer.setSorter(sorter);
            if (this.viewer.getRootEntry() != null) {
                this.viewer.setRootEntry(this.rootEntry);
            }
        }
    }

    private class PartListener
    implements IPartListener {
        private PartListener() {
        }

        public void partActivated(IWorkbenchPart part) {
        }

        public void partBroughtToTop(IWorkbenchPart part) {
        }

        public void partClosed(IWorkbenchPart part) {
            if (PropertySheetPage.this.sourcePart == part) {
                if (PropertySheetPage.this.sourcePart != null) {
                    PropertySheetPage.this.sourcePart.getSite().getPage().removePartListener((IPartListener)PropertySheetPage.this.partListener);
                }
                PropertySheetPage.this.sourcePart = null;
                if (PropertySheetPage.this.viewer != null && !PropertySheetPage.this.viewer.getControl().isDisposed()) {
                    PropertySheetPage.this.viewer.setInput(new Object[0]);
                }
            }
        }

        public void partDeactivated(IWorkbenchPart part) {
        }

        public void partOpened(IWorkbenchPart part) {
        }
    }
}

