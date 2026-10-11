/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.jdt.core.ClasspathContainerInitializer
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IClasspathAttribute
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class RuntimeClasspathEntry
implements IRuntimeClasspathEntry {
    private int fType = -1;
    private int fClasspathProperty = -1;
    private IClasspathEntry fClasspathEntry = null;
    private IClasspathEntry fResolvedEntry = null;
    private IJavaProject fJavaProject = null;
    private IPath fInvalidPath;

    public RuntimeClasspathEntry(IClasspathEntry entry) {
        switch (entry.getEntryKind()) {
            case 2: {
                this.setType(1);
                break;
            }
            case 1: {
                this.setType(2);
                break;
            }
            case 4: {
                this.setType(3);
                break;
            }
            default: {
                throw new IllegalArgumentException(MessageFormat.format((String)LaunchingMessages.RuntimeClasspathEntry_Illegal_classpath_entry__0__1, (Object[])new String[]{entry.toString()}));
            }
        }
        this.setClasspathEntry(entry);
        this.initializeClasspathProperty();
    }

    public RuntimeClasspathEntry(IClasspathEntry entry, int classpathProperty) {
        switch (entry.getEntryKind()) {
            case 5: {
                this.setType(4);
                break;
            }
            default: {
                throw new IllegalArgumentException(MessageFormat.format((String)LaunchingMessages.RuntimeClasspathEntry_Illegal_classpath_entry__0__1, (Object[])new String[]{entry.toString()}));
            }
        }
        this.setClasspathEntry(entry);
        this.setClasspathProperty(classpathProperty);
    }

    public RuntimeClasspathEntry(Element root) throws CoreException {
        String name;
        try {
            this.setType(Integer.parseInt(root.getAttribute("type")));
        }
        catch (NumberFormatException e) {
            this.abort(LaunchingMessages.RuntimeClasspathEntry_Unable_to_recover_runtime_class_path_entry_type_2, e);
        }
        try {
            this.setClasspathProperty(Integer.parseInt(root.getAttribute("path")));
        }
        catch (NumberFormatException e) {
            this.abort(LaunchingMessages.RuntimeClasspathEntry_Unable_to_recover_runtime_class_path_entry_location_3, e);
        }
        Path sourcePath = null;
        Path rootPath = null;
        String path = root.getAttribute("sourceAttachmentPath");
        if (path != null && path.length() > 0) {
            sourcePath = new Path(path);
        }
        if ((path = root.getAttribute("sourceRootPath")) != null && path.length() > 0) {
            rootPath = new Path(path);
        }
        switch (this.getType()) {
            case 1: {
                name = root.getAttribute("projectName");
                if (this.isEmpty(name)) {
                    this.abort(LaunchingMessages.RuntimeClasspathEntry_Unable_to_recover_runtime_class_path_entry___missing_project_name_4, null);
                    break;
                }
                IProject proj = ResourcesPlugin.getWorkspace().getRoot().getProject(name);
                this.setClasspathEntry(JavaCore.newProjectEntry((IPath)proj.getFullPath()));
                break;
            }
            case 2: {
                path = root.getAttribute("externalArchive");
                if (this.isEmpty(path)) {
                    path = root.getAttribute("internalArchive");
                    if (this.isEmpty(path)) {
                        this.abort(LaunchingMessages.RuntimeClasspathEntry_Unable_to_recover_runtime_class_path_entry___missing_archive_path_5, null);
                        break;
                    }
                    this.setClasspathEntry(this.createLibraryEntry((IPath)sourcePath, (IPath)rootPath, path));
                    break;
                }
                this.setClasspathEntry(this.createLibraryEntry((IPath)sourcePath, (IPath)rootPath, path));
                break;
            }
            case 3: {
                String var = root.getAttribute("containerPath");
                if (this.isEmpty(var)) {
                    this.abort(LaunchingMessages.RuntimeClasspathEntry_Unable_to_recover_runtime_class_path_entry___missing_variable_name_6, null);
                    break;
                }
                this.setClasspathEntry(JavaCore.newVariableEntry((IPath)new Path(var), (IPath)sourcePath, (IPath)rootPath));
                break;
            }
            case 4: {
                String var = root.getAttribute("containerPath");
                if (this.isEmpty(var)) {
                    this.abort(LaunchingMessages.RuntimeClasspathEntry_Unable_to_recover_runtime_class_path_entry___missing_variable_name_6, null);
                    break;
                }
                this.setClasspathEntry(JavaCore.newContainerEntry((IPath)new Path(var)));
            }
        }
        name = root.getAttribute("javaProject");
        if (this.isEmpty(name)) {
            this.fJavaProject = null;
        } else {
            IProject project2 = ResourcesPlugin.getWorkspace().getRoot().getProject(name);
            this.fJavaProject = JavaCore.create((IProject)project2);
        }
    }

    private IClasspathEntry createLibraryEntry(IPath sourcePath, IPath rootPath, String path) {
        Path p = new Path(path);
        if (!p.isAbsolute()) {
            this.fInvalidPath = p;
            return null;
        }
        return JavaCore.newLibraryEntry((IPath)p, (IPath)sourcePath, (IPath)rootPath);
    }

    protected void abort(String message, Throwable e) throws CoreException {
        Status s = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, message, e);
        throw new CoreException((IStatus)s);
    }

    public int getType() {
        return this.fType;
    }

    private void setType(int type) {
        this.fType = type;
    }

    private void setClasspathEntry(IClasspathEntry entry) {
        this.fClasspathEntry = entry;
        this.fResolvedEntry = null;
    }

    public IClasspathEntry getClasspathEntry() {
        return this.fClasspathEntry;
    }

    public String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element node = doc.createElement("runtimeClasspathEntry");
        doc.appendChild(node);
        node.setAttribute("type", new Integer(this.getType()).toString());
        node.setAttribute("path", new Integer(this.getClasspathProperty()).toString());
        switch (this.getType()) {
            case 1: {
                node.setAttribute("projectName", this.getPath().lastSegment());
                break;
            }
            case 2: {
                IResource res = this.getResource();
                if (res == null) {
                    node.setAttribute("externalArchive", this.getPath().toString());
                    break;
                }
                node.setAttribute("internalArchive", res.getFullPath().toString());
                break;
            }
            case 3: 
            case 4: {
                node.setAttribute("containerPath", this.getPath().toString());
            }
        }
        if (this.getSourceAttachmentPath() != null) {
            node.setAttribute("sourceAttachmentPath", this.getSourceAttachmentPath().toString());
        }
        if (this.getSourceAttachmentRootPath() != null) {
            node.setAttribute("sourceRootPath", this.getSourceAttachmentRootPath().toString());
        }
        if (this.getJavaProject() != null) {
            node.setAttribute("javaProject", this.getJavaProject().getElementName());
        }
        return DebugPlugin.serializeDocument((Document)doc);
    }

    public IPath getPath() {
        IClasspathEntry entry = this.getClasspathEntry();
        return entry != null ? entry.getPath() : this.fInvalidPath;
    }

    public IResource getResource() {
        switch (this.getType()) {
            case 3: 
            case 4: {
                return null;
            }
        }
        return this.getResource(this.getPath());
    }

    protected IResource getResource(IPath path) {
        if (path != null) {
            IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
            IFile[] files = root.findFilesForLocation(path);
            if (files.length > 0) {
                return files[0];
            }
            IContainer[] containers = root.findContainersForLocation(path);
            if (containers.length > 0) {
                return containers[0];
            }
            if (path.getDevice() == null) {
                return root.findMember(path);
            }
        }
        return null;
    }

    public IPath getSourceAttachmentPath() {
        IClasspathEntry entry = this.getClasspathEntry();
        return entry != null ? entry.getSourceAttachmentPath() : null;
    }

    public void setSourceAttachmentPath(IPath path) {
        if (path != null && path.isEmpty()) {
            path = null;
        }
        this.updateClasspathEntry(this.getPath(), path, this.getSourceAttachmentRootPath());
    }

    public IPath getSourceAttachmentRootPath() {
        IPath path;
        IClasspathEntry entry = this.getClasspathEntry();
        IPath iPath = path = entry != null ? this.getClasspathEntry().getSourceAttachmentRootPath() : null;
        if (path == null && this.getSourceAttachmentPath() != null) {
            return Path.EMPTY;
        }
        return path;
    }

    public void setSourceAttachmentRootPath(IPath path) {
        if (path != null && path.isEmpty()) {
            path = null;
        }
        this.updateClasspathEntry(this.getPath(), this.getSourceAttachmentPath(), path);
    }

    private void initializeClasspathProperty() {
        switch (this.getType()) {
            case 3: {
                if (this.getVariableName().equals("JRE_LIB")) {
                    this.setClasspathProperty(1);
                    break;
                }
                this.setClasspathProperty(3);
                break;
            }
            case 1: 
            case 2: {
                this.setClasspathProperty(3);
                break;
            }
        }
    }

    public void setClasspathProperty(int location) {
        this.fClasspathProperty = location;
    }

    public int getClasspathProperty() {
        return this.fClasspathProperty;
    }

    public String getLocation() {
        IPath path = null;
        switch (this.getType()) {
            case 1: {
                IJavaProject pro = (IJavaProject)JavaCore.create((IResource)this.getResource());
                if (pro == null) break;
                try {
                    path = pro.getOutputLocation();
                }
                catch (JavaModelException e) {
                    LaunchingPlugin.log(e);
                }
                break;
            }
            case 2: {
                path = this.getPath();
                break;
            }
            case 3: {
                IClasspathEntry resolved = this.getResolvedClasspathEntry();
                if (resolved == null) break;
                path = resolved.getPath();
                break;
            }
        }
        return this.resolveToOSPath(path);
    }

    protected String resolveToOSPath(IPath path) {
        if (path != null) {
            IResource res = null;
            if (path.getDevice() == null) {
                res = this.getResource(path);
            }
            if (res == null) {
                return path.toOSString();
            }
            IPath location = res.getLocation();
            if (location != null) {
                return location.toOSString();
            }
        }
        return null;
    }

    public String getVariableName() {
        if (this.getType() == 3 || this.getType() == 4) {
            return this.getPath().segment(0);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IRuntimeClasspathEntry) {
            IRuntimeClasspathEntry r = (IRuntimeClasspathEntry)obj;
            if (this.getType() == r.getType() && this.getClasspathProperty() == r.getClasspathProperty()) {
                if (this.getType() == 4) {
                    String id = this.getPath().segment(0);
                    ClasspathContainerInitializer initializer = JavaCore.getClasspathContainerInitializer((String)id);
                    IJavaProject javaProject1 = this.getJavaProject();
                    IJavaProject javaProject2 = r.getJavaProject();
                    if (initializer == null || javaProject1 == null || javaProject2 == null) {
                        return this.getPath().equals((Object)r.getPath());
                    }
                    Object comparisonID1 = initializer.getComparisonID(this.getPath(), javaProject1);
                    Object comparisonID2 = initializer.getComparisonID(r.getPath(), javaProject2);
                    return comparisonID1.equals(comparisonID2);
                }
                if (this.getPath() != null && this.getPath().equals((Object)r.getPath())) {
                    IPath sa1 = this.getSourceAttachmentPath();
                    IPath root1 = this.getSourceAttachmentRootPath();
                    IPath sa2 = r.getSourceAttachmentPath();
                    IPath root2 = r.getSourceAttachmentRootPath();
                    return this.equal(sa1, sa2) && this.equal(root1, root2);
                }
            }
        }
        return false;
    }

    protected boolean equal(Object one, Object two) {
        if (one == null) {
            return two == null;
        }
        return one.equals(two);
    }

    public int hashCode() {
        if (this.getType() == 4) {
            return this.getPath().segment(0).hashCode() + this.getType();
        }
        return this.getPath().hashCode() + this.getType();
    }

    public String getSourceAttachmentLocation() {
        IPath path = null;
        switch (this.getType()) {
            case 2: 
            case 3: {
                IClasspathEntry resolved = this.getResolvedClasspathEntry();
                if (resolved == null) break;
                path = resolved.getSourceAttachmentPath();
                break;
            }
        }
        return this.resolveToOSPath(path);
    }

    public String getSourceAttachmentRootLocation() {
        IPath path = null;
        switch (this.getType()) {
            case 2: 
            case 3: {
                IClasspathEntry resolved = this.getResolvedClasspathEntry();
                if (resolved == null) break;
                path = resolved.getSourceAttachmentRootPath();
                break;
            }
        }
        if (path != null) {
            return path.toOSString();
        }
        return null;
    }

    protected void updateClasspathEntry(IPath path, IPath sourcePath, IPath rootPath) {
        IClasspathEntry entry = null;
        IClasspathEntry original = this.getClasspathEntry();
        switch (this.getType()) {
            case 2: {
                entry = JavaCore.newLibraryEntry((IPath)path, (IPath)sourcePath, (IPath)rootPath, (IAccessRule[])original.getAccessRules(), (IClasspathAttribute[])original.getExtraAttributes(), (boolean)original.isExported());
                break;
            }
            case 3: {
                entry = JavaCore.newVariableEntry((IPath)path, (IPath)sourcePath, (IPath)rootPath);
                break;
            }
            default: {
                return;
            }
        }
        this.setClasspathEntry(entry);
    }

    protected IClasspathEntry getResolvedClasspathEntry() {
        if (this.fResolvedEntry == null) {
            this.fResolvedEntry = JavaCore.getResolvedClasspathEntry((IClasspathEntry)this.getClasspathEntry());
        }
        return this.fResolvedEntry;
    }

    protected boolean isEmpty(String string) {
        return string == null || string.length() == 0;
    }

    public String toString() {
        if (this.fClasspathEntry != null) {
            return this.fClasspathEntry.toString();
        }
        return super.toString();
    }

    public IJavaProject getJavaProject() {
        return this.fJavaProject;
    }

    public void setJavaProject(IJavaProject project) {
        this.fJavaProject = project;
    }
}

