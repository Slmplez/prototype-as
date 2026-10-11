/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IFolderLayout;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.LayoutHelper;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.views.IViewDescriptor;

public class FolderLayout
implements IFolderLayout {
    private ViewStack folder;
    private PageLayout pageLayout;
    private ViewFactory viewFactory;

    public FolderLayout(PageLayout pageLayout, ViewStack folder, ViewFactory viewFactory) {
        this.folder = folder;
        this.viewFactory = viewFactory;
        this.pageLayout = pageLayout;
    }

    public void addPlaceholder(String viewId) {
        if (!this.pageLayout.checkValidPlaceholderId(viewId)) {
            return;
        }
        PartPlaceholder newPart = new PartPlaceholder(viewId);
        this.linkPartToPageLayout(viewId, newPart);
        this.folder.add(newPart);
    }

    public void addView(String viewId) {
        if (this.pageLayout.checkPartInLayout(viewId)) {
            return;
        }
        try {
            IViewDescriptor descriptor = this.viewFactory.getViewRegistry().find(ViewFactory.extractPrimaryId(viewId));
            if (descriptor == null) {
                throw new PartInitException("View descriptor not found: " + viewId);
            }
            if (WorkbenchActivityHelper.filterItem(descriptor)) {
                this.addPlaceholder(viewId);
                LayoutHelper.addViewActivator(this.pageLayout, viewId);
            } else {
                ViewPane newPart = LayoutHelper.createView(this.pageLayout.getViewFactory(), viewId);
                this.linkPartToPageLayout(viewId, newPart);
                this.folder.add(newPart);
            }
        }
        catch (PartInitException e) {
            WorkbenchPlugin.log(this.getClass(), "addView(String)", (Throwable)((Object)e));
        }
    }

    private void linkPartToPageLayout(String viewId, LayoutPart newPart) {
        this.pageLayout.setRefPart(viewId, newPart);
        this.pageLayout.setFolderPart(viewId, this.folder);
        this.pageLayout.getViewLayoutRec(viewId, true);
    }

    public String getProperty(String id) {
        return this.folder.getProperty(id);
    }

    public void setProperty(String id, String value) {
        this.folder.setProperty(id, value);
    }
}

