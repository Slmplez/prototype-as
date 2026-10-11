/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IInPlaceEditorInput;

public interface IInPlaceEditor
extends IEditorPart {
    public void sourceDeleted();

    public void sourceChanged(IInPlaceEditorInput var1);
}

