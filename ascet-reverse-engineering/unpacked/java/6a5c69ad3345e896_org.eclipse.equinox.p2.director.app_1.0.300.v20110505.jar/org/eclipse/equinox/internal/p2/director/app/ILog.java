/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.equinox.internal.p2.director.app;

import org.eclipse.core.runtime.IStatus;

public interface ILog {
    public void log(IStatus var1);

    public void log(String var1);

    public void close();
}

