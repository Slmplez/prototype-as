/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.quickaccess;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.quickaccess.EditorProvider;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;

public class EditorElement
extends QuickAccessElement {
    private static final String DIRTY_MARK = "*";
    private IEditorReference editorReference;

    EditorElement(IEditorReference editorReference, EditorProvider editorProvider) {
        super(editorProvider);
        this.editorReference = editorReference;
    }

    public void execute() {
        IWorkbenchPage activePage;
        IWorkbenchPart part = this.editorReference.getPart(true);
        if (part != null && (activePage = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage()) != null) {
            activePage.activate(part);
        }
    }

    public String getId() {
        return String.valueOf(this.editorReference.getId()) + this.editorReference.getTitleToolTip();
    }

    public ImageDescriptor getImageDescriptor() {
        return ImageDescriptor.createFromImage((Image)this.editorReference.getTitleImage());
    }

    public String getLabel() {
        boolean dirty = this.editorReference.isDirty();
        return String.valueOf(dirty ? DIRTY_MARK : "") + this.editorReference.getTitle() + " - " + this.editorReference.getTitleToolTip();
    }

    public String getSortLabel() {
        return this.editorReference.getTitle();
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.editorReference == null ? 0 : this.editorReference.hashCode());
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
        EditorElement other = (EditorElement)obj;
        return !(this.editorReference == null ? other.editorReference != null : !this.editorReference.equals(other.editorReference));
    }
}

