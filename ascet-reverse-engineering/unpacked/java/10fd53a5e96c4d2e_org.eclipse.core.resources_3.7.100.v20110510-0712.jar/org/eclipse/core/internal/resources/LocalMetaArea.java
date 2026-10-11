/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.localstore.SafeChunkyInputStream;
import org.eclipse.core.internal.localstore.SafeChunkyOutputStream;
import org.eclipse.core.internal.resources.BuildConfiguration;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.ModelObjectWriter;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectDescriptionReader;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.resources.WorkspaceDescription;
import org.eclipse.core.internal.resources.WorkspaceDescriptionReader;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public class LocalMetaArea
implements ICoreConstants {
    static final String F_BACKUP_FILE_EXTENSION = ".bak";
    static final String F_DESCRIPTION = ".workspace";
    static final String F_HISTORY_STORE = ".history";
    static final String F_MARKERS = ".markers";
    static final String F_OLD_PROJECT = ".prj";
    static final String F_PROJECT_LOCATION = ".location";
    static final String F_PROJECTS = ".projects";
    static final String F_PROPERTIES = ".properties";
    static final String F_REFRESH = ".refresh";
    static final String F_ROOT = ".root";
    static final String F_SAFE_TABLE = ".safetable";
    static final String F_SNAP = ".snap";
    static final String F_SNAP_EXTENSION = "snap";
    static final String F_SYNCINFO = ".syncinfo";
    static final String F_TREE = ".tree";
    static final String URI_PREFIX = "URI//";
    static final String F_METADATA = ".metadata";
    protected final IPath metaAreaLocation = ResourcesPlugin.getPlugin().getStateLocation();
    protected final IPath projectMetaLocation = this.metaAreaLocation.append(".projects");

    public void clearOldDescription(IProject target) {
        Workspace.clear(this.getOldDescriptionLocationFor(target).toFile());
    }

    public void clearRefresh(IProject target) {
        Workspace.clear(this.getRefreshLocationFor(target).toFile());
    }

    public void create(IProject target) {
        File file = this.locationFor(target).toFile();
        Workspace.clear(file);
        file.mkdirs();
    }

    public synchronized void createMetaArea() throws CoreException {
        File workspaceLocation = this.metaAreaLocation.toFile();
        Workspace.clear(workspaceLocation);
        if (!workspaceLocation.mkdirs()) {
            String message = NLS.bind((String)Messages.resources_writeWorkspaceMeta, (Object)workspaceLocation);
            throw new ResourceException(568, null, message, null);
        }
    }

    public void delete(IProject target) throws CoreException {
        IPath path = this.locationFor(target);
        if (!Workspace.clear(path.toFile()) && path.toFile().exists()) {
            String message = NLS.bind((String)Messages.resources_deleteMeta, (Object)target.getFullPath());
            throw new ResourceException(569, target.getFullPath(), message, null);
        }
    }

    public IPath getBackupLocationFor(IPath file) {
        return file.removeLastSegments(1).append(String.valueOf(file.lastSegment()) + F_BACKUP_FILE_EXTENSION);
    }

    public IPath getHistoryStoreLocation() {
        return this.metaAreaLocation.append(F_HISTORY_STORE);
    }

    public IPath getLocation() {
        return this.metaAreaLocation;
    }

    public IPath getMarkersLocationFor(IResource resource) {
        Assert.isNotNull((Object)resource);
        Assert.isLegal((resource.getType() == 8 || resource.getType() == 4 ? 1 : 0) != 0);
        return this.locationFor(resource).append(F_MARKERS);
    }

    public IPath getMarkersSnapshotLocationFor(IResource resource) {
        return this.getMarkersLocationFor(resource).addFileExtension(F_SNAP_EXTENSION);
    }

    public IPath getOldDescriptionLocationFor(IProject target) {
        return this.locationFor(target).append(F_OLD_PROJECT);
    }

    public IPath getOldWorkspaceDescriptionLocation() {
        return this.metaAreaLocation.append(F_DESCRIPTION);
    }

    public IPath getPropertyStoreLocation(IResource resource) {
        int type = resource.getType();
        Assert.isTrue((type != 1 && type != 2 ? 1 : 0) != 0);
        return this.locationFor(resource).append(F_PROPERTIES);
    }

    public IPath getRefreshLocationFor(IProject project) {
        Assert.isNotNull((Object)project);
        return this.locationFor(project).append(F_REFRESH);
    }

    public IPath getSafeTableLocationFor(String pluginId) {
        IPath prefix = this.metaAreaLocation.append(F_SAFE_TABLE);
        if (pluginId.equals("org.eclipse.core.resources")) {
            return prefix.append(pluginId);
        }
        int saveNumber = this.getWorkspace().getSaveManager().getSaveNumber(pluginId);
        return prefix.append(String.valueOf(pluginId) + "." + saveNumber);
    }

    public IPath getSnapshotLocationFor(IResource resource) {
        return this.metaAreaLocation.append(F_SNAP);
    }

    public IPath getSyncInfoLocationFor(IResource resource) {
        Assert.isNotNull((Object)resource);
        Assert.isLegal((resource.getType() == 8 || resource.getType() == 4 ? 1 : 0) != 0);
        return this.locationFor(resource).append(F_SYNCINFO);
    }

    public IPath getSyncInfoSnapshotLocationFor(IResource resource) {
        return this.getSyncInfoLocationFor(resource).addFileExtension(F_SNAP_EXTENSION);
    }

    public IPath getTreeLocationFor(IResource target, boolean updateSequenceNumber) {
        IPath key = target.getFullPath().append(F_TREE);
        String sequenceNumber = this.getWorkspace().getSaveManager().getMasterTable().getProperty(key.toString());
        if (sequenceNumber == null) {
            sequenceNumber = "0";
        }
        if (updateSequenceNumber) {
            int n = new Integer(sequenceNumber) + 1;
            n = n < 0 ? 1 : n;
            sequenceNumber = new Integer(n).toString();
            this.getWorkspace().getSaveManager().getMasterTable().setProperty(key.toString(), new Integer(sequenceNumber).toString());
        }
        return this.locationFor(target).append(String.valueOf(sequenceNumber) + F_TREE);
    }

    public IPath getWorkingLocation(IResource resource, String id) {
        return this.locationFor(resource).append(id);
    }

    protected Workspace getWorkspace() {
        return (Workspace)ResourcesPlugin.getWorkspace();
    }

    public boolean hasSavedProject(IProject project) {
        return this.getOldDescriptionLocationFor(project).toFile().exists() || this.locationFor(project).append(F_PROJECT_LOCATION).toFile().exists();
    }

    public boolean hasSavedWorkspace() {
        return this.metaAreaLocation.toFile().exists() || this.getBackupLocationFor(this.metaAreaLocation).toFile().exists();
    }

    public IPath locationFor(IPath resourcePath) {
        if (Path.ROOT.equals((Object)resourcePath)) {
            return this.metaAreaLocation.append(F_ROOT);
        }
        return this.projectMetaLocation.append(resourcePath.segment(0));
    }

    public IPath locationFor(IResource resource) {
        if (resource.getType() == 8) {
            return this.metaAreaLocation.append(F_ROOT);
        }
        return this.projectMetaLocation.append(resource.getProject().getName());
    }

    public ProjectDescription readOldDescription(IProject project) throws CoreException {
        IPath path = this.getOldDescriptionLocationFor(project);
        if (!path.toFile().exists()) {
            return null;
        }
        IPath tempPath = this.getBackupLocationFor(path);
        ProjectDescription description = null;
        try {
            description = new ProjectDescriptionReader(project).read(path, tempPath);
        }
        catch (IOException e) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)project.getName());
            throw new ResourceException(567, project.getFullPath(), msg, e);
        }
        if (description == null) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)project.getName());
            throw new ResourceException(567, project.getFullPath(), msg, null);
        }
        return description;
    }

    public WorkspaceDescription readOldWorkspace() {
        IPath path = this.getOldWorkspaceDescriptionLocation();
        IPath tempPath = this.getBackupLocationFor(path);
        try {
            WorkspaceDescription oldDescription = (WorkspaceDescription)new WorkspaceDescriptionReader().read(path, tempPath);
            Workspace.clear(path.toFile());
            Workspace.clear(tempPath.toFile());
            return oldDescription;
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public void readPrivateDescription(IProject target, ProjectDescription description) {
        IPath locationFile = this.locationFor(target).append(F_PROJECT_LOCATION);
        File file = locationFile.toFile();
        if (!file.exists() && !(file = (locationFile = this.getBackupLocationFor(locationFile)).toFile()).exists()) {
            return;
        }
        try {
            SafeChunkyInputStream input = new SafeChunkyInputStream(file, 500);
            DataInputStream dataIn = new DataInputStream(input);
            try {
                try {
                    String location = dataIn.readUTF();
                    if (location.length() > 0) {
                        if (location.startsWith(URI_PREFIX)) {
                            description.setLocationURI(URI.create(location.substring(URI_PREFIX.length())));
                        } else {
                            description.setLocationURI(URIUtil.toURI((IPath)Path.fromOSString((String)location)));
                        }
                    }
                }
                catch (Exception e) {
                    String msg = NLS.bind((String)Messages.resources_exReadProjectLocation, (Object)target.getName());
                    Policy.log(new ResourceStatus(4, 567, target.getFullPath(), msg, e));
                }
                int numRefs = dataIn.readInt();
                IProject[] references = new IProject[numRefs];
                IWorkspaceRoot root = this.getWorkspace().getRoot();
                int i = 0;
                while (i < numRefs) {
                    references[i] = root.getProject(dataIn.readUTF());
                    ++i;
                }
                description.setDynamicReferences(references);
                String[] configs = new String[dataIn.readInt()];
                int i2 = 0;
                while (i2 < configs.length) {
                    configs[i2] = dataIn.readUTF();
                    ++i2;
                }
                if (configs.length > 0) {
                    description.setBuildConfigs(configs);
                }
                description.setActiveBuildConfig(dataIn.readUTF());
                int numBuildConifgsWithRefs = dataIn.readInt();
                HashMap<String, IBuildConfiguration[]> m = new HashMap<String, IBuildConfiguration[]>(numBuildConifgsWithRefs);
                int i3 = 0;
                while (i3 < numBuildConifgsWithRefs) {
                    String configName = dataIn.readUTF();
                    numRefs = dataIn.readInt();
                    IBuildConfiguration[] refs = new IBuildConfiguration[numRefs];
                    int j = 0;
                    while (j < numRefs) {
                        String projName = dataIn.readUTF();
                        refs[j] = dataIn.readBoolean() ? new BuildConfiguration(root.getProject(projName), dataIn.readUTF()) : new BuildConfiguration(root.getProject(projName), null);
                        ++j;
                    }
                    m.put(configName, refs);
                    ++i3;
                }
                description.setBuildConfigReferences(m);
            }
            finally {
                dataIn.close();
            }
        }
        catch (IOException iOException) {}
    }

    public synchronized void write(WorkspaceDescription description) throws CoreException {
        IPath path = this.getOldWorkspaceDescriptionLocation();
        path.toFile().getParentFile().mkdirs();
        IPath tempPath = this.getBackupLocationFor(path);
        try {
            new ModelObjectWriter().write(description, path, tempPath);
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.resources_writeWorkspaceMeta, (Object)path);
            throw new ResourceException(568, null, message, e);
        }
    }

    public void writePrivateDescription(IProject target) throws CoreException {
        IPath location = this.locationFor(target).append(F_PROJECT_LOCATION);
        File file = location.toFile();
        Workspace.clear(file);
        ProjectDescription desc = ((Project)target).internalGetDescription();
        if (desc == null) {
            return;
        }
        URI projectLocation = desc.getLocationURI();
        IProject[] prjRefs = desc.getDynamicReferences(false);
        String[] buildConfigs = desc.configNames;
        Map<String, IBuildConfiguration[]> configRefs = desc.getBuildConfigReferences(false);
        if (projectLocation == null && prjRefs.length == 0 && buildConfigs.length == 0 && configRefs.isEmpty()) {
            return;
        }
        try {
            SafeChunkyOutputStream output = new SafeChunkyOutputStream(file);
            DataOutputStream dataOut = new DataOutputStream(output);
            try {
                if (projectLocation == null) {
                    dataOut.writeUTF("");
                } else {
                    dataOut.writeUTF(URI_PREFIX + projectLocation.toString());
                }
                dataOut.writeInt(prjRefs.length);
                int i = 0;
                while (i < prjRefs.length) {
                    dataOut.writeUTF(prjRefs[i].getName());
                    ++i;
                }
                dataOut.writeInt(buildConfigs.length);
                i = 0;
                while (i < buildConfigs.length) {
                    dataOut.writeUTF(buildConfigs[i]);
                    ++i;
                }
                dataOut.writeUTF(desc.getActiveBuildConfig());
                dataOut.writeInt(configRefs.size());
                for (Map.Entry<String, IBuildConfiguration[]> e : configRefs.entrySet()) {
                    String refdName = e.getKey();
                    IBuildConfiguration[] refs = e.getValue();
                    dataOut.writeUTF(refdName);
                    dataOut.writeInt(refs.length);
                    int j = 0;
                    while (j < refs.length) {
                        dataOut.writeUTF(refs[j].getProject().getName());
                        if (refs[j].getName() == null) {
                            dataOut.writeBoolean(false);
                        } else {
                            dataOut.writeBoolean(true);
                            dataOut.writeUTF(refs[j].getName());
                        }
                        ++j;
                    }
                }
                output.succeed();
                dataOut.close();
            }
            finally {
                FileUtil.safeClose(dataOut);
            }
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.resources_exSaveProjectLocation, (Object)target.getName());
            throw new ResourceException(566, null, message, e);
        }
    }
}

