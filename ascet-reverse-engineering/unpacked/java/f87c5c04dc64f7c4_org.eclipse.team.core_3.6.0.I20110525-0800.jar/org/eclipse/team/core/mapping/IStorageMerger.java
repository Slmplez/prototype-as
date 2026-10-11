/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.team.core.mapping;

import java.io.OutputStream;
import org.eclipse.core.resources.IStorage;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;

public interface IStorageMerger {
    public static final int OK = 0;
    public static final int CONFLICT = 1;
    public static final int INTERNAL_ERROR = 2;
    public static final int UNSUPPORTED_ENCODING = 3;

    public IStatus merge(OutputStream var1, String var2, IStorage var3, IStorage var4, IStorage var5, IProgressMonitor var6) throws CoreException;

    public boolean canMergeWithoutAncestor();
}

