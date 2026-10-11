/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.texteditor;

public interface IElementStateListenerExtension {
    public void elementStateValidationChanged(Object var1, boolean var2);

    public void elementStateChanging(Object var1);

    public void elementStateChangeFailed(Object var1);
}

