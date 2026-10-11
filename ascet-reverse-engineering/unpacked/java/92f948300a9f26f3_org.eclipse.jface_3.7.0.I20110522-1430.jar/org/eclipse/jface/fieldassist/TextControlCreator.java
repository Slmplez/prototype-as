/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.jface.fieldassist.IControlCreator;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;

public class TextControlCreator
implements IControlCreator {
    public Control createControl(Composite parent, int style) {
        return new Text(parent, style);
    }
}

