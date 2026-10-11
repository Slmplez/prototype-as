/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.texteditor.rulers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.rulers.IContributedRulerColumn;
import org.eclipse.ui.texteditor.rulers.RulerColumnDescriptor;

public abstract class AbstractContributedRulerColumn
implements IContributedRulerColumn {
    private RulerColumnDescriptor fDescriptor;
    private ITextEditor fEditor;

    public final RulerColumnDescriptor getDescriptor() {
        return this.fDescriptor;
    }

    public final void setDescriptor(RulerColumnDescriptor descriptor) {
        Assert.isLegal((descriptor != null ? 1 : 0) != 0);
        Assert.isTrue((this.fDescriptor == null ? 1 : 0) != 0);
        this.fDescriptor = descriptor;
    }

    public final void setEditor(ITextEditor editor) {
        Assert.isLegal((editor != null ? 1 : 0) != 0);
        Assert.isTrue((this.fEditor == null ? 1 : 0) != 0);
        this.fEditor = editor;
    }

    public final ITextEditor getEditor() {
        return this.fEditor;
    }

    public void columnCreated() {
    }

    public void columnRemoved() {
    }
}

