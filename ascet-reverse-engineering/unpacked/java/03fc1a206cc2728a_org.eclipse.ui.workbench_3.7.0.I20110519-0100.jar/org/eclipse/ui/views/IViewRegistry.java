/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.views;

import org.eclipse.ui.views.IStickyViewDescriptor;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;

public interface IViewRegistry {
    public IViewDescriptor find(String var1);

    public IViewCategory[] getCategories();

    public IViewDescriptor[] getViews();

    public IStickyViewDescriptor[] getStickyViews();
}

