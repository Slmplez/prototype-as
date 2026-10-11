/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.EmptyPreferencePage;

public class ErrorPreferencePage
extends EmptyPreferencePage {
    protected Control createContents(Composite parent) {
        Text text = new Text(parent, 74);
        text.setForeground(JFaceColors.getErrorText((Display)text.getDisplay()));
        text.setBackground(text.getDisplay().getSystemColor(22));
        text.setText(WorkbenchMessages.ErrorPreferencePage_errorMessage);
        return text;
    }
}

