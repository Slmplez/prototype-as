/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.dialogs.IDialogPage;
import org.eclipse.jface.preference.IPreferencePageContainer;
import org.eclipse.swt.graphics.Point;

public interface IPreferencePage
extends IDialogPage {
    public Point computeSize();

    public boolean isValid();

    public boolean okToLeave();

    public boolean performCancel();

    public boolean performOk();

    public void setContainer(IPreferencePageContainer var1);

    public void setSize(Point var1);
}

