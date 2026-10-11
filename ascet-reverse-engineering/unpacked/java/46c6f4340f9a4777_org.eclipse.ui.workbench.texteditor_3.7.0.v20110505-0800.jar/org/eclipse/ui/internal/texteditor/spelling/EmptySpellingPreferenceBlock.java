/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.texteditor.spelling;

import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.texteditor.spelling.SpellingMessages;
import org.eclipse.ui.texteditor.spelling.IPreferenceStatusMonitor;
import org.eclipse.ui.texteditor.spelling.ISpellingPreferenceBlock;

public class EmptySpellingPreferenceBlock
implements ISpellingPreferenceBlock {
    public Control createControl(Composite composite) {
        Composite inner = new Composite(composite, 0);
        inner.setLayout((Layout)new GridLayout(3, false));
        Label label = new Label(inner, 0x1000000);
        GridData gd = new GridData(1808);
        gd.widthHint = 30;
        label.setLayoutData((Object)gd);
        label = new Label(inner, 0x1000000);
        label.setText(SpellingMessages.EmptySpellingPreferenceBlock_emptyCaption);
        gd = new GridData(2);
        label.setLayoutData((Object)gd);
        label = new Label(inner, 0x1000000);
        gd = new GridData(1808);
        gd.widthHint = 30;
        label.setLayoutData((Object)gd);
        return inner;
    }

    public void initialize(IPreferenceStatusMonitor statusMonitor) {
    }

    public boolean canPerformOk() {
        return true;
    }

    public void performOk() {
    }

    public void performDefaults() {
    }

    public void performRevert() {
    }

    public void dispose() {
    }

    public void setEnabled(boolean enabled) {
    }
}

