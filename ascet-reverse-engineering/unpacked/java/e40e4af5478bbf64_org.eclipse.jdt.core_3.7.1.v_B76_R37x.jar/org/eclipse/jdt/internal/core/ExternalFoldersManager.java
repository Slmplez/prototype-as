/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.jdt.internal.core;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.DeltaProcessingState;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class ExternalFoldersManager {
    private static final String EXTERNAL_PROJECT_NAME = ".org.eclipse.jdt.core.external.folders";
    private static final String LINKED_FOLDER_NAME = ".link";
    private Map folders;
    private Set pendingFolders;
    private int counter = 0;
    private static ExternalFoldersManager MANAGER = new ExternalFoldersManager();

    private ExternalFoldersManager() {
    }

    public static ExternalFoldersManager getExternalFoldersManager() {
        return MANAGER;
    }

    public static HashSet getExternalFolders(IClasspathEntry[] classpath) {
        if (classpath == null) {
            return null;
        }
        HashSet<IPath> folders = null;
        int i = 0;
        while (i < classpath.length) {
            IClasspathEntry entry = classpath[i];
            if (entry.getEntryKind() == 1) {
                IPath attachmentPath;
                IPath entryPath = entry.getPath();
                if (ExternalFoldersManager.isExternalFolderPath(entryPath)) {
                    if (folders == null) {
                        folders = new HashSet<IPath>();
                    }
                    folders.add(entryPath);
                }
                if (ExternalFoldersManager.isExternalFolderPath(attachmentPath = entry.getSourceAttachmentPath())) {
                    if (folders == null) {
                        folders = new HashSet();
                    }
                    folders.add(attachmentPath);
                }
            }
            ++i;
        }
        return folders;
    }

    public static boolean isExternalFolderPath(IPath externalPath) {
        if (externalPath == null) {
            return false;
        }
        String firstSegment = externalPath.segment(0);
        if (firstSegment != null && ResourcesPlugin.getWorkspace().getRoot().getProject(firstSegment).exists()) {
            return false;
        }
        File externalFolder = externalPath.toFile();
        if (externalFolder.isFile()) {
            return false;
        }
        return externalPath.getFileExtension() == null || externalFolder.exists();
    }

    public static boolean isInternalPathForExternalFolder(IPath resourcePath) {
        return EXTERNAL_PROJECT_NAME.equals(resourcePath.segment(0));
    }

    public IFolder addFolder(IPath externalFolderPath, boolean scheduleForCreation) {
        return this.addFolder(externalFolderPath, this.getExternalFoldersProject(), scheduleForCreation);
    }

    private IFolder addFolder(IPath externalFolderPath, IProject externalFoldersProject, boolean scheduleForCreation) {
        IFolder result;
        Map knownFolders = this.getFolders();
        Object existing = knownFolders.get(externalFolderPath);
        if (existing != null) {
            return (IFolder)existing;
        }
        while ((result = externalFoldersProject.getFolder(LINKED_FOLDER_NAME + this.counter++)).exists()) {
        }
        if (scheduleForCreation) {
            if (this.pendingFolders == null) {
                this.pendingFolders = new HashSet();
            }
            this.pendingFolders.add(externalFolderPath);
        }
        knownFolders.put(externalFolderPath, result);
        return result;
    }

    public boolean removePendingFolder(Object externalPath) {
        if (this.pendingFolders == null) {
            return false;
        }
        return this.pendingFolders.remove(externalPath);
    }

    public IFolder createLinkFolder(IPath externalFolderPath, boolean refreshIfExistAlready, IProgressMonitor monitor) throws CoreException {
        IProject externalFoldersProject = this.createExternalFoldersProject(monitor);
        return this.createLinkFolder(externalFolderPath, refreshIfExistAlready, externalFoldersProject, monitor);
    }

    private IFolder createLinkFolder(IPath externalFolderPath, boolean refreshIfExistAlready, IProject externalFoldersProject, IProgressMonitor monitor) throws CoreException {
        IFolder result = this.addFolder(externalFolderPath, externalFoldersProject, false);
        if (!result.exists()) {
            result.createLink(externalFolderPath, 16, monitor);
        } else if (refreshIfExistAlready) {
            result.refreshLocal(2, monitor);
        }
        return result;
    }

    public void createPendingFolders(IProgressMonitor monitor) throws JavaModelException {
        if (this.pendingFolders == null || this.pendingFolders.isEmpty()) {
            return;
        }
        IProject externalFoldersProject = null;
        try {
            externalFoldersProject = this.createExternalFoldersProject(monitor);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
        Iterator iterator = this.pendingFolders.iterator();
        while (iterator.hasNext()) {
            Object folderPath = iterator.next();
            try {
                this.createLinkFolder((IPath)folderPath, false, externalFoldersProject, monitor);
            }
            catch (CoreException e) {
                Util.log(e, "Error while creating a link for external folder :" + folderPath);
            }
        }
        this.pendingFolders.clear();
    }

    public void cleanUp(IProgressMonitor monitor) throws CoreException {
        ArrayList toDelete = this.getFoldersToCleanUp(monitor);
        if (toDelete == null) {
            return;
        }
        Iterator iterator = toDelete.iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = (Map.Entry)iterator.next();
            IFolder folder = (IFolder)entry.getValue();
            folder.delete(true, monitor);
            IPath key = (IPath)entry.getKey();
            this.folders.remove(key);
        }
        IProject project = this.getExternalFoldersProject();
        if (project.isAccessible() && project.members().length == 1) {
            project.delete(true, monitor);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private ArrayList getFoldersToCleanUp(IProgressMonitor monitor) throws CoreException {
        DeltaProcessingState state = JavaModelManager.getDeltaState();
        HashMap roots = state.roots;
        HashMap sourceAttachments = state.sourceAttachments;
        if (roots == null && sourceAttachments == null) {
            return null;
        }
        Map knownFolders = this.getFolders();
        ArrayList result = null;
        Map map = knownFolders;
        synchronized (map) {
            Iterator iterator = knownFolders.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                IPath path = (IPath)entry.getKey();
                if (roots == null || roots.containsKey(path) || sourceAttachments == null || sourceAttachments.containsKey(path) || entry.getValue() == null) continue;
                if (result == null) {
                    result = new ArrayList();
                }
                result.add(entry);
            }
        }
        return result;
    }

    public IProject getExternalFoldersProject() {
        return ResourcesPlugin.getWorkspace().getRoot().getProject(EXTERNAL_PROJECT_NAME);
    }

    public IProject createExternalFoldersProject(IProgressMonitor monitor) throws CoreException {
        IProject project = this.getExternalFoldersProject();
        if (!project.isAccessible()) {
            if (!project.exists()) {
                this.createExternalFoldersProject(project, monitor);
            }
            this.openExternalFoldersProject(project, monitor);
        }
        return project;
    }

    private void openExternalFoldersProject(IProject project, IProgressMonitor monitor) throws CoreException {
        try {
            project.open(monitor);
        }
        catch (CoreException e1) {
            if (e1.getStatus().getCode() == 567) {
                project.delete(false, true, monitor);
                this.createExternalFoldersProject(project, monitor);
            } else {
                IPath stateLocation = JavaCore.getPlugin().getStateLocation();
                IPath projectPath = stateLocation.append(EXTERNAL_PROJECT_NAME);
                projectPath.toFile().mkdirs();
                try {
                    FileOutputStream output = new FileOutputStream(projectPath.append(".project").toOSString());
                    try {
                        output.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<projectDescription>\n\t<name>.org.eclipse.jdt.core.external.folders</name>\n\t<comment></comment>\n\t<projects>\n\t</projects>\n\t<buildSpec>\n\t</buildSpec>\n\t<natures>\n\t</natures>\n</projectDescription>".getBytes());
                    }
                    finally {
                        output.close();
                    }
                }
                catch (IOException iOException) {
                    project.delete(false, true, monitor);
                    this.createExternalFoldersProject(project, monitor);
                }
            }
            project.open(monitor);
        }
    }

    private void createExternalFoldersProject(IProject project, IProgressMonitor monitor) throws CoreException {
        IProjectDescription desc = project.getWorkspace().newProjectDescription(project.getName());
        IPath stateLocation = JavaCore.getPlugin().getStateLocation();
        desc.setLocation(stateLocation.append(EXTERNAL_PROJECT_NAME));
        project.create(desc, 4096, monitor);
    }

    public IFolder getFolder(IPath externalFolderPath) {
        return (IFolder)this.getFolders().get(externalFolderPath);
    }

    private Map getFolders() {
        if (this.folders == null) {
            HashMap<IPath, IResource> tempFolders = new HashMap<IPath, IResource>();
            IProject project = this.getExternalFoldersProject();
            try {
                if (!project.isAccessible()) {
                    if (project.exists()) {
                        this.openExternalFoldersProject(project, null);
                    } else {
                        this.folders = Collections.synchronizedMap(tempFolders);
                        return this.folders;
                    }
                }
                IResource[] members = project.members();
                int i = 0;
                int length = members.length;
                while (i < length) {
                    IResource member = members[i];
                    if (member.getType() == 2 && member.isLinked() && member.getName().startsWith(LINKED_FOLDER_NAME)) {
                        IPath externalFolderPath = member.getLocation();
                        tempFolders.put(externalFolderPath, member);
                    }
                    ++i;
                }
            }
            catch (CoreException e) {
                Util.log(e, "Exception while initializing external folders");
            }
            this.folders = Collections.synchronizedMap(tempFolders);
        }
        return this.folders;
    }

    private void runRefreshJob(Collection paths) {
        Job[] jobs = Job.getJobManager().find(ResourcesPlugin.FAMILY_MANUAL_REFRESH);
        RefreshJob refreshJob = null;
        if (jobs != null) {
            int index = 0;
            while (index < jobs.length) {
                if (jobs[index] instanceof RefreshJob) {
                    refreshJob = (RefreshJob)jobs[index];
                    refreshJob.addFoldersToRefresh(paths);
                    if (refreshJob.getState() != 0) break;
                    refreshJob.schedule();
                    break;
                }
                ++index;
            }
        }
        if (refreshJob == null) {
            refreshJob = new RefreshJob(new Vector(paths));
            refreshJob.schedule();
        }
    }

    public void refreshReferences(IProject[] sourceProjects, IProgressMonitor monitor) {
        IProject externalProject = this.getExternalFoldersProject();
        try {
            HashSet externalFolders = null;
            int index = 0;
            while (index < sourceProjects.length) {
                HashSet foldersInProject;
                if (!sourceProjects[index].equals((Object)externalProject) && JavaProject.hasJavaNature(sourceProjects[index]) && (foldersInProject = ExternalFoldersManager.getExternalFolders(((JavaProject)JavaCore.create(sourceProjects[index])).getResolvedClasspath())) != null && foldersInProject.size() != 0) {
                    if (externalFolders == null) {
                        externalFolders = new HashSet();
                    }
                    externalFolders.addAll(foldersInProject);
                }
                ++index;
            }
            if (externalFolders == null) {
                return;
            }
            this.runRefreshJob(externalFolders);
        }
        catch (CoreException e) {
            Util.log(e, "Exception while refreshing external project");
        }
    }

    public void refreshReferences(IProject source, IProgressMonitor monitor) {
        IProject externalProject = this.getExternalFoldersProject();
        if (source.equals((Object)externalProject)) {
            return;
        }
        if (!JavaProject.hasJavaNature(source)) {
            return;
        }
        try {
            HashSet externalFolders = ExternalFoldersManager.getExternalFolders(((JavaProject)JavaCore.create(source)).getResolvedClasspath());
            if (externalFolders == null) {
                return;
            }
            this.runRefreshJob(externalFolders);
        }
        catch (CoreException e) {
            Util.log(e, "Exception while refreshing external project");
        }
    }

    public IFolder removeFolder(IPath externalFolderPath) {
        return (IFolder)this.getFolders().remove(externalFolderPath);
    }

    class RefreshJob
    extends Job {
        Vector externalFolders = null;

        RefreshJob(Vector externalFolders) {
            super(Messages.refreshing_external_folders);
            this.externalFolders = externalFolders;
        }

        public boolean belongsTo(Object family) {
            return family == ResourcesPlugin.FAMILY_MANUAL_REFRESH;
        }

        public void addFoldersToRefresh(Collection paths) {
            if (!paths.isEmpty() && this.externalFolders == null) {
                this.externalFolders = new Vector();
            }
            Iterator it = paths.iterator();
            while (it.hasNext()) {
                Object path = it.next();
                if (this.externalFolders.contains(path)) continue;
                this.externalFolders.add(path);
            }
        }

        protected IStatus run(IProgressMonitor pm) {
            try {
                if (this.externalFolders == null) {
                    return Status.OK_STATUS;
                }
                IPath externalPath = null;
                int index = 0;
                while (index < this.externalFolders.size()) {
                    IFolder folder;
                    externalPath = (IPath)this.externalFolders.get(index);
                    if (externalPath != null && (folder = ExternalFoldersManager.this.getFolder(externalPath)) != null) {
                        folder.refreshLocal(2, pm);
                    }
                    this.externalFolders.setElementAt(null, index);
                    ++index;
                }
            }
            catch (CoreException e) {
                return e.getStatus();
            }
            return Status.OK_STATUS;
        }
    }
}

