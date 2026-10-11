/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.resources.ResourceException
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceRuleFactory
 *  org.eclipse.core.resources.IResourceVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.MultiRule
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleException
 */
package org.eclipse.sphinx.platform.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Dictionary;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceRuleFactory;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.MultiRule;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.IExtendedPlatformConstants;
import org.eclipse.sphinx.platform.internal.Activator;
import org.eclipse.sphinx.platform.internal.messages.Messages;
import org.eclipse.sphinx.platform.resources.AbstractResourceVisitor;
import org.eclipse.sphinx.platform.resources.MarkerJob;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.StatusUtil;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ExtendedPlatform {
    public static final int LIMIT_INDIVIDUAL_RESOURCES_SCHEDULING_RULE = 500;
    public static final boolean IS_ECLIPSE_RUNNING;
    public static final boolean IS_RESOURCES_BUNDLE_AVAILABLE;
    private static final String NO_CONTENT_TYPE_ID = "org.eclipse.sphinx.platform.noContentTypeId";

    static {
        boolean result = false;
        try {
            result = Platform.isRunning();
        }
        catch (Throwable throwable) {}
        IS_ECLIPSE_RUNNING = result;
        IS_RESOURCES_BUNDLE_AVAILABLE = ExtendedPlatform.isBundleAvailable("org.eclipse.core.resources");
    }

    private ExtendedPlatform() {
    }

    public static String getFeatureVersion() {
        Bundle bundle = Platform.getBundle((String)"org.eclipse.core.runtime");
        if (bundle != null) {
            Dictionary headers = bundle.getHeaders();
            String version = (String)headers.get("Bundle-Version");
            return version.substring(0, 3);
        }
        return "";
    }

    public static int getFeatureVersionOrdinal() {
        String version = ExtendedPlatform.getFeatureVersion();
        return Integer.parseInt(version.replaceAll("\\.", ""));
    }

    public static boolean isBundleAvailable(String pluginId) {
        if (IS_ECLIPSE_RUNNING) {
            try {
                Bundle resourcesBundle = Platform.getBundle((String)pluginId);
                return resourcesBundle != null && (resourcesBundle.getState() & 0x2C) != 0;
            }
            catch (Throwable throwable) {}
        }
        return false;
    }

    public static Bundle loadBundle(String symbolicName) {
        Bundle bundle = Platform.getBundle((String)symbolicName);
        if (bundle != null) {
            try {
                if (bundle.getState() != 32 && bundle.getState() != 8) {
                    bundle.start(1);
                }
            }
            catch (BundleException ex) {
                PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
                return null;
            }
        }
        return bundle;
    }

    public static final Bundle loadContributorBundle(IConfigurationElement contribution) {
        Assert.isNotNull((Object)contribution);
        String symbolicName = contribution.getContributor().getName();
        return ExtendedPlatform.loadBundle(symbolicName);
    }

    public static ISchedulingRule createModifySchedulingRule(IResource resource) {
        if (resource != null) {
            IResourceRuleFactory ruleFactory = resource.getWorkspace().getRuleFactory();
            return ruleFactory.modifyRule(resource);
        }
        return null;
    }

    public static ISchedulingRule createModifySchedulingRule(Collection<IFile> files) {
        if (files != null) {
            if (files.size() < 500) {
                HashSet<ISchedulingRule> rules = new HashSet<ISchedulingRule>();
                for (IFile file : files) {
                    ISchedulingRule rule = ExtendedPlatform.createModifySchedulingRule((IResource)file);
                    if (rule == null) continue;
                    rules.add(rule);
                }
                return MultiRule.combine((ISchedulingRule[])rules.toArray(new ISchedulingRule[rules.size()]));
            }
            return ResourcesPlugin.getWorkspace().getRoot();
        }
        return null;
    }

    public static ISchedulingRule createCreateSchedulingRule(IResource resource) {
        if (resource != null) {
            IResourceRuleFactory ruleFactory = resource.getWorkspace().getRuleFactory();
            return ruleFactory.createRule(resource);
        }
        return null;
    }

    public static ISchedulingRule createSaveNewSchedulingRule(IResource resource) {
        if (resource != null) {
            IProject project = resource.getProject();
            IResourceRuleFactory ruleFactory = resource.getWorkspace().getRuleFactory();
            return MultiRule.combine((ISchedulingRule[])new ISchedulingRule[]{ruleFactory.modifyRule((IResource)project), ruleFactory.refreshRule((IResource)project)});
        }
        return null;
    }

    public static ISchedulingRule createSaveNewSchedulingRule(IPath filePath) {
        if (filePath != null) {
            IFile file = ResourcesPlugin.getWorkspace().getRoot().getFile(filePath);
            return ExtendedPlatform.createSaveNewSchedulingRule((IResource)file);
        }
        return null;
    }

    public static ISchedulingRule createSaveNewSchedulingRule(Collection<IPath> filePaths) {
        if (filePaths != null) {
            if (filePaths.size() < 500) {
                HashSet<ISchedulingRule> rules = new HashSet<ISchedulingRule>();
                for (IPath path : filePaths) {
                    ISchedulingRule rule = ExtendedPlatform.createSaveNewSchedulingRule(path);
                    if (rule == null) continue;
                    rules.add(rule);
                }
                return MultiRule.combine((ISchedulingRule[])rules.toArray(new ISchedulingRule[rules.size()]));
            }
            return ResourcesPlugin.getWorkspace().getRoot();
        }
        return null;
    }

    public static ISchedulingRule createSaveSchedulingRule(IResource resource) {
        if (resource != null) {
            IResourceRuleFactory ruleFactory = resource.getWorkspace().getRuleFactory();
            return MultiRule.combine((ISchedulingRule[])new ISchedulingRule[]{ruleFactory.modifyRule(resource), ruleFactory.refreshRule(resource)});
        }
        return null;
    }

    public static boolean isProjectDescriptionFile(IResource resource) {
        if (resource instanceof IFile) {
            IPath path = resource.getFullPath();
            return path.segmentCount() == 2 && ".project".equals(path.lastSegment());
        }
        return false;
    }

    public static boolean isProjectPropertiesFolder(IResource resource) {
        if (resource instanceof IFolder) {
            IPath path = resource.getFullPath();
            return path.segmentCount() == 2 && ".settings".equals(path.lastSegment());
        }
        return false;
    }

    public static boolean isProjectPropertiesFile(IResource resource) {
        if (resource instanceof IFile) {
            return ExtendedPlatform.isProjectPropertiesFolder((IResource)resource.getParent()) && "prefs".equals(resource.getFileExtension());
        }
        return false;
    }

    public static boolean isTeamPrivateResource(IResource resource) {
        return ExtendedPlatform.isTeamPrivateResource(resource, 0);
    }

    public static boolean isTeamPrivateResource(IResource resource, int options) {
        if (resource != null) {
            if (resource.isTeamPrivateMember()) {
                return true;
            }
            if (resource.getName().contains(".svn")) {
                return true;
            }
            if ((options & 0x200) != 0) {
                return ExtendedPlatform.isTeamPrivateResource((IResource)resource.getParent(), options);
            }
        }
        return false;
    }

    public static boolean isPlatformPrivateResource(IResource resource) {
        if (ExtendedPlatform.isTeamPrivateResource(resource)) {
            return true;
        }
        if (ExtendedPlatform.isProjectDescriptionFile(resource)) {
            return true;
        }
        return ExtendedPlatform.isProjectPropertiesFolder(resource) || ExtendedPlatform.isProjectPropertiesFile(resource);
    }

    public static final Collection<IFile> getAllFiles(IFolder folder) {
        final ArrayList<IFile> files = new ArrayList<IFile>();
        try {
            folder.accept((IResourceVisitor)new AbstractResourceVisitor(){

                public boolean doVisit(IResource resource) throws CoreException {
                    IFile file;
                    if (resource instanceof IFile && (file = (IFile)resource).isAccessible()) {
                        files.add(file);
                    }
                    return true;
                }
            });
        }
        catch (CoreException ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
        }
        return files;
    }

    private static void collectAllFiles(IProject project, IResource[] members, final List<IFile> files, Collection<IProject> visitedProjects, boolean deeply) {
        Assert.isNotNull((Object)project);
        Assert.isNotNull((Object)members);
        Assert.isNotNull(files);
        Assert.isNotNull(visitedProjects);
        visitedProjects.add(project);
        IResource[] iResourceArray = members;
        int n = members.length;
        int n2 = 0;
        while (n2 < n) {
            IResource resource = iResourceArray[n2];
            try {
                resource.accept((IResourceVisitor)new AbstractResourceVisitor(){

                    public boolean doVisit(IResource resource) throws CoreException {
                        IFile file;
                        if (resource instanceof IFile && (file = (IFile)resource).isAccessible()) {
                            files.add(file);
                        }
                        return true;
                    }
                });
            }
            catch (CoreException ex) {
                PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
            }
            ++n2;
        }
        if (deeply) {
            iResourceArray = ExtendedPlatform.getReferencedProjectsSafely(project);
            n = iResourceArray.length;
            n2 = 0;
            while (n2 < n) {
                IResource referencedProject = iResourceArray[n2];
                if (project.isAccessible() && referencedProject.isAccessible() && !visitedProjects.contains(referencedProject)) {
                    ExtendedPlatform.collectAllFiles((IProject)referencedProject, ExtendedPlatform.getMembersSafely((IContainer)referencedProject), files, visitedProjects, deeply);
                }
                ++n2;
            }
        }
    }

    public static final Collection<IFile> getAllFiles(IProject project, boolean deeply) {
        ArrayList<IFile> files = new ArrayList<IFile>();
        ExtendedPlatform.collectAllFiles(project, ExtendedPlatform.getMembersSafely((IContainer)project), files, new HashSet<IProject>(), deeply);
        return files;
    }

    public static final IResource[] getMembersSafely(IContainer container) {
        Assert.isNotNull((Object)container);
        try {
            if (container.isAccessible()) {
                ArrayList<IResource> members = new ArrayList<IResource>();
                IResource[] iResourceArray = container.members();
                int n = iResourceArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IResource member = iResourceArray[n2];
                    if (!ExtendedPlatform.isPlatformPrivateResource(member)) {
                        members.add(member);
                    }
                    ++n2;
                }
                return members.toArray(new IResource[members.size()]);
            }
        }
        catch (CoreException ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
        }
        return new IResource[0];
    }

    public static IProject[] getReferencedProjectsSafely(IProject project) {
        Assert.isNotNull((Object)project);
        IProject[] referencedProjects = new IProject[]{};
        try {
            if (project.isAccessible()) {
                referencedProjects = project.getReferencedProjects();
            }
        }
        catch (CoreException ex) {
            PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
        }
        return referencedProjects;
    }

    public static IProject[] getReferencingProjectsSafely(IProject project) {
        Assert.isNotNull((Object)project);
        return project.getReferencingProjects();
    }

    private static void collectProjectsInGroup(IProject project, boolean includeReferencingProjects, Set<IProject> projectGroup) {
        if (projectGroup.add(project)) {
            IProject p;
            IProject[] iProjectArray = ExtendedPlatform.getReferencedProjectsSafely(project);
            int n = iProjectArray.length;
            int n2 = 0;
            while (n2 < n) {
                p = iProjectArray[n2];
                ExtendedPlatform.collectProjectsInGroup(p, includeReferencingProjects, projectGroup);
                ++n2;
            }
            if (includeReferencingProjects) {
                iProjectArray = ExtendedPlatform.getReferencingProjectsSafely(project);
                n = iProjectArray.length;
                n2 = 0;
                while (n2 < n) {
                    p = iProjectArray[n2];
                    ExtendedPlatform.collectProjectsInGroup(p, includeReferencingProjects, projectGroup);
                    ++n2;
                }
            }
        }
    }

    public static Set<IProject> getProjectGroup(IProject project, boolean includeReferencingProjects) {
        Assert.isNotNull((Object)project);
        HashSet<IProject> projectGroup = new HashSet<IProject>();
        ExtendedPlatform.collectProjectsInGroup(project, includeReferencingProjects, projectGroup);
        return projectGroup;
    }

    private static void collectReferencedProjects(IProject project, Set<IProject> allReferencedProjects) {
        if (project.isAccessible() && allReferencedProjects.add(project)) {
            try {
                IProject[] iProjectArray = project.getReferencedProjects();
                int n = iProjectArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IProject p = iProjectArray[n2];
                    ExtendedPlatform.collectReferencedProjects(p, allReferencedProjects);
                    ++n2;
                }
            }
            catch (CoreException ex) {
                PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
            }
        }
    }

    public static Collection<IProject> getAllReferencedProjects(IProject project) {
        Assert.isNotNull((Object)project);
        HashSet<IProject> referencedProjects = new HashSet<IProject>();
        ExtendedPlatform.collectReferencedProjects(project, referencedProjects);
        referencedProjects.remove(project);
        return referencedProjects;
    }

    private static void collectReferencingProjects(IProject project, Set<IProject> allReferencingProjects) {
        if (project.isAccessible() && allReferencingProjects.add(project)) {
            IProject[] iProjectArray = project.getReferencingProjects();
            int n = iProjectArray.length;
            int n2 = 0;
            while (n2 < n) {
                IProject p = iProjectArray[n2];
                ExtendedPlatform.collectReferencingProjects(p, allReferencingProjects);
                ++n2;
            }
        }
    }

    public static Collection<IProject> getAllReferencingProjects(IProject project) {
        Assert.isNotNull((Object)project);
        HashSet<IProject> referencingProjects = new HashSet<IProject>();
        ExtendedPlatform.collectReferencingProjects(project, referencingProjects);
        referencingProjects.remove(project);
        return referencingProjects;
    }

    public static boolean isRootProject(IProject project) {
        return project.getReferencingProjects().length == 0;
    }

    public static IProject getFirstRootProject(IProject project) {
        Assert.isNotNull((Object)project);
        if (project.isAccessible()) {
            ArrayList<IProject> rootProjects = new ArrayList<IProject>();
            ExtendedPlatform.collectRootProjects(new HashSet<IProject>(), rootProjects, project);
            if (!rootProjects.isEmpty()) {
                return (IProject)rootProjects.get(0);
            }
        }
        return null;
    }

    private static void collectRootProjects(Collection<IProject> visitedProjects, Collection<IProject> rootProjects, IProject project) {
        if (!project.isOpen()) {
            return;
        }
        if (visitedProjects.contains(project)) {
            rootProjects.add(project);
        } else {
            visitedProjects.add(project);
            IProject[] referencingProjects = project.getReferencingProjects();
            if (referencingProjects.length == 0) {
                rootProjects.add(project);
            } else {
                IProject[] iProjectArray = referencingProjects;
                int n = referencingProjects.length;
                int n2 = 0;
                while (n2 < n) {
                    IProject referencingProject = iProjectArray[n2];
                    ExtendedPlatform.collectRootProjects(visitedProjects, rootProjects, referencingProject);
                    ++n2;
                }
            }
        }
    }

    public static Collection<IProject> getRootProjects() {
        HashSet<IProject> rootProjects = new HashSet<IProject>();
        IProject[] iProjectArray = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int n = iProjectArray.length;
        int n2 = 0;
        while (n2 < n) {
            IProject project = iProjectArray[n2];
            if (!rootProjects.contains(project)) {
                ExtendedPlatform.collectRootProjects(new HashSet<IProject>(), rootProjects, project);
            }
            ++n2;
        }
        return rootProjects;
    }

    public static Collection<IProject> getProjects(String natureId) {
        ArrayList<IProject> projects = new ArrayList<IProject>();
        IProject[] iProjectArray = ResourcesPlugin.getWorkspace().getRoot().getProjects();
        int n = iProjectArray.length;
        int n2 = 0;
        while (n2 < n) {
            IProject project = iProjectArray[n2];
            if (project.isAccessible()) {
                try {
                    if (project.hasNature(natureId)) {
                        projects.add(project);
                    }
                }
                catch (CoreException coreException) {}
            }
            ++n2;
        }
        return projects;
    }

    public static String createUniqueFileName(IPath containerFullPath, String candidateFileName) {
        Assert.isNotNull((Object)containerFullPath);
        if (candidateFileName == null || candidateFileName.trim().length() == 0) {
            candidateFileName = "default";
        }
        IPath candidateFilePath = containerFullPath.append(candidateFileName);
        String candidateFileBaseName = candidateFilePath.removeFileExtension().lastSegment();
        String extension = candidateFilePath.getFileExtension();
        int i = 1;
        while (ResourcesPlugin.getWorkspace().getRoot().exists(candidateFilePath)) {
            candidateFilePath = containerFullPath.append(String.valueOf(candidateFileBaseName) + i);
            if (extension != null) {
                candidateFilePath = candidateFilePath.addFileExtension(extension);
            }
            ++i;
        }
        return candidateFilePath.lastSegment();
    }

    public static IPath createUniquePath(IPath candidatePath, Collection<IPath> allocatedPaths) {
        Assert.isNotNull((Object)candidatePath);
        Assert.isNotNull(allocatedPaths);
        IPath parentPath = candidatePath.removeLastSegments(1);
        String candidateLastSegmentName = candidatePath.removeFileExtension().lastSegment();
        String extension = candidatePath.getFileExtension();
        int i = 1;
        while (allocatedPaths.contains(candidatePath)) {
            candidatePath = parentPath.append(String.valueOf(candidateLastSegmentName) + i);
            if (extension != null) {
                candidatePath = candidatePath.addFileExtension(extension);
            }
            ++i;
        }
        return candidatePath;
    }

    public static String getContentTypeId(IFile file) throws CoreException {
        if (ExtendedPlatform.hasCachedContentTypeId(file)) {
            return ExtendedPlatform.getCachedContentTypeId(file);
        }
        String contentTypeId = ExtendedPlatform.nativeGetContentTypeId(file);
        ExtendedPlatform.setCachedContentTypeId(file, contentTypeId);
        return contentTypeId;
    }

    public static String getContentTypeId(File file) throws IOException {
        block8: {
            Assert.isNotNull((Object)file);
            FileInputStream inputStream = null;
            try {
                if (file.exists()) {
                    IContentType contentType;
                    inputStream = new FileInputStream(file);
                    IContentDescription description = Platform.getContentTypeManager().getDescriptionFor((InputStream)inputStream, file.getPath(), null);
                    if (description != null && (contentType = description.getContentType()) != null) {
                        String string = contentType.getId();
                        ExtendedPlatform.safeClose(inputStream);
                        return string;
                    }
                }
            }
            catch (FileNotFoundException fileNotFoundException) {
                break block8;
            }
            finally {
                ExtendedPlatform.safeClose(inputStream);
            }
            ExtendedPlatform.safeClose(inputStream);
        }
        return null;
    }

    private static String nativeGetContentTypeId(IFile file) throws CoreException {
        if (file != null && file.isAccessible()) {
            IContentType contentType;
            IContentDescription contentDescription = null;
            try {
                contentDescription = file.getContentDescription();
            }
            catch (ResourceException rex) {
                if (!file.isSynchronized(0)) {
                    try {
                        file.refreshLocal(0, (IProgressMonitor)new NullProgressMonitor());
                    }
                    catch (Exception exception) {}
                    contentDescription = file.getContentDescription();
                }
                throw rex;
            }
            if (contentDescription != null && (contentType = contentDescription.getContentType()) != null) {
                return contentType.getId();
            }
        }
        return null;
    }

    public static boolean hasCachedContentTypeId(IFile file) {
        return ExtendedPlatform.internalGetCachedContentTypeId(file) != null;
    }

    private static String getCachedContentTypeId(IFile file) {
        String rawContentTypeId = ExtendedPlatform.internalGetCachedContentTypeId(file);
        if (rawContentTypeId == null) {
            return null;
        }
        if (rawContentTypeId.intern() != NO_CONTENT_TYPE_ID && rawContentTypeId.intern() != "org.eclipse.sphinx.platform.unspecifiedContentType") {
            return rawContentTypeId;
        }
        return null;
    }

    private static String internalGetCachedContentTypeId(IFile file) {
        if (file != null && file.isAccessible()) {
            QualifiedName key = ExtendedPlatform.toQualifedName("org.eclipse.sphinx.platform.resourceProperties.contentTypeId");
            Object sessionProperty = null;
            try {
                sessionProperty = file.getSessionProperty(key);
            }
            catch (Exception exception) {}
            if (sessionProperty instanceof String) {
                return (String)sessionProperty;
            }
            String persistentProperty = null;
            try {
                persistentProperty = file.getPersistentProperty(key);
            }
            catch (Exception exception) {}
            if (persistentProperty != null) {
                try {
                    file.setSessionProperty(key, (Object)persistentProperty);
                }
                catch (Exception exception) {}
                return persistentProperty;
            }
        }
        return null;
    }

    public static void setCachedContentTypeId(IFile file, String contentTypeId) {
        ExtendedPlatform.internalSetCachedContentTypeId(file, contentTypeId != null ? contentTypeId : NO_CONTENT_TYPE_ID);
    }

    private static void internalSetCachedContentTypeId(IFile file, String rawContentTypeId) {
        if (file != null && file.isAccessible()) {
            QualifiedName key = ExtendedPlatform.toQualifedName("org.eclipse.sphinx.platform.resourceProperties.contentTypeId");
            if (!ExtendedPlatform.isProjectDescriptionFile((IResource)file)) {
                try {
                    file.setSessionProperty(key, (Object)rawContentTypeId);
                }
                catch (Exception exception) {}
            }
        }
    }

    public static void persistContentTypeIdProperties(final IProject project, final boolean includeReferencedProjects, boolean async, IProgressMonitor monitor) {
        if (async) {
            Job job = new Job(Messages.job_persistingContentTypeIdProperties){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        ExtendedPlatform.runPersistContentTypeIdProperties(ExtendedPlatform.getAllFiles(project, includeReferencedProjects), monitor);
                        return Status.OK_STATUS;
                    }
                    catch (OperationCanceledException operationCanceledException) {
                        return Status.CANCEL_STATUS;
                    }
                }

                public boolean belongsTo(Object family) {
                    return IExtendedPlatformConstants.FAMILY_LONG_RUNNING.equals(family);
                }
            };
            job.setRule(ExtendedPlatform.createModifySchedulingRule((IResource)project));
            job.setPriority(40);
            job.setSystem(true);
            job.schedule();
        } else {
            try {
                ExtendedPlatform.runPersistContentTypeIdProperties(ExtendedPlatform.getAllFiles(project, includeReferencedProjects), monitor);
            }
            catch (OperationCanceledException operationCanceledException) {}
        }
    }

    public static void persistContentTypeIdProperties(final Collection<IFile> files, boolean async, IProgressMonitor monitor) {
        if (async) {
            Job job = new Job(Messages.job_persistingContentTypeIdProperties){

                protected IStatus run(IProgressMonitor monitor) {
                    try {
                        ExtendedPlatform.runPersistContentTypeIdProperties(files, monitor);
                        return Status.OK_STATUS;
                    }
                    catch (OperationCanceledException operationCanceledException) {
                        return Status.CANCEL_STATUS;
                    }
                    catch (Exception ex) {
                        return StatusUtil.createErrorStatus(Activator.getDefault(), (Object)ex);
                    }
                }

                public boolean belongsTo(Object family) {
                    return IExtendedPlatformConstants.FAMILY_LONG_RUNNING.equals(family);
                }
            };
            job.setRule(ExtendedPlatform.createModifySchedulingRule(files));
            job.setPriority(40);
            job.setSystem(true);
            job.schedule();
        } else {
            try {
                ExtendedPlatform.runPersistContentTypeIdProperties(files, monitor);
            }
            catch (OperationCanceledException operationCanceledException) {}
        }
    }

    private static void runPersistContentTypeIdProperties(Collection<IFile> files, IProgressMonitor monitor) throws OperationCanceledException {
        SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)files.size());
        if (progress.isCanceled()) {
            throw new OperationCanceledException();
        }
        QualifiedName key = ExtendedPlatform.toQualifedName("org.eclipse.sphinx.platform.resourceProperties.contentTypeId");
        for (IFile file : files) {
            block8: {
                progress.setTaskName(NLS.bind((String)Messages.task_persistingContentTypeIdPropertiesFor, (Object)file.getFullPath().toString()));
                try {
                    Object sessionProperty;
                    if (file == null || !file.isAccessible()) break block8;
                    String persistentProperty = null;
                    try {
                        persistentProperty = file.getPersistentProperty(key);
                    }
                    catch (CoreException coreException) {}
                    if (persistentProperty == null && (sessionProperty = file.getSessionProperty(key)) instanceof String) {
                        String contentTypeId = (String)sessionProperty;
                        file.setPersistentProperty(key, contentTypeId);
                    }
                }
                catch (ResourceException ex) {
                    PlatformLogUtil.logAsWarning(Activator.getDefault(), (Object)ex);
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError(Activator.getDefault(), (Object)ex);
                }
            }
            progress.worked(1);
            if (!progress.isCanceled()) continue;
            throw new OperationCanceledException();
        }
    }

    public static void removeCachedContentTypeId(IFile file) {
        try {
            if (file != null && file.isAccessible()) {
                QualifiedName key = ExtendedPlatform.toQualifedName("org.eclipse.sphinx.platform.resourceProperties.contentTypeId");
                if (file.getSessionProperty(key) != null) {
                    file.setSessionProperty(key, null);
                }
                if (file.getPersistentProperty(key) != null) {
                    file.setPersistentProperty(key, null);
                }
            }
        }
        catch (CoreException coreException) {}
    }

    public static Collection<String> getContentTypeFileExtensions(String contentTypeId) {
        IContentType contentType = Platform.getContentTypeManager().getContentType(contentTypeId);
        if (contentType != null) {
            return Arrays.asList(contentType.getFileSpecs(8));
        }
        return Collections.emptySet();
    }

    public static boolean isContentTypeApplicable(String contentTypeId, IFile file) {
        if (file == null) {
            return false;
        }
        IContentType contentType = Platform.getContentTypeManager().getContentType(contentTypeId);
        if (contentType == null) {
            return false;
        }
        return contentType.isAssociatedWith(file.getName());
    }

    public static QualifiedName toQualifedName(String name) {
        int dot = name.lastIndexOf(46);
        QualifiedName key = dot != -1 ? new QualifiedName(name.substring(0, dot), name.substring(dot + 1)) : new QualifiedName(null, name);
        return key;
    }

    public static void addNature(IProject project, String natureId, IProgressMonitor monitor) throws CoreException {
        String[] previousNatures;
        Assert.isNotNull((Object)project);
        if (natureId == null || natureId.length() == 0) {
            return;
        }
        IProjectDescription description = project.getDescription();
        String[] stringArray = previousNatures = description.getNatureIds();
        int n = previousNatures.length;
        int n2 = 0;
        while (n2 < n) {
            String element = stringArray[n2];
            if (natureId.equals(element)) {
                return;
            }
            ++n2;
        }
        String[] newNatures = new String[previousNatures.length + 1];
        System.arraycopy(previousNatures, 0, newNatures, 0, previousNatures.length);
        newNatures[previousNatures.length] = natureId;
        description.setNatureIds(newNatures);
        project.setDescription(description, monitor);
    }

    public static void removeNature(IProject project, String natureId, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)project);
        IProjectDescription description = project.getDescription();
        String[] previousNatures = description.getNatureIds();
        ArrayList<String> newNatures = new ArrayList<String>(Arrays.asList(previousNatures));
        newNatures.remove(natureId);
        description.setNatureIds(newNatures.toArray(new String[newNatures.size()]));
        project.setDescription(description, monitor);
    }

    public static void safeClose(InputStream in) {
        try {
            if (in != null) {
                in.close();
            }
        }
        catch (IOException iOException) {}
    }

    public static void safeClose(OutputStream out) {
        try {
            if (out != null) {
                out.close();
            }
        }
        catch (IOException iOException) {}
    }

    public static final void performGarbageCollection() {
        Job job = new Job(Messages.job_performingGarbageCollection){

            protected IStatus run(IProgressMonitor monitor) {
                if (monitor.isCanceled()) {
                    return Status.CANCEL_STATUS;
                }
                SubMonitor progress = SubMonitor.convert((IProgressMonitor)monitor, (int)3);
                System.gc();
                progress.worked(1);
                System.gc();
                progress.worked(1);
                System.runFinalization();
                progress.worked(1);
                return Status.OK_STATUS;
            }
        };
        job.setPriority(20);
        job.setSystem(true);
        job.schedule();
    }

    public static boolean isSynchronized(IResource resource) {
        if (resource.isSynchronized(0)) {
            MarkerJob.INSTANCE.addDeleteMarkerTask(resource, "org.eclipse.sphinx.platform.resourcesyncproblemmarker");
            return true;
        }
        MarkerJob.INSTANCE.addCreateMarkerTask(resource, "org.eclipse.sphinx.platform.resourcesyncproblemmarker", 1, NLS.bind((String)Messages.warning_resourceIsOutOfSync, (Object)resource.getFullPath()));
        return false;
    }
}

