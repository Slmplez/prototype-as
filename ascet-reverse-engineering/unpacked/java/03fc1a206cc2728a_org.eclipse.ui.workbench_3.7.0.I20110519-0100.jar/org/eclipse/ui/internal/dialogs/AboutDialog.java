/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.core.runtime.IBundleGroupProvider
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.layout.RowLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.LinkedList;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.ProductProperties;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.about.AboutBundleGroupData;
import org.eclipse.ui.internal.about.AboutFeaturesButtonManager;
import org.eclipse.ui.internal.about.AboutItem;
import org.eclipse.ui.internal.about.AboutTextManager;
import org.eclipse.ui.internal.about.InstallationDialog;
import org.eclipse.ui.internal.dialogs.AboutFeaturesDialog;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.CommandContributionItemParameter;

public class AboutDialog
extends TrayDialog {
    private static final int MAX_IMAGE_WIDTH_FOR_TEXT = 250;
    private static final int TEXT_MARGIN = 5;
    private static final int DETAILS_ID = 1025;
    private String productName;
    private IProduct product;
    private AboutBundleGroupData[] bundleGroupInfos;
    private ArrayList images = new ArrayList();
    private AboutFeaturesButtonManager buttonManager = new AboutFeaturesButtonManager();
    private StyledText text;
    private AboutTextManager aboutTextManager;
    private AboutItem item;

    public AboutDialog(Shell parentShell) {
        super(parentShell);
        this.product = Platform.getProduct();
        if (this.product != null) {
            this.productName = this.product.getName();
        }
        if (this.productName == null) {
            this.productName = WorkbenchMessages.AboutDialog_defaultProductName;
        }
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
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 1025: {
                BusyIndicator.showWhile((Display)this.getShell().getDisplay(), (Runnable)new Runnable(){

                    public void run() {
                        IWorkbenchWindow workbenchWindow = PlatformUI.getWorkbench().getActiveWorkbenchWindow();
                        InstallationDialog dialog = new InstallationDialog(AboutDialog.this.getShell(), workbenchWindow);
                        dialog.setModalParent((Dialog)AboutDialog.this);
                        dialog.open();
                    }
                });
                break;
            }
            default: {
                super.buttonPressed(buttonId);
            }
        }
    }

    public boolean close() {
        int i = 0;
        while (i < this.images.size()) {
            Image image = (Image)this.images.get(i);
            image.dispose();
            ++i;
        }
        return super.close();
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(NLS.bind((String)WorkbenchMessages.AboutDialog_shellTitle, (Object)this.productName));
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)newShell, "org.eclipse.ui.about_dialog_context");
    }

    protected void createButtonsForButtonBar(Composite parent) {
        parent.setLayoutData((Object)new GridData(768));
        this.createButton(parent, 1025, WorkbenchMessages.AboutDialog_DetailsButton, false);
        Label l = new Label(parent, 0);
        l.setLayoutData((Object)new GridData(768));
        GridLayout layout = (GridLayout)parent.getLayout();
        ++layout.numColumns;
        layout.makeColumnsEqualWidth = false;
        Button b = this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        b.setFocus();
    }

    protected Control createDialogArea(Composite parent) {
        Image aboutImage = null;
        this.item = null;
        if (this.product != null) {
            String aboutText;
            ImageDescriptor imageDescriptor = ProductProperties.getAboutImage(this.product);
            if (imageDescriptor != null) {
                aboutImage = imageDescriptor.createImage();
            }
            if ((aboutImage == null || aboutImage.getBounds().width <= 250) && (aboutText = ProductProperties.getAboutText(this.product)) != null) {
                this.item = AboutTextManager.scan(aboutText);
            }
            if (aboutImage != null) {
                this.images.add(aboutImage);
            }
        }
        Composite workArea = new Composite(parent, 0);
        GridLayout workLayout = new GridLayout();
        workLayout.marginHeight = 0;
        workLayout.marginWidth = 0;
        workLayout.verticalSpacing = 0;
        workLayout.horizontalSpacing = 0;
        workArea.setLayout((Layout)workLayout);
        workArea.setLayoutData((Object)new GridData(1808));
        Color background = JFaceColors.getBannerBackground((Display)parent.getDisplay());
        Color foreground = JFaceColors.getBannerForeground((Display)parent.getDisplay());
        Composite top = (Composite)super.createDialogArea(workArea);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        layout.horizontalSpacing = 0;
        top.setLayout((Layout)layout);
        top.setLayoutData((Object)new GridData(1808));
        top.setBackground(background);
        top.setForeground(foreground);
        final Composite topContainer = new Composite(top, 0);
        topContainer.setBackground(background);
        topContainer.setForeground(foreground);
        layout = new GridLayout();
        layout.numColumns = aboutImage == null || this.item == null ? 1 : 2;
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        layout.verticalSpacing = 0;
        layout.horizontalSpacing = 0;
        topContainer.setLayout((Layout)layout);
        GC gc = new GC((Drawable)parent);
        int lineHeight = gc.getFontMetrics().getHeight();
        gc.dispose();
        int topContainerHeightHint = 100;
        topContainerHeightHint = Math.max(topContainerHeightHint, lineHeight * 6);
        if (aboutImage != null) {
            Label imageLabel = new Label(topContainer, 0);
            imageLabel.setBackground(background);
            imageLabel.setForeground(foreground);
            GridData data = new GridData();
            data.horizontalAlignment = 4;
            data.verticalAlignment = 1;
            data.grabExcessHorizontalSpace = false;
            imageLabel.setLayoutData((Object)data);
            imageLabel.setImage(aboutImage);
            topContainerHeightHint = Math.max(topContainerHeightHint, aboutImage.getBounds().height);
        }
        GridData data = new GridData(4, 4, true, true);
        topContainer.setLayoutData((Object)data);
        topContainer.setSize(432, topContainerHeightHint);
        if (this.item != null) {
            this.text = new StyledText(topContainer, 74);
            this.configureText(topContainer);
            Rectangle rect = this.text.computeTrim(0, 0, 100, 100);
            final int xTrim = rect.width - 100;
            final int yTrim = rect.height - 100;
            topContainer.addControlListener((ControlListener)new ControlAdapter(){

                public void controlResized(ControlEvent e) {
                    AboutDialog.this.text.setSize(-1, -1);
                    topContainer.layout(true);
                    Point size = AboutDialog.this.text.getSize();
                    int availableHeight = size.y - yTrim;
                    int availableWidth = size.x - xTrim - 10;
                    Point newSize = AboutDialog.this.text.computeSize(availableWidth, -1, true);
                    int style = AboutDialog.this.text.getStyle();
                    if (newSize.y > availableHeight) {
                        if ((style & 0x200) == 0) {
                            AboutDialog.this.recreateWrappedText(topContainer, true);
                        }
                    } else if ((style & 0x200) != 0) {
                        AboutDialog.this.recreateWrappedText(topContainer, false);
                    }
                    topContainer.layout(true);
                }
            });
        }
        Label bar = new Label(workArea, 258);
        data = new GridData();
        data.horizontalAlignment = 4;
        bar.setLayoutData((Object)data);
        Composite bottom = (Composite)super.createDialogArea(workArea);
        layout = new GridLayout();
        bottom.setLayout((Layout)layout);
        data = new GridData();
        data.horizontalAlignment = 4;
        data.verticalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        bottom.setLayoutData((Object)data);
        this.createFeatureImageButtonRow(bottom);
        bar = new Label(bottom, 0);
        data = new GridData();
        data.horizontalAlignment = 4;
        bar.setLayoutData((Object)data);
        return workArea;
    }

    void recreateWrappedText(Composite parent, boolean withScrolling) {
        int style = this.text.getStyle();
        style = withScrolling ? (style |= 0x200) : (style ^= 0x200);
        boolean hasFocus = this.text.isFocusControl();
        Point selection = this.text.getSelection();
        this.text.dispose();
        this.text = new StyledText(parent, style);
        this.configureText(parent);
        if (hasFocus) {
            this.text.setFocus();
        }
        this.text.setSelection(selection);
    }

    void configureText(Composite parent) {
        Color background = JFaceColors.getBannerBackground((Display)parent.getDisplay());
        Color foreground = JFaceColors.getBannerForeground((Display)parent.getDisplay());
        this.text.setFont(parent.getFont());
        this.text.setText(this.item.getText());
        this.text.setCursor(null);
        this.text.setBackground(background);
        this.text.setForeground(foreground);
        this.text.setMargins(5, 5, 5, 0);
        this.aboutTextManager = new AboutTextManager(this.text);
        this.aboutTextManager.setItem(this.item);
        this.createTextMenu();
        GridData gd = new GridData(4, 4, true, true);
        this.text.setLayoutData((Object)gd);
    }

    private void createTextMenu() {
        final MenuManager textManager = new MenuManager();
        textManager.add((IContributionItem)new CommandContributionItem(new CommandContributionItemParameter(PlatformUI.getWorkbench(), null, "org.eclipse.ui.edit.copy", 8)));
        textManager.add((IContributionItem)new CommandContributionItem(new CommandContributionItemParameter(PlatformUI.getWorkbench(), null, "org.eclipse.ui.edit.selectAll", 8)));
        this.text.setMenu(textManager.createContextMenu((Control)this.text));
        this.text.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                textManager.dispose();
            }
        });
    }

    private void createFeatureImageButtonRow(Composite parent) {
        Composite featureContainer = new Composite(parent, 0);
        RowLayout rowLayout = new RowLayout();
        rowLayout.wrap = true;
        featureContainer.setLayout((Layout)rowLayout);
        GridData data = new GridData();
        data.horizontalAlignment = 4;
        featureContainer.setLayoutData((Object)data);
        int i = 0;
        while (i < this.bundleGroupInfos.length) {
            this.createFeatureButton(featureContainer, this.bundleGroupInfos[i]);
            ++i;
        }
    }

    private Button createFeatureButton(Composite parent, final AboutBundleGroupData info) {
        if (!this.buttonManager.add(info)) {
            return null;
        }
        ImageDescriptor desc = info.getFeatureImage();
        Image featureImage = null;
        Button button = new Button(parent, 0x800008);
        button.setData((Object)info);
        featureImage = desc.createImage();
        this.images.add(featureImage);
        button.setImage(featureImage);
        button.setToolTipText(info.getProviderName());
        button.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = info.getProviderName();
            }
        });
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                AboutBundleGroupData[] groupInfos = AboutDialog.this.buttonManager.getRelatedInfos(info);
                AboutBundleGroupData selection = (AboutBundleGroupData)event.widget.getData();
                AboutFeaturesDialog d = new AboutFeaturesDialog(AboutDialog.this.getShell(), AboutDialog.this.productName, groupInfos, selection);
                d.open();
            }
        });
        return button;
    }

    protected boolean isResizable() {
        return true;
    }
}

