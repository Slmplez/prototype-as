/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

public interface IElementStateListener {
    public void elementDirtyStateChanged(Object var1, boolean var2);

    public void elementContentAboutToBeReplaced(Object var1);

    public void elementContentReplaced(Object var1);

    public void elementDeleted(Object var1);

    public void elementMoved(Object var1, Object var2);
}

