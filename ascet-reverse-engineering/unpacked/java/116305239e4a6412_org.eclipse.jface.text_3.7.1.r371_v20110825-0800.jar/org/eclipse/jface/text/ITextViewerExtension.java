/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.widgets.Control;

public interface ITextViewerExtension {
    public void prependVerifyKeyListener(VerifyKeyListener var1);

    public void appendVerifyKeyListener(VerifyKeyListener var1);

    public void removeVerifyKeyListener(VerifyKeyListener var1);

    public Control getControl();

    public void setMark(int var1);

    public int getMark();

    public void setRedraw(boolean var1);

    public IRewriteTarget getRewriteTarget();
}

