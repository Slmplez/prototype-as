/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.RegistryObject;

public interface IObjectManager {
    public Handle getHandle(int var1, byte var2);

    public Handle[] getHandles(int[] var1, byte var2);

    public Object getObject(int var1, byte var2);

    public RegistryObject[] getObjects(int[] var1, byte var2);

    public void close();
}

