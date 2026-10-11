/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.localstore;

import java.io.InputStream;
import java.util.Set;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IHistoryStore
extends IManager {
    public IFileState addState(IPath var1, IFileStore var2, IFileInfo var3, boolean var4);

    public Set<IPath> allFiles(IPath var1, int var2, IProgressMonitor var3);

    public void clean(IProgressMonitor var1);

    public void closeHistoryStore(IResource var1);

    public void copyHistory(IResource var1, IResource var2, boolean var3);

    public boolean exists(IFileState var1);

    public InputStream getContents(IFileState var1) throws CoreException;

    public IFileState[] getStates(IPath var1, IProgressMonitor var2);

    public void remove(IPath var1, IProgressMonitor var2);

    public void removeGarbage();
}

