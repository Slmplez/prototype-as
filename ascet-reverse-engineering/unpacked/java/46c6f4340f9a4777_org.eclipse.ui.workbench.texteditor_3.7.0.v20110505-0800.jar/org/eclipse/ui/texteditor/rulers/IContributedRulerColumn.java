/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.source.IVerticalRulerColumn
 */
package org.eclipse.ui.texteditor.rulers;

import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.rulers.RulerColumnDescriptor;

public interface IContributedRulerColumn
extends IVerticalRulerColumn {
    public RulerColumnDescriptor getDescriptor();

    public void setDescriptor(RulerColumnDescriptor var1);

    public void setEditor(ITextEditor var1);

    public ITextEditor getEditor();

    public void columnCreated();

    public void columnRemoved();
}

