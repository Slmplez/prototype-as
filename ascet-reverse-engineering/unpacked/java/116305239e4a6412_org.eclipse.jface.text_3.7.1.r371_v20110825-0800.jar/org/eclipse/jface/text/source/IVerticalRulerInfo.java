/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text.source;

import org.eclipse.swt.widgets.Control;

public interface IVerticalRulerInfo {
    public Control getControl();

    public int getLineOfLastMouseButtonActivity();

    public int toDocumentLineNumber(int var1);

    public int getWidth();
}

