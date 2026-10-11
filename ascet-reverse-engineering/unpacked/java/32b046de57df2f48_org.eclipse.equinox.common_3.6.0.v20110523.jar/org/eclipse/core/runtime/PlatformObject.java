/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.internal.runtime.AdapterManager;
import org.eclipse.core.runtime.IAdaptable;

public abstract class PlatformObject
implements IAdaptable {
    public Object getAdapter(Class adapter) {
        return AdapterManager.getDefault().getAdapter((Object)this, adapter);
    }
}

