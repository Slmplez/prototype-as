/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IMenuListener
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.IMenuListener;
import org.eclipse.ui.texteditor.IStatusField;

public interface ITextEditorExtension {
    public void setStatusField(IStatusField var1, String var2);

    public boolean isEditorInputReadOnly();

    public void addRulerContextMenuListener(IMenuListener var1);

    public void removeRulerContextMenuListener(IMenuListener var1);
}

