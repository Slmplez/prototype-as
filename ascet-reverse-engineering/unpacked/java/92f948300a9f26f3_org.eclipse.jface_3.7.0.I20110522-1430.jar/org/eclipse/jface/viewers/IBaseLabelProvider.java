/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.viewers;

import org.eclipse.jface.viewers.ILabelProviderListener;

public interface IBaseLabelProvider {
    public void addListener(ILabelProviderListener var1);

    public void dispose();

    public boolean isLabelProperty(Object var1, String var2);

    public void removeListener(ILabelProviderListener var1);
}

