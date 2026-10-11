/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;

public interface ISynchronizer {
    public void accept(QualifiedName var1, IResource var2, IResourceVisitor var3, int var4) throws CoreException;

    public void add(QualifiedName var1);

    public void flushSyncInfo(QualifiedName var1, IResource var2, int var3) throws CoreException;

    public QualifiedName[] getPartners();

    public byte[] getSyncInfo(QualifiedName var1, IResource var2) throws CoreException;

    public void remove(QualifiedName var1);

    public void setSyncInfo(QualifiedName var1, IResource var2, byte[] var3) throws CoreException;
}

