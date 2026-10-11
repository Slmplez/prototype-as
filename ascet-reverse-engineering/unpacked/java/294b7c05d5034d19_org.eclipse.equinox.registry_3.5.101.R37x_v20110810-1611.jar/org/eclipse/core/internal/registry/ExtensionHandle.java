/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.BaseExtensionHandle;
import org.eclipse.core.internal.registry.IObjectManager;

public class ExtensionHandle
extends BaseExtensionHandle {
    static final ExtensionHandle[] EMPTY_ARRAY = new ExtensionHandle[0];

    public ExtensionHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }
}

