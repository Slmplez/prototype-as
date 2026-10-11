/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.history;

import java.net.URI;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.history.ITag;

public interface IFileRevision {
    public IStorage getStorage(IProgressMonitor var1) throws CoreException;

    public String getName();

    public URI getURI();

    public long getTimestamp();

    public boolean exists();

    public String getContentIdentifier();

    public String getAuthor();

    public String getComment();

    public ITag[] getBranches();

    public ITag[] getTags();

    public boolean isPropertyMissing();

    public IFileRevision withAllProperties(IProgressMonitor var1) throws CoreException;
}

