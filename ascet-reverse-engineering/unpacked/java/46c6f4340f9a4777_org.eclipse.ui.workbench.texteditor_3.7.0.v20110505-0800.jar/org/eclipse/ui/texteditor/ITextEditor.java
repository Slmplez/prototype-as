/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.ui.IEditorPart
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.texteditor.IDocumentProvider;

public interface ITextEditor
extends IEditorPart {
    public IDocumentProvider getDocumentProvider();

    public void close(boolean var1);

    public boolean isEditable();

    public void doRevertToSaved();

    public void setAction(String var1, IAction var2);

    public IAction getAction(String var1);

    public void setActionActivationCode(String var1, char var2, int var3, int var4);

    public void removeActionActivationCode(String var1);

    public boolean showsHighlightRangeOnly();

    public void showHighlightRangeOnly(boolean var1);

    public void setHighlightRange(int var1, int var2, boolean var3);

    public IRegion getHighlightRange();

    public void resetHighlightRange();

    public ISelectionProvider getSelectionProvider();

    public void selectAndReveal(int var1, int var2);
}

