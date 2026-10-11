/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  com.ibm.icu.text.SimpleDateFormat
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.util.Policy
 *  org.eclipse.jface.viewers.DoubleClickEvent
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.IDoubleClickListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TreeSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceAdapter
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.program.Program
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.FileDialog
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 *  org.eclipse.swt.widgets.TreeItem
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.IPerspectiveDescriptor
 *  org.eclipse.ui.IPerspectiveListener
 *  org.eclipse.ui.IPerspectiveListener2
 *  org.eclipse.ui.IViewReference
 *  org.eclipse.ui.IViewSite
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchPartReference
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.XMLMemento
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.dialogs.FilteredTree
 *  org.eclipse.ui.dialogs.PatternFilter
 *  org.eclipse.ui.part.ViewPart
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.ui.internal.views.log;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.IDoubleClickListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceAdapter;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.program.Program;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IPerspectiveListener2;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.internal.views.log.AbstractEntry;
import org.eclipse.ui.internal.views.log.Activator;
import org.eclipse.ui.internal.views.log.EventDetailsDialogAction;
import org.eclipse.ui.internal.views.log.FilterDialog;
import org.eclipse.ui.internal.views.log.Group;
import org.eclipse.ui.internal.views.log.ImportLogAction;
import org.eclipse.ui.internal.views.log.LogEntry;
import org.eclipse.ui.internal.views.log.LogFilesManager;
import org.eclipse.ui.internal.views.log.LogReader;
import org.eclipse.ui.internal.views.log.LogSession;
import org.eclipse.ui.internal.views.log.LogViewContentProvider;
import org.eclipse.ui.internal.views.log.LogViewLabelProvider;
import org.eclipse.ui.internal.views.log.Messages;
import org.eclipse.ui.internal.views.log.OpenIDELogFileAction;
import org.eclipse.ui.internal.views.log.OpenLogDialog;
import org.eclipse.ui.internal.views.log.SharedImages;
import org.eclipse.ui.part.ViewPart;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class LogView
extends ViewPart
implements ILogListener {
    public static final String P_LOG_WARNING = "warning";
    public static final String P_LOG_ERROR = "error";
    public static final String P_LOG_INFO = "info";
    public static final String P_LOG_OK = "ok";
    public static final String P_LOG_LIMIT = "limit";
    public static final String P_USE_LIMIT = "useLimit";
    public static final String P_SHOW_ALL_SESSIONS = "allSessions";
    protected static final String P_COLUMN_1 = "column2";
    protected static final String P_COLUMN_2 = "column3";
    protected static final String P_COLUMN_3 = "column4";
    public static final String P_ACTIVATE = "activate";
    public static final String P_SHOW_FILTER_TEXT = "show_filter_text";
    public static final String P_ORDER_TYPE = "orderType";
    public static final String P_ORDER_VALUE = "orderValue";
    public static final String P_IMPORT_LOG = "importLog";
    public static final String P_GROUP_BY = "groupBy";
    private int MESSAGE_ORDER;
    private int PLUGIN_ORDER;
    private int DATE_ORDER;
    public static final byte MESSAGE = 0;
    public static final byte PLUGIN = 1;
    public static final byte DATE = 2;
    public static int ASCENDING = 1;
    public static int DESCENDING = -1;
    public static final int GROUP_BY_NONE = 0;
    public static final int GROUP_BY_SESSION = 1;
    public static final int GROUP_BY_PLUGIN = 2;
    private List elements = new ArrayList();
    private Map groups = new HashMap();
    private LogSession currentSession;
    private List batchedEntries = new ArrayList();
    private boolean batchEntries;
    private Clipboard fClipboard;
    private IMemento fMemento;
    private File fInputFile = Platform.getLogFileLocation().toFile();
    private String fDirectory;
    private Comparator fComparator;
    private boolean fCanOpenTextShell;
    private Text fTextLabel;
    private Shell fTextShell;
    private boolean fFirstEvent = true;
    private TreeColumn fColumn1;
    private TreeColumn fColumn2;
    private TreeColumn fColumn3;
    private Tree fTree;
    private FilteredTree fFilteredTree;
    private LogViewLabelProvider fLabelProvider;
    private Action fPropertiesAction;
    private Action fDeleteLogAction;
    private Action fReadLogAction;
    private Action fCopyAction;
    private Action fActivateViewAction;
    private Action fOpenLogAction;
    private Action fExportLogAction;
    private Action fExportLogEntryAction;

    public void createPartControl(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.horizontalSpacing = 0;
        layout.verticalSpacing = 0;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        this.readLogFile();
        this.createViewer(composite);
        this.getSite().setSelectionProvider((ISelectionProvider)this.fFilteredTree.getViewer());
        this.createActions();
        this.fClipboard = new Clipboard(this.fTree.getDisplay());
        this.fTree.setToolTipText("");
        this.initializeViewerSorter();
        this.makeHoverShell();
        Platform.addLogListener((ILogListener)this);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)this.fFilteredTree, "org.eclipse.pde.doc.user.log_view");
        this.getSite().getWorkbenchWindow().addPerspectiveListener((IPerspectiveListener)new IPerspectiveListener2(){

            public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, IWorkbenchPartReference partRef, String changeId) {
                if (!(partRef instanceof IViewReference)) {
                    return;
                }
                IWorkbenchPart part = partRef.getPart(false);
                if (part == null) {
                    return;
                }
                if (part.equals((Object)LogView.this)) {
                    if (changeId.equals("viewShow")) {
                        if (!LogView.this.batchedEntries.isEmpty()) {
                            LogView.this.pushBatchedEntries();
                        }
                        LogView.this.batchEntries = false;
                    } else if (changeId.equals("viewHide")) {
                        LogView.this.batchEntries = true;
                    }
                }
            }

            public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor perspective) {
            }

            public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
            }
        });
    }

    private void createActions() {
        IActionBars bars = this.getViewSite().getActionBars();
        this.fCopyAction = this.createCopyAction();
        bars.setGlobalActionHandler(ActionFactory.COPY.getId(), (IAction)this.fCopyAction);
        IToolBarManager toolBarManager = bars.getToolBarManager();
        this.fExportLogAction = this.createExportLogAction();
        toolBarManager.add((IAction)this.fExportLogAction);
        this.fExportLogEntryAction = this.createExportLogEntryAction();
        Action importLogAction = this.createImportLogAction();
        toolBarManager.add((IAction)importLogAction);
        toolBarManager.add((IContributionItem)new Separator("additions"));
        final Action clearAction = this.createClearAction();
        toolBarManager.add((IAction)clearAction);
        this.fDeleteLogAction = this.createDeleteLogAction();
        toolBarManager.add((IAction)this.fDeleteLogAction);
        this.fOpenLogAction = this.createOpenLogAction();
        toolBarManager.add((IAction)this.fOpenLogAction);
        this.fReadLogAction = this.createReadLogAction();
        toolBarManager.add((IAction)this.fReadLogAction);
        toolBarManager.add((IContributionItem)new Separator());
        IMenuManager mgr = bars.getMenuManager();
        mgr.add(this.createGroupByAction());
        mgr.add((IContributionItem)new Separator());
        mgr.add((IAction)this.createFilterAction());
        mgr.add((IContributionItem)new Separator());
        this.fActivateViewAction = this.createActivateViewAction();
        mgr.add((IAction)this.fActivateViewAction);
        if (this.fFilteredTree.getFilterControl() != null) {
            mgr.add((IAction)this.createShowTextFilter());
        }
        this.fPropertiesAction = this.createPropertiesAction();
        MenuManager popupMenuManager = new MenuManager("#PopupMenu");
        IMenuListener listener = new IMenuListener(){

            public void menuAboutToShow(IMenuManager manager) {
                manager.add((IAction)LogView.this.fCopyAction);
                manager.add((IContributionItem)new Separator());
                manager.add((IAction)clearAction);
                manager.add((IAction)LogView.this.fDeleteLogAction);
                manager.add((IAction)LogView.this.fOpenLogAction);
                manager.add((IAction)LogView.this.fReadLogAction);
                manager.add((IContributionItem)new Separator());
                manager.add((IAction)LogView.this.fExportLogAction);
                manager.add((IAction)LogView.this.createImportLogAction());
                manager.add((IContributionItem)new Separator());
                manager.add((IAction)LogView.this.fExportLogEntryAction);
                manager.add((IContributionItem)new Separator());
                ((EventDetailsDialogAction)LogView.this.fPropertiesAction).setComparator(LogView.this.fComparator);
                TreeItem[] selection = LogView.this.fTree.getSelection();
                if (selection.length > 0 && selection[0].getData() instanceof LogEntry) {
                    manager.add((IAction)LogView.this.fPropertiesAction);
                }
                manager.add((IContributionItem)new Separator("additions"));
            }
        };
        popupMenuManager.addMenuListener(listener);
        popupMenuManager.setRemoveAllWhenShown(true);
        this.getSite().registerContextMenu(popupMenuManager, this.getSite().getSelectionProvider());
        Menu menu = popupMenuManager.createContextMenu((Control)this.fTree);
        this.fTree.setMenu(menu);
    }

    private Action createActivateViewAction() {
        Action action = new Action(Messages.LogView_activate){

            public void run() {
                LogView.this.fMemento.putString(LogView.P_ACTIVATE, this.isChecked() ? "true" : "false");
            }
        };
        action.setChecked(this.fMemento.getString(P_ACTIVATE).equals("true"));
        return action;
    }

    private Action createClearAction() {
        Action action = new Action(Messages.LogView_clear){

            public void run() {
                LogView.this.handleClear();
            }
        };
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/clear.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/clear.gif"));
        action.setToolTipText(Messages.LogView_clear_tooltip);
        action.setText(Messages.LogView_clear);
        return action;
    }

    private Action createCopyAction() {
        Action action = new Action(Messages.LogView_copy){

            public void run() {
                LogView.this.copyToClipboard(LogView.this.fFilteredTree.getViewer().getSelection());
            }
        };
        action.setImageDescriptor(PlatformUI.getWorkbench().getSharedImages().getImageDescriptor("IMG_TOOL_COPY"));
        return action;
    }

    private Action createDeleteLogAction() {
        Action action = new Action(Messages.LogView_delete){

            public void run() {
                LogView.this.doDeleteLog();
            }
        };
        action.setToolTipText(Messages.LogView_delete_tooltip);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/remove.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/remove.gif"));
        action.setEnabled(this.fInputFile.exists() && this.fInputFile.equals(Platform.getLogFileLocation().toFile()));
        return action;
    }

    private Action createExportLogAction() {
        Action action = new Action(Messages.LogView_export){

            public void run() {
                LogView.this.handleExport(true);
            }
        };
        action.setToolTipText(Messages.LogView_export_tooltip);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/export_log.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/export_log.gif"));
        action.setEnabled(this.fInputFile.exists());
        return action;
    }

    private Action createExportLogEntryAction() {
        Action action = new Action(Messages.LogView_exportEntry){

            public void run() {
                LogView.this.handleExport(false);
            }
        };
        action.setToolTipText(Messages.LogView_exportEntry_tooltip);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/export_log.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/export_log.gif"));
        action.setEnabled(!this.fFilteredTree.getViewer().getSelection().isEmpty());
        return action;
    }

    private Action createFilterAction() {
        Action action = new Action(Messages.LogView_filter){

            public void run() {
                LogView.this.handleFilter();
            }
        };
        action.setToolTipText(Messages.LogView_filter);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/filter_ps.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/filter_ps.gif"));
        return action;
    }

    private Action createImportLogAction() {
        ImportLogAction action = new ImportLogAction(this, Messages.LogView_import, this.fMemento);
        action.setToolTipText(Messages.LogView_import_tooltip);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/import_log.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/import_log.gif"));
        return action;
    }

    private Action createOpenLogAction() {
        Action action = null;
        try {
            Class.forName("org.eclipse.ui.ide.IDE");
            Class.forName("org.eclipse.core.filesystem.IFileStore");
            action = new OpenIDELogFileAction(this);
        }
        catch (ClassNotFoundException classNotFoundException) {
            action = new Action(){

                public void run() {
                    if (LogView.this.fInputFile.exists()) {
                        Job job = LogView.this.getOpenLogFileJob();
                        job.setUser(false);
                        job.setPriority(20);
                        job.schedule();
                    }
                }
            };
        }
        action.setText(Messages.LogView_view_currentLog);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/open_log.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/open_log.gif"));
        action.setEnabled(this.fInputFile.exists());
        action.setToolTipText(Messages.LogView_view_currentLog_tooltip);
        return action;
    }

    private Action createPropertiesAction() {
        EventDetailsDialogAction action = new EventDetailsDialogAction((Control)this.fTree, (ISelectionProvider)this.fFilteredTree.getViewer(), this.fMemento);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/properties.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/properties.gif"));
        action.setToolTipText(Messages.LogView_properties_tooltip);
        action.setEnabled(false);
        return action;
    }

    private Action createReadLogAction() {
        Action action = new Action(Messages.LogView_readLog_restore){

            public void run() {
                LogView.this.fInputFile = Platform.getLogFileLocation().toFile();
                LogView.this.reloadLog();
            }
        };
        action.setToolTipText(Messages.LogView_readLog_restore_tooltip);
        action.setImageDescriptor(SharedImages.getImageDescriptor("icons/elcl16/restore_log.gif"));
        action.setDisabledImageDescriptor(SharedImages.getImageDescriptor("icons/dlcl16/restore_log.gif"));
        return action;
    }

    private Action createShowTextFilter() {
        Action action = new Action(Messages.LogView_show_filter_text){

            public void run() {
                LogView.this.showFilterText(this.isChecked());
            }
        };
        boolean visible = this.fMemento.getBoolean(P_SHOW_FILTER_TEXT);
        action.setChecked(visible);
        this.showFilterText(visible);
        return action;
    }

    private void showFilterText(boolean visible) {
        this.fMemento.putBoolean(P_SHOW_FILTER_TEXT, visible);
        Text filterControl = this.fFilteredTree.getFilterControl();
        Composite filterComposite = filterControl.getParent();
        GridData gd = (GridData)filterComposite.getLayoutData();
        gd.exclude = !visible;
        filterComposite.setVisible(visible);
        filterControl.setText(Messages.LogView_show_filter_initialText);
        if (visible) {
            filterControl.selectAll();
            this.setFocus();
        }
        this.fFilteredTree.layout(false);
    }

    private IContributionItem createGroupByAction() {
        MenuManager manager = new MenuManager(Messages.LogView_GroupBy);
        manager.add((IAction)new GroupByAction(Messages.LogView_GroupBySession, 1));
        manager.add((IAction)new GroupByAction(Messages.LogView_GroupByPlugin, 2));
        manager.add((IAction)new GroupByAction(Messages.LogView_GroupByNone, 0));
        return manager;
    }

    private void createViewer(Composite parent) {
        PatternFilter filter = new PatternFilter(){

            protected boolean isLeafMatch(Viewer viewer, Object element) {
                if (element instanceof LogEntry) {
                    LogEntry logEntry = (LogEntry)((Object)element);
                    String message = logEntry.getMessage();
                    String plugin = logEntry.getPluginId();
                    DateFormat dateFormat = DateFormat.getDateTimeInstance((int)3, (int)3);
                    String date = dateFormat.format(logEntry.getDate());
                    return this.wordMatches(message) || this.wordMatches(plugin) || this.wordMatches(date);
                }
                return false;
            }
        };
        filter.setIncludeLeadingWildcard(true);
        this.fFilteredTree = new FilteredTree(parent, 65536, filter, true);
        if (this.fFilteredTree.getFilterControl() != null) {
            Composite filterComposite = this.fFilteredTree.getFilterControl().getParent();
            GridData gd = (GridData)filterComposite.getLayoutData();
            gd.verticalIndent = 2;
            gd.horizontalIndent = 1;
        }
        this.fFilteredTree.setLayoutData((Object)new GridData(1808));
        this.fFilteredTree.setInitialText(Messages.LogView_show_filter_initialText);
        this.fTree = this.fFilteredTree.getViewer().getTree();
        this.fTree.setLinesVisible(true);
        this.createColumns(this.fTree);
        this.fFilteredTree.getViewer().setAutoExpandLevel(2);
        this.fFilteredTree.getViewer().setContentProvider((IContentProvider)new LogViewContentProvider(this));
        this.fLabelProvider = new LogViewLabelProvider(this);
        this.fFilteredTree.getViewer().setLabelProvider((IBaseLabelProvider)this.fLabelProvider);
        this.fLabelProvider.connect((Object)this);
        this.fFilteredTree.getViewer().addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent e) {
                LogView.this.handleSelectionChanged(e.getSelection());
                if (LogView.this.fPropertiesAction.isEnabled()) {
                    ((EventDetailsDialogAction)LogView.this.fPropertiesAction).resetSelection();
                }
            }
        });
        this.fFilteredTree.getViewer().addDoubleClickListener(new IDoubleClickListener(){

            public void doubleClick(DoubleClickEvent event) {
                ((EventDetailsDialogAction)LogView.this.fPropertiesAction).setComparator(LogView.this.fComparator);
                LogView.this.fPropertiesAction.run();
            }
        });
        this.fFilteredTree.getViewer().setInput((Object)this);
        this.addMouseListeners();
        this.addDragSource();
    }

    private void createColumns(Tree tree) {
        this.fColumn1 = new TreeColumn(tree, 16384);
        this.fColumn1.setText(Messages.LogView_column_message);
        this.fColumn1.setWidth(this.fMemento.getInteger(P_COLUMN_1).intValue());
        this.fColumn1.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                LogView logView = LogView.this;
                logView.MESSAGE_ORDER = logView.MESSAGE_ORDER * -1;
                ViewerComparator comparator = LogView.this.getViewerComparator((byte)0);
                LogView.this.fFilteredTree.getViewer().setComparator(comparator);
                boolean isComparatorSet = ((EventDetailsDialogAction)LogView.this.fPropertiesAction).resetSelection((byte)0, LogView.this.MESSAGE_ORDER);
                LogView.this.setComparator((byte)0);
                if (!isComparatorSet) {
                    ((EventDetailsDialogAction)LogView.this.fPropertiesAction).setComparator(LogView.this.fComparator);
                }
                LogView.this.fMemento.putInteger(LogView.P_ORDER_VALUE, LogView.this.MESSAGE_ORDER);
                LogView.this.fMemento.putInteger(LogView.P_ORDER_TYPE, 0);
                LogView.this.setColumnSorting(LogView.this.fColumn1, LogView.this.MESSAGE_ORDER);
            }
        });
        this.fColumn2 = new TreeColumn(tree, 16384);
        this.fColumn2.setText(Messages.LogView_column_plugin);
        this.fColumn2.setWidth(this.fMemento.getInteger(P_COLUMN_2).intValue());
        this.fColumn2.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                LogView logView = LogView.this;
                logView.PLUGIN_ORDER = logView.PLUGIN_ORDER * -1;
                ViewerComparator comparator = LogView.this.getViewerComparator((byte)1);
                LogView.this.fFilteredTree.getViewer().setComparator(comparator);
                boolean isComparatorSet = ((EventDetailsDialogAction)LogView.this.fPropertiesAction).resetSelection((byte)1, LogView.this.PLUGIN_ORDER);
                LogView.this.setComparator((byte)1);
                if (!isComparatorSet) {
                    ((EventDetailsDialogAction)LogView.this.fPropertiesAction).setComparator(LogView.this.fComparator);
                }
                LogView.this.fMemento.putInteger(LogView.P_ORDER_VALUE, LogView.this.PLUGIN_ORDER);
                LogView.this.fMemento.putInteger(LogView.P_ORDER_TYPE, 1);
                LogView.this.setColumnSorting(LogView.this.fColumn2, LogView.this.PLUGIN_ORDER);
            }
        });
        this.fColumn3 = new TreeColumn(tree, 16384);
        this.fColumn3.setText(Messages.LogView_column_date);
        this.fColumn3.setWidth(this.fMemento.getInteger(P_COLUMN_3).intValue());
        this.fColumn3.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                LogView logView = LogView.this;
                logView.DATE_ORDER = logView.DATE_ORDER * -1;
                ViewerComparator comparator = LogView.this.getViewerComparator((byte)2);
                LogView.this.fFilteredTree.getViewer().setComparator(comparator);
                LogView.this.setComparator((byte)2);
                ((EventDetailsDialogAction)LogView.this.fPropertiesAction).setComparator(LogView.this.fComparator);
                LogView.this.fMemento.putInteger(LogView.P_ORDER_VALUE, LogView.this.DATE_ORDER);
                LogView.this.fMemento.putInteger(LogView.P_ORDER_TYPE, 2);
                LogView.this.setColumnSorting(LogView.this.fColumn3, LogView.this.DATE_ORDER);
            }
        });
        tree.setHeaderVisible(true);
    }

    private void initializeViewerSorter() {
        byte orderType = this.fMemento.getInteger(P_ORDER_TYPE).byteValue();
        ViewerComparator comparator = this.getViewerComparator(orderType);
        this.fFilteredTree.getViewer().setComparator(comparator);
        if (orderType == 0) {
            this.setColumnSorting(this.fColumn1, this.MESSAGE_ORDER);
        } else if (orderType == 1) {
            this.setColumnSorting(this.fColumn2, this.PLUGIN_ORDER);
        } else if (orderType == 2) {
            this.setColumnSorting(this.fColumn3, this.DATE_ORDER);
        }
    }

    private void setColumnSorting(TreeColumn column, int order) {
        this.fTree.setSortColumn(column);
        this.fTree.setSortDirection(order == ASCENDING ? 128 : 1024);
    }

    public void dispose() {
        this.writeSettings();
        Platform.removeLogListener((ILogListener)this);
        this.fClipboard.dispose();
        if (this.fTextShell != null) {
            this.fTextShell.dispose();
        }
        this.fLabelProvider.disconnect((Object)this);
        this.fFilteredTree.dispose();
        super.dispose();
    }

    void handleImport() {
        String path;
        FileDialog dialog = new FileDialog(this.getViewSite().getShell());
        dialog.setFilterExtensions(new String[]{"*.log"});
        if (this.fDirectory != null) {
            dialog.setFilterPath(this.fDirectory);
        }
        if ((path = dialog.open()) == null) {
            return;
        }
        File file = new Path(path).toFile();
        if (file.exists()) {
            this.handleImportPath(path);
        } else {
            String msg = NLS.bind((String)Messages.LogView_FileCouldNotBeFound, (Object)file.getName());
            MessageDialog.openError((Shell)this.getViewSite().getShell(), (String)Messages.LogView_OpenFile, (String)msg);
        }
    }

    public void handleImportPath(String path) {
        File file = new File(path);
        if (path != null && file.exists()) {
            this.setLogFile(file);
        }
    }

    /*
     * Exception decompiling
     */
    protected void setLogFile(File path) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
         *     at java.util.LinkedList.checkElementIndex(LinkedList.java:555)
         *     at java.util.LinkedList.get(LinkedList.java:476)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.Block.combineInlineable(Block.java:226)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:560)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.StructuredCatch.transformStructuredChildren(StructuredCatch.java:88)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.StructuredTry.transformStructuredChildren(StructuredTry.java:129)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.Block.transformStructuredChildren(Block.java:421)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.StructuredTry.transformStructuredChildren(StructuredTry.java:127)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.Block.transformStructuredChildren(Block.java:421)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.inlinePossibles(Op04StructuredStatement.java:709)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:855)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private void handleExport(boolean exportWholeLog) {
        block30: {
            String path;
            FileDialog dialog = new FileDialog(this.getViewSite().getShell(), 8192);
            dialog.setFilterExtensions(new String[]{"*.log"});
            if (this.fDirectory != null) {
                dialog.setFilterPath(this.fDirectory);
            }
            if ((path = dialog.open()) != null) {
                if (path.indexOf(46) == -1 && !path.endsWith(".log")) {
                    path = String.valueOf(path) + ".log";
                }
                File outputFile = new Path(path).toFile();
                this.fDirectory = outputFile.getParent();
                if (outputFile.exists()) {
                    String message = NLS.bind((String)Messages.LogView_confirmOverwrite_message, (Object)outputFile.toString());
                    if (!MessageDialog.openQuestion((Shell)this.getViewSite().getShell(), (String)(exportWholeLog ? Messages.LogView_exportLog : Messages.LogView_exportLogEntry), (String)message)) {
                        return;
                    }
                }
                BufferedReader in = null;
                BufferedWriter out = null;
                try {
                    try {
                        out = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(outputFile), "UTF-8"));
                        if (exportWholeLog) {
                            in = new BufferedReader(new InputStreamReader((InputStream)new FileInputStream(this.fInputFile), "UTF-8"));
                        } else {
                            String selectedEntryAsString = LogView.selectionToString(this.fFilteredTree.getViewer().getSelection());
                            in = new BufferedReader(new StringReader(selectedEntryAsString));
                        }
                        this.copy(in, out);
                    }
                    catch (IOException iOException) {
                        try {
                            if (in != null) {
                                in.close();
                            }
                        }
                        catch (IOException iOException2) {}
                        try {
                            if (out != null) {
                                out.close();
                            }
                            break block30;
                        }
                        catch (IOException iOException3) {}
                        break block30;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        if (in != null) {
                            in.close();
                        }
                    }
                    catch (IOException iOException) {}
                    try {
                        if (out != null) {
                            out.close();
                        }
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    if (in != null) {
                        in.close();
                    }
                }
                catch (IOException iOException) {}
                try {
                    if (out != null) {
                        out.close();
                    }
                }
                catch (IOException iOException) {}
            }
        }
    }

    private void copy(BufferedReader reader, BufferedWriter writer) throws IOException {
        String line;
        while (reader.ready() && (line = reader.readLine()) != null) {
            writer.write(line);
            writer.newLine();
        }
    }

    private void handleFilter() {
        FilterDialog dialog = new FilterDialog(this.getSite().getShell(), this.fMemento);
        dialog.create();
        dialog.getShell().setText(Messages.LogView_FilterDialog_title);
        if (dialog.open() == 0) {
            this.reloadLog();
        }
    }

    private void doDeleteLog() {
        String title = Messages.LogView_confirmDelete_title;
        String message = Messages.LogView_confirmDelete_message;
        if (!MessageDialog.openConfirm((Shell)this.fTree.getShell(), (String)title, (String)message)) {
            return;
        }
        if (this.fInputFile.delete() || this.elements.size() > 0) {
            this.handleClear();
        }
    }

    public void fillContextMenu(IMenuManager manager) {
    }

    public AbstractEntry[] getElements() {
        return this.elements.toArray(new AbstractEntry[this.elements.size()]);
    }

    protected void handleClear() {
        BusyIndicator.showWhile((Display)this.fTree.getDisplay(), (Runnable)new Runnable(){

            public void run() {
                LogView.this.elements.clear();
                LogView.this.groups.clear();
                if (LogView.this.currentSession != null) {
                    LogView.this.currentSession.removeAllChildren();
                }
                LogView.this.asyncRefresh(false);
                LogView.this.resetDialogButtons();
            }
        });
    }

    /*
     * Exception decompiling
     */
    protected void reloadLog() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
         *     at java.util.LinkedList.checkElementIndex(LinkedList.java:555)
         *     at java.util.LinkedList.get(LinkedList.java:476)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.Block.combineInlineable(Block.java:226)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:560)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.StructuredCatch.transformStructuredChildren(StructuredCatch.java:88)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.StructuredTry.transformStructuredChildren(StructuredTry.java:129)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.Block.transformStructuredChildren(Block.java:421)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.StructuredTry.transformStructuredChildren(StructuredTry.java:127)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.structured.statement.Block.transformStructuredChildren(Block.java:421)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement$Inliner.transform(Op04StructuredStatement.java:557)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.transform(Op04StructuredStatement.java:680)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.inlinePossibles(Op04StructuredStatement.java:709)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:855)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    void readLogFile() {
        this.elements.clear();
        this.groups.clear();
        ArrayList result = new ArrayList();
        LogSession lastLogSession = LogReader.parseLogFile(this.fInputFile, result, this.fMemento);
        this.currentSession = lastLogSession != null && this.isEclipseStartTime(lastLogSession.getDate()) ? lastLogSession : null;
        this.group(result);
        this.limitEntriesCount();
        this.getSite().getShell().getDisplay().asyncExec(new Runnable(){

            public void run() {
                LogView.this.setContentDescription(LogView.this.getTitleSummary());
            }
        });
    }

    private boolean isEclipseStartTime(Date date) {
        String ts = System.getProperty("eclipse.startTime");
        try {
            return ts != null && date != null && date.getTime() == Long.parseLong(ts);
        }
        catch (NumberFormatException numberFormatException) {
            return false;
        }
    }

    private String getTitleSummary() {
        String path = "";
        try {
            path = this.fInputFile.getCanonicalPath();
        }
        catch (IOException iOException) {}
        if (this.isPlatformLogOpen()) {
            return Messages.LogView_WorkspaceLogFile;
        }
        Map sources = LogFilesManager.getLogSources();
        if (sources.containsValue(path)) {
            Iterator i = sources.keySet().iterator();
            while (i.hasNext()) {
                String key = (String)i.next();
                if (!sources.get(key).equals(path)) continue;
                return NLS.bind((String)Messages.LogView_LogFileTitle, (Object[])new String[]{key, path});
            }
        }
        return path;
    }

    private void group(List entries) {
        if (this.fMemento.getInteger(P_GROUP_BY) == 0) {
            this.elements.addAll(entries);
        } else {
            Iterator i = entries.iterator();
            while (i.hasNext()) {
                LogEntry entry = (LogEntry)((Object)i.next());
                Group group = this.getGroup(entry);
                group.addChild(entry);
            }
        }
    }

    private void limitEntriesCount() {
        int entriesCount;
        int limit = Integer.MAX_VALUE;
        if (this.fMemento.getString(P_USE_LIMIT).equals("true")) {
            limit = this.fMemento.getInteger(P_LOG_LIMIT);
        }
        if ((entriesCount = this.getEntriesCount()) <= limit) {
            return;
        }
        Comparator dateComparator = new Comparator(){

            public int compare(Object o1, Object o2) {
                Date l1 = ((LogEntry)((Object)o1)).getDate();
                Date l2 = ((LogEntry)((Object)o2)).getDate();
                if (l1 != null && l2 != null) {
                    return l1.before(l2) ? -1 : 1;
                }
                if (l1 == null && l2 == null) {
                    return 0;
                }
                return l1 == null ? -1 : 1;
            }
        };
        if (this.fMemento.getInteger(P_GROUP_BY) == 0) {
            this.elements.subList(0, this.elements.size() - limit).clear();
        } else {
            ArrayList<Object> copy = new ArrayList<Object>(entriesCount);
            Iterator i = this.elements.iterator();
            while (i.hasNext()) {
                AbstractEntry group = (AbstractEntry)((Object)i.next());
                copy.addAll(Arrays.asList(group.getChildren((Object)group)));
            }
            Collections.sort(copy, dateComparator);
            List toRemove = copy.subList(0, copy.size() - limit);
            Iterator i2 = this.elements.iterator();
            while (i2.hasNext()) {
                AbstractEntry group = (AbstractEntry)((Object)i2.next());
                group.removeChildren(toRemove);
            }
        }
    }

    private int getEntriesCount() {
        if (this.fMemento.getInteger(P_GROUP_BY) == 0) {
            return this.elements.size();
        }
        int size = 0;
        Iterator i = this.elements.iterator();
        while (i.hasNext()) {
            AbstractEntry group = (AbstractEntry)((Object)i.next());
            size += group.size();
        }
        return size;
    }

    protected Group getGroup(LogEntry entry) {
        int groupBy = this.fMemento.getInteger(P_GROUP_BY);
        Object elementGroupId = null;
        String groupName = null;
        switch (groupBy) {
            case 2: {
                groupName = entry.getPluginId();
                elementGroupId = groupName;
                break;
            }
            case 1: {
                elementGroupId = entry.getSession();
                break;
            }
            default: {
                return null;
            }
        }
        if (elementGroupId == null) {
            return null;
        }
        Group group = (Group)((Object)this.groups.get(elementGroupId));
        if (group == null) {
            group = groupBy == 1 ? entry.getSession() : new Group(groupName);
            this.groups.put(elementGroupId, group);
            this.elements.add(group);
        }
        return group;
    }

    public void logging(IStatus status, String plugin) {
        if (!this.isPlatformLogOpen()) {
            return;
        }
        if (this.batchEntries) {
            LogEntry entry = this.createLogEntry(status);
            this.batchedEntries.add(entry);
            return;
        }
        if (this.fFirstEvent || this.currentSession == null) {
            this.readLogFile();
            this.asyncRefresh(true);
            this.fFirstEvent = false;
        } else {
            LogEntry entry = this.createLogEntry(status);
            if (!this.batchedEntries.isEmpty()) {
                this.batchedEntries.add(entry);
                this.pushBatchedEntries();
            } else {
                this.pushEntry(entry);
                this.asyncRefresh(true);
            }
        }
    }

    private void pushBatchedEntries() {
        Job job = new Job(Messages.LogView_AddingBatchedEvents){

            protected IStatus run(IProgressMonitor monitor) {
                int i = 0;
                while (i < LogView.this.batchedEntries.size()) {
                    if (!monitor.isCanceled()) {
                        LogEntry entry = (LogEntry)((Object)LogView.this.batchedEntries.get(i));
                        LogView.this.pushEntry(entry);
                        LogView.this.batchedEntries.remove(i);
                    }
                    ++i;
                }
                LogView.this.asyncRefresh(true);
                return Status.OK_STATUS;
            }
        };
        job.schedule();
    }

    private LogEntry createLogEntry(IStatus status) {
        LogEntry entry = new LogEntry(status);
        entry.setSession(this.currentSession);
        return entry;
    }

    private synchronized void pushEntry(LogEntry entry) {
        if (LogReader.isLogged(entry, this.fMemento)) {
            this.group(Collections.singletonList(entry));
            this.limitEntriesCount();
        }
        this.asyncRefresh(true);
    }

    private void asyncRefresh(final boolean activate) {
        if (this.fTree.isDisposed()) {
            return;
        }
        Display display = this.fTree.getDisplay();
        final LogView view = this;
        if (display != null) {
            display.asyncExec(new Runnable(){

                public void run() {
                    if (!LogView.this.fTree.isDisposed()) {
                        IWorkbenchPage page;
                        TreeViewer viewer = LogView.this.fFilteredTree.getViewer();
                        viewer.refresh();
                        viewer.expandToLevel(2);
                        LogView.this.fDeleteLogAction.setEnabled(LogView.this.fInputFile.exists() && LogView.this.fInputFile.equals(Platform.getLogFileLocation().toFile()));
                        LogView.this.fOpenLogAction.setEnabled(LogView.this.fInputFile.exists());
                        LogView.this.fExportLogAction.setEnabled(LogView.this.fInputFile.exists());
                        LogView.this.fExportLogEntryAction.setEnabled(!viewer.getSelection().isEmpty());
                        if (activate && LogView.this.fActivateViewAction.isChecked() && (page = Activator.getDefault().getWorkbench().getActiveWorkbenchWindow().getActivePage()) != null) {
                            page.bringToTop((IWorkbenchPart)view);
                        }
                    }
                }
            });
        }
    }

    public void setFocus() {
        if (this.fFilteredTree != null) {
            if (this.fMemento.getBoolean(P_SHOW_FILTER_TEXT).booleanValue()) {
                Text filterControl = this.fFilteredTree.getFilterControl();
                if (filterControl != null && !filterControl.isDisposed()) {
                    filterControl.setFocus();
                }
            } else if (!this.fFilteredTree.isDisposed()) {
                this.fFilteredTree.setFocus();
            }
        }
    }

    private void handleSelectionChanged(ISelection selection) {
        this.updateStatus(selection);
        this.fCopyAction.setEnabled(!selection.isEmpty() && ((IStructuredSelection)selection).getFirstElement() != null);
        this.fPropertiesAction.setEnabled(!selection.isEmpty());
        this.fExportLogEntryAction.setEnabled(!selection.isEmpty());
    }

    private void updateStatus(ISelection selection) {
        IStatusLineManager status = this.getViewSite().getActionBars().getStatusLineManager();
        if (selection.isEmpty()) {
            status.setMessage(null);
        } else {
            Object element = ((IStructuredSelection)selection).getFirstElement();
            status.setMessage(((LogViewLabelProvider)this.fFilteredTree.getViewer().getLabelProvider()).getColumnText(element, 0));
        }
    }

    private static String selectionToString(ISelection selection) {
        StringWriter writer = new StringWriter();
        PrintWriter pwriter = new PrintWriter(writer);
        if (selection.isEmpty()) {
            return null;
        }
        AbstractEntry entry = (AbstractEntry)((Object)((IStructuredSelection)selection).getFirstElement());
        entry.write(pwriter);
        pwriter.flush();
        String textVersion = writer.toString();
        pwriter.close();
        try {
            writer.close();
        }
        catch (IOException iOException) {}
        return textVersion;
    }

    private void copyToClipboard(ISelection selection) {
        String textVersion = LogView.selectionToString(selection);
        if (textVersion != null && textVersion.trim().length() > 0) {
            this.fClipboard.setContents(new Object[]{textVersion}, new Transfer[]{TextTransfer.getInstance()});
        }
    }

    public void init(IViewSite site, IMemento memento) throws PartInitException {
        super.init(site, memento);
        this.fMemento = memento == null ? XMLMemento.createWriteRoot((String)"LOGVIEW") : memento;
        this.readSettings();
        byte type = this.fMemento.getInteger(P_ORDER_TYPE).byteValue();
        switch (type) {
            case 2: {
                this.DATE_ORDER = this.fMemento.getInteger(P_ORDER_VALUE);
                this.MESSAGE_ORDER = DESCENDING;
                this.PLUGIN_ORDER = DESCENDING;
                break;
            }
            case 0: {
                this.MESSAGE_ORDER = this.fMemento.getInteger(P_ORDER_VALUE);
                this.DATE_ORDER = DESCENDING;
                this.PLUGIN_ORDER = DESCENDING;
                break;
            }
            case 1: {
                this.PLUGIN_ORDER = this.fMemento.getInteger(P_ORDER_VALUE);
                this.MESSAGE_ORDER = DESCENDING;
                this.DATE_ORDER = DESCENDING;
                break;
            }
            default: {
                this.DATE_ORDER = DESCENDING;
                this.MESSAGE_ORDER = DESCENDING;
                this.PLUGIN_ORDER = DESCENDING;
            }
        }
        this.setComparator(this.fMemento.getInteger(P_ORDER_TYPE).byteValue());
    }

    private void initializeMemento() {
        if (this.fMemento.getString(P_USE_LIMIT) == null) {
            this.fMemento.putString(P_USE_LIMIT, "true");
        }
        if (this.fMemento.getInteger(P_LOG_LIMIT) == null) {
            this.fMemento.putInteger(P_LOG_LIMIT, 50);
        }
        if (this.fMemento.getString(P_LOG_INFO) == null) {
            this.fMemento.putString(P_LOG_INFO, "true");
        }
        if (this.fMemento.getString(P_LOG_OK) == null) {
            this.fMemento.putString(P_LOG_OK, "true");
        }
        if (this.fMemento.getString(P_LOG_WARNING) == null) {
            this.fMemento.putString(P_LOG_WARNING, "true");
        }
        if (this.fMemento.getString(P_LOG_ERROR) == null) {
            this.fMemento.putString(P_LOG_ERROR, "true");
        }
        if (this.fMemento.getString(P_SHOW_ALL_SESSIONS) == null) {
            this.fMemento.putString(P_SHOW_ALL_SESSIONS, "true");
        }
    }

    public void saveState(IMemento memento) {
        if (this.fMemento == null || memento == null) {
            return;
        }
        this.fMemento.putInteger(P_COLUMN_1, this.getColumnWidth(this.fColumn1, 300));
        this.fMemento.putInteger(P_COLUMN_2, this.getColumnWidth(this.fColumn2, 150));
        this.fMemento.putInteger(P_COLUMN_3, this.getColumnWidth(this.fColumn3, 150));
        this.fMemento.putString(P_ACTIVATE, this.fActivateViewAction.isChecked() ? "true" : "false");
        memento.putMemento(this.fMemento);
        this.writeSettings();
    }

    int getColumnWidth(TreeColumn column, int defaultwidth) {
        int width = column.getWidth();
        return width < 1 ? defaultwidth : width;
    }

    private void addMouseListeners() {
        Listener tableListener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 5: 
                    case 7: {
                        LogView.this.onMouseMove(e);
                        break;
                    }
                    case 32: {
                        LogView.this.onMouseHover(e);
                        break;
                    }
                    case 3: {
                        LogView.this.onMouseDown(e);
                    }
                }
            }
        };
        int[] tableEvents = new int[]{3, 5, 32, 7};
        int i = 0;
        while (i < tableEvents.length) {
            this.fTree.addListener(tableEvents[i], tableListener);
            ++i;
        }
    }

    private void addDragSource() {
        DragSource source = new DragSource((Control)this.fTree, 1);
        Transfer[] types = new Transfer[]{TextTransfer.getInstance()};
        source.setTransfer(types);
        source.addDragListener((DragSourceListener)new DragSourceAdapter(){

            public void dragStart(DragSourceEvent event) {
                ISelection selection = LogView.this.fFilteredTree.getViewer().getSelection();
                if (selection.isEmpty()) {
                    event.doit = false;
                    return;
                }
                AbstractEntry entry = (AbstractEntry)((Object)((TreeSelection)selection).getFirstElement());
                if (!(entry instanceof LogEntry)) {
                    event.doit = false;
                    return;
                }
            }

            public void dragSetData(DragSourceEvent event) {
                if (!TextTransfer.getInstance().isSupportedType(event.dataType)) {
                    return;
                }
                ISelection selection = LogView.this.fFilteredTree.getViewer().getSelection();
                String textVersion = LogView.selectionToString(selection);
                event.data = textVersion;
            }
        });
    }

    private void makeHoverShell() {
        int border;
        this.fTextShell = new Shell(this.getSite().getWorkbenchWindow().getShell(), 540676);
        Display display = this.fTextShell.getDisplay();
        this.fTextShell.setBackground(display.getSystemColor(29));
        GridLayout layout = new GridLayout(1, false);
        layout.marginHeight = border = (this.fTree.getShell().getStyle() & 8) == 0 ? 0 : 1;
        layout.marginWidth = border;
        this.fTextShell.setLayout((Layout)layout);
        this.fTextShell.setLayoutData((Object)new GridData(768));
        Composite shellComposite = new Composite((Composite)this.fTextShell, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        shellComposite.setLayout((Layout)layout);
        shellComposite.setLayoutData((Object)new GridData(1810));
        this.fTextLabel = new Text(shellComposite, 74);
        GridData gd = new GridData(1808);
        gd.widthHint = 100;
        gd.grabExcessHorizontalSpace = true;
        this.fTextLabel.setLayoutData((Object)gd);
        Color c = this.fTree.getDisplay().getSystemColor(29);
        this.fTextLabel.setBackground(c);
        c = this.fTree.getDisplay().getSystemColor(28);
        this.fTextLabel.setForeground(c);
        this.fTextLabel.setEditable(false);
        this.fTextShell.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                LogView.this.onTextShellDispose(e);
            }
        });
    }

    void onTextShellDispose(DisposeEvent e) {
        this.fCanOpenTextShell = true;
        this.setFocus();
    }

    void onMouseDown(Event e) {
        if (this.fTextShell != null && !this.fTextShell.isDisposed() && !this.fTextShell.isFocusControl()) {
            this.fTextShell.setVisible(false);
            this.fCanOpenTextShell = true;
        }
    }

    void onMouseHover(Event e) {
        if (!this.fCanOpenTextShell || this.fTextShell == null || this.fTextShell.isDisposed()) {
            return;
        }
        this.fCanOpenTextShell = false;
        Point point = new Point(e.x, e.y);
        TreeItem item = this.fTree.getItem(point);
        if (item == null) {
            return;
        }
        String message = null;
        if (item.getData() instanceof LogEntry) {
            message = ((LogEntry)((Object)item.getData())).getStack();
        } else if (item.getData() instanceof LogSession) {
            LogSession session = (LogSession)((Object)item.getData());
            message = Messages.LogView_SessionStarted;
            if (session.getDate() != null) {
                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
                message = String.valueOf(message) + formatter.format(session.getDate());
            }
        }
        if (message == null) {
            return;
        }
        this.fTextLabel.setText(message);
        Rectangle bounds = this.fTree.getDisplay().getBounds();
        Point cursorPoint = this.fTree.getDisplay().getCursorLocation();
        int x = point.x;
        int y = point.y + 25;
        int width = this.fTree.getColumn(0).getWidth();
        int height = 125;
        if (cursorPoint.x + width > bounds.width) {
            x -= width;
        }
        if (cursorPoint.y + height + 25 > bounds.height) {
            y -= height + 27;
        }
        this.fTextShell.setLocation(this.fTree.toDisplay(x, y));
        this.fTextShell.setSize(width, height);
        this.fTextShell.setVisible(true);
    }

    void onMouseMove(Event e) {
        Point point;
        TreeItem item;
        if (this.fTextShell != null && !this.fTextShell.isDisposed() && this.fTextShell.isVisible()) {
            this.fTextShell.setVisible(false);
        }
        if ((item = this.fTree.getItem(point = new Point(e.x, e.y))) == null) {
            return;
        }
        Image image = item.getImage();
        Object data = item.getData();
        if (data instanceof LogEntry) {
            LogEntry entry = (LogEntry)((Object)data);
            int parentCount = this.getNumberOfParents(entry);
            int startRange = 20 + Math.max(image.getBounds().width + 2, 9) * parentCount;
            int endRange = startRange + 16;
            this.fCanOpenTextShell = e.x >= startRange && e.x <= endRange;
        }
    }

    private int getNumberOfParents(AbstractEntry entry) {
        AbstractEntry parent = (AbstractEntry)((Object)entry.getParent((Object)entry));
        if (parent == null) {
            return 0;
        }
        return 1 + this.getNumberOfParents(parent);
    }

    public Comparator getComparator() {
        return this.fComparator;
    }

    private void setComparator(byte sortType) {
        this.fComparator = sortType == 2 ? new Comparator(){

            public int compare(Object e1, Object e2) {
                long date1 = 0L;
                long date2 = 0L;
                if (e1 instanceof LogEntry && e2 instanceof LogEntry) {
                    date1 = ((LogEntry)((Object)e1)).getDate().getTime();
                    date2 = ((LogEntry)((Object)e2)).getDate().getTime();
                } else if (e1 instanceof LogSession && e2 instanceof LogSession) {
                    date1 = ((LogSession)((Object)e1)).getDate() == null ? 0L : ((LogSession)((Object)e1)).getDate().getTime();
                    long l = date2 = ((LogSession)((Object)e2)).getDate() == null ? 0L : ((LogSession)((Object)e2)).getDate().getTime();
                }
                if (date1 == date2) {
                    int result = LogView.this.elements.indexOf(e2) - LogView.this.elements.indexOf(e1);
                    if (LogView.this.DATE_ORDER == DESCENDING) {
                        result *= DESCENDING;
                    }
                    return result;
                }
                if (LogView.this.DATE_ORDER == DESCENDING) {
                    return date1 > date2 ? DESCENDING : ASCENDING;
                }
                return date1 < date2 ? DESCENDING : ASCENDING;
            }
        } : (sortType == 1 ? new Comparator(){

            public int compare(Object e1, Object e2) {
                if (e1 instanceof LogEntry && e2 instanceof LogEntry) {
                    LogEntry entry1 = (LogEntry)((Object)e1);
                    LogEntry entry2 = (LogEntry)((Object)e2);
                    return LogView.this.getDefaultComparator().compare(entry1.getPluginId(), entry2.getPluginId()) * LogView.this.PLUGIN_ORDER;
                }
                return 0;
            }
        } : new Comparator(){

            public int compare(Object e1, Object e2) {
                if (e1 instanceof LogEntry && e2 instanceof LogEntry) {
                    LogEntry entry1 = (LogEntry)((Object)e1);
                    LogEntry entry2 = (LogEntry)((Object)e2);
                    return LogView.this.getDefaultComparator().compare(entry1.getMessage(), entry2.getMessage()) * LogView.this.MESSAGE_ORDER;
                }
                return 0;
            }
        });
    }

    private Comparator getDefaultComparator() {
        return Policy.getComparator();
    }

    private ViewerComparator getViewerComparator(byte sortType) {
        if (sortType == 1) {
            return new ViewerComparator(){

                public int compare(Viewer viewer, Object e1, Object e2) {
                    if (e1 instanceof LogEntry && e2 instanceof LogEntry) {
                        LogEntry entry1 = (LogEntry)((Object)e1);
                        LogEntry entry2 = (LogEntry)((Object)e2);
                        return this.getComparator().compare(entry1.getPluginId(), entry2.getPluginId()) * LogView.this.PLUGIN_ORDER;
                    }
                    return 0;
                }
            };
        }
        if (sortType == 0) {
            return new ViewerComparator(){

                public int compare(Viewer viewer, Object e1, Object e2) {
                    if (e1 instanceof LogEntry && e2 instanceof LogEntry) {
                        LogEntry entry1 = (LogEntry)((Object)e1);
                        LogEntry entry2 = (LogEntry)((Object)e2);
                        return this.getComparator().compare(entry1.getMessage(), entry2.getMessage()) * LogView.this.MESSAGE_ORDER;
                    }
                    return 0;
                }
            };
        }
        return new ViewerComparator(){

            private int indexOf(Object[] array, Object o) {
                if (o == null) {
                    return -1;
                }
                int i = 0;
                while (i < array.length) {
                    if (o.equals(array[i])) {
                        return i;
                    }
                    ++i;
                }
                return -1;
            }

            public int compare(Viewer viewer, Object e1, Object e2) {
                long date1 = 0L;
                long date2 = 0L;
                if (e1 instanceof LogEntry && e2 instanceof LogEntry) {
                    date1 = ((LogEntry)((Object)e1)).getDate().getTime();
                    date2 = ((LogEntry)((Object)e2)).getDate().getTime();
                } else if (e1 instanceof LogSession && e2 instanceof LogSession) {
                    date1 = ((LogSession)((Object)e1)).getDate() == null ? 0L : ((LogSession)((Object)e1)).getDate().getTime();
                    long l = date2 = ((LogSession)((Object)e2)).getDate() == null ? 0L : ((LogSession)((Object)e2)).getDate().getTime();
                }
                if (date1 == date2) {
                    AbstractEntry parent = (AbstractEntry)((Object)((AbstractEntry)((Object)e1)).getParent(null));
                    Object[] children = null;
                    if (parent != null) {
                        children = parent.getChildren((Object)parent);
                    }
                    int result = 0;
                    result = children != null ? this.indexOf(children, e2) - this.indexOf(children, e1) : LogView.this.elements.indexOf(e1) - LogView.this.elements.indexOf(e2);
                    if (LogView.this.DATE_ORDER == DESCENDING) {
                        result *= DESCENDING;
                    }
                    return result;
                }
                if (LogView.this.DATE_ORDER == DESCENDING) {
                    return date1 > date2 ? DESCENDING : ASCENDING;
                }
                return date1 < date2 ? DESCENDING : ASCENDING;
            }
        };
    }

    private void resetDialogButtons() {
        ((EventDetailsDialogAction)this.fPropertiesAction).resetDialogButtons();
    }

    private IDialogSettings getLogSettings() {
        IDialogSettings settings = Activator.getDefault().getDialogSettings();
        return settings.getSection(((Object)((Object)this)).getClass().getName());
    }

    private Preferences getLogPreferences() {
        return new InstanceScope().getNode("org.eclipse.ui.views.log");
    }

    private void readSettings() {
        IDialogSettings s = this.getLogSettings();
        if (s == null) {
            this.initializeMemento();
        } else {
            this.fMemento.putString(P_USE_LIMIT, s.getBoolean(P_USE_LIMIT) ? "true" : "false");
            this.fMemento.putString(P_LOG_INFO, s.getBoolean(P_LOG_INFO) ? "true" : "false");
            this.fMemento.putString(P_LOG_OK, s.getBoolean(P_LOG_OK) ? "true" : "false");
            this.fMemento.putString(P_LOG_WARNING, s.getBoolean(P_LOG_WARNING) ? "true" : "false");
            this.fMemento.putString(P_LOG_ERROR, s.getBoolean(P_LOG_ERROR) ? "true" : "false");
            this.fMemento.putString(P_SHOW_ALL_SESSIONS, s.getBoolean(P_SHOW_ALL_SESSIONS) ? "true" : "false");
            try {
                this.fMemento.putInteger(P_LOG_LIMIT, s.getInt(P_LOG_LIMIT));
            }
            catch (NumberFormatException numberFormatException) {
                this.fMemento.putInteger(P_LOG_LIMIT, 50);
            }
        }
        Preferences p = this.getLogPreferences();
        this.fMemento.putInteger(P_COLUMN_1, this.getColumnWidthPreference(p, P_COLUMN_1, 300));
        this.fMemento.putInteger(P_COLUMN_2, this.getColumnWidthPreference(p, P_COLUMN_2, 150));
        this.fMemento.putInteger(P_COLUMN_3, this.getColumnWidthPreference(p, P_COLUMN_3, 150));
        this.fMemento.putBoolean(P_ACTIVATE, p.getBoolean(P_ACTIVATE, true));
        this.fMemento.putInteger(P_ORDER_VALUE, p.getInt(P_ORDER_VALUE, DESCENDING));
        this.fMemento.putInteger(P_ORDER_TYPE, p.getInt(P_ORDER_TYPE, 2));
        this.fMemento.putBoolean(P_SHOW_FILTER_TEXT, p.getBoolean(P_SHOW_FILTER_TEXT, true));
        this.fMemento.putInteger(P_GROUP_BY, p.getInt(P_GROUP_BY, 0));
    }

    int getColumnWidthPreference(Preferences preferences, String key, int defaultwidth) {
        int width = preferences.getInt(key, defaultwidth);
        return width < 1 ? defaultwidth : width;
    }

    private void writeSettings() {
        this.writeViewSettings();
        this.writeFilterSettings();
    }

    private void writeFilterSettings() {
        IDialogSettings settings = this.getLogSettings();
        if (settings == null) {
            settings = Activator.getDefault().getDialogSettings().addNewSection(((Object)((Object)this)).getClass().getName());
        }
        settings.put(P_USE_LIMIT, this.fMemento.getString(P_USE_LIMIT).equals("true"));
        settings.put(P_LOG_LIMIT, this.fMemento.getInteger(P_LOG_LIMIT).intValue());
        settings.put(P_LOG_INFO, this.fMemento.getString(P_LOG_INFO).equals("true"));
        settings.put(P_LOG_OK, this.fMemento.getString(P_LOG_OK).equals("true"));
        settings.put(P_LOG_WARNING, this.fMemento.getString(P_LOG_WARNING).equals("true"));
        settings.put(P_LOG_ERROR, this.fMemento.getString(P_LOG_ERROR).equals("true"));
        settings.put(P_SHOW_ALL_SESSIONS, this.fMemento.getString(P_SHOW_ALL_SESSIONS).equals("true"));
    }

    private void writeViewSettings() {
        Preferences preferences = this.getLogPreferences();
        preferences.putInt(P_COLUMN_1, this.fMemento.getInteger(P_COLUMN_1).intValue());
        preferences.putInt(P_COLUMN_2, this.fMemento.getInteger(P_COLUMN_2).intValue());
        preferences.putInt(P_COLUMN_3, this.fMemento.getInteger(P_COLUMN_3).intValue());
        preferences.putBoolean(P_ACTIVATE, this.fMemento.getBoolean(P_ACTIVATE).booleanValue());
        preferences.putInt(P_ORDER_VALUE, this.fMemento.getInteger(P_ORDER_VALUE).intValue());
        preferences.putInt(P_ORDER_TYPE, this.fMemento.getInteger(P_ORDER_TYPE).intValue());
        preferences.putBoolean(P_SHOW_FILTER_TEXT, this.fMemento.getBoolean(P_SHOW_FILTER_TEXT).booleanValue());
        preferences.putInt(P_GROUP_BY, this.fMemento.getInteger(P_GROUP_BY).intValue());
        try {
            preferences.flush();
        }
        catch (BackingStoreException backingStoreException) {}
    }

    public void sortByDateDescending() {
        this.setColumnSorting(this.fColumn3, DESCENDING);
    }

    protected Job getOpenLogFileJob() {
        final Shell shell = this.getViewSite().getShell();
        return new Job(Messages.OpenLogDialog_message){

            protected IStatus run(IProgressMonitor monitor) {
                boolean failed = false;
                if (LogView.this.fInputFile.length() <= 0x100000L) {
                    Program p;
                    boolean bl = failed = !Program.launch((String)LogView.this.fInputFile.getAbsolutePath());
                    if (failed && (p = Program.findProgram((String)".txt")) != null) {
                        p.execute(LogView.this.fInputFile.getAbsolutePath());
                        return Status.OK_STATUS;
                    }
                }
                if (failed) {
                    OpenLogDialog openDialog = new OpenLogDialog(shell, LogView.this.fInputFile);
                    Display.getDefault().asyncExec(new Runnable(this, openDialog){
                        final /* synthetic */ 35 this$1;
                        private final /* synthetic */ OpenLogDialog val$openDialog;
                        {
                            this.this$1 = var1_1;
                            this.val$openDialog = openLogDialog;
                        }

                        public void run() {
                            this.val$openDialog.create();
                            this.val$openDialog.open();
                        }
                    });
                }
                return Status.OK_STATUS;
            }
        };
    }

    protected File getLogFile() {
        return this.fInputFile;
    }

    public boolean isCurrentLogSession(LogSession session) {
        return this.isPlatformLogOpen() && this.currentSession != null && ((Object)((Object)this.currentSession)).equals((Object)session);
    }

    public boolean isPlatformLogOpen() {
        return this.fInputFile.equals(Platform.getLogFileLocation().toFile());
    }

    public void setPlatformLog() {
        this.setLogFile(Platform.getLogFileLocation().toFile());
    }

    class GroupByAction
    extends Action {
        private int groupBy;

        public GroupByAction(String text, int groupBy) {
            super(text, 8);
            this.groupBy = groupBy;
            if (LogView.this.fMemento.getInteger(LogView.P_GROUP_BY) == groupBy) {
                this.setChecked(true);
            }
        }

        public void run() {
            if (LogView.this.fMemento.getInteger(LogView.P_GROUP_BY) != this.groupBy) {
                LogView.this.fMemento.putInteger(LogView.P_GROUP_BY, this.groupBy);
                LogView.this.reloadLog();
            }
        }
    }
}

