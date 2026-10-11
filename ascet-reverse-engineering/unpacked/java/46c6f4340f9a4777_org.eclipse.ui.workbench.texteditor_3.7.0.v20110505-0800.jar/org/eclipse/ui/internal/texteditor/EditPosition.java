/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.Position
 *  org.eclipse.ui.IEditorInput
 */
package org.eclipse.ui.internal.texteditor;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.Position;
import org.eclipse.ui.IEditorInput;

public final class EditPosition {
    private final IEditorInput fEditorInput;
    private final String fEditorId;
    private final Position fPosition;

    public EditPosition(IEditorInput editorInput, String editorId, Position pos) {
        Assert.isNotNull((Object)editorInput);
        Assert.isNotNull((Object)editorId);
        this.fEditorId = editorId;
        this.fEditorInput = editorInput;
        this.fPosition = pos;
    }

    public IEditorInput getEditorInput() {
        return this.fEditorInput;
    }

    public String getEditorId() {
        return this.fEditorId;
    }

    public Position getPosition() {
        return this.fPosition;
    }
}

