/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IManager {
    public void shutdown(IProgressMonitor var1) throws CoreException;

    public void startup(IProgressMonitor var1) throws CoreException;
}

