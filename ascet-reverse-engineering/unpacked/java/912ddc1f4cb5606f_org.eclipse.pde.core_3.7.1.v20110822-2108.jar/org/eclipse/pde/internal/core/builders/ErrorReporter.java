/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filebuffers.FileBuffers
 *  org.eclipse.core.filebuffers.ITextFileBuffer
 *  org.eclipse.core.filebuffers.ITextFileBufferManager
 *  org.eclipse.core.filebuffers.LocationKind
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.filebuffers.FileBuffers;
import org.eclipse.core.filebuffers.ITextFileBuffer;
import org.eclipse.core.filebuffers.ITextFileBufferManager;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IDocument;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.PDEMarkerFactory;

public abstract class ErrorReporter {
    protected static final String[] BOOLEAN_VALUES = new String[]{"true", "false"};
    private int fErrorCount = 0;
    protected IFile fFile;
    protected IProject fProject;
    private PDEMarkerFactory fMarkerFactory;

    public ErrorReporter(IFile file) {
        this.fFile = file;
        if (this.fFile != null) {
            this.fProject = this.fFile.getProject();
        }
    }

    protected IMarker addMarker(String message, int lineNumber, int severity, int problemID, String category) {
        try {
            IMarker marker = this.getMarkerFactory().createMarker(this.fFile, problemID, category);
            marker.setAttribute("message", (Object)message);
            marker.setAttribute("severity", severity);
            if (lineNumber == -1) {
                lineNumber = 1;
            }
            marker.setAttribute("lineNumber", lineNumber);
            if (severity == 2) {
                ++this.fErrorCount;
            }
            return marker;
        }
        catch (CoreException e) {
            PDECore.logException(e);
            return null;
        }
    }

    protected IDocument createDocument(IFile file) {
        if (!file.exists()) {
            return null;
        }
        ITextFileBufferManager manager = FileBuffers.getTextFileBufferManager();
        if (manager == null) {
            return null;
        }
        try {
            manager.connect(file.getFullPath(), LocationKind.NORMALIZE, null);
            ITextFileBuffer textBuf = manager.getTextFileBuffer(file.getFullPath(), LocationKind.NORMALIZE);
            IDocument document = textBuf.getDocument();
            manager.disconnect(file.getFullPath(), LocationKind.NORMALIZE, null);
            return document;
        }
        catch (CoreException e) {
            PDECore.log(e);
            return null;
        }
    }

    public int getErrorCount() {
        return this.fErrorCount;
    }

    private PDEMarkerFactory getMarkerFactory() {
        if (this.fMarkerFactory == null) {
            this.fMarkerFactory = new PDEMarkerFactory();
        }
        return this.fMarkerFactory;
    }

    private void removeFileMarkers() {
        try {
            this.fFile.deleteMarkers("org.eclipse.core.resources.problemmarker", false, 0);
            this.fFile.deleteMarkers("org.eclipse.pde.core.problem", false, 0);
        }
        catch (CoreException e) {
            PDECore.logException(e);
        }
    }

    public IMarker report(String message, int line, int severity, int problemID, String category) {
        if (severity == 0) {
            return this.addMarker(message, line, 2, problemID, category);
        }
        if (severity == 1) {
            return this.addMarker(message, line, 1, problemID, category);
        }
        return null;
    }

    public IMarker report(String message, int line, int severity, String category) {
        return this.report(message, line, severity, -1, category);
    }

    protected IMarker report(String message, int line, String compilerFlag, int problemID, String category) {
        int severity = CompilerFlags.getFlag(this.fProject, compilerFlag);
        if (severity != 2) {
            return this.report(message, line, severity, problemID, category);
        }
        return null;
    }

    protected void report(String message, int line, String compilerFlag, String category) {
        this.report(message, line, compilerFlag, -1, category);
    }

    public void validateContent(IProgressMonitor monitor) {
        this.removeFileMarkers();
        this.validate(monitor);
    }

    protected abstract void validate(IProgressMonitor var1);
}

