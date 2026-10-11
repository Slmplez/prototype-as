/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.TabFolder
 *  org.eclipse.swt.widgets.TabItem
 */
package org.eclipse.ui.internal.about;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.ui.about.IInstallationPageContainer;
import org.eclipse.ui.about.InstallationPage;
import org.eclipse.ui.internal.ConfigurationInfo;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.services.IServiceLocator;

public class InstallationDialog
extends TrayDialog
implements IInstallationPageContainer {
    protected static final String ID = "ID";
    private static final String DIALOG_SETTINGS_SECTION = "InstallationDialogSettings";
    private static final int TAB_WIDTH_IN_DLUS = 440;
    private static final int TAB_HEIGHT_IN_DLUS = 320;
    private static String lastSelectedTabId = null;
    private TabFolder folder;
    IServiceLocator serviceLocator;
    private ButtonManager buttonManager;
    private Map pageToId = new HashMap();
    private Dialog modalParent;

    public InstallationDialog(Shell parentShell, IServiceLocator locator) {
        super(parentShell);
        this.serviceLocator = locator;
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        String productName = "";
        IProduct product = Platform.getProduct();
        if (product != null && product.getName() != null) {
            productName = product.getName();
        }
        newShell.setText(NLS.bind((String)WorkbenchMessages.InstallationDialog_ShellTitle, (Object)productName));
    }

    protected boolean isResizable() {
        return true;
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = (Composite)super.createDialogArea(parent);
        this.folder = new TabFolder(composite, 0);
        this.configureFolder();
        this.createFolderItems(this.folder);
        GridData folderData = new GridData(4, 4, true, true);
        folderData.widthHint = this.convertHorizontalDLUsToPixels(440);
        folderData.heightHint = this.convertVerticalDLUsToPixels(320);
        this.folder.setLayoutData((Object)folderData);
        this.folder.addSelectionListener((SelectionListener)this.createFolderSelectionListener());
        this.folder.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                InstallationDialog.this.releaseContributions();
            }
        });
        return composite;
    }

    protected void createFolderItems(TabFolder folder) {
        IConfigurationElement[] elements = ConfigurationInfo.getSortedExtensions(this.loadElements());
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            TabItem item = new TabItem(folder, 0);
            item.setText(element.getAttribute("name"));
            item.setData((Object)element);
            item.setData(ID, (Object)element.getAttribute("id"));
            Composite control = new Composite((Composite)folder, 0);
            control.setLayout((Layout)new GridLayout());
            item.setControl((Control)control);
            ++i;
        }
    }

    protected Control createContents(Composite parent) {
        Control control = super.createContents(parent);
        boolean selected = false;
        if (this.folder.getItemCount() > 0) {
            if (lastSelectedTabId != null) {
                TabItem[] items = this.folder.getItems();
                int i = 0;
                while (i < items.length) {
                    if (items[i].getData(ID).equals(lastSelectedTabId)) {
                        this.folder.setSelection(i);
                        this.tabSelected(items[i]);
                        selected = true;
                        break;
                    }
                    ++i;
                }
            }
            if (!selected) {
                this.tabSelected(this.folder.getItem(0));
            }
        }
        Dialog.applyDialogFont((Control)this.folder);
        return control;
    }

    private SelectionAdapter createFolderSelectionListener() {
        return new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                InstallationDialog.this.tabSelected((TabItem)e.item);
            }
        };
    }

    private void tabSelected(TabItem item) {
        if (item.getData() instanceof IConfigurationElement) {
            IConfigurationElement element = (IConfigurationElement)item.getData();
            Composite pageComposite = (Composite)item.getControl();
            try {
                final InstallationPage page = (InstallationPage)((Object)element.createExecutableExtension("class"));
                page.createControl(pageComposite);
                Dialog.applyDialogFont((Control)pageComposite);
                page.setPageContainer(this);
                this.pageToId.put(page, element.getAttribute("id"));
                this.createButtons(page);
                item.setData((Object)page);
                item.addDisposeListener(new DisposeListener(){

                    public void widgetDisposed(DisposeEvent e) {
                        page.dispose();
                    }
                });
                pageComposite.layout(true, true);
            }
            catch (CoreException e1) {
                Label label = new Label(pageComposite, 0);
                label.setText(e1.getMessage());
                item.setData(null);
            }
        }
        String id = (String)item.getData(ID);
        this.rememberSelectedTab(id);
        this.buttonManager.update(id);
        Button button = this.createButton(this.buttonManager.getParent(), 12, IDialogConstants.CLOSE_LABEL, true);
        GridData gd = (GridData)button.getLayoutData();
        gd.horizontalAlignment = 1;
        gd.horizontalIndent = this.convertHorizontalDLUsToPixels(61) / 2;
        this.getButtonBar().getParent().layout(true, true);
    }

    protected void createButtons(InstallationPage page) {
        page.createPageButtons(this.buttonManager.getParent());
        Dialog.applyDialogFont((Control)this.buttonManager.getParent());
    }

    private void rememberSelectedTab(String pageId) {
        lastSelectedTabId = pageId;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        GridLayout layout = (GridLayout)parent.getLayout();
        layout.makeColumnsEqualWidth = false;
        this.buttonManager = new ButtonManager(parent);
    }

    private void configureFolder() {
    }

    private IConfigurationElement[] loadElements() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "installationPages");
        return point.getConfigurationElements();
    }

    protected IDialogSettings getDialogBoundsSettings() {
        IDialogSettings settings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings section = settings.getSection(DIALOG_SETTINGS_SECTION);
        if (section == null) {
            section = settings.addNewSection(DIALOG_SETTINGS_SECTION);
        }
        return section;
    }

    protected void releaseContributions() {
        this.buttonManager.clear();
    }

    public void closeModalContainers() {
        this.close();
        if (this.modalParent != null) {
            this.modalParent.close();
        }
    }

    protected void buttonPressed(int buttonId) {
        if (12 == buttonId) {
            this.okPressed();
        }
    }

    public void registerPageButton(InstallationPage page, Button button) {
        this.buttonManager.addPageButton(this.pageToId(page), button);
    }

    protected String pageToId(InstallationPage page) {
        String pageId = (String)this.pageToId.get((Object)page);
        Assert.isLegal((pageId != null ? 1 : 0) != 0);
        return pageId;
    }

    public void setModalParent(Dialog parent) {
        this.modalParent = parent;
    }

    class ButtonManager {
        private Composite composite;
        HashMap buttonMap = new HashMap();

        public ButtonManager(Composite composite) {
            this.composite = composite;
        }

        public Composite getParent() {
            return this.composite;
        }

        public void update(String currentPageId) {
            if (this.composite == null || this.composite.isDisposed()) {
                return;
            }
            GC metricsGC = new GC((Drawable)this.composite);
            FontMetrics metrics = metricsGC.getFontMetrics();
            metricsGC.dispose();
            List buttons = (List)this.buttonMap.get(currentPageId);
            Control[] children = this.composite.getChildren();
            int visibleChildren = 0;
            Button closeButton = InstallationDialog.this.getButton(12);
            int i = 0;
            while (i < children.length) {
                Control control = children[i];
                if (closeButton == control) {
                    closeButton.dispose();
                } else {
                    control.setVisible(false);
                    this.setButtonLayoutData(metrics, control, false);
                }
                ++i;
            }
            if (buttons != null) {
                i = 0;
                while (i < buttons.size()) {
                    Button button = (Button)buttons.get(i);
                    button.setVisible(true);
                    this.setButtonLayoutData(metrics, (Control)button, true);
                    GridData data = (GridData)button.getLayoutData();
                    data.exclude = false;
                    ++visibleChildren;
                    ++i;
                }
            }
            GridLayout compositeLayout = (GridLayout)this.composite.getLayout();
            compositeLayout.numColumns = visibleChildren;
            this.composite.layout(true);
        }

        protected void setButtonLayoutData(FontMetrics metrics, Control button, boolean visible) {
            GridData data = new GridData(256);
            int widthHint = Dialog.convertHorizontalDLUsToPixels((FontMetrics)metrics, (int)61);
            Point minSize = button.computeSize(-1, -1, true);
            data.widthHint = Math.max(widthHint, minSize.x);
            data.exclude = !visible;
            button.setLayoutData((Object)data);
        }

        public void addPageButton(String id, Button button) {
            ArrayList<Button> list = (ArrayList<Button>)this.buttonMap.get(id);
            if (list == null) {
                list = new ArrayList<Button>(1);
                this.buttonMap.put(id, list);
            }
            list.add(button);
        }

        public void clear() {
            this.buttonMap = new HashMap();
        }
    }
}

