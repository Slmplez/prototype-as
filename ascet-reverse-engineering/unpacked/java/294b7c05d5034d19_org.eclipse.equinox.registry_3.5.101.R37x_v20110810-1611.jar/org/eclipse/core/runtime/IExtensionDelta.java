/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;

public interface IExtensionDelta {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;

    public int getKind();

    public IExtension getExtension();

    public IExtensionPoint getExtensionPoint();
}

