/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.ProgressMonitorWrapper
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.viewers.ContentViewer
 *  org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider$IStyledLabelProvider
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IColorProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.IFontProvider
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.ILazyContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.StyledCellLabelProvider
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerCell
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.custom.ViewForm
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.dialogs;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.ProgressMonitorWrapper;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.ContentViewer;
import org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ILazyContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.StyledCellLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.custom.ViewForm;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.dialogs.SearchPattern;
import org.eclipse.ui.dialogs.SelectionStatusDialog;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.statushandlers.StatusManager;

public abstract class FilteredItemsSelectionDialog
extends SelectionStatusDialog {
    private static final String DIALOG_BOUNDS_SETTINGS = "DialogBoundsSettings";
    private static final String SHOW_STATUS_LINE = "ShowStatusLine";
    private static final String HISTORY_SETTINGS = "History";
    private static final String DIALOG_HEIGHT = "DIALOG_HEIGHT";
    private static final String DIALOG_WIDTH = "DIALOG_WIDTH";
    public static final int NONE = 0;
    public static final int CARET_BEGINNING = 1;
    public static final int FULL_SELECTION = 2;
    private Text pattern;
    private TableViewer list;
    private DetailsContentViewer details;
    private ILabelProvider detailsLabelProvider;
    private ItemsListLabelProvider itemsListLabelProvider;
    private MenuManager menuManager;
    private MenuManager contextMenuManager;
    private boolean multi;
    private ToolBar toolBar;
    private ToolItem toolItem;
    private Label progressLabel;
    private ToggleStatusLineAction toggleStatusLineAction;
    private RemoveHistoryItemAction removeHistoryItemAction;
    private ActionContributionItem removeHistoryActionContributionItem;
    private IStatus status;
    private RefreshCacheJob refreshCacheJob;
    private RefreshProgressMessageJob refreshProgressMessageJob = new RefreshProgressMessageJob();
    private Object[] currentSelection;
    private ContentProvider contentProvider;
    private FilterHistoryJob filterHistoryJob;
    private FilterJob filterJob;
    private ItemsFilter filter;
    private List lastCompletedResult;
    private ItemsFilter lastCompletedFilter;
    private String initialPatternText;
    private int selectionMode;
    private ItemsListSeparator itemsListSeparator;
    private static final String EMPTY_STRING = "";
    private boolean refreshWithLastSelection = false;
    private IHandlerActivation showViewHandler;
    static /* synthetic */ Class class$0;

    public FilteredItemsSelectionDialog(Shell shell, boolean multi) {
        super(shell);
        this.multi = multi;
        this.filterHistoryJob = new FilterHistoryJob();
        this.filterJob = new FilterJob();
        this.contentProvider = new ContentProvider();
        this.refreshCacheJob = new RefreshCacheJob();
        this.itemsListSeparator = new ItemsListSeparator(WorkbenchMessages.FilteredItemsSelectionDialog_separatorLabel);
        this.selectionMode = 0;
    }

    public FilteredItemsSelectionDialog(Shell shell) {
        this(shell, false);
    }

    protected void addListFilter(ViewerFilter filter) {
        this.contentProvider.addFilter(filter);
    }

    public void setListLabelProvider(ILabelProvider listLabelProvider) {
        this.getItemsListLabelProvider().setProvider(listLabelProvider);
    }

    private ILabelDecorator getListSelectionLabelDecorator() {
        return this.getItemsListLabelProvider().getSelectionDecorator();
    }

    public void setListSelectionLabelDecorator(ILabelDecorator listSelectionLabelDecorator) {
        this.getItemsListLabelProvider().setSelectionDecorator(listSelectionLabelDecorator);
    }

    private ItemsListLabelProvider getItemsListLabelProvider() {
        if (this.itemsListLabelProvider == null) {
            this.itemsListLabelProvider = new ItemsListLabelProvider((ILabelProvider)new LabelProvider(), null);
        }
        return this.itemsListLabelProvider;
    }

    public void setDetailsLabelProvider(ILabelProvider detailsLabelProvider) {
        this.detailsLabelProvider = detailsLabelProvider;
        if (this.details != null) {
            this.details.setLabelProvider((IBaseLabelProvider)detailsLabelProvider);
        }
    }

    private ILabelProvider getDetailsLabelProvider() {
        if (this.detailsLabelProvider == null) {
            this.detailsLabelProvider = new LabelProvider();
        }
        return this.detailsLabelProvider;
    }

    public void create() {
        super.create();
        this.pattern.setFocus();
    }

    protected void restoreDialog(IDialogSettings settings) {
        boolean toggleStatusLine = true;
        if (settings.get(SHOW_STATUS_LINE) != null) {
            toggleStatusLine = settings.getBoolean(SHOW_STATUS_LINE);
        }
        this.toggleStatusLineAction.setChecked(toggleStatusLine);
        this.details.setVisible(toggleStatusLine);
        String setting = settings.get(HISTORY_SETTINGS);
        if (setting != null) {
            try {
                XMLMemento memento = XMLMemento.createReadRoot(new StringReader(setting));
                this.contentProvider.loadHistory(memento);
            }
            catch (WorkbenchException e) {
                StatusManager.getManager().handle((IStatus)new Status(4, "org.eclipse.ui", 4, WorkbenchMessages.FilteredItemsSelectionDialog_restoreError, (Throwable)((Object)e)));
            }
        }
    }

    public boolean close() {
        this.filterJob.cancel();
        this.refreshCacheJob.cancel();
        this.refreshProgressMessageJob.cancel();
        if (this.showViewHandler != null) {
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IHandlerService service = (IHandlerService)iWorkbench.getService(clazz);
            service.deactivateHandler(this.showViewHandler);
            this.showViewHandler.getHandler().dispose();
            this.showViewHandler = null;
        }
        if (this.menuManager != null) {
            this.menuManager.dispose();
        }
        if (this.contextMenuManager != null) {
            this.contextMenuManager.dispose();
        }
        this.storeDialog(this.getDialogSettings());
        return super.close();
    }

    protected void storeDialog(IDialogSettings settings) {
        settings.put(SHOW_STATUS_LINE, this.toggleStatusLineAction.isChecked());
        XMLMemento memento = XMLMemento.createWriteRoot(HISTORY_SETTINGS);
        this.contentProvider.saveHistory(memento);
        StringWriter writer = new StringWriter();
        try {
            memento.save(writer);
            settings.put(HISTORY_SETTINGS, writer.getBuffer().toString());
        }
        catch (IOException e) {
            StatusManager.getManager().handle((IStatus)new Status(4, "org.eclipse.ui", 4, WorkbenchMessages.FilteredItemsSelectionDialog_storeError, (Throwable)e));
        }
    }

    private Label createHeader(Composite parent) {
        Composite header = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        header.setLayout((Layout)layout);
        Label headerLabel = new Label(header, 0);
        headerLabel.setText(this.getMessage() != null && this.getMessage().trim().length() > 0 ? this.getMessage() : WorkbenchMessages.FilteredItemsSelectionDialog_patternLabel);
        headerLabel.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 128 && e.doit) {
                    e.detail = 0;
                    FilteredItemsSelectionDialog.this.pattern.setFocus();
                }
            }
        });
        GridData gd = new GridData(768);
        headerLabel.setLayoutData((Object)gd);
        this.createViewMenu(header);
        header.setLayoutData((Object)gd);
        return headerLabel;
    }

    private Label createLabels(Composite parent) {
        Composite labels = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        labels.setLayout((Layout)layout);
        Label listLabel = new Label(labels, 0);
        listLabel.setText(WorkbenchMessages.FilteredItemsSelectionDialog_listLabel);
        listLabel.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                if (e.detail == 128 && e.doit) {
                    e.detail = 0;
                    FilteredItemsSelectionDialog.this.list.getTable().setFocus();
                }
            }
        });
        GridData gd = new GridData(768);
        listLabel.setLayoutData((Object)gd);
        this.progressLabel = new Label(labels, 131072);
        this.progressLabel.setLayoutData((Object)gd);
        labels.setLayoutData((Object)gd);
        return listLabel;
    }

    private void createViewMenu(Composite parent) {
        this.toolBar = new ToolBar(parent, 0x800000);
        this.toolItem = new ToolItem(this.toolBar, 8, 0);
        GridData data = new GridData();
        data.horizontalAlignment = 3;
        this.toolBar.setLayoutData((Object)data);
        this.toolBar.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                FilteredItemsSelectionDialog.this.showViewMenu();
            }
        });
        this.toolItem.setImage(WorkbenchImages.getImage("IMG_LCL_VIEW_MENU"));
        this.toolItem.setToolTipText(WorkbenchMessages.FilteredItemsSelectionDialog_menu);
        this.toolItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                FilteredItemsSelectionDialog.this.showViewMenu();
            }
        });
        this.menuManager = new MenuManager();
        this.fillViewMenu((IMenuManager)this.menuManager);
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService service = (IHandlerService)iWorkbench.getService(clazz);
        AbstractHandler handler = new AbstractHandler(){

            public Object execute(ExecutionEvent event) {
                FilteredItemsSelectionDialog.this.showViewMenu();
                return null;
            }
        };
        this.showViewHandler = service.activateHandler("org.eclipse.ui.window.showViewMenu", (IHandler)handler, new ActiveShellExpression(this.getShell()));
    }

    protected void fillViewMenu(IMenuManager menuManager) {
        this.toggleStatusLineAction = new ToggleStatusLineAction();
        menuManager.add((IAction)this.toggleStatusLineAction);
    }

    private void showViewMenu() {
        Menu menu = this.menuManager.createContextMenu((Control)this.getShell());
        Rectangle bounds = this.toolItem.getBounds();
        Point topLeft = new Point(bounds.x, bounds.y + bounds.height);
        topLeft = this.toolBar.toDisplay(topLeft);
        menu.setLocation(topLeft.x, topLeft.y);
        menu.setVisible(true);
    }

    protected void fillContextMenu(IMenuManager menuManager) {
        List selectedElements = ((StructuredSelection)this.list.getSelection()).toList();
        Object item = null;
        Iterator it = selectedElements.iterator();
        while (it.hasNext()) {
            item = it.next();
            if (!(item instanceof ItemsListSeparator) && this.isHistoryElement(item)) continue;
            return;
        }
        if (selectedElements.size() > 0) {
            this.removeHistoryItemAction.setText(WorkbenchMessages.FilteredItemsSelectionDialog_removeItemsFromHistoryAction);
            menuManager.add((IContributionItem)this.removeHistoryActionContributionItem);
        }
    }

    private void createPopupMenu() {
        this.removeHistoryItemAction = new RemoveHistoryItemAction();
        this.removeHistoryActionContributionItem = new ActionContributionItem((IAction)this.removeHistoryItemAction);
        this.contextMenuManager = new MenuManager();
        this.contextMenuManager.setRemoveAllWhenShown(true);
        this.contextMenuManager.addMenuListener(new IMenuListener(){

            public void menuAboutToShow(IMenuManager manager) {
                FilteredItemsSelectionDialog.this.fillContextMenu(manager);
            }
        });
        Table table = this.list.getTable();
        Menu menu = this.contextMenuManager.createContextMenu((Control)table);
        table.setMenu(menu);
    }

    protected abstract Control createExtendedContentArea(Composite var1);

    protected Control createDialogArea(Composite parent) {
        Composite dialogArea = (Composite)super.createDialogArea(parent);
        Composite content = new Composite(dialogArea, 0);
        GridData gd = new GridData(1808);
        content.setLayoutData((Object)gd);
        GridLayout layout = new GridLayout();
        layout.numColumns = 1;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        content.setLayout((Layout)layout);
        final Label headerLabel = this.createHeader(content);
        this.pattern = new Text(content, 2436);
        this.pattern.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = LegacyActionTools.removeMnemonics((String)headerLabel.getText());
            }
        });
        gd = new GridData(768);
        this.pattern.setLayoutData((Object)gd);
        final Label listLabel = this.createLabels(content);
        this.list = new TableViewer(content, (this.multi ? 2 : 4) | 0x800 | 0x200 | 0x10000000);
        this.list.getTable().getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                if (e.childID == -1) {
                    e.result = LegacyActionTools.removeMnemonics((String)listLabel.getText());
                }
            }
        });
        this.list.setContentProvider((IContentProvider)this.contentProvider);
        this.list.setLabelProvider((IBaseLabelProvider)this.getItemsListLabelProvider());
        this.list.setInput((Object)new Object[0]);
        this.list.setItemCount(this.contentProvider.getNumberOfElements());
        gd = new GridData(1808);
        FilteredItemsSelectionDialog.applyDialogFont((Control)this.list.getTable());
        gd.heightHint = this.list.getTable().getItemHeight() * 15;
        this.list.getTable().setLayoutData((Object)gd);
        this.createPopupMenu();
        this.pattern.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                FilteredItemsSelectionDialog.this.applyFilter();
            }
        });
        this.pattern.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                if (e.keyCode == 0x1000002 && FilteredItemsSelectionDialog.this.list.getTable().getItemCount() > 0) {
                    FilteredItemsSelectionDialog.this.list.getTable().setFocus();
                }
            }
        });
        this.list.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                StructuredSelection selection = (StructuredSelection)event.getSelection();
                FilteredItemsSelectionDialog.this.handleSelected(selection);
            }
        });
        this.list.addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                FilteredItemsSelectionDialog.this.handleDoubleClick();
            }
        });
        this.list.getTable().addKeyListener((KeyListener)new KeyAdapter(){

            public void keyPressed(KeyEvent e) {
                StructuredSelection selection;
                if (e.keyCode == 127) {
                    List selectedElements = ((StructuredSelection)FilteredItemsSelectionDialog.this.list.getSelection()).toList();
                    Object item = null;
                    boolean isSelectedHistory = true;
                    Iterator it = selectedElements.iterator();
                    while (it.hasNext()) {
                        item = it.next();
                        if (!(item instanceof ItemsListSeparator) && FilteredItemsSelectionDialog.this.isHistoryElement(item)) continue;
                        isSelectedHistory = false;
                        break;
                    }
                    if (isSelectedHistory) {
                        FilteredItemsSelectionDialog.this.removeSelectedItems(selectedElements);
                    }
                }
                if (e.keyCode == 0x1000001 && (e.stateMask & 0x20000) != 0 && (e.stateMask & 0x40000) != 0 && (selection = (StructuredSelection)FilteredItemsSelectionDialog.this.list.getSelection()).size() == 1) {
                    Object element = selection.getFirstElement();
                    if (element.equals(FilteredItemsSelectionDialog.this.list.getElementAt(0))) {
                        FilteredItemsSelectionDialog.this.pattern.setFocus();
                    }
                    if (FilteredItemsSelectionDialog.this.list.getElementAt(FilteredItemsSelectionDialog.this.list.getTable().getSelectionIndex() - 1) instanceof ItemsListSeparator) {
                        FilteredItemsSelectionDialog.this.list.getTable().setSelection(FilteredItemsSelectionDialog.this.list.getTable().getSelectionIndex() - 1);
                    }
                    FilteredItemsSelectionDialog.this.list.getTable().notifyListeners(13, new Event());
                }
                if (e.keyCode == 0x1000002 && (e.stateMask & 0x20000) != 0 && (e.stateMask & 0x40000) != 0) {
                    if (FilteredItemsSelectionDialog.this.list.getElementAt(FilteredItemsSelectionDialog.this.list.getTable().getSelectionIndex() + 1) instanceof ItemsListSeparator) {
                        FilteredItemsSelectionDialog.this.list.getTable().setSelection(FilteredItemsSelectionDialog.this.list.getTable().getSelectionIndex() + 1);
                    }
                    FilteredItemsSelectionDialog.this.list.getTable().notifyListeners(13, new Event());
                }
            }
        });
        this.createExtendedContentArea(content);
        this.details = new DetailsContentViewer(content, 0x800800);
        this.details.setVisible(this.toggleStatusLineAction.isChecked());
        this.details.setContentProvider(new NullContentProvider());
        this.details.setLabelProvider((IBaseLabelProvider)this.getDetailsLabelProvider());
        FilteredItemsSelectionDialog.applyDialogFont((Control)content);
        this.restoreDialog(this.getDialogSettings());
        if (this.initialPatternText != null) {
            this.pattern.setText(this.initialPatternText);
        }
        switch (this.selectionMode) {
            case 1: {
                this.pattern.setSelection(0, 0);
                break;
            }
            case 2: {
                this.pattern.setSelection(0, this.initialPatternText.length());
            }
        }
        this.applyFilter();
        return dialogArea;
    }

    protected void handleDoubleClick() {
        this.okPressed();
    }

    private void refreshDetails() {
        StructuredSelection selection = this.getSelectedItems();
        switch (selection.size()) {
            case 0: {
                this.details.setInput(null);
                break;
            }
            case 1: {
                this.details.setInput(selection.getFirstElement());
                break;
            }
            default: {
                this.details.setInput(NLS.bind((String)WorkbenchMessages.FilteredItemsSelectionDialog_nItemsSelected, (Object)new Integer(selection.size())));
            }
        }
    }

    protected void handleSelected(StructuredSelection selection) {
        Status status = new Status(0, "org.eclipse.ui", 0, EMPTY_STRING, null);
        Object[] lastSelection = this.currentSelection;
        this.currentSelection = selection.toArray();
        if (selection.size() == 0) {
            status = new Status(4, "org.eclipse.ui", 4, EMPTY_STRING, null);
            if (lastSelection != null && this.getListSelectionLabelDecorator() != null) {
                this.list.update(lastSelection, null);
            }
            this.currentSelection = null;
        } else {
            status = new Status(4, "org.eclipse.ui", 4, EMPTY_STRING, null);
            List items = selection.toList();
            Object item = null;
            IStatus tempStatus = null;
            Iterator it = items.iterator();
            while (it.hasNext()) {
                Object o = it.next();
                if (o instanceof ItemsListSeparator) continue;
                item = o;
                tempStatus = this.validateItem(item);
                if (tempStatus.isOK()) {
                    status = new Status(0, "org.eclipse.ui", 0, EMPTY_STRING, null);
                    continue;
                }
                status = tempStatus;
                break;
            }
            if (lastSelection != null && this.getListSelectionLabelDecorator() != null) {
                this.list.update(lastSelection, null);
            }
            if (this.getListSelectionLabelDecorator() != null) {
                this.list.update(this.currentSelection, null);
            }
        }
        this.refreshDetails();
        this.updateStatus((IStatus)status);
    }

    protected IDialogSettings getDialogBoundsSettings() {
        IDialogSettings settings = this.getDialogSettings();
        IDialogSettings section = settings.getSection(DIALOG_BOUNDS_SETTINGS);
        if (section == null) {
            section = settings.addNewSection(DIALOG_BOUNDS_SETTINGS);
            section.put(DIALOG_HEIGHT, 500);
            section.put(DIALOG_WIDTH, 600);
        }
        return section;
    }

    protected abstract IDialogSettings getDialogSettings();

    public void refresh() {
        if (this.list != null && !this.list.getTable().isDisposed()) {
            List lastRefreshSelection = ((StructuredSelection)this.list.getSelection()).toList();
            this.list.getTable().deselectAll();
            this.list.setItemCount(this.contentProvider.getNumberOfElements());
            this.list.refresh();
            if (this.list.getTable().getItemCount() > 0) {
                if (this.refreshWithLastSelection && lastRefreshSelection != null && lastRefreshSelection.size() > 0) {
                    this.list.setSelection((ISelection)new StructuredSelection(lastRefreshSelection));
                } else {
                    this.refreshWithLastSelection = true;
                    this.list.getTable().setSelection(0);
                    this.list.getTable().notifyListeners(13, new Event());
                }
            } else {
                this.list.setSelection((ISelection)StructuredSelection.EMPTY);
            }
        }
        this.scheduleProgressMessageRefresh();
    }

    public void updateProgressLabel() {
        this.scheduleProgressMessageRefresh();
    }

    public void reloadCache(boolean checkDuplicates, IProgressMonitor monitor) {
        if (this.list != null && !this.list.getTable().isDisposed() && this.contentProvider != null) {
            this.contentProvider.reloadCache(checkDuplicates, monitor);
        }
    }

    public void scheduleRefresh() {
        this.refreshCacheJob.cancelAll();
        this.refreshCacheJob.schedule();
    }

    public void scheduleProgressMessageRefresh() {
        if (this.filterJob.getState() != 4 && this.refreshProgressMessageJob.getState() != 4) {
            this.refreshProgressMessageJob.scheduleProgressRefresh(null);
        }
    }

    protected void computeResult() {
        List selectedElements = ((StructuredSelection)this.list.getSelection()).toList();
        ArrayList<Object> objectsToReturn = new ArrayList<Object>();
        Object item = null;
        Iterator it = selectedElements.iterator();
        while (it.hasNext()) {
            item = it.next();
            if (item instanceof ItemsListSeparator) continue;
            this.accessedHistoryItem(item);
            objectsToReturn.add(item);
        }
        this.setResult(objectsToReturn);
    }

    protected void updateStatus(IStatus status) {
        this.status = status;
        super.updateStatus(status);
    }

    protected void okPressed() {
        if (this.status != null && (this.status.isOK() || this.status.getCode() == 1)) {
            super.okPressed();
        }
    }

    public void setInitialPattern(String text) {
        this.setInitialPattern(text, 2);
    }

    public void setInitialPattern(String text, int selectionMode) {
        this.initialPatternText = text;
        this.selectionMode = selectionMode;
    }

    protected String getInitialPattern() {
        return this.initialPatternText;
    }

    protected StructuredSelection getSelectedItems() {
        StructuredSelection selection = (StructuredSelection)this.list.getSelection();
        List selectedItems = selection.toList();
        Object itemToRemove = null;
        Iterator it = selection.iterator();
        while (it.hasNext()) {
            Object item = it.next();
            if (!(item instanceof ItemsListSeparator)) continue;
            itemToRemove = item;
            break;
        }
        if (itemToRemove == null) {
            return new StructuredSelection(selectedItems);
        }
        ArrayList newItems = new ArrayList(selectedItems);
        newItems.remove(itemToRemove);
        return new StructuredSelection(newItems);
    }

    protected abstract IStatus validateItem(Object var1);

    protected abstract ItemsFilter createFilter();

    protected void applyFilter() {
        ItemsFilter newFilter = this.createFilter();
        if (this.filter != null && this.filter.equalsFilter(newFilter)) {
            return;
        }
        this.filterHistoryJob.cancel();
        this.filterJob.cancel();
        this.filter = newFilter;
        if (this.filter != null) {
            this.filterHistoryJob.schedule();
        }
    }

    protected abstract Comparator getItemsComparator();

    protected abstract void fillContentProvider(AbstractContentProvider var1, ItemsFilter var2, IProgressMonitor var3) throws CoreException;

    private void removeSelectedItems(List items) {
        Iterator iter = items.iterator();
        while (iter.hasNext()) {
            Object item = iter.next();
            this.removeHistoryItem(item);
        }
        this.refreshWithLastSelection = false;
        this.contentProvider.refresh();
    }

    protected Object removeHistoryItem(Object item) {
        return this.contentProvider.removeHistoryElement(item);
    }

    protected void accessedHistoryItem(Object item) {
        this.contentProvider.addHistoryElement(item);
    }

    private Comparator getHistoryComparator() {
        return new HistoryComparator();
    }

    protected SelectionHistory getSelectionHistory() {
        return this.contentProvider.getSelectionHistory();
    }

    protected void setSelectionHistory(SelectionHistory selectionHistory) {
        if (this.contentProvider != null) {
            this.contentProvider.setSelectionHistory(selectionHistory);
        }
    }

    public boolean isHistoryElement(Object item) {
        return this.contentProvider.isHistoryElement(item);
    }

    public boolean isDuplicateElement(Object item) {
        return this.contentProvider.isDuplicateElement(item);
    }

    public void setSeparatorLabel(String separatorLabel) {
        this.itemsListSeparator = new ItemsListSeparator(separatorLabel);
    }

    public abstract String getElementName(Object var1);

    private static boolean showColoredLabels() {
        return PlatformUI.getPreferenceStore().getBoolean("USE_COLORED_LABELS");
    }

    public Control getPatternControl() {
        return this.pattern;
    }

    protected abstract class AbstractContentProvider {
        protected AbstractContentProvider() {
        }

        public abstract void add(Object var1, ItemsFilter var2);
    }

    private class ContentProvider
    extends AbstractContentProvider
    implements IStructuredContentProvider,
    ILazyContentProvider {
        private SelectionHistory selectionHistory;
        private Set items = Collections.synchronizedSet(new HashSet(2048));
        private Set duplicates = Collections.synchronizedSet(new HashSet(256));
        private List filters;
        private List lastFilteredItems = new ArrayList();
        private List lastSortedItems = Collections.synchronizedList(new ArrayList(2048));
        private boolean reset;

        public void setSelectionHistory(SelectionHistory selectionHistory) {
            this.selectionHistory = selectionHistory;
        }

        public SelectionHistory getSelectionHistory() {
            return this.selectionHistory;
        }

        public void reset() {
            this.reset = true;
            this.items.clear();
            this.duplicates.clear();
            this.lastSortedItems.clear();
        }

        public void stopReloadingCache() {
            this.reset = true;
        }

        public void add(Object item, ItemsFilter itemsFilter) {
            if (itemsFilter == FilteredItemsSelectionDialog.this.filter) {
                if (itemsFilter != null) {
                    if (itemsFilter.matchItem(item)) {
                        this.items.add(item);
                    }
                } else {
                    this.items.add(item);
                }
            }
        }

        public void addHistoryItems(ItemsFilter itemsFilter) {
            if (this.selectionHistory != null) {
                Object[] items = this.selectionHistory.getHistoryItems();
                int i = 0;
                while (i < items.length) {
                    Object item = items[i];
                    if (itemsFilter == FilteredItemsSelectionDialog.this.filter && itemsFilter != null && itemsFilter.matchItem(item)) {
                        if (itemsFilter.isConsistentItem(item)) {
                            this.items.add(item);
                        } else {
                            this.selectionHistory.remove(item);
                        }
                    }
                    ++i;
                }
            }
        }

        public void refresh() {
            FilteredItemsSelectionDialog.this.scheduleRefresh();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public Object removeHistoryElement(Object item) {
            if (this.selectionHistory != null) {
                this.selectionHistory.remove(item);
            }
            if (FilteredItemsSelectionDialog.this.filter == null || FilteredItemsSelectionDialog.this.filter.getPattern().length() == 0) {
                this.items.remove(item);
                this.duplicates.remove(item);
                this.lastSortedItems.remove(item);
            }
            List list = this.lastSortedItems;
            synchronized (list) {
                Collections.sort(this.lastSortedItems, FilteredItemsSelectionDialog.this.getHistoryComparator());
            }
            return item;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void addHistoryElement(Object item) {
            if (this.selectionHistory != null) {
                this.selectionHistory.accessed(item);
            }
            if (FilteredItemsSelectionDialog.this.filter == null || !FilteredItemsSelectionDialog.this.filter.matchItem(item)) {
                this.items.remove(item);
                this.duplicates.remove(item);
                this.lastSortedItems.remove(item);
            }
            List list = this.lastSortedItems;
            synchronized (list) {
                Collections.sort(this.lastSortedItems, FilteredItemsSelectionDialog.this.getHistoryComparator());
            }
            this.refresh();
        }

        public boolean isHistoryElement(Object item) {
            if (this.selectionHistory != null) {
                return this.selectionHistory.contains(item);
            }
            return false;
        }

        public void setDuplicateElement(Object item, boolean isDuplicate) {
            if (this.items.contains(item)) {
                if (isDuplicate) {
                    this.duplicates.add(item);
                } else {
                    this.duplicates.remove(item);
                }
            }
        }

        public boolean isDuplicateElement(Object item) {
            return this.duplicates.contains(item);
        }

        public void loadHistory(IMemento memento) {
            if (this.selectionHistory != null) {
                this.selectionHistory.load(memento);
            }
        }

        public void saveHistory(IMemento memento) {
            if (this.selectionHistory != null) {
                this.selectionHistory.save(memento);
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        private Object[] getSortedItems() {
            if (this.lastSortedItems.size() != this.items.size()) {
                List list = this.lastSortedItems;
                synchronized (list) {
                    this.lastSortedItems.clear();
                    this.lastSortedItems.addAll(this.items);
                    Collections.sort(this.lastSortedItems, FilteredItemsSelectionDialog.this.getHistoryComparator());
                }
            }
            return this.lastSortedItems.toArray();
        }

        public void rememberResult(ItemsFilter itemsFilter) {
            List<Object> itemsList = Collections.synchronizedList(Arrays.asList(this.getSortedItems()));
            if (itemsFilter == FilteredItemsSelectionDialog.this.filter) {
                FilteredItemsSelectionDialog.this.lastCompletedFilter = itemsFilter;
                FilteredItemsSelectionDialog.this.lastCompletedResult = itemsList;
            }
        }

        public Object[] getElements(Object inputElement) {
            return this.lastFilteredItems.toArray();
        }

        public int getNumberOfElements() {
            return this.lastFilteredItems.size();
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }

        public void updateElement(int index) {
            FilteredItemsSelectionDialog.this.list.replace(this.lastFilteredItems.size() > index ? this.lastFilteredItems.get(index) : null, index);
        }

        public void reloadCache(boolean checkDuplicates, IProgressMonitor monitor) {
            this.reset = false;
            if (monitor != null) {
                int totalWork = checkDuplicates ? 200 : 100;
                monitor.beginTask(WorkbenchMessages.FilteredItemsSelectionDialog_cacheRefreshJob, totalWork);
            }
            this.lastFilteredItems = Arrays.asList(this.getFilteredItems(FilteredItemsSelectionDialog.this.list.getInput(), (IProgressMonitor)(monitor != null ? new SubProgressMonitor(monitor, 100) : null)));
            if (this.reset || monitor != null && monitor.isCanceled()) {
                if (monitor != null) {
                    monitor.done();
                }
                return;
            }
            if (checkDuplicates) {
                this.checkDuplicates(monitor);
            }
            if (monitor != null) {
                monitor.done();
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        private void checkDuplicates(IProgressMonitor monitor) {
            List list = this.lastFilteredItems;
            synchronized (list) {
                SubProgressMonitor subMonitor = null;
                int reportEvery = this.lastFilteredItems.size() / 20;
                if (monitor != null) {
                    subMonitor = new SubProgressMonitor(monitor, 100);
                    subMonitor.beginTask(WorkbenchMessages.FilteredItemsSelectionDialog_cacheRefreshJob_checkDuplicates, 5);
                }
                HashMap helperMap = new HashMap();
                int i = 0;
                while (i < this.lastFilteredItems.size()) {
                    if (this.reset || subMonitor != null && subMonitor.isCanceled()) {
                        return;
                    }
                    Object item = this.lastFilteredItems.get(i);
                    if (!(item instanceof ItemsListSeparator)) {
                        Object previousItem = helperMap.put(FilteredItemsSelectionDialog.this.getElementName(item), item);
                        if (previousItem != null) {
                            this.setDuplicateElement(previousItem, true);
                            this.setDuplicateElement(item, true);
                        } else {
                            this.setDuplicateElement(item, false);
                        }
                    }
                    if (subMonitor != null && reportEvery != 0 && (i + 1) % reportEvery == 0) {
                        subMonitor.worked(1);
                    }
                    ++i;
                }
                helperMap.clear();
            }
        }

        protected Object[] getFilteredItems(Object parent, IProgressMonitor monitor) {
            int ticks = 100;
            if (monitor == null) {
                monitor = new NullProgressMonitor();
            }
            monitor.beginTask(WorkbenchMessages.FilteredItemsSelectionDialog_cacheRefreshJob_getFilteredElements, ticks);
            ticks = this.filters != null ? (ticks /= this.filters.size() + 2) : (ticks /= 2);
            Object[] filteredElements = this.getSortedItems();
            monitor.worked(ticks);
            if (this.filters != null && filteredElements != null) {
                Iterator iter = this.filters.iterator();
                while (iter.hasNext()) {
                    ViewerFilter f = (ViewerFilter)iter.next();
                    filteredElements = f.filter((Viewer)FilteredItemsSelectionDialog.this.list, parent, filteredElements);
                    monitor.worked(ticks);
                }
            }
            if (filteredElements == null || monitor.isCanceled()) {
                monitor.done();
                return new Object[0];
            }
            ArrayList<Object> preparedElements = new ArrayList<Object>();
            boolean hasHistory = false;
            if (filteredElements.length > 0 && this.isHistoryElement(filteredElements[0])) {
                hasHistory = true;
            }
            int reportEvery = filteredElements.length / ticks;
            int i = 0;
            while (i < filteredElements.length) {
                Object item = filteredElements[i];
                if (hasHistory && !this.isHistoryElement(item)) {
                    preparedElements.add(FilteredItemsSelectionDialog.this.itemsListSeparator);
                    hasHistory = false;
                }
                preparedElements.add(item);
                if (reportEvery != 0 && (i + 1) % reportEvery == 0) {
                    monitor.worked(1);
                }
                ++i;
            }
            monitor.done();
            return preparedElements.toArray();
        }

        public void addFilter(ViewerFilter filter) {
            if (this.filters == null) {
                this.filters = new ArrayList();
            }
            this.filters.add(filter);
        }
    }

    private class DetailsContentViewer
    extends ContentViewer {
        private CLabel label;
        private ViewForm viewForm;

        public DetailsContentViewer(Composite parent, int style) {
            this.viewForm = new ViewForm(parent, style);
            GridData gd = new GridData(768);
            gd.horizontalSpan = 2;
            this.viewForm.setLayoutData((Object)gd);
            this.label = new CLabel((Composite)this.viewForm, 0x800000);
            this.label.setFont(parent.getFont());
            this.viewForm.setContent((Control)this.label);
            this.hookControl((Control)this.label);
        }

        public void setVisible(boolean visible) {
            GridData gd = (GridData)this.viewForm.getLayoutData();
            gd.exclude = !visible;
            this.viewForm.getParent().layout();
        }

        protected void inputChanged(Object input, Object oldInput) {
            if (oldInput == null) {
                if (input == null) {
                    return;
                }
                this.refresh();
                return;
            }
            this.refresh();
        }

        protected void handleLabelProviderChanged(LabelProviderChangedEvent event) {
            if (event != null) {
                this.refresh(event.getElements());
            }
        }

        public Control getControl() {
            return this.label;
        }

        public ISelection getSelection() {
            return null;
        }

        public void refresh() {
            Object input = this.getInput();
            if (input != null) {
                ILabelProvider labelProvider = (ILabelProvider)this.getLabelProvider();
                this.doRefresh(labelProvider.getText(input), labelProvider.getImage(input));
            } else {
                this.doRefresh(null, null);
            }
        }

        private void doRefresh(String text, Image image) {
            if (text != null) {
                text = LegacyActionTools.escapeMnemonics((String)text);
            }
            this.label.setText(text);
            this.label.setImage(image);
        }

        public void setSelection(ISelection selection, boolean reveal) {
        }

        private void refresh(Object[] objs) {
            if (objs == null || this.getInput() == null) {
                return;
            }
            Object input = this.getInput();
            int i = 0;
            while (i < objs.length) {
                if (objs[i].equals(input)) {
                    this.refresh();
                    break;
                }
                ++i;
            }
        }
    }

    private class FilterHistoryJob
    extends Job {
        private ItemsFilter itemsFilter;

        public FilterHistoryJob() {
            super(WorkbenchMessages.FilteredItemsSelectionDialog_jobLabel);
            this.setSystem(true);
        }

        protected IStatus run(IProgressMonitor monitor) {
            this.itemsFilter = FilteredItemsSelectionDialog.this.filter;
            FilteredItemsSelectionDialog.this.contentProvider.reset();
            FilteredItemsSelectionDialog.this.refreshWithLastSelection = false;
            FilteredItemsSelectionDialog.this.contentProvider.addHistoryItems(this.itemsFilter);
            if (FilteredItemsSelectionDialog.this.lastCompletedFilter == null || !FilteredItemsSelectionDialog.this.lastCompletedFilter.isSubFilter(this.itemsFilter)) {
                FilteredItemsSelectionDialog.this.contentProvider.refresh();
            }
            FilteredItemsSelectionDialog.this.filterJob.schedule();
            return Status.OK_STATUS;
        }
    }

    private class FilterJob
    extends Job {
        protected ItemsFilter itemsFilter;

        public FilterJob() {
            super(WorkbenchMessages.FilteredItemsSelectionDialog_jobLabel);
            this.setSystem(true);
        }

        protected final IStatus run(IProgressMonitor parent) {
            GranualProgressMonitor monitor = new GranualProgressMonitor(parent);
            return this.doRun(monitor);
        }

        protected IStatus doRun(GranualProgressMonitor monitor) {
            try {
                this.internalRun(monitor);
            }
            catch (CoreException e) {
                this.cancel();
                return new Status(4, "org.eclipse.ui", 4, WorkbenchMessages.FilteredItemsSelectionDialog_jobError, (Throwable)e);
            }
            return Status.OK_STATUS;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        private void internalRun(GranualProgressMonitor monitor) throws CoreException {
            try {
                if (monitor.isCanceled()) {
                    return;
                }
                this.itemsFilter = FilteredItemsSelectionDialog.this.filter;
                if (FilteredItemsSelectionDialog.this.filter.getPattern().length() != 0) {
                    this.filterContent(monitor);
                }
                if (monitor.isCanceled()) {
                    return;
                }
                FilteredItemsSelectionDialog.this.contentProvider.refresh();
                return;
            }
            finally {
                monitor.done();
            }
        }

        protected void filterContent(GranualProgressMonitor monitor) throws CoreException {
            if (FilteredItemsSelectionDialog.this.lastCompletedFilter != null && FilteredItemsSelectionDialog.this.lastCompletedFilter.isSubFilter(this.itemsFilter)) {
                int length = FilteredItemsSelectionDialog.this.lastCompletedResult.size() / 500;
                monitor.beginTask(WorkbenchMessages.FilteredItemsSelectionDialog_cacheSearchJob_taskName, length);
                int pos = 0;
                while (pos < FilteredItemsSelectionDialog.this.lastCompletedResult.size()) {
                    Object item = FilteredItemsSelectionDialog.this.lastCompletedResult.get(pos);
                    if (!monitor.isCanceled()) {
                        FilteredItemsSelectionDialog.this.contentProvider.add(item, this.itemsFilter);
                        if (pos % 500 == 0) {
                            monitor.worked(1);
                        }
                        ++pos;
                        continue;
                    }
                    break;
                }
            } else {
                FilteredItemsSelectionDialog.this.lastCompletedFilter = null;
                FilteredItemsSelectionDialog.this.lastCompletedResult = null;
                SubProgressMonitor subMonitor = null;
                if (monitor != null) {
                    monitor.beginTask(WorkbenchMessages.FilteredItemsSelectionDialog_searchJob_taskName, 100);
                    subMonitor = new SubProgressMonitor((IProgressMonitor)monitor, 95);
                }
                FilteredItemsSelectionDialog.this.fillContentProvider(FilteredItemsSelectionDialog.this.contentProvider, this.itemsFilter, (IProgressMonitor)subMonitor);
                if (monitor != null && !monitor.isCanceled()) {
                    monitor.worked(2);
                    FilteredItemsSelectionDialog.this.contentProvider.rememberResult(this.itemsFilter);
                    monitor.worked(3);
                }
            }
        }
    }

    private class GranualProgressMonitor
    extends ProgressMonitorWrapper {
        private String name;
        private String subName;
        private int totalWork;
        private double worked;
        private boolean done;

        public GranualProgressMonitor(IProgressMonitor monitor) {
            super(monitor);
        }

        public boolean isDone() {
            return this.done;
        }

        public void setTaskName(String name) {
            super.setTaskName(name);
            this.name = name;
            this.subName = null;
        }

        public void subTask(String name) {
            super.subTask(name);
            this.subName = name;
        }

        public void beginTask(String name, int totalWork) {
            super.beginTask(name, totalWork);
            if (this.name == null) {
                this.name = name;
            }
            this.totalWork = totalWork;
            FilteredItemsSelectionDialog.this.refreshProgressMessageJob.scheduleProgressRefresh(this);
        }

        public void worked(int work) {
            super.worked(work);
            this.internalWorked(work);
        }

        public void done() {
            this.done = true;
            super.done();
        }

        public void setCanceled(boolean b) {
            this.done = b;
            super.setCanceled(b);
        }

        public void internalWorked(double work) {
            this.worked += work;
        }

        private String getMessage() {
            String message;
            if (this.done) {
                return FilteredItemsSelectionDialog.EMPTY_STRING;
            }
            if (this.name == null) {
                message = this.subName == null ? FilteredItemsSelectionDialog.EMPTY_STRING : this.subName;
            } else {
                String string = message = this.subName == null ? this.name : NLS.bind((String)WorkbenchMessages.FilteredItemsSelectionDialog_subtaskProgressMessage, (Object[])new Object[]{this.name, this.subName});
            }
            if (this.totalWork == 0) {
                return message;
            }
            return NLS.bind((String)WorkbenchMessages.FilteredItemsSelectionDialog_taskProgressMessage, (Object[])new Object[]{message, new Integer((int)(this.worked * 100.0 / (double)this.totalWork))});
        }
    }

    private class HistoryComparator
    implements Comparator {
        private HistoryComparator() {
        }

        public int compare(Object o1, Object o2) {
            boolean h2;
            boolean h1 = FilteredItemsSelectionDialog.this.isHistoryElement(o1);
            if (h1 == (h2 = FilteredItemsSelectionDialog.this.isHistoryElement(o2))) {
                return FilteredItemsSelectionDialog.this.getItemsComparator().compare(o1, o2);
            }
            if (h1) {
                return -2;
            }
            if (h2) {
                return 2;
            }
            return 0;
        }
    }

    protected abstract class ItemsFilter {
        protected SearchPattern patternMatcher;

        public ItemsFilter() {
            this(new SearchPattern());
        }

        public ItemsFilter(SearchPattern searchPattern) {
            this.patternMatcher = searchPattern;
            String stringPattern = FilteredItemsSelectionDialog.EMPTY_STRING;
            if (FilteredItemsSelectionDialog.this.pattern != null && !FilteredItemsSelectionDialog.this.pattern.getText().equals("*")) {
                stringPattern = FilteredItemsSelectionDialog.this.pattern.getText();
            }
            this.patternMatcher.setPattern(stringPattern);
        }

        public boolean isSubFilter(ItemsFilter filter) {
            if (filter != null) {
                return this.patternMatcher.isSubPattern(filter.patternMatcher);
            }
            return false;
        }

        public boolean equalsFilter(ItemsFilter filter) {
            return filter != null && filter.patternMatcher.equalsPattern(this.patternMatcher);
        }

        public boolean isCamelCasePattern() {
            return this.patternMatcher.getMatchRule() == 128;
        }

        public String getPattern() {
            return this.patternMatcher.getPattern();
        }

        public int getMatchRule() {
            return this.patternMatcher.getMatchRule();
        }

        protected boolean matches(String text) {
            return this.patternMatcher.matches(text);
        }

        public boolean matchesRawNamePattern(Object item) {
            int prefixLength;
            String prefix = this.patternMatcher.getPattern();
            String text = FilteredItemsSelectionDialog.this.getElementName(item);
            if (text == null) {
                return false;
            }
            int textLength = text.length();
            if (textLength < (prefixLength = prefix.length())) {
                return false;
            }
            int i = prefixLength - 1;
            while (i >= 0) {
                if (Character.toLowerCase(prefix.charAt(i)) != Character.toLowerCase(text.charAt(i))) {
                    return false;
                }
                --i;
            }
            return true;
        }

        public abstract boolean matchItem(Object var1);

        public abstract boolean isConsistentItem(Object var1);
    }

    private class ItemsListLabelProvider
    extends StyledCellLabelProvider
    implements ILabelProviderListener {
        private ILabelProvider provider;
        private ILabelDecorator selectionDecorator;
        private ListenerList listeners = new ListenerList();

        public ItemsListLabelProvider(ILabelProvider provider, ILabelDecorator selectionDecorator) {
            Assert.isNotNull((Object)provider);
            this.provider = provider;
            this.selectionDecorator = selectionDecorator;
            this.setOwnerDrawEnabled(FilteredItemsSelectionDialog.showColoredLabels() && provider instanceof DelegatingStyledCellLabelProvider.IStyledLabelProvider);
            provider.addListener((ILabelProviderListener)this);
            if (selectionDecorator != null) {
                selectionDecorator.addListener((ILabelProviderListener)this);
            }
        }

        public void setSelectionDecorator(ILabelDecorator newSelectionDecorator) {
            if (this.selectionDecorator != null) {
                this.selectionDecorator.removeListener((ILabelProviderListener)this);
                this.selectionDecorator.dispose();
            }
            this.selectionDecorator = newSelectionDecorator;
            if (this.selectionDecorator != null) {
                this.selectionDecorator.addListener((ILabelProviderListener)this);
            }
        }

        public ILabelDecorator getSelectionDecorator() {
            return this.selectionDecorator;
        }

        public void setProvider(ILabelProvider newProvider) {
            Assert.isNotNull((Object)newProvider);
            this.provider.removeListener((ILabelProviderListener)this);
            this.provider.dispose();
            this.provider = newProvider;
            if (this.provider != null) {
                this.provider.addListener((ILabelProviderListener)this);
            }
            this.setOwnerDrawEnabled(FilteredItemsSelectionDialog.showColoredLabels() && this.provider instanceof DelegatingStyledCellLabelProvider.IStyledLabelProvider);
        }

        private Image getImage(Object element) {
            if (element instanceof ItemsListSeparator) {
                return WorkbenchImages.getImage("IMG_OBJ_SEPARATOR");
            }
            return this.provider.getImage(element);
        }

        private boolean isSelected(Object element) {
            if (element != null && FilteredItemsSelectionDialog.this.currentSelection != null) {
                int i = 0;
                while (i < FilteredItemsSelectionDialog.this.currentSelection.length) {
                    if (element.equals(FilteredItemsSelectionDialog.this.currentSelection[i])) {
                        return true;
                    }
                    ++i;
                }
            }
            return false;
        }

        private String getText(Object element) {
            if (element instanceof ItemsListSeparator) {
                return this.getSeparatorLabel(((ItemsListSeparator)element).getName());
            }
            String str = this.provider.getText(element);
            if (this.selectionDecorator != null && this.isSelected(element)) {
                return this.selectionDecorator.decorateText(str.toString(), element);
            }
            return str;
        }

        private StyledString getStyledText(Object element, DelegatingStyledCellLabelProvider.IStyledLabelProvider provider) {
            StyledString string = provider.getStyledText(element);
            if (this.selectionDecorator != null && this.isSelected(element)) {
                String decorated = this.selectionDecorator.decorateText(string.getString(), element);
                return StyledCellLabelProvider.styleDecoratedString((String)decorated, null, (StyledString)string);
            }
            return string;
        }

        public void update(ViewerCell cell) {
            Object element = cell.getElement();
            if (!(element instanceof ItemsListSeparator) && this.provider instanceof DelegatingStyledCellLabelProvider.IStyledLabelProvider) {
                DelegatingStyledCellLabelProvider.IStyledLabelProvider styledLabelProvider = (DelegatingStyledCellLabelProvider.IStyledLabelProvider)this.provider;
                StyledString styledString = this.getStyledText(element, styledLabelProvider);
                cell.setText(styledString.getString());
                cell.setStyleRanges(styledString.getStyleRanges());
                cell.setImage(styledLabelProvider.getImage(element));
            } else {
                cell.setText(this.getText(element));
                cell.setImage(this.getImage(element));
            }
            cell.setFont(this.getFont(element));
            cell.setForeground(this.getForeground(element));
            cell.setBackground(this.getBackground(element));
            super.update(cell);
        }

        private String getSeparatorLabel(String separatorLabel) {
            Rectangle rect = FilteredItemsSelectionDialog.this.list.getTable().getBounds();
            int borderWidth = ((FilteredItemsSelectionDialog)FilteredItemsSelectionDialog.this).list.getTable().computeTrim((int)0, (int)0, (int)0, (int)0).width;
            int imageWidth = WorkbenchImages.getImage((String)"IMG_OBJ_SEPARATOR").getBounds().width;
            int width = rect.width - borderWidth - imageWidth;
            GC gc = new GC((Drawable)FilteredItemsSelectionDialog.this.list.getTable());
            gc.setFont(FilteredItemsSelectionDialog.this.list.getTable().getFont());
            int fSeparatorWidth = gc.getAdvanceWidth('-');
            int fMessageLength = gc.textExtent((String)separatorLabel).x;
            gc.dispose();
            StringBuffer dashes = new StringBuffer();
            int chars = (width - fMessageLength) / fSeparatorWidth / 2 - 2;
            int i = 0;
            while (i < chars) {
                dashes.append('-');
                ++i;
            }
            StringBuffer result = new StringBuffer();
            result.append(dashes);
            result.append(" " + separatorLabel + " ");
            result.append(dashes);
            return result.toString().trim();
        }

        public void addListener(ILabelProviderListener listener) {
            this.listeners.add((Object)listener);
        }

        public void dispose() {
            this.provider.removeListener((ILabelProviderListener)this);
            this.provider.dispose();
            if (this.selectionDecorator != null) {
                this.selectionDecorator.removeListener((ILabelProviderListener)this);
                this.selectionDecorator.dispose();
            }
            super.dispose();
        }

        public boolean isLabelProperty(Object element, String property) {
            if (this.provider.isLabelProperty(element, property)) {
                return true;
            }
            return this.selectionDecorator != null && this.selectionDecorator.isLabelProperty(element, property);
        }

        public void removeListener(ILabelProviderListener listener) {
            this.listeners.remove((Object)listener);
        }

        private Color getBackground(Object element) {
            if (element instanceof ItemsListSeparator) {
                return null;
            }
            if (this.provider instanceof IColorProvider) {
                return ((IColorProvider)this.provider).getBackground(element);
            }
            return null;
        }

        private Color getForeground(Object element) {
            if (element instanceof ItemsListSeparator) {
                return Display.getCurrent().getSystemColor(18);
            }
            if (this.provider instanceof IColorProvider) {
                return ((IColorProvider)this.provider).getForeground(element);
            }
            return null;
        }

        private Font getFont(Object element) {
            if (element instanceof ItemsListSeparator) {
                return null;
            }
            if (this.provider instanceof IFontProvider) {
                return ((IFontProvider)this.provider).getFont(element);
            }
            return null;
        }

        public void labelProviderChanged(LabelProviderChangedEvent event) {
            Object[] l = this.listeners.getListeners();
            int i = 0;
            while (i < this.listeners.size()) {
                ((ILabelProviderListener)l[i]).labelProviderChanged(event);
                ++i;
            }
        }
    }

    private class ItemsListSeparator {
        private String name;

        public ItemsListSeparator(String name) {
            this.name = name;
        }

        public String getName() {
            return this.name;
        }
    }

    private class NullContentProvider
    implements IContentProvider {
        private NullContentProvider() {
        }

        public void dispose() {
        }

        public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
        }
    }

    private class RefreshCacheJob
    extends Job {
        private RefreshJob refreshJob;

        public RefreshCacheJob() {
            super(WorkbenchMessages.FilteredItemsSelectionDialog_cacheRefreshJob);
            this.refreshJob = new RefreshJob();
            this.setSystem(true);
        }

        public void cancelAll() {
            this.cancel();
            this.refreshJob.cancel();
        }

        protected IStatus run(IProgressMonitor monitor) {
            if (monitor.isCanceled()) {
                return new Status(8, WorkbenchPlugin.PI_WORKBENCH, 8, FilteredItemsSelectionDialog.EMPTY_STRING, null);
            }
            if (FilteredItemsSelectionDialog.this != null) {
                GranualProgressMonitor wrappedMonitor = new GranualProgressMonitor(monitor);
                FilteredItemsSelectionDialog.this.reloadCache(true, (IProgressMonitor)wrappedMonitor);
            }
            if (!monitor.isCanceled()) {
                this.refreshJob.schedule();
            }
            return new Status(0, "org.eclipse.ui", 0, FilteredItemsSelectionDialog.EMPTY_STRING, null);
        }

        protected void canceling() {
            super.canceling();
            FilteredItemsSelectionDialog.this.contentProvider.stopReloadingCache();
        }
    }

    private class RefreshJob
    extends UIJob {
        public RefreshJob() {
            super(FilteredItemsSelectionDialog.this.getParentShell().getDisplay(), WorkbenchMessages.FilteredItemsSelectionDialog_refreshJob);
            this.setSystem(true);
        }

        public IStatus runInUIThread(IProgressMonitor monitor) {
            if (monitor.isCanceled()) {
                return new Status(0, WorkbenchPlugin.PI_WORKBENCH, 0, FilteredItemsSelectionDialog.EMPTY_STRING, null);
            }
            if (FilteredItemsSelectionDialog.this != null) {
                FilteredItemsSelectionDialog.this.refresh();
            }
            return new Status(0, "org.eclipse.ui", 0, FilteredItemsSelectionDialog.EMPTY_STRING, null);
        }
    }

    private class RefreshProgressMessageJob
    extends UIJob {
        private GranualProgressMonitor progressMonitor;

        public RefreshProgressMessageJob() {
            super(FilteredItemsSelectionDialog.this.getParentShell().getDisplay(), WorkbenchMessages.FilteredItemsSelectionDialog_progressRefreshJob);
            this.setSystem(true);
        }

        public IStatus runInUIThread(IProgressMonitor monitor) {
            if (!FilteredItemsSelectionDialog.this.progressLabel.isDisposed()) {
                FilteredItemsSelectionDialog.this.progressLabel.setText(this.progressMonitor != null ? this.progressMonitor.getMessage() : FilteredItemsSelectionDialog.EMPTY_STRING);
            }
            if (this.progressMonitor == null || this.progressMonitor.isDone()) {
                return new Status(8, "org.eclipse.ui", 8, FilteredItemsSelectionDialog.EMPTY_STRING, null);
            }
            this.schedule(500L);
            return new Status(0, "org.eclipse.ui", 0, FilteredItemsSelectionDialog.EMPTY_STRING, null);
        }

        public void scheduleProgressRefresh(GranualProgressMonitor progressMonitor) {
            this.progressMonitor = progressMonitor;
            this.schedule(200L);
        }
    }

    private class RemoveHistoryItemAction
    extends Action {
        public RemoveHistoryItemAction() {
            super(WorkbenchMessages.FilteredItemsSelectionDialog_removeItemsFromHistoryAction);
        }

        public void run() {
            List selectedElements = ((StructuredSelection)FilteredItemsSelectionDialog.this.list.getSelection()).toList();
            FilteredItemsSelectionDialog.this.removeSelectedItems(selectedElements);
        }
    }

    protected static abstract class SelectionHistory {
        private static final String DEFAULT_ROOT_NODE_NAME = "historyRootNode";
        private static final String DEFAULT_INFO_NODE_NAME = "infoNode";
        private static final int MAX_HISTORY_SIZE = 60;
        private final Set historyList = Collections.synchronizedSet(new LinkedHashSet(this){
            private static final long serialVersionUID = 0L;
            final /* synthetic */ SelectionHistory this$1;
            {
                this.this$1 = selectionHistory;
            }

            public boolean add(Object arg0) {
                if (this.size() >= 60) {
                    Iterator<E> iterator = this.iterator();
                    iterator.next();
                    iterator.remove();
                }
                return super.add(arg0);
            }
        });
        private final String rootNodeName;
        private final String infoNodeName;

        private SelectionHistory(String rootNodeName, String infoNodeName) {
            this.rootNodeName = rootNodeName;
            this.infoNodeName = infoNodeName;
        }

        public SelectionHistory() {
            this(DEFAULT_ROOT_NODE_NAME, DEFAULT_INFO_NODE_NAME);
        }

        public synchronized void accessed(Object object) {
            this.historyList.remove(object);
            this.historyList.add(object);
        }

        public synchronized boolean contains(Object object) {
            return this.historyList.contains(object);
        }

        public synchronized boolean isEmpty() {
            return this.historyList.isEmpty();
        }

        public synchronized boolean remove(Object element) {
            return this.historyList.remove(element);
        }

        public void load(IMemento memento) {
            XMLMemento historyMemento = (XMLMemento)memento.getChild(this.rootNodeName);
            if (historyMemento == null) {
                return;
            }
            IMemento[] mementoElements = historyMemento.getChildren(this.infoNodeName);
            int i = 0;
            while (i < mementoElements.length) {
                IMemento mementoElement = mementoElements[i];
                Object object = this.restoreItemFromMemento(mementoElement);
                if (object != null) {
                    this.historyList.add(object);
                }
                ++i;
            }
        }

        public void save(IMemento memento) {
            IMemento historyMemento = memento.createChild(this.rootNodeName);
            Object[] items = this.getHistoryItems();
            int i = 0;
            while (i < items.length) {
                Object item = items[i];
                IMemento elementMemento = historyMemento.createChild(this.infoNodeName);
                this.storeItemToMemento(item, elementMemento);
                ++i;
            }
        }

        public synchronized Object[] getHistoryItems() {
            return this.historyList.toArray();
        }

        protected abstract Object restoreItemFromMemento(IMemento var1);

        protected abstract void storeItemToMemento(Object var1, IMemento var2);
    }

    private class ToggleStatusLineAction
    extends Action {
        public ToggleStatusLineAction() {
            super(WorkbenchMessages.FilteredItemsSelectionDialog_toggleStatusAction, 2);
        }

        public void run() {
            FilteredItemsSelectionDialog.this.details.setVisible(this.isChecked());
        }
    }
}

