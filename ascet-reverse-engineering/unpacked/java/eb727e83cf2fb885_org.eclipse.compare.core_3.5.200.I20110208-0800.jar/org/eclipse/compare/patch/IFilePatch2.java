/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.compare.patch;

import org.eclipse.compare.patch.IFilePatchResult;
import org.eclipse.compare.patch.IHunk;
import org.eclipse.compare.patch.PatchConfiguration;
import org.eclipse.compare.patch.ReaderCreator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IFilePatch2 {
    public static final long DATE_UNKNOWN = 0L;

    public IPath getTargetPath(PatchConfiguration var1);

    public IFilePatchResult apply(ReaderCreator var1, PatchConfiguration var2, IProgressMonitor var3);

    public String getHeader();

    public long getBeforeDate();

    public long getAfterDate();

    public IHunk[] getHunks();
}

