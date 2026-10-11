/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.dialogs.IPageChangedListener;

public interface IPageChangeProvider {
    public Object getSelectedPage();

    public void addPageChangedListener(IPageChangedListener var1);

    public void removePageChangedListener(IPageChangedListener var1);
}

