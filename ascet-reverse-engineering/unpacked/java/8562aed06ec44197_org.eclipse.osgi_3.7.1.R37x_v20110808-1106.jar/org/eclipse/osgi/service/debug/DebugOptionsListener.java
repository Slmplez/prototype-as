/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.debug;

import java.util.EventListener;
import org.eclipse.osgi.service.debug.DebugOptions;

public interface DebugOptionsListener
extends EventListener {
    public void optionsChanged(DebugOptions var1);
}

