/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.runtime.CoreException;

public interface ILifecycleListener {
    public void handleEvent(LifecycleEvent var1) throws CoreException;
}

