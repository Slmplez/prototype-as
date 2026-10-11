/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.dynamichelpers;

import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;

public interface IExtensionChangeHandler {
    public void addExtension(IExtensionTracker var1, IExtension var2);

    public void removeExtension(IExtension var1, Object[] var2);
}

