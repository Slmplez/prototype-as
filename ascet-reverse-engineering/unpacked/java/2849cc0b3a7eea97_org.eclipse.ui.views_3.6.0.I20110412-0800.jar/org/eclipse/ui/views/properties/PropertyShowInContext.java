/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.part.ShowInContext
 */
package org.eclipse.ui.views.properties;

import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.part.ShowInContext;

public class PropertyShowInContext
extends ShowInContext {
    private IWorkbenchPart part;

    public PropertyShowInContext(IWorkbenchPart aPart, ISelection selection) {
        super(null, selection);
        this.part = aPart;
    }

    public PropertyShowInContext(IWorkbenchPart aPart, ShowInContext aShowInContext) {
        super(aShowInContext.getInput(), aShowInContext.getSelection());
        this.part = aPart;
    }

    public IWorkbenchPart getPart() {
        return this.part;
    }

    public void setPart(IWorkbenchPart part) {
        this.part = part;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.part == null ? 0 : this.part.hashCode()) + (this.getSelection() == null ? 0 : this.getSelection().hashCode()) + (this.getInput() == null ? 0 : this.getInput().hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (((Object)((Object)this)).getClass() != obj.getClass()) {
            return false;
        }
        PropertyShowInContext other = (PropertyShowInContext)((Object)obj);
        if (this.part == null ? other.part != null : !this.part.equals(other.part)) {
            return false;
        }
        if (this.getSelection() == null ? other.getSelection() != null : !this.getSelection().equals(other.getSelection())) {
            return false;
        }
        if (this.getInput() == null || other.getInput() == null) {
            return true;
        }
        return this.getInput().equals(other.getInput());
    }
}

