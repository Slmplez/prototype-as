/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.ITextPresentationListener;

public interface ITextViewerExtension4 {
    public boolean moveFocusToWidgetToken();

    public void addTextPresentationListener(ITextPresentationListener var1);

    public void removeTextPresentationListener(ITextPresentationListener var1);
}

