/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.ViewProvider;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;

public class ViewElement
extends QuickAccessElement {
    private final IViewDescriptor viewDescriptor;
    private String secondaryId;
    private boolean multiInstance;
    private String contentDescription;
    private String category;

    ViewElement(IViewDescriptor viewDescriptor, ViewProvider viewProvider) {
        super(viewProvider);
        this.viewDescriptor = viewDescriptor;
        IViewCategory[] categories = PlatformUI.getWorkbench().getViewRegistry().getCategories();
        int i = 0;
        while (i < categories.length) {
            IViewDescriptor[] views = categories[i].getViews();
            int j = 0;
            while (j < views.length) {
                if (views[j] == viewDescriptor) {
                    this.category = categories[i].getLabel();
                    return;
                }
                ++j;
            }
            ++i;
        }
    }

    public String getPrimaryId() {
        return this.viewDescriptor.getId();
    }

    public void setSecondaryId(String secondaryId) {
        this.secondaryId = secondaryId;
    }

    public void setMultiInstance(boolean multiInstance) {
        this.multiInstance = multiInstance;
    }

    public void setContentDescription(String contentDescription) {
        this.contentDescription = contentDescription;
    }

    public boolean isMultiInstance() {
        return this.multiInstance;
    }

    public void execute() {
        IWorkbenchPage activePage = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
        if (activePage != null) {
            try {
                activePage.showView(this.viewDescriptor.getId(), this.secondaryId, 1);
            }
            catch (PartInitException partInitException) {}
        }
    }

    public String getId() {
        if (this.secondaryId == null) {
            return this.viewDescriptor.getId();
        }
        return String.valueOf(this.viewDescriptor.getId()) + ':' + this.secondaryId;
    }

    public ImageDescriptor getImageDescriptor() {
        return this.viewDescriptor.getImageDescriptor();
    }

    public String getLabel() {
        String label = this.viewDescriptor.getLabel();
        if (this.isMultiInstance() && this.contentDescription != null) {
            label = String.valueOf(label) + " (" + this.contentDescription + ')';
        }
        if (this.category != null) {
            label = String.valueOf(label) + " - " + this.category;
        }
        return label;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.secondaryId == null ? 0 : this.secondaryId.hashCode());
        result = 31 * result + (this.viewDescriptor == null ? 0 : this.viewDescriptor.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        ViewElement other = (ViewElement)obj;
        if (this.secondaryId == null ? other.secondaryId != null : !this.secondaryId.equals(other.secondaryId)) {
            return false;
        }
        return !(this.viewDescriptor == null ? other.viewDescriptor != null : !this.viewDescriptor.equals(other.viewDescriptor));
    }
}

