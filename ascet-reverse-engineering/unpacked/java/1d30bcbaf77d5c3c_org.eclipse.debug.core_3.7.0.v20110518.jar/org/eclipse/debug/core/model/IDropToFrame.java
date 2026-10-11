/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;

public interface IDropToFrame {
    public boolean canDropToFrame();

    public void dropToFrame() throws DebugException;
}

