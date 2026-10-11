/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IExtensionDelta;

public interface IRegistryChangeEvent {
    public IExtensionDelta[] getExtensionDeltas();

    public IExtensionDelta[] getExtensionDeltas(String var1);

    public IExtensionDelta[] getExtensionDeltas(String var1, String var2);

    public IExtensionDelta getExtensionDelta(String var1, String var2, String var3);
}

