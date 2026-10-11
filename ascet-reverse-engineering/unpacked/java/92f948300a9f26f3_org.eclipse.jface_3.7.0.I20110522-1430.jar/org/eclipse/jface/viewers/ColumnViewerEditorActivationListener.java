/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ColumnViewerEditorActivationEvent;
import org.eclipse.jface.viewers.ColumnViewerEditorDeactivationEvent;

public abstract class ColumnViewerEditorActivationListener {
    public abstract void beforeEditorActivated(ColumnViewerEditorActivationEvent var1);

    public abstract void afterEditorActivated(ColumnViewerEditorActivationEvent var1);

    public abstract void beforeEditorDeactivated(ColumnViewerEditorDeactivationEvent var1);

    public abstract void afterEditorDeactivated(ColumnViewerEditorDeactivationEvent var1);
}

