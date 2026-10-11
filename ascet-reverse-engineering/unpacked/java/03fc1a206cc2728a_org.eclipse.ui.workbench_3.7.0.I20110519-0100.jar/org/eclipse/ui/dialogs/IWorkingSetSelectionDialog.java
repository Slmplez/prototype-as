/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.dialogs;

import org.eclipse.ui.IWorkingSet;

public interface IWorkingSetSelectionDialog {
    public IWorkingSet[] getSelection();

    public int open();

    public void setSelection(IWorkingSet[] var1);
}

