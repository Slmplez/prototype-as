/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.TeamException;

public interface IResourceVariant {
    public String getName();

    public boolean isContainer();

    public IStorage getStorage(IProgressMonitor var1) throws TeamException;

    public String getContentIdentifier();

    public byte[] asBytes();

    public boolean equals(Object var1);
}

