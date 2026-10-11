/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.compare.patch;

import java.io.Reader;
import org.eclipse.core.runtime.CoreException;

public abstract class ReaderCreator {
    public abstract Reader createReader() throws CoreException;

    public boolean canCreateReader() {
        return true;
    }
}

