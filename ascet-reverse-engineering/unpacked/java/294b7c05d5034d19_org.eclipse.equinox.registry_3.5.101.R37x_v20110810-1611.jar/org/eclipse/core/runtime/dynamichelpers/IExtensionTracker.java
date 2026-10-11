/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.dynamichelpers;

import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IFilter;

public interface IExtensionTracker {
    public static final int REF_STRONG = 0;
    public static final int REF_SOFT = 1;
    public static final int REF_WEAK = 2;

    public void registerHandler(IExtensionChangeHandler var1, IFilter var2);

    public void unregisterHandler(IExtensionChangeHandler var1);

    public void registerObject(IExtension var1, Object var2, int var3);

    public void unregisterObject(IExtension var1, Object var2);

    public Object[] unregisterObject(IExtension var1);

    public Object[] getObjects(IExtension var1);

    public void close();
}

