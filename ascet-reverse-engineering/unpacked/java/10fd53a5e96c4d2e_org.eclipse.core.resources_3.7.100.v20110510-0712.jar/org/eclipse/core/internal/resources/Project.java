/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IPluginDescriptor
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentTypeMatcher
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.TreeSet;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.resources.BuildConfiguration;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.internal.resources.Folder;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectInfo;
import org.eclipse.core.internal.resources.ProjectPreferences;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.ResourceTree;
import org.eclipse.core.internal.resources.WorkManager;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.resources.team.IMoveDeleteHook;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentTypeMatcher;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Project
extends Container
implements IProject {
    public static final int SNAPSHOT_SET_AUTOLOAD = 2;

    protected Project(IPath path, Workspace container) {
        super(path, container);
    }

    protected void assertCreateRequirements(IProjectDescription description) throws CoreException {
        String name;
        IFileStore store;
        IFileInfo localInfo;
        this.checkDoesNotExist();
        this.checkDescription(this, description, false);
        URI location = description.getLocationURI();
        if (location != null) {
            return;
        }
        if (!Workspace.caseSensitive && (localInfo = (store = this.getStore()).fetchInfo()).exists() && (name = this.getLocalManager().getLocalName(store)) != null && !store.getName().equals(name)) {
            String msg = NLS.bind((String)Messages.resources_existsLocalDifferentCase, (Object)new Path(store.toString()).removeLastSegments(1).append(name).toOSString());
            throw new ResourceException(275, this.getFullPath(), msg, null);
        }
    }

    protected MultiStatus basicSetDescription(ProjectDescription description, int updateFlags) {
        String message = Messages.resources_projectDesc;
        MultiStatus result = new MultiStatus("org.eclipse.core.resources", 568, message, null);
        ProjectDescription current = this.internalGetDescription();
        current.setComment(description.getComment());
        current.setSnapshotLocationURI(description.getSnapshotLocationURI());
        current.setBuildSpec(description.getBuildSpec(true));
        boolean flushOrder = false;
        Object[] oldReferences = current.getReferencedProjects();
        Object[] newReferences = description.getReferencedProjects();
        if (!Arrays.equals(oldReferences, newReferences)) {
            current.setReferencedProjects((IProject[])newReferences);
            flushOrder = true;
        }
        if (flushOrder |= current.updateDynamicState(description)) {
            this.workspace.flushBuildOrder();
        }
        if ((updateFlags & 0x40) == 0) {
            this.workspace.getNatureManager().configureNatures(this, current, description, result);
        } else {
            current.setNatureIds(description.getNatureIds(false));
        }
        return result;
    }

    @Override
    public void build(int trigger, IProgressMonitor monitor) throws CoreException {
        if (!this.isAccessible()) {
            return;
        }
        this.internalBuild(this.getActiveBuildConfig(), trigger, null, null, monitor);
    }

    @Override
    public void build(int trigger, String builderName, Map<String, String> args, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)builderName);
        if (!this.isAccessible()) {
            return;
        }
        this.internalBuild(this.getActiveBuildConfig(), trigger, builderName, args, monitor);
    }

    @Override
    public void build(IBuildConfiguration config, int trigger, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)config);
        if (!this.isAccessible() || !this.hasBuildConfig(config.getName())) {
            return;
        }
        this.internalBuild(config, trigger, null, null, monitor);
    }

    @Override
    public void checkAccessible(int flags) throws CoreException {
        super.checkAccessible(flags);
        if (!this.isOpen(flags)) {
            String message = NLS.bind((String)Messages.resources_mustBeOpen, (Object)this.getFullPath());
            throw new ResourceException(372, this.getFullPath(), message, null);
        }
    }

    protected void checkDescription(IProject project, IProjectDescription desc, boolean moving) throws CoreException {
        URI location = desc.getLocationURI();
        String message = Messages.resources_invalidProjDesc;
        MultiStatus status = new MultiStatus("org.eclipse.core.resources", 77, message, null);
        status.merge(this.workspace.validateName(desc.getName(), 4));
        if (moving) {
            URI sourceLocation = this.internalGetDescription().getLocationURI();
            if (sourceLocation == null || !sourceLocation.equals(location)) {
                status.merge(this.workspace.validateProjectLocationURI(project, location));
            }
        } else {
            status.merge(this.workspace.validateProjectLocationURI(project, location));
        }
        if (!status.isOK()) {
            throw new ResourceException((IStatus)status);
        }
    }

    @Override
    public void close(IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String msg = NLS.bind((String)Messages.resources_closing_1, (Object)this.getName());
            monitor.beginTask(msg, 100);
            ISchedulingRule rule = this.workspace.getRuleFactory().modifyRule(this);
            try {
                this.workspace.prepareOperation(rule, monitor);
                ResourceInfo info = this.getResourceInfo(false, false);
                int flags = this.getFlags(info);
                this.checkExists(flags, true);
                monitor.subTask(msg);
                if (!this.isOpen(flags)) {
                    return;
                }
                try {
                    this.workspace.beginOperation(true);
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(1, this));
                    this.workspace.flushBuildOrder();
                    IProgressMonitor sub = Policy.subMonitorFor(monitor, Policy.opWork / 2, 2);
                    IStatus saveStatus = this.workspace.getSaveManager().save(3, this, sub);
                    this.internalClose();
                    monitor.worked(Policy.opWork / 2);
                    if (saveStatus != null && !saveStatus.isOK()) {
                        throw new ResourceException(saveStatus);
                    }
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void copy(IPath destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        if (destination.segmentCount() == 1) {
            String projectName = destination.segment(0);
            IProjectDescription desc = this.getDescription();
            desc.setName(projectName);
            desc.setLocation(null);
            ((ProjectDescription)desc).setSnapshotLocationURI(null);
            this.internalCopy(desc, updateFlags, monitor);
        } else {
            this.checkCopyRequirements(destination, 4, updateFlags);
        }
    }

    @Override
    public void copy(IProjectDescription destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)destination);
        this.internalCopy(destination, updateFlags, monitor);
    }

    protected void copyMetaArea(IProject source, IProject destination, IProgressMonitor monitor) throws CoreException {
        IFileStore oldMetaArea = EFS.getFileSystem((String)"file").getStore(this.workspace.getMetaArea().locationFor(source));
        IFileStore newMetaArea = EFS.getFileSystem((String)"file").getStore(this.workspace.getMetaArea().locationFor(destination));
        oldMetaArea.copy(newMetaArea, 0, monitor);
    }

    @Override
    public void create(IProgressMonitor monitor) throws CoreException {
        this.create(null, monitor);
    }

    @Override
    public void create(IProjectDescription description, IProgressMonitor monitor) throws CoreException {
        this.create(description, 0, monitor);
    }

    @Override
    public void create(IProjectDescription description, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask(Messages.resources_create, 100);
            this.checkValidPath(this.path, 4, false);
            ISchedulingRule rule = this.workspace.getRuleFactory().createRule(this);
            try {
                try {
                    boolean hasSavedDescription;
                    this.workspace.prepareOperation(rule, monitor);
                    if (description == null) {
                        description = new ProjectDescription();
                        description.setName(this.getName());
                    }
                    this.assertCreateRequirements(description);
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(8, this));
                    this.workspace.beginOperation(true);
                    this.workspace.createResource((IResource)this, updateFlags);
                    this.workspace.getMetaArea().create(this);
                    ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, true);
                    ProjectDescription desc = (ProjectDescription)((ProjectDescription)description).clone();
                    desc.setLocationURI(FileUtil.canonicalURI(description.getLocationURI()));
                    desc.setName(this.getName());
                    this.internalSetDescription(desc, false);
                    boolean hasContent = hasSavedDescription = this.getLocalManager().hasSavedDescription(this);
                    if (!hasSavedDescription) {
                        hasContent = this.getLocalManager().hasSavedContent(this);
                    }
                    try {
                        if (hasSavedDescription) {
                            this.updateDescription();
                            this.workspace.getMetaArea().writePrivateDescription(this);
                        } else {
                            this.writeDescription(1);
                        }
                    }
                    catch (CoreException e) {
                        this.workspace.deleteResource(this);
                        throw e;
                    }
                    info.clearModificationStamp();
                    if (hasContent) {
                        info.set(0x100000);
                    }
                    this.workspace.getSaveManager().requestSnapshot();
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void delete(boolean deleteContent, boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.delete(updateFlags |= deleteContent ? 4 : 8, monitor);
    }

    @Override
    public void delete(boolean force, IProgressMonitor monitor) throws CoreException {
        int updateFlags = force ? 1 : 0;
        this.delete(updateFlags, monitor);
    }

    @Override
    public void deleteResource(boolean convertToPhantom, MultiStatus status) throws CoreException {
        super.deleteResource(convertToPhantom, status);
        this.workspace.getMetaArea().delete(this);
        this.clearHistory(null);
    }

    @Override
    protected void fixupAfterMoveSource() throws CoreException {
        this.workspace.deleteResource(this);
        ProjectPreferences.deleted(this);
    }

    @Override
    public IBuildConfiguration getActiveBuildConfig() throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        int flags = this.getFlags(info);
        this.checkAccessible(flags);
        return this.internalGetActiveBuildConfig();
    }

    @Override
    public IBuildConfiguration getBuildConfig(String configName) throws CoreException {
        if (configName == null) {
            return this.getActiveBuildConfig();
        }
        ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        IBuildConfiguration[] configs = this.internalGetBuildConfigs(false);
        int i = 0;
        while (i < configs.length) {
            if (configs[i].getName().equals(configName)) {
                return configs[i];
            }
            ++i;
        }
        throw new ResourceException(384, this.getFullPath(), null, null);
    }

    @Override
    public IBuildConfiguration[] getBuildConfigs() throws CoreException {
        ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        return this.internalGetBuildConfigs(true);
    }

    @Override
    public IContentTypeMatcher getContentTypeMatcher() throws CoreException {
        return this.workspace.getContentDescriptionManager().getContentTypeMatcher(this);
    }

    @Override
    public String getDefaultCharset(boolean checkImplicit) {
        if (!this.exists()) {
            return checkImplicit ? ResourcesPlugin.getEncoding() : null;
        }
        return this.workspace.getCharsetManager().getCharsetFor(this.getFullPath(), checkImplicit);
    }

    @Override
    public IProjectDescription getDescription() throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        ProjectDescription description = ((ProjectInfo)info).getDescription();
        if (description == null) {
            this.checkAccessible(-1);
        }
        return (IProjectDescription)description.clone();
    }

    @Override
    public IProjectNature getNature(String natureID) throws CoreException {
        ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        IProjectNature nature = info.getNature(natureID);
        if (nature == null) {
            if (!this.hasNature(natureID)) {
                return null;
            }
            nature = this.workspace.getNatureManager().createNature(this, natureID);
            info.setNature(natureID, nature);
        }
        return nature;
    }

    @Override
    public IContainer getParent() {
        return this.workspace.getRoot();
    }

    @Override
    public IPath getPluginWorkingLocation(IPluginDescriptor plugin) {
        if (plugin == null) {
            return null;
        }
        return this.getWorkingLocation(plugin.getUniqueIdentifier());
    }

    @Override
    public IProject getProject() {
        return this;
    }

    @Override
    public IPath getProjectRelativePath() {
        return Path.EMPTY;
    }

    @Override
    public IPath getRawLocation() {
        ProjectDescription description = this.internalGetDescription();
        return description == null ? null : description.getLocation();
    }

    @Override
    public URI getRawLocationURI() {
        ProjectDescription description = this.internalGetDescription();
        return description == null ? null : description.getLocationURI();
    }

    @Override
    public IBuildConfiguration[] getReferencedBuildConfigs(String configName, boolean includeMissing) throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        ProjectDescription description = ((ProjectInfo)info).getDescription();
        if (description == null) {
            this.checkAccessible(-1);
        }
        if (!this.hasBuildConfig(configName)) {
            throw new ResourceException(384, this.getFullPath(), null, null);
        }
        return this.internalGetReferencedBuildConfigs(configName, includeMissing);
    }

    @Override
    public IProject[] getReferencedProjects() throws CoreException {
        ResourceInfo info = this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        ProjectDescription description = ((ProjectInfo)info).getDescription();
        if (description == null) {
            this.checkAccessible(-1);
        }
        return description.getAllReferences(true);
    }

    @Override
    public IProject[] getReferencingProjects() {
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        ArrayList<IProject> result = new ArrayList<IProject>(projects.length);
        int i = 0;
        while (i < projects.length) {
            ProjectDescription description;
            Project project = (Project)projects[i];
            if (project.isAccessible() && (description = project.internalGetDescription()) != null) {
                IProject[] references = description.getAllReferences(false);
                int j = 0;
                while (j < references.length) {
                    if (references[j].equals(this)) {
                        result.add(projects[i]);
                        break;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return result.toArray(new IProject[result.size()]);
    }

    @Override
    public int getType() {
        return 4;
    }

    @Override
    public IPath getWorkingLocation(String id) {
        if (id == null || !this.exists()) {
            return null;
        }
        IPath result = this.workspace.getMetaArea().getWorkingLocation(this, id);
        result.toFile().mkdirs();
        return result;
    }

    @Override
    public boolean hasBuildConfig(String configName) throws CoreException {
        ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, false);
        this.checkAccessible(this.getFlags(info));
        return this.internalHasBuildConfig(configName);
    }

    @Override
    public boolean hasNature(String natureID) throws CoreException {
        this.checkAccessible(this.getFlags(this.getResourceInfo(false, false)));
        ProjectDescription desc = this.internalGetDescription();
        if (desc == null) {
            this.checkAccessible(-1);
        }
        return desc.hasNature(natureID);
    }

    protected void internalBuild(final IBuildConfiguration config, final int trigger, final String builderName, final Map<String, String> args, IProgressMonitor monitor) throws CoreException {
        this.workspace.run(new IWorkspaceRunnable(){

            public void run(IProgressMonitor innerMonitor) throws CoreException {
                innerMonitor = Policy.monitorFor(innerMonitor);
                IWorkspaceRoot rule = Project.this.workspace.getRoot();
                try {
                    innerMonitor.beginTask("", 100);
                    try {
                        Project.this.workspace.prepareOperation(rule, innerMonitor);
                        if (!this.shouldBuild()) {
                            return;
                        }
                        Project.this.workspace.beginOperation(true);
                        Project.this.workspace.aboutToBuild(Project.this, trigger);
                    }
                    finally {
                        Project.this.workspace.endOperation(rule, false, innerMonitor);
                    }
                    ISchedulingRule buildRule = Project.this.workspace.getBuildManager().getRule(config, trigger, builderName, args);
                    try {
                        Project.this.workspace.prepareOperation(buildRule, innerMonitor);
                        Project.this.workspace.beginOperation(false);
                        IStatus result = Project.this.workspace.getBuildManager().build(config, trigger, builderName, args, Policy.subMonitorFor(innerMonitor, Policy.opWork));
                        if (!result.isOK()) {
                            throw new ResourceException(result);
                        }
                    }
                    finally {
                        Project.this.workspace.endOperation(buildRule, false, innerMonitor);
                        try {
                            Project.this.workspace.prepareOperation(rule, innerMonitor);
                            Project.this.workspace.beginOperation(false);
                            Project.this.workspace.broadcastBuildEvent(Project.this, 16, trigger);
                            if (Project.this.workspace.getElementTree().isImmutable()) {
                                Project.this.workspace.newWorkingTree();
                            }
                        }
                        finally {
                            Project.this.workspace.endOperation(rule, false, Policy.subMonitorFor(innerMonitor, Policy.endOpWork));
                        }
                    }
                }
                finally {
                    innerMonitor.done();
                }
            }

            private boolean shouldBuild() {
                ResourceInfo info = Project.this.getResourceInfo(false, false);
                int flags = Project.this.getFlags(info);
                return Project.this.exists(flags, true) && Project.this.isOpen(flags);
            }
        }, null, 1, monitor);
    }

    protected void internalClose() throws CoreException {
        this.workspace.flushBuildOrder();
        this.getMarkerManager().removeMarkers(this, 2);
        IResource[] members = this.members(11);
        int i = 0;
        while (i < members.length) {
            Resource member = (Resource)members[i];
            this.workspace.deleteResource(member);
            ++i;
        }
        ResourceInfo info = this.getResourceInfo(false, true);
        info.clear(1);
        info.clearSessionProperties();
        info.clearModificationStamp();
        info.setSyncInfo(null);
    }

    protected void internalCopy(IProjectDescription destDesc, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_copying, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            String destName = destDesc.getName();
            IPath destPath = new Path(destName).makeAbsolute();
            Project destination = (Project)this.workspace.getRoot().getProject(destName);
            ISchedulingRule rule = this.workspace.getRuleFactory().copyRule(this, destination);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.assertCopyRequirements(destPath, 4, updateFlags);
                    this.checkDescription(destination, destDesc, false);
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(4, this, destination, updateFlags));
                    this.workspace.beginOperation(true);
                    this.getLocalManager().refresh(this, 2, true, Policy.subMonitorFor(monitor, Policy.opWork * 20 / 100));
                    this.getPropertyManager().closePropertyStore(this);
                    this.getLocalManager().getHistoryStore().closeHistoryStore(this);
                    this.copyMetaArea(this, destination, Policy.subMonitorFor(monitor, Policy.opWork * 5 / 100));
                    this.internalCopyProjectOnly(destination, destDesc, Policy.subMonitorFor(monitor, Policy.opWork * 5 / 100));
                    destination.internalSetDescription(destDesc, false);
                    destination.getStore().mkdir(0, Policy.subMonitorFor(monitor, Policy.opWork * 5 / 100));
                    message = Messages.resources_copyProblem;
                    MultiStatus problems = new MultiStatus("org.eclipse.core.resources", 566, message, null);
                    IResource[] children = this.members(10);
                    int childCount = children.length;
                    int childWork = childCount > 1 ? Policy.opWork * 50 / 100 / (childCount - 1) : 0;
                    int i = 0;
                    while (i < childCount) {
                        IResource child = children[i];
                        if (!this.isProjectDescriptionFile(child)) {
                            try {
                                child.copy(destPath.append(child.getName()), updateFlags, Policy.subMonitorFor(monitor, childWork));
                            }
                            catch (CoreException e) {
                                problems.merge(e.getStatus());
                            }
                        }
                        ++i;
                    }
                    try {
                        destination.writeDescription(1);
                    }
                    catch (CoreException e) {
                        try {
                            destination.delete((updateFlags & 1) != 0, null);
                        }
                        catch (CoreException coreException) {}
                        throw e;
                    }
                    monitor.worked(Policy.opWork * 5 / 100);
                    monitor.subTask(Messages.resources_updating);
                    this.getLocalManager().refresh(destination, 2, true, Policy.subMonitorFor(monitor, Policy.opWork * 10 / 100));
                    if (!problems.isOK()) {
                        throw new ResourceException((IStatus)problems);
                    }
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void internalCopyProjectOnly(IResource destination, IProjectDescription destDesc, IProgressMonitor monitor) throws CoreException {
        this.getPropertyManager().closePropertyStore(this);
        this.getLocalManager().getHistoryStore().closeHistoryStore(this);
        this.workspace.copyTree(this, destination.getFullPath(), 0, 0, false);
        this.getPropertyManager().copy(this, destination, 0);
        ProjectInfo info = (ProjectInfo)((Resource)destination).getResourceInfo(false, true);
        ProjectDescription projectDesc = (ProjectDescription)destDesc;
        ProjectDescription internalDesc = ((Project)destination.getProject()).internalGetDescription();
        projectDesc.setLinkDescriptions(internalDesc.getLinks());
        projectDesc.setFilterDescriptions(internalDesc.getFilters());
        projectDesc.setVariableDescriptions(internalDesc.getVariables());
        info.description = null;
        info.natures = null;
        info.setMarkers(null);
        info.clearSessionProperties();
    }

    IBuildConfiguration internalGetActiveBuildConfig() {
        String configName = this.internalGetDescription().activeConfiguration;
        try {
            if (configName != null) {
                return this.getBuildConfig(configName);
            }
        }
        catch (CoreException coreException) {}
        return this.internalGetBuildConfigs(false)[0];
    }

    public IBuildConfiguration[] internalGetBuildConfigs(boolean makeCopy) {
        ProjectDescription desc = this.internalGetDescription();
        if (desc == null) {
            return new IBuildConfiguration[]{new BuildConfiguration(this, "")};
        }
        return desc.getBuildConfigs(this, makeCopy);
    }

    public ProjectDescription internalGetDescription() {
        ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, false);
        if (info == null) {
            return null;
        }
        return info.getDescription();
    }

    public IBuildConfiguration[] internalGetReferencedBuildConfigs(String configName, boolean includeMissing) {
        ProjectDescription description = this.internalGetDescription();
        IBuildConfiguration[] refs = description.getAllBuildConfigReferences(configName, false);
        LinkedHashSet<IBuildConfiguration> configs = new LinkedHashSet<IBuildConfiguration>(refs.length);
        int i = 0;
        while (i < refs.length) {
            block3: {
                try {
                    configs.add(((BuildConfiguration)refs[i]).getBuildConfig());
                }
                catch (CoreException coreException) {
                    if (!includeMissing) break block3;
                    configs.add(refs[i]);
                }
            }
            ++i;
        }
        return configs.toArray(new IBuildConfiguration[configs.size()]);
    }

    boolean internalHasBuildConfig(String configName) {
        return this.internalGetDescription().hasBuildConfig(configName);
    }

    void internalSetDescription(IProjectDescription value, boolean incrementContentId) {
        this.workspace.flushBuildOrder();
        ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, true);
        info.setDescription((ProjectDescription)value);
        this.getLocalManager().setLocation(this, info, value.getLocationURI());
        if (incrementContentId) {
            info.incrementContentId();
            if (info.getModificationStamp() != -1L) {
                this.workspace.updateModificationStamp(info);
            }
        }
    }

    @Override
    public void internalSetLocal(boolean flag, int depth) throws CoreException {
        if (depth == 0) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        IResource[] children = this.getChildren(0);
        int i = 0;
        while (i < children.length) {
            ((Resource)children[i]).internalSetLocal(flag, depth);
            ++i;
        }
    }

    @Override
    public boolean isAccessible() {
        return this.isOpen();
    }

    @Override
    public boolean isDerived(int options) {
        return false;
    }

    @Override
    public boolean isLinked(int options) {
        return false;
    }

    @Override
    public boolean isVirtual() {
        return false;
    }

    @Override
    public boolean isTeamPrivateMember(int options) {
        return false;
    }

    @Override
    public boolean isLocal(int depth) {
        return this.isLocal(-1, depth);
    }

    @Override
    public boolean isLocal(int flags, int depth) {
        if (depth == 0) {
            return true;
        }
        if (depth == 1) {
            depth = 0;
        }
        IResource[] children = this.getChildren(0);
        int i = 0;
        while (i < children.length) {
            if (!children[i].isLocal(depth)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    @Override
    public boolean isNatureEnabled(String natureId) throws CoreException {
        this.checkAccessible(this.getFlags(this.getResourceInfo(false, false)));
        return this.workspace.getNatureManager().isNatureEnabled(this, natureId);
    }

    @Override
    public boolean isOpen() {
        ResourceInfo info = this.getResourceInfo(false, false);
        return this.isOpen(this.getFlags(info));
    }

    public boolean isOpen(int flags) {
        return flags != -1 && ResourceInfo.isSet(flags, 1);
    }

    protected boolean isProjectDescriptionFile(IResource resource) {
        return resource.getType() == 1 && resource.getFullPath().segmentCount() == 2 && resource.getName().equals(".project");
    }

    @Override
    public void loadSnapshot(int options, URI snapshotLocation, IProgressMonitor monitor) throws CoreException {
        if (this.isOpen()) {
            String message = Messages.resources_projectMustNotBeOpen;
            MultiStatus status = new MultiStatus("org.eclipse.core.resources", 4, message, null);
            throw new CoreException((IStatus)status);
        }
        this.internalLoadSnapshot(options, snapshotLocation, monitor);
    }

    private void internalLoadSnapshot(int options, URI snapshotLocation, IProgressMonitor monitor) throws CoreException {
        if ((options & 1) != 0) {
            snapshotLocation = this.workspace.getPathVariableManager().resolveURI(snapshotLocation);
            if (!snapshotLocation.isAbsolute()) {
                String message = NLS.bind((String)Messages.projRead_badSnapshotLocation, (Object)snapshotLocation.toString());
                throw new CoreException((IStatus)new Status(2, "org.eclipse.core.resources", message, null));
            }
            IPath snapshotPath = this.workspace.getMetaArea().getRefreshLocationFor(this);
            IFileStore snapshotFileStore = EFS.getStore((URI)URIUtil.toURI((IPath)snapshotPath));
            EFS.getStore((URI)snapshotLocation).copy(snapshotFileStore, 2, monitor);
        }
    }

    @Override
    public void move(IProjectDescription destination, boolean force, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)destination);
        this.move(destination, force ? 1 : 0, monitor);
    }

    @Override
    public void move(IProjectDescription description, int updateFlags, IProgressMonitor monitor) throws CoreException {
        Assert.isNotNull((Object)description);
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_moving, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            IProject destination = this.workspace.getRoot().getProject(description.getName());
            ISchedulingRule rule = this.workspace.getRuleFactory().moveRule(this, destination);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    if (!this.getName().equals(description.getName())) {
                        IPath destPath = Path.ROOT.append(description.getName());
                        this.assertMoveRequirements(destPath, 4, updateFlags);
                    }
                    this.checkDescription(destination, description, true);
                    this.workspace.beginOperation(true);
                    message = Messages.resources_moveProblem;
                    MultiStatus status = new MultiStatus("org.eclipse.core.resources", 4, message, null);
                    WorkManager workManager = this.workspace.getWorkManager();
                    ResourceTree tree = new ResourceTree(this.getLocalManager(), workManager.getLock(), status, updateFlags);
                    IMoveDeleteHook hook = this.workspace.getMoveDeleteHook();
                    this.workspace.broadcastEvent(LifecycleEvent.newEvent(64, this, destination, updateFlags));
                    int depth = 0;
                    try {
                        depth = workManager.beginUnprotected();
                        if (!hook.moveProject(tree, this, description, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork / 2))) {
                            tree.standardMoveProject(this, description, updateFlags, Policy.subMonitorFor(monitor, Policy.opWork / 2));
                        }
                    }
                    finally {
                        workManager.endUnprotected(depth);
                    }
                    tree.makeInvalid();
                    if (!tree.getStatus().isOK()) {
                        throw new ResourceException(tree.getStatus());
                    }
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void open(int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String msg = NLS.bind((String)Messages.resources_opening_1, (Object)this.getName());
            monitor.beginTask(msg, 100);
            monitor.subTask(msg);
            ISchedulingRule rule = this.workspace.getRuleFactory().modifyRule(this);
            try {
                this.workspace.prepareOperation(rule, monitor);
                ProjectInfo info = (ProjectInfo)this.getResourceInfo(false, false);
                int flags = this.getFlags(info);
                this.checkExists(flags, true);
                if (this.isOpen(flags)) {
                    return;
                }
                try {
                    URI autoloadURI;
                    ProjectDescription updatedDesc;
                    boolean hasSavedDescription;
                    this.workspace.beginOperation(true);
                    this.workspace.flushBuildOrder();
                    info = (ProjectInfo)this.getResourceInfo(false, true);
                    info.set(1);
                    boolean unknownChildren = info.isSet(0x100000);
                    if (unknownChildren) {
                        info.clear(0x100000);
                    }
                    boolean used = info.isSet(16);
                    boolean snapshotLoaded = false;
                    if (!used && !this.workspace.getMetaArea().getRefreshLocationFor(this).toFile().exists() && (hasSavedDescription = this.getLocalManager().hasSavedDescription(this)) && (updatedDesc = info.getDescription()) != null && (autoloadURI = updatedDesc.getSnapshotLocationURI()) != null) {
                        try {
                            autoloadURI = this.getPathVariableManager().resolveURI(autoloadURI);
                            this.internalLoadSnapshot(1, autoloadURI, Policy.subMonitorFor(monitor, Policy.opWork * 5 / 100));
                            snapshotLoaded = true;
                        }
                        catch (CoreException ce) {
                            String msgerr = NLS.bind((String)Messages.projRead_cannotReadSnapshot, (Object)this.getName(), (Object)ce.getLocalizedMessage());
                            Policy.log((IStatus)new Status(2, "org.eclipse.core.resources", msgerr));
                        }
                    }
                    boolean minorIssuesDuringRestore = false;
                    if (used) {
                        minorIssuesDuringRestore = this.workspace.getSaveManager().restore(this, Policy.subMonitorFor(monitor, Policy.opWork * 20 / 100));
                    } else {
                        info.set(16);
                        IStatus result = this.reconcileLinksAndGroups(info.getDescription());
                        if (!result.isOK()) {
                            throw new CoreException(result);
                        }
                        this.workspace.updateModificationStamp(info);
                        monitor.worked(Policy.opWork * (snapshotLoaded ? 15 : 20) / 100);
                    }
                    this.startup();
                    if (!used && unknownChildren || !minorIssuesDuringRestore) {
                        boolean refreshed = false;
                        if (!used && (refreshed = this.workspace.getSaveManager().restoreFromRefreshSnapshot(this, Policy.subMonitorFor(monitor, Policy.opWork * 20 / 100)))) {
                            monitor.worked(Policy.opWork * 60 / 100);
                        }
                        if (!refreshed) {
                            if ((updateFlags & 0x80) != 0) {
                                this.workspace.refreshManager.refresh(this);
                                monitor.worked(Policy.opWork * 60 / 100);
                            } else {
                                this.refreshLocal(2, Policy.subMonitorFor(monitor, Policy.opWork * 60 / 100));
                            }
                        }
                    }
                    ((ProjectPreferences)Platform.getPreferencesService().getRootNode().node("project").node(this.getName())).initialize();
                    this.workspace.getAliasManager().updateAliases(this, this.getStore(), 2, monitor);
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void open(IProgressMonitor monitor) throws CoreException {
        this.open(0, monitor);
    }

    public IStatus reconcileLinksAndGroups(ProjectDescription newDescription) {
        HashMap<IPath, LinkDescription> oldLinks;
        String msg = Messages.links_errorLinkReconcile;
        HashMap<IPath, LinkDescription> newLinks = newDescription.getLinks();
        MultiStatus status = new MultiStatus("org.eclipse.core.resources", 76, msg, null);
        ProjectDescription oldDescription = this.internalGetDescription();
        if (oldDescription != null && (oldLinks = oldDescription.getLinks()) != null) {
            for (LinkDescription oldLink : oldLinks.values()) {
                Resource oldLinkResource = (Resource)this.findMember(oldLink.getProjectRelativePath());
                if (oldLinkResource == null || !oldLinkResource.isLinked()) continue;
                LinkDescription newLink = null;
                if (newLinks != null) {
                    newLink = newLinks.get(oldLink.getProjectRelativePath());
                }
                if (newLink != null && newLink.getLocationURI().equals(oldLinkResource.getRawLocationURI()) && newLink.getType() == oldLinkResource.getType()) continue;
                try {
                    oldLinkResource.delete(0, null);
                    oldLinkResource.refreshLocal(2, null);
                }
                catch (CoreException e) {
                    status.merge(e.getStatus());
                }
            }
        }
        if (newLinks == null) {
            return status;
        }
        TreeSet<LinkDescription> newLinksAndGroups = new TreeSet<LinkDescription>(new Comparator<LinkDescription>(){

            @Override
            public int compare(LinkDescription arg0, LinkDescription arg1) {
                int numberOfSegments1;
                int numberOfSegments0 = arg0.getProjectRelativePath().segmentCount();
                if (numberOfSegments0 != (numberOfSegments1 = arg1.getProjectRelativePath().segmentCount())) {
                    return numberOfSegments0 - numberOfSegments1;
                }
                if (arg0.equals(arg1)) {
                    return 0;
                }
                return -1;
            }
        });
        if (newLinks != null) {
            newLinksAndGroups.addAll(newLinks.values());
        }
        Iterator<LinkDescription> it = newLinksAndGroups.iterator();
        while (it.hasNext()) {
            LinkDescription description;
            LinkDescription newLink = description = it.next();
            try {
                Resource toLink = this.workspace.newResource(this.getFullPath().append(newLink.getProjectRelativePath()), newLink.getType());
                IContainer parent = toLink.getParent();
                if (parent != null && !parent.exists() && parent.getType() == 2) {
                    ((Folder)parent).ensureExists(Policy.monitorFor(null));
                }
                if (toLink.exists() && toLink.isLinked()) continue;
                if (newLink.isGroup()) {
                    ((Folder)toLink).create(8448, true, null);
                    continue;
                }
                toLink.createLink(newLink.getLocationURI(), 272, null);
            }
            catch (CoreException e) {
                status.merge(e.getStatus());
            }
        }
        return status;
    }

    @Override
    public void saveSnapshot(int options, URI snapshotLocation, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            IProgressMonitor sub;
            monitor.beginTask("", 100);
            this.checkAccessible(this.getFlags(this.getResourceInfo(false, false)));
            URI resolvedSnapshotLocation = this.getPathVariableManager().resolveURI(snapshotLocation);
            if (resolvedSnapshotLocation == null || !resolvedSnapshotLocation.isAbsolute()) {
                String message = NLS.bind((String)Messages.projRead_badSnapshotLocation, (Object)resolvedSnapshotLocation);
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.resources", message, null));
            }
            if ((options & 1) != 0) {
                sub = Policy.subMonitorFor(monitor, Policy.opWork / 2);
                this.workspace.getSaveManager().saveRefreshSnapshot(this, resolvedSnapshotLocation, sub);
            }
            if ((options & 2) != 0) {
                sub = Policy.subMonitorFor(monitor, Policy.opWork / 2);
                if (snapshotLocation != null && snapshotLocation.isAbsolute()) {
                    snapshotLocation = this.getPathVariableManager().convertToRelative(snapshotLocation, false, "PROJECT_LOC");
                }
                IProjectDescription desc = this.getDescription();
                ((ProjectDescription)desc).setSnapshotLocationURI(snapshotLocation);
                this.setDescription(desc, 66, sub);
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void setDescription(IProjectDescription description, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            monitor.beginTask(Messages.resources_setDesc, 100);
            IWorkspaceRoot rule = null;
            rule = (updateFlags & 0x40) != 0 ? this.workspace.getRuleFactory().modifyRule(this) : this.workspace.getRoot();
            try {
                this.workspace.prepareOperation(rule, monitor);
                ResourceInfo info = this.getResourceInfo(false, false);
                this.checkAccessible(this.getFlags(info));
                ProjectDescription oldDescription = this.internalGetDescription();
                ProjectDescription newDescription = (ProjectDescription)description;
                boolean hasPublicChanges = oldDescription.hasPublicChanges(newDescription);
                boolean hasPrivateChanges = oldDescription.hasPrivateChanges(newDescription);
                if (!hasPublicChanges && !hasPrivateChanges) {
                    return;
                }
                this.checkDescription(this, newDescription, false);
                boolean hadSavedDescription = true;
                if ((updateFlags & 1) == 0 && (hadSavedDescription = this.getLocalManager().hasSavedDescription(this)) && !this.getLocalManager().isDescriptionSynchronized(this)) {
                    String message = NLS.bind((String)Messages.resources_projectDescSync, (Object)this.getName());
                    throw new ResourceException(274, this.getFullPath(), message, null);
                }
                if (!hadSavedDescription) {
                    hadSavedDescription = this.workspace.getMetaArea().hasSavedProject(this);
                }
                this.workspace.beginOperation(true);
                MultiStatus status = this.basicSetDescription(newDescription, updateFlags);
                if (hadSavedDescription && !status.isOK()) {
                    throw new CoreException((IStatus)status);
                }
                this.writeDescription(oldDescription, updateFlags, hasPublicChanges, hasPrivateChanges);
                info = this.getResourceInfo(false, true);
                info.incrementContentId();
                this.workspace.updateModificationStamp(info);
                if (!hadSavedDescription) {
                    String msg = NLS.bind((String)Messages.resources_missingProjectMetaRepaired, (Object)this.getName());
                    status.merge((IStatus)new ResourceStatus(234, this.getFullPath(), msg));
                }
                if (!status.isOK()) {
                    throw new CoreException((IStatus)status);
                }
            }
            finally {
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(2, this));
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    @Override
    public void setDescription(IProjectDescription description, IProgressMonitor monitor) throws CoreException {
        this.setDescription(description, 2, monitor);
    }

    protected void startup() throws CoreException {
        if (!this.isOpen()) {
            return;
        }
        this.workspace.broadcastEvent(LifecycleEvent.newEvent(32, this));
    }

    @Override
    public void touch(IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            String message = NLS.bind((String)Messages.resources_touch, (Object)this.getFullPath());
            monitor.beginTask(message, 100);
            ISchedulingRule rule = this.workspace.getRuleFactory().modifyRule(this);
            try {
                try {
                    this.workspace.prepareOperation(rule, monitor);
                    this.workspace.beginOperation(true);
                    super.touch(Policy.subMonitorFor(monitor, Policy.opWork));
                }
                catch (OperationCanceledException e) {
                    this.workspace.getWorkManager().operationCanceled();
                    throw e;
                }
            }
            finally {
                this.workspace.broadcastEvent(LifecycleEvent.newEvent(2, this));
                this.workspace.endOperation(rule, true, Policy.subMonitorFor(monitor, Policy.endOpWork));
            }
        }
        finally {
            monitor.done();
        }
    }

    protected void updateDescription() throws CoreException {
        if (ProjectDescription.isWriting) {
            return;
        }
        ProjectDescription.isReading = true;
        try {
            ProjectDescription description = this.getLocalManager().read(this, false);
            IStatus result = null;
            if (this.isOpen()) {
                result = this.reconcileLinksAndGroups(description);
            }
            this.internalSetDescription(description, true);
            if (result != null && !result.isOK()) {
                throw new CoreException(result);
            }
        }
        finally {
            this.workspace.broadcastEvent(LifecycleEvent.newEvent(2, this));
            ProjectDescription.isReading = false;
        }
    }

    public void writeDescription(int updateFlags) throws CoreException {
        this.writeDescription(this.internalGetDescription(), updateFlags, true, true);
    }

    public void writeDescription(IProjectDescription description, int updateFlags, boolean hasPublicChanges, boolean hasPrivateChanges) throws CoreException {
        if (ProjectDescription.isReading) {
            return;
        }
        ProjectDescription.isWriting = true;
        try {
            this.getLocalManager().internalWrite(this, description, updateFlags, hasPublicChanges, hasPrivateChanges);
        }
        finally {
            ProjectDescription.isWriting = false;
        }
    }
}

