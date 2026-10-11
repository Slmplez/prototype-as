/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search;

import java.util.zip.ZipEntry;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchDocument
extends SearchDocument {
    private IFile file;
    protected byte[] byteContents;
    protected char[] charContents;

    public JavaSearchDocument(String documentPath, SearchParticipant participant) {
        super(documentPath, participant);
    }

    public JavaSearchDocument(ZipEntry zipEntry, IPath zipFilePath, byte[] contents, SearchParticipant participant) {
        super(zipFilePath + "|" + zipEntry.getName(), participant);
        this.byteContents = contents;
    }

    public byte[] getByteContents() {
        if (this.byteContents != null) {
            return this.byteContents;
        }
        try {
            return Util.getResourceContentsAsByteArray(this.getFile());
        }
        catch (JavaModelException e) {
            if (BasicSearchEngine.VERBOSE || JobManager.VERBOSE) {
                e.printStackTrace();
            }
            return null;
        }
    }

    public char[] getCharContents() {
        if (this.charContents != null) {
            return this.charContents;
        }
        try {
            return Util.getResourceContentsAsCharArray(this.getFile());
        }
        catch (JavaModelException e) {
            if (BasicSearchEngine.VERBOSE || JobManager.VERBOSE) {
                e.printStackTrace();
            }
            return null;
        }
    }

    public String getEncoding() {
        IFile resource = this.getFile();
        if (resource != null) {
            try {
                return resource.getCharset();
            }
            catch (CoreException coreException) {
                try {
                    return ResourcesPlugin.getWorkspace().getRoot().getDefaultCharset();
                }
                catch (CoreException coreException2) {}
            }
        }
        return null;
    }

    private IFile getFile() {
        if (this.file == null) {
            this.file = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)new Path(this.getPath()));
        }
        return this.file;
    }

    public String toString() {
        return "SearchDocument for " + this.getPath();
    }
}

