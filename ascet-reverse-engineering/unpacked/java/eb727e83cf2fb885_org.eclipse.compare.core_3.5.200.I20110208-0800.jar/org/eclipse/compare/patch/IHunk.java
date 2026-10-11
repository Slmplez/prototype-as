/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.compare.patch;

import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;

public interface IHunk {
    public String getLabel();

    public int getStartPosition();

    public String[] getUnifiedLines();

    public InputStream getOriginalContents();

    public InputStream getPatchedContents();

    public String getCharset() throws CoreException;
}

