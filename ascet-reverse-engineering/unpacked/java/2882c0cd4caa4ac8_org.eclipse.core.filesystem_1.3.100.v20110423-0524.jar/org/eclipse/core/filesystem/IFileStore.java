/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.filesystem;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileSystem;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IFileStore
extends IAdaptable {
    public IFileInfo[] childInfos(int var1, IProgressMonitor var2) throws CoreException;

    public String[] childNames(int var1, IProgressMonitor var2) throws CoreException;

    public IFileStore[] childStores(int var1, IProgressMonitor var2) throws CoreException;

    public void copy(IFileStore var1, int var2, IProgressMonitor var3) throws CoreException;

    public void delete(int var1, IProgressMonitor var2) throws CoreException;

    public IFileInfo fetchInfo();

    public IFileInfo fetchInfo(int var1, IProgressMonitor var2) throws CoreException;

    public IFileStore getChild(IPath var1);

    public IFileStore getFileStore(IPath var1);

    public IFileStore getChild(String var1);

    public IFileSystem getFileSystem();

    public String getName();

    public IFileStore getParent();

    public boolean isParentOf(IFileStore var1);

    public IFileStore mkdir(int var1, IProgressMonitor var2) throws CoreException;

    public void move(IFileStore var1, int var2, IProgressMonitor var3) throws CoreException;

    public InputStream openInputStream(int var1, IProgressMonitor var2) throws CoreException;

    public OutputStream openOutputStream(int var1, IProgressMonitor var2) throws CoreException;

    public void putInfo(IFileInfo var1, int var2, IProgressMonitor var3) throws CoreException;

    public File toLocalFile(int var1, IProgressMonitor var2) throws CoreException;

    public String toString();

    public URI toURI();
}

