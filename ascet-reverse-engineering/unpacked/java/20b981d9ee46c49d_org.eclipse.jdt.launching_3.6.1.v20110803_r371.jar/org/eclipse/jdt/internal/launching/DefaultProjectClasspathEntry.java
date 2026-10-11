/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.ClasspathContainerInitializer
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.AbstractRuntimeClasspathEntry;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.RuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeContainerComparator;
import org.eclipse.jdt.launching.JavaRuntime;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class DefaultProjectClasspathEntry
extends AbstractRuntimeClasspathEntry {
    public static final String TYPE_ID = "org.eclipse.jdt.launching.classpathentry.defaultClasspath";
    private boolean fExportedEntriesOnly = false;

    public DefaultProjectClasspathEntry() {
    }

    public DefaultProjectClasspathEntry(IJavaProject project) {
        this.setJavaProject(project);
    }

    protected void buildMemento(Document document, Element memento) throws CoreException {
        memento.setAttribute("project", this.getJavaProject().getElementName());
        memento.setAttribute("exportedEntriesOnly", Boolean.toString(this.fExportedEntriesOnly));
    }

    public void initializeFrom(Element memento) throws CoreException {
        String name = memento.getAttribute("project");
        if (name == null) {
            this.abort(LaunchingMessages.DefaultProjectClasspathEntry_3, null);
        }
        IJavaProject project = JavaCore.create((IProject)ResourcesPlugin.getWorkspace().getRoot().getProject(name));
        this.setJavaProject(project);
        name = memento.getAttribute("exportedEntriesOnly");
        this.fExportedEntriesOnly = name == null ? false : Boolean.valueOf(name);
    }

    public String getTypeId() {
        return TYPE_ID;
    }

    public int getType() {
        return 5;
    }

    protected IProject getProject() {
        return this.getJavaProject().getProject();
    }

    public String getLocation() {
        return this.getProject().getLocation().toOSString();
    }

    public IPath getPath() {
        return this.getProject().getFullPath();
    }

    public IResource getResource() {
        return this.getProject();
    }

    public IRuntimeClasspathEntry[] getRuntimeClasspathEntries(ILaunchConfiguration configuration) throws CoreException {
        IClasspathEntry entry = JavaCore.newProjectEntry((IPath)this.getJavaProject().getProject().getFullPath());
        ArrayList classpathEntries = new ArrayList(5);
        ArrayList expanding = new ArrayList(5);
        this.expandProject(entry, classpathEntries, expanding);
        IRuntimeClasspathEntry[] runtimeEntries = new IRuntimeClasspathEntry[classpathEntries.size()];
        int i = 0;
        while (i < runtimeEntries.length) {
            Object e = classpathEntries.get(i);
            if (e instanceof IClasspathEntry) {
                IClasspathEntry cpe = (IClasspathEntry)e;
                runtimeEntries[i] = new RuntimeClasspathEntry(cpe);
            } else {
                runtimeEntries[i] = (IRuntimeClasspathEntry)e;
            }
            ++i;
        }
        ArrayList<IRuntimeClasspathEntry> ordered = new ArrayList<IRuntimeClasspathEntry>(runtimeEntries.length);
        int i2 = 0;
        while (i2 < runtimeEntries.length) {
            if (runtimeEntries[i2].getClasspathProperty() == 3) {
                ordered.add(runtimeEntries[i2]);
            }
            ++i2;
        }
        return ordered.toArray(new IRuntimeClasspathEntry[ordered.size()]);
    }

    private void expandProject(IClasspathEntry projectEntry, List expandedPath, List expanding) throws CoreException {
        expanding.add(projectEntry);
        IPath projectPath = projectEntry.getPath();
        IResource res = ResourcesPlugin.getWorkspace().getRoot().findMember(projectPath.lastSegment());
        if (res == null) {
            expandedPath.add(projectEntry);
            return;
        }
        IJavaProject project = (IJavaProject)JavaCore.create((IResource)res);
        if (project == null || !project.getProject().isOpen() || !project.exists()) {
            expandedPath.add(projectEntry);
            return;
        }
        IClasspathEntry[] buildPath = project.getRawClasspath();
        ArrayList<IClasspathEntry> unexpandedPath = new ArrayList<IClasspathEntry>(buildPath.length);
        boolean projectAdded = false;
        int i = 0;
        while (i < buildPath.length) {
            IClasspathEntry classpathEntry = buildPath[i];
            if (classpathEntry.getEntryKind() == 3) {
                if (!projectAdded) {
                    projectAdded = true;
                    unexpandedPath.add(projectEntry);
                }
            } else if (classpathEntry.isExported()) {
                unexpandedPath.add(classpathEntry);
            } else if (!this.isExportedEntriesOnly() || project.equals(this.getJavaProject())) {
                unexpandedPath.add(classpathEntry);
            }
            ++i;
        }
        Iterator iter = unexpandedPath.iterator();
        block11: while (iter.hasNext()) {
            IClasspathEntry entry = (IClasspathEntry)iter.next();
            if (entry == projectEntry) {
                expandedPath.add(entry);
                continue;
            }
            switch (entry.getEntryKind()) {
                case 2: {
                    if (expanding.contains(entry)) continue block11;
                    this.expandProject(entry, expandedPath, expanding);
                    break;
                }
                case 5: {
                    IClasspathContainer container = JavaCore.getClasspathContainer((IPath)entry.getPath(), (IJavaProject)project);
                    int property = -1;
                    if (container == null) continue block11;
                    switch (container.getKind()) {
                        case 1: {
                            property = 3;
                            break;
                        }
                        case 3: {
                            property = 1;
                            break;
                        }
                        case 2: {
                            property = 2;
                        }
                    }
                    IRuntimeClasspathEntry r = JavaRuntime.newRuntimeContainerClasspathEntry(entry.getPath(), property, project);
                    boolean duplicate = false;
                    ClasspathContainerInitializer initializer = JavaCore.getClasspathContainerInitializer((String)r.getPath().segment(0));
                    int i2 = 0;
                    while (i2 < expandedPath.size()) {
                        IRuntimeClasspathEntry re;
                        Object o = expandedPath.get(i2);
                        if (o instanceof IRuntimeClasspathEntry && (re = (IRuntimeClasspathEntry)o).getType() == 4) {
                            if (container instanceof IRuntimeContainerComparator) {
                                duplicate = ((IRuntimeContainerComparator)container).isDuplicate(re.getPath());
                            } else {
                                ClasspathContainerInitializer initializer2 = JavaCore.getClasspathContainerInitializer((String)re.getPath().segment(0));
                                Object id1 = null;
                                Object id2 = null;
                                id1 = initializer == null ? r.getPath().segment(0) : initializer.getComparisonID(r.getPath(), project);
                                if (initializer2 == null) {
                                    id2 = re.getPath().segment(0);
                                } else {
                                    IJavaProject context = re.getJavaProject();
                                    if (context == null) {
                                        context = project;
                                    }
                                    id2 = initializer2.getComparisonID(re.getPath(), context);
                                }
                                duplicate = id1 == null ? id2 == null : id1.equals(id2);
                            }
                            if (duplicate) break;
                        }
                        ++i2;
                    }
                    if (duplicate) continue block11;
                    expandedPath.add(r);
                    break;
                }
                case 4: {
                    IRuntimeClasspathEntry r = JavaRuntime.newVariableRuntimeClasspathEntry(entry.getPath());
                    r.setSourceAttachmentPath(entry.getSourceAttachmentPath());
                    r.setSourceAttachmentRootPath(entry.getSourceAttachmentRootPath());
                    if (expandedPath.contains(r)) continue block11;
                    expandedPath.add(r);
                    break;
                }
                default: {
                    IRuntimeClasspathEntry r;
                    if (expandedPath.contains(entry)) continue block11;
                    if (entry.getEntryKind() != 3) {
                        IPackageFragmentRoot[] roots = project.findPackageFragmentRoots(entry);
                        int i3 = 0;
                        while (i3 < roots.length) {
                            IPackageFragmentRoot root = roots[i3];
                            r = JavaRuntime.newArchiveRuntimeClasspathEntry(root.getPath());
                            r.setSourceAttachmentPath(entry.getSourceAttachmentPath());
                            r.setSourceAttachmentRootPath(entry.getSourceAttachmentRootPath());
                            if (!expandedPath.contains(r)) {
                                expandedPath.add(r);
                            }
                            ++i3;
                        }
                        continue block11;
                    }
                    expandedPath.add(entry);
                }
            }
        }
    }

    public boolean isComposite() {
        return true;
    }

    public String getName() {
        if (this.isExportedEntriesOnly()) {
            return MessageFormat.format((String)LaunchingMessages.DefaultProjectClasspathEntry_2, (Object[])new String[]{this.getJavaProject().getElementName()});
        }
        return MessageFormat.format((String)LaunchingMessages.DefaultProjectClasspathEntry_4, (Object[])new String[]{this.getJavaProject().getElementName()});
    }

    public boolean equals(Object obj) {
        if (obj instanceof DefaultProjectClasspathEntry) {
            DefaultProjectClasspathEntry entry = (DefaultProjectClasspathEntry)obj;
            return entry.getJavaProject().equals(this.getJavaProject()) && entry.isExportedEntriesOnly() == this.isExportedEntriesOnly();
        }
        return false;
    }

    public int hashCode() {
        return this.getJavaProject().hashCode();
    }

    public void setExportedEntriesOnly(boolean exportedOnly) {
        this.fExportedEntriesOnly = exportedOnly;
    }

    public boolean isExportedEntriesOnly() {
        return this.fExportedEntriesOnly;
    }
}

