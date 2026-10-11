/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart2;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.Saveable;

public class DefaultSaveable
extends Saveable {
    private IWorkbenchPart part;

    public DefaultSaveable(IWorkbenchPart part) {
        this.part = part;
    }

    public void doSave(IProgressMonitor monitor) {
        if (this.part instanceof ISaveablePart) {
            ISaveablePart saveable = (ISaveablePart)((Object)this.part);
            saveable.doSave(monitor);
        }
    }

    public String getName() {
        if (this.part instanceof IWorkbenchPart2) {
            return ((IWorkbenchPart2)this.part).getPartName();
        }
        return this.part.getTitle();
    }

    public ImageDescriptor getImageDescriptor() {
        Image image = this.part.getTitleImage();
        if (image == null) {
            return null;
        }
        return ImageDescriptor.createFromImage((Image)image);
    }

    public String getToolTipText() {
        return this.part.getTitleToolTip();
    }

    public boolean isDirty() {
        if (this.part instanceof ISaveablePart) {
            return ((ISaveablePart)((Object)this.part)).isDirty();
        }
        return false;
    }

    public int hashCode() {
        return this.part.hashCode();
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
        DefaultSaveable other = (DefaultSaveable)obj;
        return !(this.part == null ? other.part != null : !this.part.equals(other.part));
    }

    public boolean show(IWorkbenchPage page) {
        IWorkbenchPartReference reference = page.getReference(this.part);
        if (reference != null) {
            page.activate(this.part);
            return true;
        }
        if (this.part instanceof IViewPart) {
            IViewPart viewPart = (IViewPart)this.part;
            try {
                page.showView(viewPart.getViewSite().getId(), viewPart.getViewSite().getSecondaryId(), 1);
            }
            catch (PartInitException partInitException) {
                return false;
            }
            return true;
        }
        return false;
    }
}

