/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.util.ConfigureColumns
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.SashForm
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.about;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.util.ConfigureColumns;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.about.AboutBundleData;
import org.eclipse.ui.internal.about.AboutUtils;
import org.eclipse.ui.internal.about.BundleSigningInfo;
import org.eclipse.ui.internal.about.ProductInfoPage;
import org.eclipse.ui.internal.about.TableComparator;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.progress.WorkbenchJob;
import org.osgi.framework.Bundle;

public class AboutPluginsPage
extends ProductInfoPage {
    private static final String ID = "productInfo.plugins";
    private static final int TABLE_HEIGHT = 200;
    private static final int MORE_ID = 1025;
    private static final int SIGNING_ID = 1026;
    private static final int COLUMNS_ID = 1027;
    private static final IPath baseNLPath = new Path("$nl$");
    private static final String PLUGININFO = "about.html";
    private static final int PLUGIN_NAME_COLUMN_INDEX = 2;
    private static final int SIGNING_AREA_PERCENTAGE = 30;
    private TableViewer vendorInfo;
    private Button moreInfo;
    private Button signingInfo;
    private String message;
    private String helpContextId = "org.eclipse.ui.about_plugins_dialog_context";
    private String[] columnTitles = new String[]{WorkbenchMessages.AboutPluginsDialog_signed, WorkbenchMessages.AboutPluginsDialog_provider, WorkbenchMessages.AboutPluginsDialog_pluginName, WorkbenchMessages.AboutPluginsDialog_version, WorkbenchMessages.AboutPluginsDialog_pluginId};
    private Bundle[] bundles = WorkbenchPlugin.getDefault().getBundles();
    private AboutBundleData[] bundleInfos;
    private SashForm sashForm;
    private BundleSigningInfo signingArea;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public void setBundles(Bundle[] bundles) {
        this.bundles = bundles;
    }

    public void setHelpContextId(String id) {
        this.helpContextId = id;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    protected void handleSigningInfoPressed() {
        if (this.signingArea == null) {
            this.signingArea = new BundleSigningInfo();
            AboutBundleData bundleInfo = (AboutBundleData)((IStructuredSelection)this.vendorInfo.getSelection()).getFirstElement();
            this.signingArea.setData(bundleInfo);
            this.signingArea.createContents((Composite)this.sashForm);
            this.sashForm.setWeights(new int[]{70, 30});
            this.signingInfo.setText(WorkbenchMessages.AboutPluginsDialog_signingInfo_hide);
        } else {
            this.signingInfo.setText(WorkbenchMessages.AboutPluginsDialog_signingInfo_show);
            this.signingArea.dispose();
            this.signingArea = null;
            this.sashForm.setWeights(new int[]{100});
        }
    }

    public void createPageButtons(Composite parent) {
        this.moreInfo = this.createButton(parent, 1025, WorkbenchMessages.AboutPluginsDialog_moreInfo);
        this.moreInfo.setEnabled(false);
        this.signingInfo = this.createButton(parent, 1026, WorkbenchMessages.AboutPluginsDialog_signingInfo_show);
        this.signingInfo.setEnabled(false);
        this.createButton(parent, 1027, WorkbenchMessages.AboutPluginsDialog_columns);
    }

    public void createControl(Composite parent) {
        AboutBundleData data;
        this.initializeDialogUnits((Control)parent);
        HashMap<String, AboutBundleData> map = new HashMap<String, AboutBundleData>();
        int i = 0;
        while (i < this.bundles.length) {
            data = new AboutBundleData(this.bundles[i]);
            if (BundleUtility.isReady(data.getState()) && !map.containsKey(data.getVersionedId())) {
                map.put(data.getVersionedId(), data);
            }
            ++i;
        }
        this.bundleInfos = map.values().toArray(new AboutBundleData[0]);
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.internal.WorkbenchPlugin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        clazz.getSigners();
        this.sashForm = new SashForm(parent, 65792);
        FillLayout layout = new FillLayout();
        this.sashForm.setLayout((Layout)layout);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        data = new GridData(1808);
        this.sashForm.setLayoutData((Object)data);
        Composite outer = this.createOuterComposite((Composite)this.sashForm);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)outer, this.helpContextId);
        if (this.message != null) {
            Label label = new Label(outer, 0);
            label.setLayoutData((Object)new GridData(768));
            label.setFont(parent.getFont());
            label.setText(this.message);
        }
        this.createTable(outer);
        this.setControl((Control)outer);
    }

    protected void createTable(Composite parent) {
        this.vendorInfo = new TableViewer(parent, 68356);
        this.vendorInfo.setUseHashlookup(true);
        this.vendorInfo.getTable().setHeaderVisible(true);
        this.vendorInfo.getTable().setLinesVisible(true);
        this.vendorInfo.getTable().setFont(parent.getFont());
        this.vendorInfo.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                AboutPluginsPage.this.checkEnablement();
            }
        });
        TableComparator comparator = new TableComparator();
        this.vendorInfo.setComparator((ViewerComparator)comparator);
        int[] columnWidths = new int[]{this.convertHorizontalDLUsToPixels(30), this.convertHorizontalDLUsToPixels(120), this.convertHorizontalDLUsToPixels(120), this.convertHorizontalDLUsToPixels(70), this.convertHorizontalDLUsToPixels(130)};
        int i = 0;
        while (i < this.columnTitles.length) {
            TableColumn column = new TableColumn(this.vendorInfo.getTable(), 0);
            if (i == 2) {
                this.updateTableSorting(i);
            }
            column.setWidth(columnWidths[i]);
            column.setText(this.columnTitles[i]);
            final int columnIndex = i++;
            column.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    AboutPluginsPage.this.updateTableSorting(columnIndex);
                }
            });
        }
        this.vendorInfo.setContentProvider((IContentProvider)new ArrayContentProvider());
        this.vendorInfo.setLabelProvider((IBaseLabelProvider)new BundleTableLabelProvider());
        GridData gridData = new GridData(4, 4, true, true);
        gridData.heightHint = this.convertVerticalDLUsToPixels(200);
        this.vendorInfo.getTable().setLayoutData((Object)gridData);
        this.vendorInfo.setInput((Object)this.bundleInfos);
    }

    private void updateTableSorting(int columnIndex) {
        TableComparator comparator = (TableComparator)this.vendorInfo.getComparator();
        if (columnIndex == comparator.getSortColumn()) {
            comparator.setAscending(!comparator.isAscending());
        }
        comparator.setSortColumn(columnIndex);
        this.vendorInfo.getTable().setSortColumn(this.vendorInfo.getTable().getColumn(columnIndex));
        this.vendorInfo.getTable().setSortDirection(comparator.isAscending() ? 128 : 1024);
        this.vendorInfo.refresh(false);
    }

    private URL getMoreInfoURL(AboutBundleData bundleInfo, boolean makeLocal) {
        Bundle bundle = Platform.getBundle((String)bundleInfo.getId());
        if (bundle == null) {
            return null;
        }
        URL aboutUrl = Platform.find((Bundle)bundle, (IPath)baseNLPath.append(PLUGININFO), null);
        if (!makeLocal) {
            return aboutUrl;
        }
        if (aboutUrl != null) {
            try {
                URL result = Platform.asLocalURL((URL)aboutUrl);
                try {
                    URL about = new URL(aboutUrl, "about_files");
                    if (about != null) {
                        Platform.asLocalURL((URL)about);
                    }
                }
                catch (IOException iOException) {}
                return result;
            }
            catch (IOException iOException) {}
        }
        return null;
    }

    String getId() {
        return ID;
    }

    private void checkEnablement() {
        IStructuredSelection selection = (IStructuredSelection)this.vendorInfo.getSelection();
        if (selection.getFirstElement() instanceof AboutBundleData) {
            AboutBundleData selected = (AboutBundleData)selection.getFirstElement();
            this.moreInfo.setEnabled(this.selectionHasInfo(selected));
            this.signingInfo.setEnabled(true);
            if (this.signingArea != null) {
                this.signingArea.setData(selected);
            }
        } else {
            this.signingInfo.setEnabled(false);
            this.moreInfo.setEnabled(false);
        }
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 1025: {
                this.handleMoreInfoPressed();
                break;
            }
            case 1026: {
                this.handleSigningInfoPressed();
                break;
            }
            case 1027: {
                this.handleColumnsPressed();
                break;
            }
            default: {
                super.buttonPressed(buttonId);
            }
        }
    }

    private boolean selectionHasInfo(AboutBundleData bundleInfo) {
        URL infoURL = this.getMoreInfoURL(bundleInfo, false);
        if (infoURL == null && WorkbenchPlugin.DEBUG) {
            WorkbenchPlugin.log("Problem reading plugin info for: " + bundleInfo.getName());
        }
        return infoURL != null;
    }

    protected void handleMoreInfoPressed() {
        if (this.vendorInfo == null) {
            return;
        }
        if (this.vendorInfo.getSelection().isEmpty()) {
            return;
        }
        AboutBundleData bundleInfo = (AboutBundleData)((IStructuredSelection)this.vendorInfo.getSelection()).getFirstElement();
        if (!AboutUtils.openBrowser(this.getShell(), this.getMoreInfoURL(bundleInfo, true))) {
            String message = NLS.bind((String)WorkbenchMessages.AboutPluginsDialog_unableToOpenFile, (Object)PLUGININFO, (Object)bundleInfo.getId());
            StatusUtil.handleStatus(String.valueOf(WorkbenchMessages.AboutPluginsDialog_errorTitle) + ": " + message, 2, this.getShell());
        }
    }

    private void handleColumnsPressed() {
        ConfigureColumns.forTable((Table)this.vendorInfo.getTable(), (IShellProvider)this);
    }

    static /* synthetic */ TableViewer access$0(AboutPluginsPage aboutPluginsPage) {
        return aboutPluginsPage.vendorInfo;
    }

    public class BundleTableLabelProvider
    extends LabelProvider
    implements ITableLabelProvider {
        private LinkedList resolveQueue = new LinkedList();
        private List updateQueue = new ArrayList();
        private Job resolveJob;
        private Job updateJob;

        public BundleTableLabelProvider() {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.internal.about.AboutPluginsPage");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.resolveJob = new Job(this, clazz.getName()){
                final /* synthetic */ BundleTableLabelProvider this$1;
                {
                    this.this$1 = bundleTableLabelProvider;
                    this.setSystem(true);
                    this.setPriority(20);
                }

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                protected IStatus run(IProgressMonitor monitor) {
                    while (AboutPluginsPage.access$0(BundleTableLabelProvider.access$4(this.this$1)) != null) {
                        Table table = AboutPluginsPage.access$0(BundleTableLabelProvider.access$4(this.this$1)).getTable();
                        if (table == null || table.isDisposed()) {
                            return Status.OK_STATUS;
                        }
                        AboutBundleData data = null;
                        List<E> list = BundleTableLabelProvider.access$0(this.this$1);
                        synchronized (list) {
                            if (BundleTableLabelProvider.access$0(this.this$1).isEmpty()) {
                                return Status.OK_STATUS;
                            }
                            data = (AboutBundleData)BundleTableLabelProvider.access$0(this.this$1).removeFirst();
                        }
                        try {
                            data.isSigned();
                            list = BundleTableLabelProvider.access$1(this.this$1);
                            synchronized (list) {
                                BundleTableLabelProvider.access$1(this.this$1).add(data);
                            }
                            BundleTableLabelProvider.access$2(this.this$1).schedule();
                            continue;
                        }
                        catch (IllegalStateException illegalStateException) {
                            continue;
                        }
                        break;
                    }
                    return Status.OK_STATUS;
                }
            };
            Display display = PlatformUI.getWorkbench().getDisplay();
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.ui.internal.about.AboutPluginsPage");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.updateJob = new WorkbenchJob(this, display, clazz2.getName()){
                final /* synthetic */ BundleTableLabelProvider this$1;
                {
                    this.this$1 = bundleTableLabelProvider;
                    this.setSystem(true);
                    this.setPriority(50);
                }

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                public IStatus runInUIThread(IProgressMonitor monitor) {
                    Control page;
                    while ((page = BundleTableLabelProvider.access$4(this.this$1).getControl()) != null && !page.isDisposed()) {
                        Object[] data = null;
                        List list = BundleTableLabelProvider.access$1(this.this$1);
                        synchronized (list) {
                            if (BundleTableLabelProvider.access$1(this.this$1).isEmpty()) {
                                return Status.OK_STATUS;
                            }
                            data = BundleTableLabelProvider.access$1(this.this$1).toArray(new AboutBundleData[BundleTableLabelProvider.access$1(this.this$1).size()]);
                            BundleTableLabelProvider.access$1(this.this$1).clear();
                        }
                        BundleTableLabelProvider.access$3(this.this$1, new LabelProviderChangedEvent((IBaseLabelProvider)this.this$1, data));
                    }
                    return Status.OK_STATUS;
                }
            };
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public Image getColumnImage(Object element, int columnIndex) {
            if (columnIndex == 0 && element instanceof AboutBundleData) {
                AboutBundleData data = (AboutBundleData)element;
                if (data.isSignedDetermined()) {
                    return WorkbenchImages.getImage(data.isSigned() ? "IMG_OBJ_SIGNED_YES" : "IMG_OBJ_SIGNED_NO");
                }
                LinkedList linkedList = this.resolveQueue;
                synchronized (linkedList) {
                    this.resolveQueue.add(data);
                }
                this.resolveJob.schedule();
                return WorkbenchImages.getImage("IMG_OBJ_SIGNED_UNKNOWN");
            }
            return null;
        }

        public String getColumnText(Object element, int columnIndex) {
            if (element instanceof AboutBundleData) {
                AboutBundleData data = (AboutBundleData)element;
                switch (columnIndex) {
                    case 1: {
                        return data.getProviderName();
                    }
                    case 2: {
                        return data.getName();
                    }
                    case 3: {
                        return data.getVersion();
                    }
                    case 4: {
                        return data.getId();
                    }
                }
            }
            return "";
        }

        static /* synthetic */ LinkedList access$0(BundleTableLabelProvider bundleTableLabelProvider) {
            return bundleTableLabelProvider.resolveQueue;
        }

        static /* synthetic */ List access$1(BundleTableLabelProvider bundleTableLabelProvider) {
            return bundleTableLabelProvider.updateQueue;
        }

        static /* synthetic */ Job access$2(BundleTableLabelProvider bundleTableLabelProvider) {
            return bundleTableLabelProvider.updateJob;
        }

        static /* synthetic */ void access$3(BundleTableLabelProvider bundleTableLabelProvider, LabelProviderChangedEvent labelProviderChangedEvent) {
            bundleTableLabelProvider.fireLabelProviderChanged(labelProviderChangedEvent);
        }

        static /* synthetic */ AboutPluginsPage access$4(BundleTableLabelProvider bundleTableLabelProvider) {
            return bundleTableLabelProvider.AboutPluginsPage.this;
        }
    }
}

