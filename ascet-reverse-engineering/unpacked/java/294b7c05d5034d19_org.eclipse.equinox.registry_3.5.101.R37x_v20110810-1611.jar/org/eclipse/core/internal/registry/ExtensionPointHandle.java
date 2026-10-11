/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.BaseExtensionPointHandle;
import org.eclipse.core.internal.registry.IObjectManager;

public class ExtensionPointHandle
extends BaseExtensionPointHandle {
    static final ExtensionPointHandle[] EMPTY_ARRAY = new ExtensionPointHandle[0];

    public ExtensionPointHandle(IObjectManager objectManager, int id) {
        super(objectManager, id);
    }
}

