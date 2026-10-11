/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.forms;

import org.eclipse.ui.forms.IFormPart;
import org.eclipse.ui.forms.IManagedForm;

public abstract class AbstractFormPart
implements IFormPart {
    private IManagedForm managedForm;
    private boolean dirty = false;
    private boolean stale = true;

    public void initialize(IManagedForm form) {
        this.managedForm = form;
    }

    public IManagedForm getManagedForm() {
        return this.managedForm;
    }

    public void dispose() {
    }

    public void commit(boolean onSave) {
        this.dirty = false;
    }

    public boolean setFormInput(Object input) {
        return false;
    }

    public void setFocus() {
    }

    public void refresh() {
        this.stale = false;
        this.dirty = false;
    }

    public void markDirty() {
        this.dirty = true;
        this.managedForm.dirtyStateChanged();
    }

    public boolean isDirty() {
        return this.dirty;
    }

    public boolean isStale() {
        return this.stale;
    }

    public void markStale() {
        this.stale = true;
        this.managedForm.staleStateChanged();
    }
}

