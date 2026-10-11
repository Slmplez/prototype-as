/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.util.PrefUtil;

public class PerspectiveBarContributionItem
extends ContributionItem {
    private IPerspectiveDescriptor perspective;
    private IPreferenceStore apiPreferenceStore = PrefUtil.getAPIPreferenceStore();
    private ToolItem toolItem = null;
    private Image image;
    private IWorkbenchPage workbenchPage;
    private static final String ellipsis = "...";

    public PerspectiveBarContributionItem(IPerspectiveDescriptor perspective, IWorkbenchPage workbenchPage) {
        super(perspective.getId());
        this.perspective = perspective;
        this.workbenchPage = workbenchPage;
    }

    public void dispose() {
        super.dispose();
        if (this.image != null && !this.image.isDisposed()) {
            this.image.dispose();
            this.image = null;
        }
        this.apiPreferenceStore = null;
        this.workbenchPage = null;
        this.perspective = null;
    }

    public void fill(ToolBar parent, int index) {
        if (this.toolItem == null && parent != null && !parent.isDisposed()) {
            this.toolItem = index >= 0 ? new ToolItem(parent, 32, index) : new ToolItem(parent, 32);
            if (this.image == null || this.image.isDisposed()) {
                this.createImage();
            }
            this.toolItem.setImage(this.image);
            this.toolItem.setToolTipText(NLS.bind((String)WorkbenchMessages.PerspectiveBarContributionItem_toolTip, (Object)this.perspective.getLabel()));
            this.toolItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent event) {
                    PerspectiveBarContributionItem.this.select();
                }
            });
            this.toolItem.setData((Object)this);
            this.update();
        }
    }

    private void createImage() {
        ImageDescriptor imageDescriptor = this.perspective.getImageDescriptor();
        this.image = imageDescriptor != null ? imageDescriptor.createImage() : WorkbenchImages.getImageDescriptor("IMG_ETOOL_DEF_PERSPECTIVE").createImage();
    }

    Image getImage() {
        if (this.image == null) {
            this.createImage();
        }
        return this.image;
    }

    public void select() {
        if (this.workbenchPage.getPerspective() != this.perspective) {
            this.workbenchPage.setPerspective(this.perspective);
        } else {
            this.toolItem.setSelection(true);
        }
    }

    public void update() {
        if (this.toolItem != null && !this.toolItem.isDisposed()) {
            this.toolItem.setSelection(this.workbenchPage.getPerspective() == this.perspective);
            if (this.apiPreferenceStore.getBoolean("SHOW_TEXT_ON_PERSPECTIVE_BAR")) {
                if (this.apiPreferenceStore.getString("DOCK_PERSPECTIVE_BAR").equals("topLeft")) {
                    this.toolItem.setText(this.perspective.getLabel());
                } else {
                    this.toolItem.setText(this.shortenText(this.perspective.getLabel(), this.toolItem));
                }
            } else {
                this.toolItem.setText("");
            }
        }
    }

    public void update(IPerspectiveDescriptor newDesc) {
        this.perspective = newDesc;
        if (this.toolItem != null && !this.toolItem.isDisposed()) {
            ImageDescriptor imageDescriptor = this.perspective.getImageDescriptor();
            if (imageDescriptor != null) {
                this.toolItem.setImage(imageDescriptor.createImage());
            } else {
                this.toolItem.setImage(WorkbenchImages.getImageDescriptor("IMG_ETOOL_DEF_PERSPECTIVE").createImage());
            }
            this.toolItem.setToolTipText(NLS.bind((String)WorkbenchMessages.PerspectiveBarContributionItem_toolTip, (Object)this.perspective.getLabel()));
        }
        this.update();
    }

    IWorkbenchPage getPage() {
        return this.workbenchPage;
    }

    IPerspectiveDescriptor getPerspective() {
        return this.perspective;
    }

    ToolItem getToolItem() {
        return this.toolItem;
    }

    public boolean handles(IPerspectiveDescriptor perspective, IWorkbenchPage workbenchPage) {
        return this.perspective == perspective && this.workbenchPage == workbenchPage;
    }

    public void setPerspective(IPerspectiveDescriptor newPerspective) {
        this.perspective = newPerspective;
    }

    void setSelection(boolean b) {
        if (this.toolItem != null && !this.toolItem.isDisposed()) {
            this.toolItem.setSelection(b);
        }
    }

    static int getMaxWidth(Image image) {
        return image.getBounds().width * 5;
    }

    protected String shortenText(String textValue, ToolItem item) {
        if (textValue == null || this.toolItem == null || this.toolItem.isDisposed()) {
            return null;
        }
        String returnText = textValue;
        GC gc = new GC((Drawable)item.getParent());
        int maxWidth = PerspectiveBarContributionItem.getMaxWidth(item.getImage());
        if (gc.textExtent((String)textValue).x >= maxWidth) {
            int i = textValue.length();
            while (i > 0) {
                String test = textValue.substring(0, i);
                test = String.valueOf(test) + ellipsis;
                if (gc.textExtent((String)test).x < maxWidth) {
                    returnText = test;
                    break;
                }
                --i;
            }
        }
        gc.dispose();
        return returnText;
    }
}

