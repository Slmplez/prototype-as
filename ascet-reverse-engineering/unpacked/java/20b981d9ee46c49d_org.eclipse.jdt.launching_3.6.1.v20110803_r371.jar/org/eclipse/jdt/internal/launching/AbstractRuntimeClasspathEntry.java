/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry2;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public abstract class AbstractRuntimeClasspathEntry
extends PlatformObject
implements IRuntimeClasspathEntry2 {
    private IPath sourceAttachmentPath = null;
    private IPath rootSourcePath = null;
    private int classpathProperty = 3;
    private IJavaProject fJavaProject;

    public boolean isComposite() {
        return false;
    }

    public IRuntimeClasspathEntry[] getRuntimeClasspathEntries() throws CoreException {
        return new IRuntimeClasspathEntry[0];
    }

    protected void abort(String message, Throwable exception) throws CoreException {
        Status status = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, exception);
        throw new CoreException((IStatus)status);
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element root = doc.createElement("runtimeClasspathEntry");
        doc.appendChild(root);
        root.setAttribute("id", this.getTypeId());
        Element memento = doc.createElement("memento");
        root.appendChild(memento);
        this.buildMemento(doc, memento);
        return DebugPlugin.serializeDocument((Document)doc);
    }

    protected abstract void buildMemento(Document var1, Element var2) throws CoreException;

    public IPath getPath() {
        return null;
    }

    public IResource getResource() {
        return null;
    }

    public IPath getSourceAttachmentPath() {
        return this.sourceAttachmentPath;
    }

    public void setSourceAttachmentPath(IPath path) {
        this.sourceAttachmentPath = path;
    }

    public IPath getSourceAttachmentRootPath() {
        return this.rootSourcePath;
    }

    public void setSourceAttachmentRootPath(IPath path) {
        this.rootSourcePath = path;
    }

    public int getClasspathProperty() {
        return this.classpathProperty;
    }

    public void setClasspathProperty(int property) {
        this.classpathProperty = property;
    }

    public String getLocation() {
        return null;
    }

    public String getSourceAttachmentLocation() {
        return null;
    }

    public String getSourceAttachmentRootLocation() {
        return null;
    }

    public String getVariableName() {
        return null;
    }

    public IClasspathEntry getClasspathEntry() {
        return null;
    }

    public IJavaProject getJavaProject() {
        return this.fJavaProject;
    }

    protected void setJavaProject(IJavaProject javaProject) {
        this.fJavaProject = javaProject;
    }
}

