/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.texteditor.spelling.IPreferenceStatusMonitor;

public interface ISpellingPreferenceBlock {
    public Control createControl(Composite var1);

    public void initialize(IPreferenceStatusMonitor var1);

    public void setEnabled(boolean var1);

    public boolean canPerformOk();

    public void performOk();

    public void performDefaults();

    public void performRevert();

    public void dispose();
}

