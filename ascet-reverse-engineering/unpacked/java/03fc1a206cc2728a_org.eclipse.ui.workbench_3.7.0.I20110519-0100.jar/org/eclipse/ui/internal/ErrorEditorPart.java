/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.internal.part.StatusPart;
import org.eclipse.ui.part.EditorPart;

public class ErrorEditorPart
extends EditorPart {
    private IStatus error;
    private Composite parentControl;

    public ErrorEditorPart() {
    }

    public ErrorEditorPart(IStatus error) {
        this.error = error;
    }

    public void doSave(IProgressMonitor monitor) {
    }

    public void doSaveAs() {
    }

    public void createPartControl(Composite parent) {
        this.parentControl = parent;
        if (this.error != null) {
            new StatusPart(parent, this.error);
        }
    }

    public void init(IEditorSite site, IEditorInput input) {
        this.setSite(site);
        this.setInput(input);
        this.setPartName(input.getName());
    }

    public boolean isDirty() {
        return false;
    }

    public boolean isSaveAsAllowed() {
        return false;
    }

    public void setFocus() {
        this.parentControl.setFocus();
    }

    public void setPartName(String newName) {
        super.setPartName(newName);
    }

    public void dispose() {
        super.dispose();
        this.parentControl = null;
    }
}

