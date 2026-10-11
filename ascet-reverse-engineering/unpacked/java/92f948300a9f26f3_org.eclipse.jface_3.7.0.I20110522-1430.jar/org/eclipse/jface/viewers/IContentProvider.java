/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.Viewer;

public interface IContentProvider {
    public void dispose();

    public void inputChanged(Viewer var1, Object var2, Object var3);
}

