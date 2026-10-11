/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.build;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.build.IBuildEntry;

public interface IBuild
extends IWritable {
    public void add(IBuildEntry var1) throws CoreException;

    public IBuildEntry[] getBuildEntries();

    public IBuildEntry getEntry(String var1);

    public void remove(IBuildEntry var1) throws CoreException;
}

