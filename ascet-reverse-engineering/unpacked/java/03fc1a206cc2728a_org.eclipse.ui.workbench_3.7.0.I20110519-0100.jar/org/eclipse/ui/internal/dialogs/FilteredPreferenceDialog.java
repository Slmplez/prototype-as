/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.commands.ActionHandler
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.IPreferencePage
 *  org.eclipse.jface.preference.PreferenceContentProvider
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.jface.preference.PreferenceLabelProvider
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.preference.PreferencePage
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Sash
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.commands.ActionHandler;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.IPreferencePage;
import org.eclipse.jface.preference.PreferenceContentProvider;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.jface.preference.PreferenceLabelProvider;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.preference.PreferencePage;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.CapabilityFilter;
import org.eclipse.ui.internal.dialogs.FilteredPreferenceDialog;
import org.eclipse.ui.internal.dialogs.PreferenceBoldLabelProvider;
import org.eclipse.ui.internal.dialogs.PreferenceHistoryEntry;
import org.eclipse.ui.internal.dialogs.PreferenceNodeFilter;
import org.eclipse.ui.internal.dialogs.PreferencePageHistory;
import org.eclipse.ui.internal.dialogs.PreferencePatternFilter;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.model.IContributionService;
import org.eclipse.ui.preferences.IWorkbenchPreferenceContainer;
import org.eclipse.ui.preferences.IWorkingCopyManager;
import org.eclipse.ui.preferences.WorkingCopyManager;
import org.osgi.service.prefs.BackingStoreException;

public abstract class FilteredPreferenceDialog
extends PreferenceDialog
implements IWorkbenchPreferenceContainer {
    private static final int PAGE_MULTIPLIER = 9;
    private static final int INCREMENT = 10;
    protected PreferenceFilteredTree filteredTree;
    private Object pageData;
    IWorkingCopyManager workingCopyManager;
    private Collection updateJobs = new ArrayList();
    PreferencePageHistory history = new PreferencePageHistory(this);
    private Sash sash;
    private IHandlerActivation showViewHandler;
    private boolean locked;
    private boolean keyScrollingEnabled = false;
    private Listener keyScrollingFilter = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public FilteredPreferenceDialog(Shell parentShell, PreferenceManager manager) {
        super(parentShell, manager);
    }

    protected IPreferenceNode findNodeMatching(String nodeId) {
        IPreferenceNode node = super.findNodeMatching(nodeId);
        if (WorkbenchActivityHelper.filterItem(node)) {
            return null;
        }
        return node;
    }

    protected TreeViewer createTreeViewer(Composite parent) {
        TreeViewer tree;
        int styleBits = 4;
        if (!this.hasAtMostOnePage()) {
            this.filteredTree = new PreferenceFilteredTree(parent, styleBits, new PreferencePatternFilter());
            GridData gd = new GridData(4, 4, true, true);
            gd.horizontalIndent = 7;
            this.filteredTree.setBackground(parent.getDisplay().getSystemColor(25));
            tree = this.filteredTree.getViewer();
        } else {
            tree = new TreeViewer(parent, styleBits);
        }
        this.setContentAndLabelProviders(tree);
        tree.setInput((Object)this.getPreferenceManager());
        tree.addFilter((ViewerFilter)new CapabilityFilter());
        tree.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                FilteredPreferenceDialog.this.handleTreeSelectionChanged(event);
            }
        });
        super.addListeners(tree);
        return tree;
    }

    private boolean hasAtMostOnePage() {
        PreferenceContentProvider contentProvider = new PreferenceContentProvider();
        try {
            Object[] children = contentProvider.getElements((Object)this.getPreferenceManager());
            boolean bl = children.length == 0 || children.length == 1 && !contentProvider.hasChildren(children[0]);
            return bl;
        }
        finally {
            contentProvider.dispose();
        }
    }

    protected void setContentAndLabelProviders(TreeViewer treeViewer) {
        if (this.hasAtMostOnePage()) {
            treeViewer.setLabelProvider((IBaseLabelProvider)new PreferenceLabelProvider());
        } else {
            treeViewer.setLabelProvider((IBaseLabelProvider)new PreferenceBoldLabelProvider(this.filteredTree));
        }
        IWorkbenchWindow iWorkbenchWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IContributionService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContributionService cs = (IContributionService)iWorkbenchWindow.getService(clazz);
        treeViewer.setComparator((ViewerComparator)cs.getComparatorFor(this.getContributionType()));
        treeViewer.setContentProvider((IContentProvider)new PreferenceContentProvider());
    }

    protected String getContributionType() {
        return "preference";
    }

    protected void handleTreeSelectionChanged(SelectionChangedEvent event) {
    }

    protected Control createTreeAreaContents(Composite parent) {
        Composite leftArea = new Composite(parent, 0);
        leftArea.setBackground(parent.getDisplay().getSystemColor(25));
        leftArea.setFont(parent.getFont());
        GridLayout leftLayout = new GridLayout();
        leftLayout.numColumns = 1;
        leftLayout.marginHeight = 0;
        leftLayout.marginTop = 7;
        leftLayout.marginWidth = 7;
        leftLayout.horizontalSpacing = 0;
        leftLayout.verticalSpacing = 0;
        leftArea.setLayout((Layout)leftLayout);
        TreeViewer viewer = this.createTreeViewer(leftArea);
        this.setTreeViewer(viewer);
        this.updateTreeFont(JFaceResources.getDialogFont());
        GridData viewerData = new GridData(1808);
        viewer.getControl().getParent().setLayoutData((Object)viewerData);
        this.layoutTreeAreaControl((Control)leftArea);
        return leftArea;
    }

    public void showOnly(String[] filteredIds) {
        this.filteredTree.addFilter(new PreferenceNodeFilter(filteredIds));
    }

    public void setPageData(Object pageData) {
        this.pageData = pageData;
    }

    protected void createPage(IPreferenceNode node) {
        super.createPage(node);
        if (this.pageData == null) {
            return;
        }
        IPreferencePage page = node.getPage();
        if (page instanceof PreferencePage) {
            ((PreferencePage)page).applyData(this.pageData);
        }
    }

    public IPreferencePage getCurrentPage() {
        return super.getCurrentPage();
    }

    public boolean openPage(String pageId, Object data) {
        this.setPageData(data);
        this.setCurrentPageId(pageId);
        IPreferencePage page = this.getCurrentPage();
        if (page instanceof PreferencePage) {
            ((PreferencePage)page).applyData(data);
        }
        return true;
    }

    public final void setCurrentPageId(String preferencePageId) {
        IPreferenceNode node = this.findNodeMatching(preferencePageId);
        if (node != null) {
            this.getTreeViewer().setSelection((ISelection)new StructuredSelection((Object)node));
            this.showPage(node);
        }
    }

    public IWorkingCopyManager getWorkingCopyManager() {
        if (this.workingCopyManager == null) {
            this.workingCopyManager = new WorkingCopyManager();
        }
        return this.workingCopyManager;
    }

    protected void okPressed() {
        super.okPressed();
        if (this.getReturnCode() == 2) {
            return;
        }
        if (this.workingCopyManager != null) {
            try {
                this.workingCopyManager.applyChanges();
            }
            catch (BackingStoreException e) {
                String msg = e.getMessage();
                if (msg == null) {
                    msg = WorkbenchMessages.FilteredPreferenceDialog_PreferenceSaveFailed;
                }
                StatusUtil.handleStatus(String.valueOf(WorkbenchMessages.PreferencesExportDialog_ErrorDialogTitle) + ": " + msg, e, 2, this.getShell());
            }
        }
        Iterator updateIterator = this.updateJobs.iterator();
        while (updateIterator.hasNext()) {
            ((Job)updateIterator.next()).schedule();
        }
    }

    public void registerUpdateJob(Job job) {
        this.updateJobs.add(job);
    }

    Control getContainerToolBar(Composite composite) {
        final ToolBarManager historyManager = new ToolBarManager(0x800100);
        historyManager.createControl(composite);
        this.history.createHistoryControls(historyManager.getControl(), historyManager);
        Action popupMenuAction = new Action(){

            public ImageDescriptor getImageDescriptor() {
                return WorkbenchImages.getImageDescriptor("IMG_LCL_VIEW_MENU");
            }

            public void run() {
                MenuManager manager = new MenuManager();
                manager.add((IAction)new Action(this){
                    final /* synthetic */ 2 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        FilteredPreferenceDialog.access$1(2.access$0(this.this$1)).addFocusListener((FocusListener)new FocusAdapter(this){
                            final /* synthetic */ 3 this$2;
                            {
                                this.this$2 = var1_1;
                            }

                            public void focusGained(FocusEvent e) {
                                FilteredPreferenceDialog.access$1(2.access$0(3.access$0(this.this$2))).setBackground(FilteredPreferenceDialog.access$1(2.access$0(3.access$0(this.this$2))).getDisplay().getSystemColor(26));
                            }

                            public void focusLost(FocusEvent e) {
                                FilteredPreferenceDialog.access$1(2.access$0(3.access$0(this.this$2))).setBackground(FilteredPreferenceDialog.access$1(2.access$0(3.access$0(this.this$2))).getDisplay().getSystemColor(25));
                            }
                        });
                        FilteredPreferenceDialog.access$1(2.access$0(this.this$1)).setFocus();
                    }

                    public String getText() {
                        return WorkbenchMessages.FilteredPreferenceDialog_Resize;
                    }

                    static /* synthetic */ 2 access$0(3 var0) {
                        return var0.this$1;
                    }
                });
                manager.add((IAction)new Action(this){
                    final /* synthetic */ 2 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        2.access$0(this.this$1).activeKeyScrolling();
                    }

                    public String getText() {
                        return WorkbenchMessages.FilteredPreferenceDialog_Key_Scrolling;
                    }
                });
                Menu menu = manager.createContextMenu((Control)FilteredPreferenceDialog.this.getShell());
                Rectangle bounds = historyManager.getControl().getBounds();
                Point topLeft = new Point(bounds.x + bounds.width, bounds.y + bounds.height);
                topLeft = historyManager.getControl().toDisplay(topLeft);
                menu.setLocation(topLeft.x, topLeft.y);
                menu.setVisible(true);
            }

            static /* synthetic */ FilteredPreferenceDialog access$0(2 var0) {
                return var0.FilteredPreferenceDialog.this;
            }
        };
        popupMenuAction.setToolTipText(WorkbenchMessages.FilteredPreferenceDialog_FilterToolTip);
        historyManager.add((IAction)popupMenuAction);
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService service = (IHandlerService)iWorkbench.getService(clazz);
        this.showViewHandler = service.activateHandler("org.eclipse.ui.window.showViewMenu", (IHandler)new ActionHandler((IAction)popupMenuAction), new ActiveShellExpression(this.getShell()));
        historyManager.update(false);
        return historyManager.getControl();
    }

    void activeKeyScrolling() {
        if (this.keyScrollingFilter == null) {
            Composite pageParent = this.getPageContainer().getParent();
            if (!(pageParent instanceof ScrolledComposite)) {
                return;
            }
            final ScrolledComposite sc = (ScrolledComposite)pageParent;
            this.keyScrollingFilter = new Listener(){

                public void handleEvent(Event event) {
                    if (!FilteredPreferenceDialog.this.keyScrollingEnabled || sc.isDisposed()) {
                        return;
                    }
                    switch (event.keyCode) {
                        case 0x1000002: {
                            sc.setOrigin(sc.getOrigin().x, sc.getOrigin().y + 10);
                            break;
                        }
                        case 0x1000001: {
                            sc.setOrigin(sc.getOrigin().x, sc.getOrigin().y - 10);
                            break;
                        }
                        case 0x1000003: {
                            sc.setOrigin(sc.getOrigin().x - 10, sc.getOrigin().y);
                            break;
                        }
                        case 0x1000004: {
                            sc.setOrigin(sc.getOrigin().x + 10, sc.getOrigin().y);
                            break;
                        }
                        case 0x1000006: {
                            sc.setOrigin(sc.getOrigin().x, sc.getOrigin().y + 90);
                            break;
                        }
                        case 0x1000005: {
                            sc.setOrigin(sc.getOrigin().x, sc.getOrigin().y - 90);
                            break;
                        }
                        case 0x1000007: {
                            sc.setOrigin(0, 0);
                            break;
                        }
                        case 0x1000008: {
                            sc.setOrigin(0, sc.getSize().y);
                            break;
                        }
                        default: {
                            FilteredPreferenceDialog.this.keyScrollingEnabled = false;
                        }
                    }
                    event.type = 0;
                    event.doit = false;
                }
            };
            Display display = PlatformUI.getWorkbench().getDisplay();
            display.addFilter(1, this.keyScrollingFilter);
            display.addFilter(31, this.keyScrollingFilter);
            sc.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    FilteredPreferenceDialog.this.removeKeyScrolling();
                }
            });
        }
        this.keyScrollingEnabled = true;
    }

    void removeKeyScrolling() {
        if (this.keyScrollingFilter != null) {
            this.keyScrollingEnabled = false;
            Display display = PlatformUI.getWorkbench().getDisplay();
            if (display != null) {
                display.removeFilter(1, this.keyScrollingFilter);
                display.removeFilter(31, this.keyScrollingFilter);
            }
            this.keyScrollingFilter = null;
        }
    }

    protected boolean showPage(IPreferenceNode node) {
        boolean success = super.showPage(node);
        if (success) {
            this.history.addHistoryEntry(new PreferenceHistoryEntry(node.getId(), node.getLabelText(), null));
        }
        return success;
    }

    public boolean close() {
        if (this.showViewHandler != null) {
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
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
        this.removeKeyScrolling();
        this.history.dispose();
        return super.close();
    }

    protected Composite createTitleArea(Composite parent) {
        GridLayout parentLayout = (GridLayout)parent.getLayout();
        parentLayout.numColumns = 2;
        parentLayout.marginHeight = 0;
        parentLayout.marginTop = 7;
        parent.setLayout((Layout)parentLayout);
        Composite titleComposite = super.createTitleArea(parent);
        Composite toolbarArea = new Composite(parent, 0);
        GridLayout toolbarLayout = new GridLayout();
        toolbarLayout.marginHeight = 0;
        toolbarLayout.verticalSpacing = 0;
        toolbarArea.setLayout((Layout)toolbarLayout);
        toolbarArea.setLayoutData((Object)new GridData(0x1000008, 4, false, true));
        Control topBar = this.getContainerToolBar(toolbarArea);
        topBar.setLayoutData((Object)new GridData(0x1000008, 4, false, true));
        return titleComposite;
    }

    protected void selectSavedItem() {
        Text filterText;
        this.getTreeViewer().setInput((Object)this.getPreferenceManager());
        super.selectSavedItem();
        if (this.getTreeViewer().getTree().getItemCount() > 1 && (filterText = this.filteredTree.getFilterControl()) != null) {
            filterText.setFocus();
        }
    }

    protected void updateTreeFont(Font dialogFont) {
        if (this.hasAtMostOnePage()) {
            Tree composite = this.getTreeViewer().getTree();
            this.applyDialogFont((Control)composite, dialogFont);
            composite.layout(true);
        } else {
            this.applyDialogFont((Control)this.filteredTree, dialogFont);
            this.filteredTree.layout(true);
        }
    }

    private void applyDialogFont(Control control, Font dialogFont) {
        control.setFont(dialogFont);
        if (control instanceof Composite) {
            Control[] children = ((Composite)control).getChildren();
            int i = 0;
            while (i < children.length) {
                this.applyDialogFont(children[i], dialogFont);
                ++i;
            }
        }
    }

    protected Sash createSash(Composite composite, Control rightControl) {
        this.sash = super.createSash(composite, rightControl);
        return this.sash;
    }

    public void setLocked(boolean b) {
        this.locked = b;
    }

    static /* synthetic */ Sash access$1(FilteredPreferenceDialog filteredPreferenceDialog) {
        return filteredPreferenceDialog.sash;
    }

    protected class PreferenceFilteredTree
    extends FilteredTree {
        private ViewerFilter viewerFilter;
        private String cachedTitle;

        PreferenceFilteredTree(Composite parent, int treeStyle, PatternFilter filter) {
            super(parent, treeStyle, filter, true);
        }

        protected void addFilter(ViewerFilter filter) {
            this.viewerFilter = filter;
            this.getViewer().addFilter(filter);
            if (this.filterText != null) {
                this.setFilterText(WorkbenchMessages.FilteredTree_FilterMessage);
                this.textChanged();
            }
            this.cachedTitle = this.getShell().getText();
            this.getShell().setText(NLS.bind((String)WorkbenchMessages.FilteredTree_FilteredDialogTitle, (Object)this.cachedTitle));
        }

        protected void updateToolbar(boolean visible) {
            super.updateToolbar(this.viewerFilter != null || visible);
        }

        protected void clearText() {
            this.setFilterText("");
            if (!FilteredPreferenceDialog.this.locked && this.viewerFilter != null) {
                this.getViewer().removeFilter(this.viewerFilter);
                this.viewerFilter = null;
                this.getShell().setText(this.cachedTitle);
            }
            this.textChanged();
        }
    }
}

