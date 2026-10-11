/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.compare.patch;

import java.io.InputStream;
import org.eclipse.compare.patch.IHunk;
import org.eclipse.core.runtime.CoreException;

public interface IFilePatchResult {
    public InputStream getOriginalContents();

    public InputStream getPatchedContents();

    public boolean hasMatches();

    public boolean hasRejects();

    public IHunk[] getRejects();

    public String getCharset() throws CoreException;
}

