/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IPlaceholderFolderLayout;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.PartStack;

public class PlaceholderFolderLayout
implements IPlaceholderFolderLayout {
    private PageLayout pageLayout;
    private ContainerPlaceholder placeholder;

    public PlaceholderFolderLayout(PageLayout pageLayout, ContainerPlaceholder folder) {
        this.placeholder = folder;
        this.pageLayout = pageLayout;
    }

    public void addPlaceholder(String viewId) {
        if (!this.pageLayout.checkValidPlaceholderId(viewId)) {
            return;
        }
        PartPlaceholder newPart = new PartPlaceholder(viewId);
        this.linkPartToPageLayout(viewId, newPart);
        this.placeholder.add(newPart);
    }

    private void linkPartToPageLayout(String viewId, LayoutPart newPart) {
        this.pageLayout.setRefPart(viewId, newPart);
        this.pageLayout.getViewLayoutRec(viewId, true);
        this.pageLayout.setFolderPart(viewId, this.placeholder);
        newPart.setContainer(this.placeholder);
    }

    public String getProperty(String id) {
        LayoutPart folder = this.placeholder.getRealContainer();
        if (folder instanceof PartStack) {
            PartStack stack = (PartStack)folder;
            return stack.getProperty(id);
        }
        return null;
    }

    public void setProperty(String id, String value) {
        LayoutPart folder = this.placeholder.getRealContainer();
        if (folder instanceof PartStack) {
            PartStack stack = (PartStack)folder;
            stack.setProperty(id, value);
        }
    }
}

