/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.core.runtime.IBundleGroupProvider
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.ConfigureColumns
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.about;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.ConfigureColumns;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.about.AboutBundleGroupData;
import org.eclipse.ui.internal.about.AboutData;
import org.eclipse.ui.internal.about.AboutTextManager;
import org.eclipse.ui.internal.about.AboutUtils;
import org.eclipse.ui.internal.about.ProductInfoPage;
import org.eclipse.ui.internal.dialogs.AboutPluginsDialog;
import org.osgi.framework.Bundle;

public class AboutFeaturesPage
extends ProductInfoPage {
    private static final String ID = "productInfo.features";
    private static final int TABLE_HEIGHT = 150;
    private static final int INFO_HEIGHT = 100;
    private static final int MORE_ID = 1025;
    private static final int PLUGINS_ID = 1026;
    private static final int COLUMNS_ID = 1027;
    private Table table;
    private Label imageLabel;
    private StyledText text;
    private AboutTextManager textManager;
    private Composite infoArea;
    private Map cachedImages = new HashMap();
    private AboutBundleGroupData[] bundleGroupInfos;
    private String[] columnTitles = new String[]{WorkbenchMessages.AboutFeaturesDialog_provider, WorkbenchMessages.AboutFeaturesDialog_featureName, WorkbenchMessages.AboutFeaturesDialog_version, WorkbenchMessages.AboutFeaturesDialog_featureId};
    private int lastColumnChosen = 0;
    private boolean reverseSort = false;
    private AboutBundleGroupData lastSelection = null;
    private Button pluginsButton;
    private Button moreButton;
    private static Map featuresMap;

    public void setBundleGroupInfos(AboutBundleGroupData[] bundleGroupInfos) {
        this.bundleGroupInfos = bundleGroupInfos;
    }

    String getId() {
        return ID;
    }

    private void initializeBundleGroupInfos() {
        if (this.bundleGroupInfos == null) {
            IBundleGroupProvider[] providers = Platform.getBundleGroupProviders();
            LinkedList<AboutBundleGroupData> groups = new LinkedList<AboutBundleGroupData>();
            if (providers != null) {
                int i = 0;
                while (i < providers.length) {
                    IBundleGroup[] bundleGroups = providers[i].getBundleGroups();
                    int j = 0;
                    while (j < bundleGroups.length) {
                        groups.add(new AboutBundleGroupData(bundleGroups[j]));
                        ++j;
                    }
                    ++i;
                }
            }
            this.bundleGroupInfos = groups.toArray(new AboutBundleGroupData[0]);
        } else {
            AboutBundleGroupData[] clientArray = this.bundleGroupInfos;
            this.bundleGroupInfos = new AboutBundleGroupData[clientArray.length];
            System.arraycopy(clientArray, 0, this.bundleGroupInfos, 0, clientArray.length);
        }
        AboutData.sortByProvider(this.reverseSort, this.bundleGroupInfos);
    }

    private void handlePluginInfoPressed() {
        TableItem[] items = this.table.getSelection();
        if (items.length <= 0) {
            return;
        }
        AboutBundleGroupData info = (AboutBundleGroupData)items[0].getData();
        IBundleGroup bundleGroup = info.getBundleGroup();
        Bundle[] bundles = bundleGroup == null ? new Bundle[]{} : bundleGroup.getBundles();
        AboutPluginsDialog d = new AboutPluginsDialog(this.getShell(), this.getProductName(), bundles, WorkbenchMessages.AboutFeaturesDialog_pluginInfoTitle, NLS.bind((String)WorkbenchMessages.AboutFeaturesDialog_pluginInfoMessage, (Object)bundleGroup.getIdentifier()), "org.eclipse.ui.about_features_plugins_dialog_context");
        d.open();
    }

    public void createPageButtons(Composite parent) {
        this.moreButton = this.createButton(parent, 1025, WorkbenchMessages.AboutFeaturesDialog_moreInfo);
        this.pluginsButton = this.createButton(parent, 1026, WorkbenchMessages.AboutFeaturesDialog_pluginsInfo);
        this.createButton(parent, 1027, WorkbenchMessages.AboutFeaturesDialog_columns);
        TableItem[] items = this.table.getSelection();
        if (items.length > 0) {
            this.updateButtons((AboutBundleGroupData)items[0].getData());
        }
    }

    public void createControl(Composite parent) {
        this.initializeDialogUnits((Control)parent);
        parent.getShell().addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent arg0) {
                AboutFeaturesPage.this.disposeImages();
            }
        });
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.about_features_dialog_context");
        Composite outer = this.createOuterComposite(parent);
        this.createTable(outer);
        this.createInfoArea(outer);
        this.setControl((Control)outer);
    }

    protected void createInfoArea(Composite parent) {
        Font font = parent.getFont();
        this.infoArea = new Composite(parent, 2048);
        this.infoArea.setBackground(this.infoArea.getDisplay().getSystemColor(25));
        this.infoArea.setBackgroundMode(2);
        GridData data = new GridData(4, 4, true, false);
        data.heightHint = this.convertVerticalDLUsToPixels(100);
        this.infoArea.setLayoutData((Object)data);
        GridLayout layout = new GridLayout();
        layout.numColumns = 2;
        this.infoArea.setLayout((Layout)layout);
        this.imageLabel = new Label(this.infoArea, 0);
        data = new GridData(4, 1, false, false);
        data.widthHint = 32;
        data.heightHint = 32;
        this.imageLabel.setLayoutData((Object)data);
        this.imageLabel.setFont(font);
        this.text = new StyledText(this.infoArea, 74);
        this.text.setFont(parent.getFont());
        data = new GridData(4, 4, true, true);
        this.text.setLayoutData((Object)data);
        this.text.setFont(font);
        this.text.setCursor(null);
        this.textManager = new AboutTextManager(this.text);
        TableItem[] items = this.table.getSelection();
        if (items.length > 0) {
            this.updateInfoArea((AboutBundleGroupData)items[0].getData());
        }
    }

    protected void createTable(Composite parent) {
        this.initializeBundleGroupInfos();
        this.table = new Table(parent, 68356);
        GridData gridData = new GridData(4, 4, true, true);
        gridData.heightHint = this.convertVerticalDLUsToPixels(150);
        this.table.setLayoutData((Object)gridData);
        this.table.setHeaderVisible(true);
        this.table.setLinesVisible(true);
        this.table.setFont(parent.getFont());
        this.table.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.item == null) {
                    return;
                }
                AboutBundleGroupData info = (AboutBundleGroupData)e.item.getData();
                AboutFeaturesPage.this.updateInfoArea(info);
                AboutFeaturesPage.this.updateButtons(info);
            }
        });
        int[] columnWidths = new int[]{this.convertHorizontalDLUsToPixels(120), this.convertHorizontalDLUsToPixels(120), this.convertHorizontalDLUsToPixels(70), this.convertHorizontalDLUsToPixels(130)};
        int i = 0;
        while (i < this.columnTitles.length) {
            TableColumn tableColumn = new TableColumn(this.table, 0);
            tableColumn.setWidth(columnWidths[i]);
            tableColumn.setText(this.columnTitles[i]);
            final int columnIndex = i++;
            tableColumn.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    AboutFeaturesPage.this.sort(columnIndex);
                }
            });
        }
        String selId = this.lastSelection == null ? null : this.lastSelection.getId();
        int sel = 0;
        int i2 = 0;
        while (i2 < this.bundleGroupInfos.length) {
            if (this.bundleGroupInfos[i2].getId().equals(selId)) {
                sel = i2;
            }
            TableItem item = new TableItem(this.table, 0);
            item.setText(AboutFeaturesPage.createRow(this.bundleGroupInfos[i2]));
            item.setData((Object)this.bundleGroupInfos[i2]);
            ++i2;
        }
        if (this.bundleGroupInfos.length > 0) {
            this.table.setSelection(sel);
            this.table.showSelection();
        }
    }

    private void disposeImages() {
        Iterator iter = this.cachedImages.values().iterator();
        while (iter.hasNext()) {
            Image image = (Image)iter.next();
            image.dispose();
        }
    }

    private void updateButtons(AboutBundleGroupData info) {
        if (info == null) {
            this.moreButton.setEnabled(false);
            this.pluginsButton.setEnabled(false);
            return;
        }
        if (featuresMap == null) {
            this.moreButton.setEnabled(true);
            this.pluginsButton.setEnabled(true);
            return;
        }
        this.moreButton.setEnabled(info.getLicenseUrl() != null);
        this.pluginsButton.setEnabled(true);
    }

    private void updateInfoArea(AboutBundleGroupData info) {
        if (info == null) {
            this.imageLabel.setImage(null);
            this.text.setText("");
            return;
        }
        ImageDescriptor desc = info.getFeatureImage();
        Image image = (Image)this.cachedImages.get(desc);
        if (image == null && desc != null) {
            image = desc.createImage();
            this.cachedImages.put(desc, image);
        }
        this.imageLabel.setImage(image);
        String aboutText = info.getAboutText();
        this.textManager.setItem(null);
        if (aboutText != null) {
            this.textManager.setItem(AboutUtils.scan(aboutText));
        }
        if (this.textManager.getItem() == null) {
            this.text.setText(WorkbenchMessages.AboutFeaturesDialog_noInformation);
        }
    }

    public void setInitialSelection(AboutBundleGroupData info) {
        this.lastSelection = info;
    }

    private void sort(int column) {
        if (this.lastColumnChosen == column) {
            this.reverseSort = !this.reverseSort;
        } else {
            this.reverseSort = false;
            this.lastColumnChosen = column;
        }
        if (this.table.getItemCount() <= 1) {
            return;
        }
        int sel = this.table.getSelectionIndex();
        if (sel != -1) {
            this.lastSelection = this.bundleGroupInfos[sel];
        }
        switch (column) {
            case 0: {
                AboutData.sortByProvider(this.reverseSort, this.bundleGroupInfos);
                break;
            }
            case 1: {
                AboutData.sortByName(this.reverseSort, this.bundleGroupInfos);
                break;
            }
            case 2: {
                AboutData.sortByVersion(this.reverseSort, this.bundleGroupInfos);
                break;
            }
            case 3: {
                AboutData.sortById(this.reverseSort, this.bundleGroupInfos);
            }
        }
        this.table.setSortColumn(this.table.getColumn(column));
        this.table.setSortDirection(this.reverseSort ? 1024 : 128);
        this.refreshTable();
    }

    private void refreshTable() {
        TableItem[] items = this.table.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].setText(AboutFeaturesPage.createRow(this.bundleGroupInfos[i]));
            items[i].setData((Object)this.bundleGroupInfos[i]);
            ++i;
        }
        int sel = -1;
        if (this.lastSelection != null) {
            String oldId = this.lastSelection.getId();
            int k = 0;
            while (k < this.bundleGroupInfos.length) {
                if (oldId.equalsIgnoreCase(this.bundleGroupInfos[k].getId())) {
                    sel = k;
                }
                ++k;
            }
            this.table.setSelection(sel);
            this.table.showSelection();
        }
        this.updateInfoArea(this.lastSelection);
    }

    private static String[] createRow(AboutBundleGroupData info) {
        return new String[]{info.getProviderName(), info.getName(), info.getVersion(), info.getId()};
    }

    protected Collection getSelectionValue() {
        if (this.table == null || this.table.isDisposed()) {
            return null;
        }
        TableItem[] items = this.table.getSelection();
        if (items.length <= 0) {
            return null;
        }
        ArrayList<Object> list = new ArrayList<Object>(1);
        list.add(items[0].getData());
        return list;
    }

    private void handleColumnsPressed() {
        ConfigureColumns.forTable((Table)this.table, (IShellProvider)this);
    }

    private void handleMoreInfoPressed() {
        TableItem[] items = this.table.getSelection();
        if (items.length <= 0) {
            return;
        }
        AboutBundleGroupData info = (AboutBundleGroupData)items[0].getData();
        if (info == null || !AboutUtils.openBrowser(this.getShell(), info.getLicenseUrl())) {
            MessageDialog.openInformation((Shell)this.getShell(), (String)WorkbenchMessages.AboutFeaturesDialog_noInfoTitle, (String)WorkbenchMessages.AboutFeaturesDialog_noInformation);
        }
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 1025: {
                this.handleMoreInfoPressed();
                break;
            }
            case 1026: {
                this.handlePluginInfoPressed();
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
}

