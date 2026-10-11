/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IAdapterFactory;

public interface IAdapterManager {
    public static final int NONE = 0;
    public static final int NOT_LOADED = 1;
    public static final int LOADED = 2;

    public String[] computeAdapterTypes(Class var1);

    public Class[] computeClassOrder(Class var1);

    public Object getAdapter(Object var1, Class var2);

    public Object getAdapter(Object var1, String var2);

    public boolean hasAdapter(Object var1, String var2);

    public int queryAdapter(Object var1, String var2);

    public Object loadAdapter(Object var1, String var2);

    public void registerAdapters(IAdapterFactory var1, Class var2);

    public void unregisterAdapters(IAdapterFactory var1);

    public void unregisterAdapters(IAdapterFactory var1, Class var2);
}

