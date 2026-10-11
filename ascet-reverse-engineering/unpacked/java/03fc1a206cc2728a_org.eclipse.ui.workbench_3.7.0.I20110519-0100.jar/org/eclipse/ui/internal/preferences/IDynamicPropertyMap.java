/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.preferences;

import org.eclipse.ui.internal.preferences.IPropertyMap;
import org.eclipse.ui.internal.preferences.IPropertyMapListener;

public interface IDynamicPropertyMap
extends IPropertyMap {
    public void addListener(IPropertyMapListener var1);

    public void addListener(String[] var1, IPropertyMapListener var2);

    public void removeListener(IPropertyMapListener var1);
}

