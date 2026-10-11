/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.pde.core;

import org.eclipse.core.runtime.IAdaptable;

public interface IBaseModel
extends IAdaptable {
    public void dispose();

    public boolean isDisposed();

    public boolean isEditable();

    public boolean isValid();
}

