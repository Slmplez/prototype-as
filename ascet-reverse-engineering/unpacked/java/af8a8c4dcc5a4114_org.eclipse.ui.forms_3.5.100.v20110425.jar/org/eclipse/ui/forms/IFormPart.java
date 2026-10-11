/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.forms;

import org.eclipse.ui.forms.IManagedForm;

public interface IFormPart {
    public void initialize(IManagedForm var1);

    public void dispose();

    public boolean isDirty();

    public void commit(boolean var1);

    public boolean setFormInput(Object var1);

    public void setFocus();

    public boolean isStale();

    public void refresh();
}

