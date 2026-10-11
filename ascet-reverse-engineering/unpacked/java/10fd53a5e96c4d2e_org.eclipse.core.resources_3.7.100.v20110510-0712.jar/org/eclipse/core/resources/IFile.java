/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.content.IContentDescription
 */
package org.eclipse.core.resources;

import java.io.InputStream;
import java.io.Reader;
import java.net.URI;
import org.eclipse.core.resources.IEncodedStorage;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.content.IContentDescription;

public interface IFile
extends IResource,
IEncodedStorage,
IAdaptable {
    public static final int ENCODING_UNKNOWN = 0;
    public static final int ENCODING_US_ASCII = 1;
    public static final int ENCODING_ISO_8859_1 = 2;
    public static final int ENCODING_UTF_8 = 3;
    public static final int ENCODING_UTF_16BE = 4;
    public static final int ENCODING_UTF_16LE = 5;
    public static final int ENCODING_UTF_16 = 6;

    public void appendContents(InputStream var1, boolean var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public void appendContents(InputStream var1, int var2, IProgressMonitor var3) throws CoreException;

    public void create(InputStream var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public void create(InputStream var1, int var2, IProgressMonitor var3) throws CoreException;

    public void createLink(IPath var1, int var2, IProgressMonitor var3) throws CoreException;

    public void createLink(URI var1, int var2, IProgressMonitor var3) throws CoreException;

    public void delete(boolean var1, boolean var2, IProgressMonitor var3) throws CoreException;

    public String getCharset() throws CoreException;

    public String getCharset(boolean var1) throws CoreException;

    public String getCharsetFor(Reader var1) throws CoreException;

    public IContentDescription getContentDescription() throws CoreException;

    public InputStream getContents() throws CoreException;

    public InputStream getContents(boolean var1) throws CoreException;

    public int getEncoding() throws CoreException;

    public IPath getFullPath();

    public IFileState[] getHistory(IProgressMonitor var1) throws CoreException;

    public String getName();

    public boolean isReadOnly();

    public void move(IPath var1, boolean var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public void setCharset(String var1) throws CoreException;

    public void setCharset(String var1, IProgressMonitor var2) throws CoreException;

    public void setContents(InputStream var1, boolean var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public void setContents(IFileState var1, boolean var2, boolean var3, IProgressMonitor var4) throws CoreException;

    public void setContents(InputStream var1, int var2, IProgressMonitor var3) throws CoreException;

    public void setContents(IFileState var1, int var2, IProgressMonitor var3) throws CoreException;
}

