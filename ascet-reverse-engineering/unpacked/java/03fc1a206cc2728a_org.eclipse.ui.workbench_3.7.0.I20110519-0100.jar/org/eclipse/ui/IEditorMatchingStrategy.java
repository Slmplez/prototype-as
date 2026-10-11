/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorReference;

public interface IEditorMatchingStrategy {
    public boolean matches(IEditorReference var1, IEditorInput var2);
}

