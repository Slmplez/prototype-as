/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITreeSelection
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.IViewSite
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.XMLMemento
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.dialogs.FilteredTree
 *  org.eclipse.ui.dialogs.PatternFilter
 *  org.eclipse.ui.part.DrillDownAdapter
 *  org.eclipse.ui.part.ViewPart
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.runtime.registry;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITreeSelection;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.runtime.PDERuntimePluginImages;
import org.eclipse.pde.internal.runtime.registry.DiagnosticsDialog;
import org.eclipse.pde.internal.runtime.registry.RegistryBrowserContentProvider;
import org.eclipse.pde.internal.runtime.registry.RegistryBrowserLabelProvider;
import org.eclipse.pde.internal.runtime.registry.RegistryBrowserModelChangeListener;
import org.eclipse.pde.internal.runtime.registry.RegistryFilteredTree;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.Extension;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.Folder;
import org.eclipse.pde.internal.runtime.registry.model.ModelChangeListener;
import org.eclipse.pde.internal.runtime.registry.model.RegistryModel;
import org.eclipse.pde.internal.runtime.registry.model.RegistryModelFactory;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IViewSite;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.dialogs.FilteredTree;
import org.eclipse.ui.dialogs.PatternFilter;
import org.eclipse.ui.part.DrillDownAdapter;
import org.eclipse.ui.part.ViewPart;
import org.osgi.framework.BundleException;

public class RegistryBrowser
extends ViewPart {
    public static final String SHOW_RUNNING_PLUGINS = "RegistryView.showRunning.label";
    public static final String SHOW_ADVANCED_MODE = "RegistryView.showAdvancedMode.label";
    public static final String GROUP_BY = "RegistryView.groupBy";
    public static final String SHOW_DISABLED_MODE = "RegistryView.showDisabledMode.label";
    public static final int BUNDLES = 0;
    public static final int EXTENSION_REGISTRY = 1;
    public static final int SERVICES = 2;
    private FilteredTree fFilteredTree;
    private TreeViewer fTreeViewer;
    private IMemento fMemento;
    private RegistryModel model;
    private ModelChangeListener listener;
    private Job initializeModelJob;
    private RegistryBrowserContentProvider fContentProvider;
    private RegistryBrowserLabelProvider fLabelProvider;
    private static final int REFRESH_DELAY = 50;
    private long lastRefresh = 0L;
    private Thread refreshThread;
    private Action fRefreshAction;
    private Action fShowPluginsAction;
    private Action fCollapseAllAction;
    private Action fShowAdvancedOperationsAction;
    private Action fGroupByBundlesAction;
    private Action fGroupByExtensionPointsAction;
    private Action fGroupByServicesAction;
    private Action fShowDisabledAction;
    private Action fCopyAction;
    private Action fStartAction;
    private Action fStopAction;
    private Action fEnableAction;
    private Action fDisableAction;
    private Action fDiagnoseAction;
    private Clipboard fClipboard;
    private DrillDownAdapter fDrillDownAdapter;
    private ViewerFilter fActiveFilter = new ViewerFilter(){

        public boolean select(Viewer viewer, Object parentElement, Object element) {
            if (element instanceof ExtensionPoint) {
                element = Platform.getBundle((String)((ExtensionPoint)element).getNamespaceIdentifier());
            } else if (element instanceof Extension) {
                element = Platform.getBundle((String)((Extension)element).getNamespaceIdentifier());
            }
            if (element instanceof Bundle) {
                return ((Bundle)element).getState() == 32;
            }
            return true;
        }
    };
    private ViewerFilter fDisabledFilter = new ViewerFilter(){

        public boolean select(Viewer viewer, Object parentElement, Object element) {
            if (element instanceof Bundle) {
                return !((Bundle)element).isEnabled();
            }
            return false;
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private void initializeModel() {
        this.model = RegistryModelFactory.getRegistryModel("local");
        this.fTreeViewer.setInput((Object)this.model);
        this.listener = new RegistryBrowserModelChangeListener(this);
        this.model.addModelChangeListener(this.listener);
        this.initializeModelJob = new Job(PDERuntimeMessages.RegistryBrowser_InitializingView){

            public IStatus run(IProgressMonitor monitor) {
                RegistryBrowser.this.model.connect(monitor, true);
                RegistryBrowser.this.initializeModelJob = null;
                return monitor.isCanceled() ? Status.CANCEL_STATUS : Status.OK_STATUS;
            }
        };
        this.initializeModelJob.schedule();
    }

    public void init(IViewSite site, IMemento memento) throws PartInitException {
        super.init(site, memento);
        this.fMemento = memento == null ? XMLMemento.createWriteRoot((String)"REGISTRYVIEW") : memento;
        this.initializeMemento();
    }

    private void initializeMemento() {
        if (this.fMemento.getString(SHOW_RUNNING_PLUGINS) == null) {
            this.fMemento.putString(SHOW_RUNNING_PLUGINS, "false");
        }
        if (this.fMemento.getInteger(GROUP_BY) == null) {
            this.fMemento.putInteger(GROUP_BY, 0);
        }
        if (this.fMemento.getString(SHOW_DISABLED_MODE) == null) {
            this.fMemento.putString(SHOW_DISABLED_MODE, "false");
        }
        if (this.fMemento.getString(SHOW_ADVANCED_MODE) == null) {
            this.fMemento.putString(SHOW_ADVANCED_MODE, "false");
        }
    }

    public void dispose() {
        if (this.initializeModelJob != null) {
            this.initializeModelJob.cancel();
        }
        this.model.disconnect();
        this.model.removeModelChangeListener(this.listener);
        if (this.fClipboard != null) {
            this.fClipboard.dispose();
        }
        super.dispose();
    }

    public void createPartControl(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        this.makeActions();
        this.createTreeViewer(composite);
        this.fClipboard = new Clipboard(this.fTreeViewer.getTree().getDisplay());
        this.fillToolBar();
    }

    private void createTreeViewer(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        this.fFilteredTree = new RegistryFilteredTree(this, composite, 2, new PatternFilter());
        this.fFilteredTree.setBackground(parent.getDisplay().getSystemColor(25));
        Tree tree = this.fFilteredTree.getViewer().getTree();
        GridData gd = new GridData(1808);
        this.fFilteredTree.setLayoutData((Object)gd);
        this.fTreeViewer = this.fFilteredTree.getViewer();
        this.fContentProvider = new RegistryBrowserContentProvider(this);
        this.fTreeViewer.setContentProvider((IContentProvider)this.fContentProvider);
        this.fLabelProvider = new RegistryBrowserLabelProvider(this);
        this.fTreeViewer.setLabelProvider((IBaseLabelProvider)this.fLabelProvider);
        this.fTreeViewer.setUseHashlookup(true);
        this.fTreeViewer.setComparator(new ViewerComparator(){

            public int compare(Viewer viewer, Object e1, Object e2) {
                if (e1 instanceof Comparable && e2 instanceof Comparable && e1.getClass().equals(e2.getClass())) {
                    Comparable c1 = (Comparable)e1;
                    Comparable c2 = (Comparable)e2;
                    return c1.compareTo(c2);
                }
                if (e1 instanceof Folder && e2 instanceof Folder) {
                    return ((Folder)e1).getId() - ((Folder)e2).getId();
                }
                if (e1 instanceof Bundle && e2 instanceof Bundle) {
                    e1 = ((Bundle)e1).getSymbolicName();
                    e2 = ((Bundle)e2).getSymbolicName();
                }
                return super.compare(viewer, e1, e2);
            }
        });
        if (this.fShowPluginsAction.isChecked()) {
            this.fTreeViewer.addFilter(this.fActiveFilter);
        }
        if (this.fShowDisabledAction.isChecked()) {
            this.fTreeViewer.addFilter(this.fDisabledFilter);
        }
        this.initializeModel();
        PlatformUI.getWorkbench().getHelpSystem().setHelp(this.fTreeViewer.getControl(), "org.eclipse.pde.doc.user.registry_view");
        this.getViewSite().setSelectionProvider((ISelectionProvider)this.fTreeViewer);
        MenuManager popupMenuManager = new MenuManager();
        IMenuListener listener = new IMenuListener(){

            public void menuAboutToShow(IMenuManager mng) {
                RegistryBrowser.this.fillContextMenu(mng);
            }
        };
        popupMenuManager.setRemoveAllWhenShown(true);
        popupMenuManager.addMenuListener(listener);
        Menu menu = popupMenuManager.createContextMenu((Control)tree);
        tree.setMenu(menu);
    }

    private void fillToolBar() {
        this.fDrillDownAdapter = new RegistryDrillDownAdapter(this.fTreeViewer);
        IActionBars bars = this.getViewSite().getActionBars();
        bars.setGlobalActionHandler(ActionFactory.COPY.getId(), (IAction)this.fCopyAction);
        IToolBarManager mng = bars.getToolBarManager();
        this.fDrillDownAdapter.addNavigationActions(mng);
        mng.add((IAction)this.fRefreshAction);
        mng.add((IContributionItem)new Separator());
        mng.add((IAction)this.fCollapseAllAction);
        IMenuManager mgr = bars.getMenuManager();
        MenuManager manager = new MenuManager(PDERuntimeMessages.RegistryBrowser_GroupBy);
        manager.add((IAction)this.fGroupByBundlesAction);
        manager.add((IAction)this.fGroupByExtensionPointsAction);
        manager.add((IAction)this.fGroupByServicesAction);
        mgr.add((IContributionItem)manager);
        mgr.add((IContributionItem)new Separator());
        mgr.add((IAction)this.fShowPluginsAction);
        mgr.add((IAction)this.fShowDisabledAction);
        mgr.add((IContributionItem)new Separator());
        mgr.add((IAction)this.fShowAdvancedOperationsAction);
    }

    private void fillContextMenu(IMenuManager manager) {
        manager.add((IAction)this.fRefreshAction);
        manager.add((IContributionItem)new Separator());
        manager.add((IAction)this.fCopyAction);
        manager.add((IContributionItem)new Separator());
        this.fDrillDownAdapter.addNavigationActions(manager);
        manager.add((IContributionItem)new Separator());
        if (this.fShowAdvancedOperationsAction.isChecked() && this.isBundleSelected()) {
            if (this.selectedBundlesStopped()) {
                manager.add((IAction)this.fStartAction);
            }
            if (this.selectedBundlesStarted()) {
                manager.add((IAction)this.fStopAction);
            }
            if (this.getSelectedBundles().size() == 1) {
                manager.add((IAction)this.fDiagnoseAction);
            }
            if (this.selectedBundlesDisabled()) {
                manager.add((IAction)this.fEnableAction);
            }
            if (this.selectedBundlesEnabled()) {
                manager.add((IAction)this.fDisableAction);
            }
        }
        manager.add((IContributionItem)new Separator());
        manager.add((IAction)this.fShowPluginsAction);
        manager.add((IAction)this.fShowDisabledAction);
        manager.add((IContributionItem)new Separator());
        manager.add((IAction)this.fShowAdvancedOperationsAction);
    }

    public void saveState(IMemento memento) {
        if (memento == null || this.fMemento == null || this.fTreeViewer == null) {
            return;
        }
        this.fMemento.putString(SHOW_RUNNING_PLUGINS, Boolean.toString(this.fShowPluginsAction.isChecked()));
        this.fMemento.putString(SHOW_DISABLED_MODE, Boolean.toString(this.fShowDisabledAction.isChecked()));
        this.fMemento.putBoolean(SHOW_ADVANCED_MODE, this.fShowAdvancedOperationsAction.isChecked());
        memento.putMemento(this.fMemento);
    }

    public void setFocus() {
        Text filterText = this.fFilteredTree.getFilterControl();
        if (filterText != null) {
            filterText.setFocus();
        }
    }

    private void makeActions() {
        this.fRefreshAction = new Action("refresh"){

            public void run() {
                BusyIndicator.showWhile((Display)RegistryBrowser.this.fTreeViewer.getTree().getDisplay(), (Runnable)new Runnable(this){
                    final /* synthetic */ 6 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        6.access$0(this.this$1).refresh(RegistryBrowser.access$7(6.access$0(this.this$1)).getInput());
                    }
                });
            }

            static /* synthetic */ RegistryBrowser access$0(6 var0) {
                return var0.RegistryBrowser.this;
            }
        };
        this.fRefreshAction.setText(PDERuntimeMessages.RegistryView_refresh_label);
        this.fRefreshAction.setToolTipText(PDERuntimeMessages.RegistryView_refresh_tooltip);
        this.fRefreshAction.setImageDescriptor(PDERuntimePluginImages.DESC_REFRESH);
        this.fRefreshAction.setDisabledImageDescriptor(PDERuntimePluginImages.DESC_REFRESH_DISABLED);
        this.fShowPluginsAction = new Action(PDERuntimeMessages.RegistryView_showRunning_label){

            public void run() {
                if (RegistryBrowser.this.fShowPluginsAction.isChecked()) {
                    RegistryBrowser.this.fTreeViewer.addFilter(RegistryBrowser.this.fActiveFilter);
                } else {
                    RegistryBrowser.this.fTreeViewer.removeFilter(RegistryBrowser.this.fActiveFilter);
                }
                RegistryBrowser.this.updateTitle();
            }
        };
        this.fShowPluginsAction.setChecked(this.fMemento.getString(SHOW_RUNNING_PLUGINS).equals("true"));
        this.fShowDisabledAction = new Action(PDERuntimeMessages.RegistryView_showDisabled_label){

            public void run() {
                if (RegistryBrowser.this.fShowDisabledAction.isChecked()) {
                    RegistryBrowser.this.fTreeViewer.addFilter(RegistryBrowser.this.fDisabledFilter);
                } else {
                    RegistryBrowser.this.fTreeViewer.removeFilter(RegistryBrowser.this.fDisabledFilter);
                }
                RegistryBrowser.this.updateTitle();
            }
        };
        this.fShowDisabledAction.setChecked(this.fMemento.getString(SHOW_DISABLED_MODE).equals("true"));
        this.fCopyAction = new Action(PDERuntimeMessages.RegistryBrowser_copy_label){

            public void run() {
                ITreeSelection selection = (ITreeSelection)RegistryBrowser.this.fFilteredTree.getViewer().getSelection();
                if (selection.isEmpty()) {
                    return;
                }
                String textVersion = ((ILabelProvider)RegistryBrowser.this.fTreeViewer.getLabelProvider()).getText(selection.getFirstElement());
                if (textVersion != null && textVersion.trim().length() > 0) {
                    RegistryBrowser.this.fClipboard.setContents(new Object[]{textVersion}, new Transfer[]{TextTransfer.getInstance()});
                }
            }
        };
        this.fCopyAction.setImageDescriptor(PDERuntimePluginImages.COPY_QNAME);
        this.fGroupByBundlesAction = new GroupByAction(PDERuntimeMessages.RegistryBrowser_Bundle, 0);
        int groupBy = this.getGroupBy();
        this.fGroupByBundlesAction.setChecked(groupBy == 0);
        this.fGroupByExtensionPointsAction = new GroupByAction(PDERuntimeMessages.RegistryBrowser_ExtensionPoint, 1);
        this.fGroupByExtensionPointsAction.setChecked(groupBy == 1);
        this.fGroupByServicesAction = new GroupByAction(PDERuntimeMessages.RegistryBrowser_Service, 2);
        this.fGroupByServicesAction.setChecked(groupBy == 2);
        this.fShowAdvancedOperationsAction = new Action(PDERuntimeMessages.RegistryView_showAdvanced_label){

            public void run() {
            }
        };
        this.fShowAdvancedOperationsAction.setChecked(this.fMemento.getString(SHOW_ADVANCED_MODE).equals("true"));
        this.fStartAction = new Action(PDERuntimeMessages.RegistryView_startAction_label){

            public void run() {
                try {
                    List bundles = RegistryBrowser.this.getSelectedBundles();
                    Iterator it = bundles.iterator();
                    while (it.hasNext()) {
                        Bundle bundle = (Bundle)it.next();
                        bundle.start();
                    }
                }
                catch (BundleException e) {
                    PDERuntimePlugin.log(e);
                }
            }
        };
        this.fStopAction = new Action(PDERuntimeMessages.RegistryView_stopAction_label){

            public void run() {
                try {
                    List bundles = RegistryBrowser.this.getSelectedBundles();
                    Iterator it = bundles.iterator();
                    while (it.hasNext()) {
                        Bundle bundle = (Bundle)it.next();
                        bundle.stop();
                    }
                }
                catch (BundleException e) {
                    PDERuntimePlugin.log(e);
                }
            }
        };
        this.fEnableAction = new Action(PDERuntimeMessages.RegistryView_enableAction_label){

            public void run() {
                List bundles = RegistryBrowser.this.getSelectedBundles();
                Iterator it = bundles.iterator();
                while (it.hasNext()) {
                    Bundle bundle = (Bundle)it.next();
                    bundle.enable();
                }
            }
        };
        this.fDisableAction = new Action(PDERuntimeMessages.RegistryView_disableAction_label){

            public void run() {
                List bundles = RegistryBrowser.this.getSelectedBundles();
                Iterator it = bundles.iterator();
                while (it.hasNext()) {
                    Bundle bundle = (Bundle)it.next();
                    bundle.disable();
                }
            }
        };
        this.fDiagnoseAction = new Action(PDERuntimeMessages.RegistryView_diagnoseAction_label){

            public void run() {
                List bundles = RegistryBrowser.this.getSelectedBundles();
                Iterator it = bundles.iterator();
                while (it.hasNext()) {
                    Bundle bundle = (Bundle)it.next();
                    MultiStatus problems = bundle.diagnose();
                    if (problems != null && problems.getChildren().length > 0) {
                        DiagnosticsDialog dialog = new DiagnosticsDialog(RegistryBrowser.this.getSite().getShell(), PDERuntimeMessages.RegistryView_diag_dialog_title, null, (IStatus)problems, 2);
                        dialog.open();
                        continue;
                    }
                    MessageDialog.openInformation((Shell)RegistryBrowser.this.getSite().getShell(), (String)PDERuntimeMessages.RegistryView_diag_dialog_title, (String)PDERuntimeMessages.RegistryView_no_unresolved_constraints);
                }
            }
        };
        this.fCollapseAllAction = new Action("collapseAll"){

            public void run() {
                RegistryBrowser.this.fTreeViewer.collapseAll();
            }
        };
        this.fCollapseAllAction.setText(PDERuntimeMessages.RegistryView_collapseAll_label);
        this.fCollapseAllAction.setImageDescriptor(PDERuntimePluginImages.DESC_COLLAPSE_ALL);
        this.fCollapseAllAction.setToolTipText(PDERuntimeMessages.RegistryView_collapseAll_tooltip);
    }

    public int getGroupBy() {
        return this.fMemento.getInteger(GROUP_BY);
    }

    public void updateTitle() {
        this.setContentDescription(this.getTitleSummary());
    }

    protected Tree getUndisposedTree() {
        if (this.fTreeViewer == null || this.fTreeViewer.getTree() == null || this.fTreeViewer.getTree().isDisposed()) {
            return null;
        }
        return this.fTreeViewer.getTree();
    }

    public String getTitleSummary() {
        String type;
        Tree tree = this.getUndisposedTree();
        int total = 0;
        switch (this.getGroupBy()) {
            default: {
                type = PDERuntimeMessages.RegistryBrowser_plugins;
                total = this.model.getBundles().length;
                break;
            }
            case 1: {
                type = PDERuntimeMessages.RegistryBrowser_extensionPoints;
                total = this.model.getExtensionPoints().length;
                break;
            }
            case 2: {
                type = PDERuntimeMessages.RegistryBrowser_Services;
                total = this.model.getServiceNames().length;
            }
        }
        if (tree == null) {
            return NLS.bind((String)PDERuntimeMessages.RegistryView_titleSummary, (Object[])new String[]{"0", "0", type});
        }
        return NLS.bind((String)PDERuntimeMessages.RegistryView_titleSummary, (Object[])new String[]{Integer.toString(tree.getItemCount()), Integer.toString(total), type});
    }

    private boolean isBundleSelected() {
        IStructuredSelection selection = (IStructuredSelection)this.fTreeViewer.getSelection();
        if (selection != null) {
            Object[] elements = selection.toArray();
            int i = 0;
            while (i < elements.length) {
                if (!(elements[i] instanceof Bundle)) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    private List getSelectedBundles() {
        ArrayList<Object> bundles = new ArrayList<Object>();
        IStructuredSelection selection = (IStructuredSelection)this.fTreeViewer.getSelection();
        if (selection != null) {
            Object[] elements = selection.toArray();
            int i = 0;
            while (i < elements.length) {
                if (elements[i] instanceof Bundle) {
                    bundles.add(elements[i]);
                }
                ++i;
            }
        }
        return bundles;
    }

    private boolean selectedBundlesStarted() {
        List bundles = this.getSelectedBundles();
        Iterator it = bundles.iterator();
        while (it.hasNext()) {
            Bundle bundle = (Bundle)it.next();
            if (bundle.getState() == 32) continue;
            return false;
        }
        return true;
    }

    private boolean selectedBundlesStopped() {
        List bundles = this.getSelectedBundles();
        Iterator it = bundles.iterator();
        while (it.hasNext()) {
            Bundle bundle = (Bundle)it.next();
            if (bundle.getState() != 32) continue;
            return false;
        }
        return true;
    }

    private boolean selectedBundlesDisabled() {
        List bundles = this.getSelectedBundles();
        Iterator it = bundles.iterator();
        while (it.hasNext()) {
            Bundle bundle = (Bundle)it.next();
            if (!bundle.isEnabled()) continue;
            return false;
        }
        return true;
    }

    private boolean selectedBundlesEnabled() {
        List bundles = this.getSelectedBundles();
        Iterator it = bundles.iterator();
        while (it.hasNext()) {
            Bundle bundle = (Bundle)it.next();
            if (bundle.isEnabled()) continue;
            return false;
        }
        return true;
    }

    public void add(Object object) {
        Object parent = this.fContentProvider.getParent(object);
        if (parent == null) {
            this.add(this.fTreeViewer.getInput(), object);
        } else {
            this.refresh(parent);
        }
    }

    protected void add(Object parent, Object object) {
        if (this.fTreeViewer.getTree().isDisposed()) {
            return;
        }
        if (this.fDrillDownAdapter.canGoHome()) {
            return;
        }
        this.fTreeViewer.add(parent, object);
        this.updateTitle();
    }

    public void remove(Object object) {
        if (this.fTreeViewer.getTree().isDisposed()) {
            return;
        }
        if (this.fDrillDownAdapter.canGoHome()) {
            return;
        }
        this.fTreeViewer.remove(object);
        this.updateTitle();
    }

    private boolean filtersEnabled() {
        return this.fTreeViewer.getFilters().length > 0;
    }

    private void deferredRefresh() {
        if (this.refreshThread != null) {
            return;
        }
        long now = System.currentTimeMillis();
        if (now - this.lastRefresh > 50L) {
            this.fTreeViewer.refresh();
            this.updateTitle();
            this.lastRefresh = now;
        } else {
            Runnable runnable = new Runnable(){

                public void run() {
                    try {
                        Thread.sleep(50L);
                    }
                    catch (InterruptedException interruptedException) {
                        return;
                    }
                    RegistryBrowser.this.refreshThread = null;
                    if (RegistryBrowser.this.fTreeViewer.getTree().isDisposed()) {
                        return;
                    }
                    RegistryBrowser.this.fTreeViewer.getTree().getDisplay().asyncExec(new Runnable(this){
                        final /* synthetic */ 18 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            if (!RegistryBrowser.access$7(18.access$0(this.this$1)).getTree().isDisposed()) {
                                RegistryBrowser.access$7(18.access$0(this.this$1)).refresh();
                                18.access$0(this.this$1).updateTitle();
                            }
                        }
                    });
                }

                static /* synthetic */ RegistryBrowser access$0(18 var0) {
                    return var0.RegistryBrowser.this;
                }
            };
            this.refreshThread = new Thread(runnable);
            this.refreshThread.start();
        }
    }

    void refresh(Object[] objects) {
        if (this.fTreeViewer.getTree().isDisposed()) {
            return;
        }
        if (this.filtersEnabled()) {
            this.deferredRefresh();
        } else {
            int i = 0;
            while (i < objects.length) {
                this.fTreeViewer.refresh(objects[i]);
                ++i;
            }
        }
        this.updateTitle();
    }

    void refresh(Object object) {
        if (this.fTreeViewer.getTree().isDisposed()) {
            return;
        }
        if (this.filtersEnabled()) {
            this.deferredRefresh();
        } else {
            this.fTreeViewer.refresh(object);
            this.updateTitle();
        }
    }

    public Object getAdapter(Class clazz) {
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.jface.viewers.ILabelProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2.equals(clazz)) {
            return this.fLabelProvider;
        }
        Class<?> clazz3 = class$1;
        if (clazz3 == null) {
            try {
                clazz3 = class$1 = Class.forName("org.eclipse.jface.viewers.IContentProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz3.equals(clazz)) {
            return this.fContentProvider;
        }
        return super.getAdapter(clazz);
    }

    private class GroupByAction
    extends Action {
        private int actionGroupBy;

        public GroupByAction(String name, int groupBy) {
            super(name, 8);
            this.actionGroupBy = groupBy;
        }

        public void run() {
            if (this.isChecked()) {
                RegistryBrowser.this.fMemento.putInteger(RegistryBrowser.GROUP_BY, this.actionGroupBy);
                RegistryBrowser.this.fRefreshAction.run();
            }
        }
    }

    class RegistryDrillDownAdapter
    extends DrillDownAdapter {
        public RegistryDrillDownAdapter(TreeViewer tree) {
            super(tree);
        }

        public void goInto() {
            super.goInto();
            RegistryBrowser.this.fShowPluginsAction.setEnabled(!this.canGoHome());
            RegistryBrowser.this.fShowDisabledAction.setEnabled(!this.canGoHome());
        }

        public void goBack() {
            super.goBack();
            RegistryBrowser.this.fShowPluginsAction.setEnabled(!this.canGoHome());
            RegistryBrowser.this.fShowDisabledAction.setEnabled(!this.canGoHome());
        }

        public void goHome() {
            super.goHome();
            RegistryBrowser.this.fShowPluginsAction.setEnabled(!this.canGoHome());
            RegistryBrowser.this.fShowDisabledAction.setEnabled(!this.canGoHome());
        }

        public void goInto(Object newInput) {
            super.goInto(newInput);
            RegistryBrowser.this.fShowPluginsAction.setEnabled(!this.canGoHome());
            RegistryBrowser.this.fShowDisabledAction.setEnabled(!this.canGoHome());
        }
    }
}

