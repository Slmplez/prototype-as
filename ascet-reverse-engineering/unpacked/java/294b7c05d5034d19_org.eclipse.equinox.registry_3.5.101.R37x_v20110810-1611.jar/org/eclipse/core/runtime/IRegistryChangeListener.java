/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.util.EventListener;
import org.eclipse.core.runtime.IRegistryChangeEvent;

public interface IRegistryChangeListener
extends EventListener {
    public void registryChanged(IRegistryChangeEvent var1);
}

