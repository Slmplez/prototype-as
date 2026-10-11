/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;

public interface IDebugElement
extends IAdaptable {
    public String getModelIdentifier();

    public IDebugTarget getDebugTarget();

    public ILaunch getLaunch();
}

