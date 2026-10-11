/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.util.EventListener;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;

public interface IRegistryEventListener
extends EventListener {
    public void added(IExtension[] var1);

    public void removed(IExtension[] var1);

    public void added(IExtensionPoint[] var1);

    public void removed(IExtensionPoint[] var1);
}

