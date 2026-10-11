/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.IFileTree
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.IFileTree;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.localstore.CollectSyncStatusVisitor;
import org.eclipse.core.internal.localstore.CopyVisitor;
import org.eclipse.core.internal.localstore.DeleteVisitor;
import org.eclipse.core.internal.localstore.FileStoreRoot;
import org.eclipse.core.internal.localstore.IHistoryStore;
import org.eclipse.core.internal.localstore.IsSynchronizedVisitor;
import org.eclipse.core.internal.localstore.RefreshLocalAliasVisitor;
import org.eclipse.core.internal.localstore.RefreshLocalVisitor;
import org.eclipse.core.internal.localstore.UnifiedTree;
import org.eclipse.core.internal.resources.File;
import org.eclipse.core.internal.resources.Folder;
import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.ModelObjectWriter;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectDescriptionReader;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourcesCompatibilityHelper;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.BitMask;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FileSystemResourceManager
implements ICoreConstants,
IManager,
Preferences.IPropertyChangeListener {
    protected IHistoryStore _historyStore;
    protected Workspace workspace;
    private volatile boolean lightweightAutoRefreshEnabled;

    public FileSystemResourceManager(Workspace workspace) {
        this.workspace = workspace;
    }

    protected ArrayList<IPath> allPathsForLocation(URI inputLocation) {
        URI canonicalLocation = FileUtil.canonicalURI(inputLocation);
        ArrayList<IPath> results = this.allPathsForLocationNonCanonical(canonicalLocation);
        if (results.size() == 0 && canonicalLocation != inputLocation) {
            results = this.allPathsForLocationNonCanonical(inputLocation);
        }
        return results;
    }

    private ArrayList<IPath> allPathsForLocationNonCanonical(URI inputLocation) {
        URI location = inputLocation;
        boolean isFileLocation = "file".equals(inputLocation.getScheme());
        IWorkspaceRoot root = this.getWorkspace().getRoot();
        ArrayList<IPath> results = new ArrayList<IPath>();
        if (URIUtil.equals((URI)location, (URI)root.getLocationURI())) {
            results.add((IPath)Path.ROOT);
            return results;
        }
        IProject[] projects = root.getProjects(8);
        int i = 0;
        while (i < projects.length) {
            IProject project = projects[i];
            URI testLocation = project.getLocationURI();
            if (testLocation != null) {
                boolean usingAnotherScheme;
                boolean bl = usingAnotherScheme = !inputLocation.getScheme().equals(testLocation.getScheme());
                if (isFileLocation && !"file".equals(testLocation.getScheme())) {
                    testLocation = this.getFileURI(testLocation);
                }
                if (testLocation != null) {
                    HashMap<IPath, LinkDescription> links;
                    ProjectDescription description;
                    URI relative = testLocation.relativize(location);
                    if (!relative.isAbsolute() && !relative.equals(testLocation)) {
                        Path suffix = new Path(relative.getPath());
                        results.add(project.getFullPath().append((IPath)suffix));
                    }
                    if (usingAnotherScheme && (description = ((Project)project).internalGetDescription()) != null && (links = description.getLinks()) != null) {
                        for (LinkDescription link : links.values()) {
                            IResource resource = project.findMember(link.getProjectRelativePath());
                            IPathVariableManager pathMan = resource == null ? project.getPathVariableManager() : resource.getPathVariableManager();
                            testLocation = pathMan.resolveURI(link.getLocationURI());
                            if (isFileLocation && !"file".equals(testLocation.getScheme())) {
                                testLocation = this.getFileURI(testLocation);
                            }
                            if (testLocation == null || (relative = testLocation.relativize(location)).isAbsolute() || relative.equals(testLocation)) continue;
                            Path suffix = new Path(relative.getPath());
                            results.add(project.getFullPath().append(link.getProjectRelativePath()).append((IPath)suffix));
                        }
                    }
                }
            }
            ++i;
        }
        try {
            this.findLinkedResourcesPaths(inputLocation, results);
        }
        catch (CoreException e) {
            Policy.log(e);
        }
        return results;
    }

    private void asyncRefresh(IResource target) {
        if (this.lightweightAutoRefreshEnabled) {
            this.workspace.getRefreshManager().refresh(target);
        }
    }

    private void findLinkedResourcesPaths(URI inputLocation, ArrayList<IPath> results) throws CoreException {
        IPath suffix = null;
        IFileStore fileStore = EFS.getStore((URI)inputLocation);
        while (fileStore != null) {
            IResource[] resources = this.workspace.getAliasManager().findResources(fileStore);
            int i = 0;
            while (i < resources.length) {
                if (resources[i].isLinked()) {
                    IPath path = resources[i].getFullPath();
                    if (suffix != null) {
                        path = path.append(suffix);
                    }
                    if (!results.contains(path)) {
                        results.add(path);
                    }
                }
                ++i;
            }
            suffix = suffix == null ? Path.fromPortableString((String)fileStore.getName()) : Path.fromPortableString((String)fileStore.getName()).append(suffix);
            fileStore = fileStore.getParent();
        }
    }

    private URI getFileURI(URI locationURI) {
        try {
            IFileStore testLocationStore = EFS.getStore((URI)locationURI);
            java.io.File storeAsFile = testLocationStore.toLocalFile(0, null);
            if (storeAsFile != null) {
                return URIUtil.toURI((String)storeAsFile.getAbsolutePath());
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    /*
     * WARNING - void declaration
     */
    public IResource[] allResourcesFor(URI location, boolean files, int memberFlags) {
        ArrayList<IPath> result = this.allPathsForLocation(location);
        int count = 0;
        int i = 0;
        int imax = result.size();
        while (i < imax) {
            void var8_10;
            IResource iResource = this.resourceFor(result.get(i), files);
            if (iResource == null || ((Resource)iResource).isFiltered() || (memberFlags & 8) == 0 && iResource.isHidden(512) || (memberFlags & 2) == 0 && iResource.isTeamPrivateMember(512)) {
                Object var8_12 = null;
            }
            result.set(i, (IPath)var8_10);
            if (var8_10 != null) {
                ++count;
            }
            ++i;
        }
        IResource[] toReturn = files ? new IFile[count] : new IContainer[count];
        count = 0;
        for (IResource iResource : result) {
            if (iResource == null) continue;
            toReturn[count++] = iResource;
        }
        return toReturn;
    }

    public ResourceAttributes attributes(IResource resource) {
        IFileStore store = this.getStore(resource);
        IFileInfo fileInfo = store.fetchInfo();
        if (!fileInfo.exists()) {
            return null;
        }
        return FileUtil.fileInfoToAttributes(fileInfo);
    }

    public IContainer containerForLocation(IPath location) {
        return (IContainer)this.resourceForLocation(location, false);
    }

    private IResource resourceForLocation(IPath location, boolean files) {
        if (this.workspace.getRoot().getLocation().equals((Object)location)) {
            if (!files) {
                return this.resourceFor((IPath)Path.ROOT, false);
            }
            return null;
        }
        IProject[] projects = this.getWorkspace().getRoot().getProjects(8);
        int i = 0;
        while (i < projects.length) {
            IProject project = projects[i];
            IPath projectLocation = project.getLocation();
            if (projectLocation != null && projectLocation.isPrefixOf(location)) {
                int segmentsToRemove = projectLocation.segmentCount();
                IPath path = project.getFullPath().append(location.removeFirstSegments(segmentsToRemove));
                IResource resource = this.resourceFor(path, files);
                if (resource != null && !((Resource)resource).isFiltered()) {
                    return resource;
                }
            }
            ++i;
        }
        return null;
    }

    public void copy(IResource target, IResource destination, int updateFlags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            int totalWork = ((Resource)target).countResources(2, false);
            String title = NLS.bind((String)Messages.localstore_copying, (Object)target.getFullPath());
            monitor.beginTask(title, totalWork);
            IFileStore destinationStore = this.getStore(destination);
            if (destinationStore.fetchInfo().exists()) {
                String message = NLS.bind((String)Messages.localstore_resourceExists, (Object)destination.getFullPath());
                throw new ResourceException(272, destination.getFullPath(), message, null);
            }
            this.getHistoryStore().copyHistory(target, destination, false);
            CopyVisitor visitor = new CopyVisitor(target, destination, updateFlags, monitor);
            UnifiedTree tree = new UnifiedTree(target);
            tree.accept(visitor, 2);
            IStatus status = visitor.getStatus();
            if (!status.isOK()) {
                throw new ResourceException(status);
            }
        }
        finally {
            monitor.done();
        }
    }

    public void delete(IResource target, int flags, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        try {
            Resource resource = (Resource)target;
            int deleteWork = resource.countResources(2, false) * 2;
            boolean force = (flags & 1) != 0;
            int refreshWork = 0;
            if (!force) {
                refreshWork = Math.min(deleteWork, 100);
            }
            String title = NLS.bind((String)Messages.localstore_deleting, (Object)resource.getFullPath());
            monitor.beginTask(title, deleteWork + refreshWork);
            monitor.subTask("");
            MultiStatus status = new MultiStatus("org.eclipse.core.resources", 273, Messages.localstore_deleteProblem, null);
            List<Resource> skipList = null;
            UnifiedTree tree = new UnifiedTree(target);
            if (!force) {
                IProgressMonitor sub = Policy.subMonitorFor(monitor, refreshWork);
                sub.beginTask("", 1000);
                try {
                    CollectSyncStatusVisitor refreshVisitor = new CollectSyncStatusVisitor(Messages.localstore_deleteProblem, sub);
                    refreshVisitor.setIgnoreLocalDeletions(true);
                    tree.accept(refreshVisitor, 2);
                    status.merge((IStatus)refreshVisitor.getSyncStatus());
                    skipList = refreshVisitor.getAffectedResources();
                }
                finally {
                    sub.done();
                }
            }
            DeleteVisitor deleteVisitor = new DeleteVisitor(skipList, flags, monitor, deleteWork);
            tree.accept(deleteVisitor, 2);
            status.merge((IStatus)deleteVisitor.getStatus());
            if (!status.isOK()) {
                throw new ResourceException((IStatus)status);
            }
        }
        finally {
            monitor.done();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean descriptionChanged(IFile descriptionFile, byte[] newContents) {
        BufferedInputStream oldStream = null;
        try {
            block16: {
                block15: {
                    int bufsize = newContents.length > 4096 ? 8192 : newContents.length * 2;
                    oldStream = new BufferedInputStream(descriptionFile.getContents(true), bufsize);
                    ByteArrayInputStream newStream = new ByteArrayInputStream(newContents);
                    int newChar = ((InputStream)newStream).read();
                    int oldChar = ((InputStream)oldStream).read();
                    while (newChar >= 0 && oldChar >= 0) {
                        if (newChar == oldChar) {
                            newChar = ((InputStream)newStream).read();
                            oldChar = ((InputStream)oldStream).read();
                            continue;
                        }
                        if (!(newChar != 13 && newChar != 10 || oldChar != 13 && oldChar != 10)) {
                            while (newChar == 13 || newChar == 10) {
                                newChar = ((InputStream)newStream).read();
                            }
                            while (oldChar == 13 || oldChar == 10) {
                                oldChar = ((InputStream)oldStream).read();
                            }
                            continue;
                        }
                        break block15;
                    }
                    if (newChar < 0 && oldChar < 0) break block16;
                }
                FileUtil.safeClose(oldStream);
                return true;
            }
            FileUtil.safeClose(oldStream);
            return false;
        }
        catch (Exception e) {
            Policy.log(e);
            return true;
        }
        finally {
            FileUtil.safeClose(oldStream);
        }
    }

    public int doGetEncoding(IFileStore store) throws CoreException {
        InputStream input;
        block12: {
            int third;
            int second;
            int first;
            block11: {
                block10: {
                    block9: {
                        block8: {
                            input = null;
                            input = store.openInputStream(0, null);
                            first = input.read();
                            second = input.read();
                            if (first != -1 && second != -1) break block8;
                            FileUtil.safeClose(input);
                            return 0;
                        }
                        if ((first &= 0xFF) != 254 || (second &= 0xFF) != 255) break block9;
                        FileUtil.safeClose(input);
                        return 4;
                    }
                    if (first != 255 || second != 254) break block10;
                    FileUtil.safeClose(input);
                    return 5;
                }
                third = input.read() & 0xFF;
                if (third != -1) break block11;
                FileUtil.safeClose(input);
                return 0;
            }
            try {
                if (first != 239 || second != 187 || third != 191) break block12;
            }
            catch (IOException e) {
                try {
                    String message = NLS.bind((String)Messages.localstore_couldNotRead, (Object)store.toString());
                    throw new ResourceException(271, null, message, e);
                }
                catch (Throwable throwable) {
                    FileUtil.safeClose(input);
                    throw throwable;
                }
            }
            FileUtil.safeClose(input);
            return 3;
        }
        FileUtil.safeClose(input);
        return 0;
    }

    public boolean fastIsSynchronized(File target) {
        IFileInfo fileInfo;
        ResourceInfo info = target.getResourceInfo(false, false);
        return target.exists(target.getFlags(info), true) && !(fileInfo = this.getStore(target).fetchInfo()).isDirectory() && info.getLocalSyncInfo() == fileInfo.getLastModified();
    }

    public boolean fastIsSynchronized(Folder target) {
        IFileInfo fileInfo;
        ResourceInfo info = target.getResourceInfo(false, false);
        return target.exists(target.getFlags(info), true) && !(fileInfo = this.getStore(target).fetchInfo()).exists() && info.getLocalSyncInfo() == fileInfo.getLastModified();
    }

    public IFile fileForLocation(IPath location) {
        return (IFile)this.resourceForLocation(location, true);
    }

    public int getEncoding(File target) throws CoreException {
        IFileStore store = this.getStore(target);
        if (!store.fetchInfo().exists()) {
            String message = NLS.bind((String)Messages.localstore_fileNotFound, (Object)store.toString());
            throw new ResourceException(271, target.getFullPath(), message, null);
        }
        return this.doGetEncoding(store);
    }

    public IHistoryStore getHistoryStore() {
        if (this._historyStore == null) {
            IPath location = this.getWorkspace().getMetaArea().getHistoryStoreLocation();
            location.toFile().mkdirs();
            this._historyStore = ResourcesCompatibilityHelper.createHistoryStore(location, 256);
        }
        return this._historyStore;
    }

    public String getLocalName(IFileStore target) {
        return target.fetchInfo().getName();
    }

    protected IPath getProjectDefaultLocation(IProject project) {
        return this.workspace.getRoot().getLocation().append(project.getFullPath());
    }

    public IFileStore getStore(IResource target) {
        try {
            return this.getStoreRoot(target).createStore(target.getFullPath(), target);
        }
        catch (CoreException coreException) {
            return EFS.getNullFileSystem().getStore(target.getFullPath());
        }
    }

    private FileStoreRoot getStoreRoot(IResource target) {
        IContainer parent;
        FileStoreRoot root;
        ResourceInfo info = this.workspace.getResourceInfo(target.getFullPath(), true, false);
        if (info != null) {
            URI linkLocation;
            ProjectDescription description;
            root = info.getFileStoreRoot();
            if (root != null && root.isValid()) {
                return root;
            }
            if (info.isSet(524288)) {
                ProjectDescription description2 = ((Project)target.getProject()).internalGetDescription();
                if (description2 != null) {
                    this.setLocation(target, info, description2.getGroupLocationURI(target.getProjectRelativePath()));
                    return info.getFileStoreRoot();
                }
                return info.getFileStoreRoot();
            }
            if (info.isSet(65536) && (description = ((Project)target.getProject()).internalGetDescription()) != null && (linkLocation = description.getLinkLocationURI(target.getProjectRelativePath())) != null) {
                this.setLocation(target, info, linkLocation);
                return info.getFileStoreRoot();
            }
        }
        if ((parent = target.getParent()) == null) {
            info = this.workspace.getResourceInfo((IPath)Path.ROOT, false, true);
            IWorkspaceRoot rootResource = this.workspace.getRoot();
            this.setLocation(rootResource, info, URIUtil.toURI((IPath)rootResource.getLocation()));
            return info.getFileStoreRoot();
        }
        root = this.getStoreRoot(parent);
        if (info != null) {
            info.setFileStoreRoot(root);
        }
        return root;
    }

    protected Workspace getWorkspace() {
        return this.workspace;
    }

    public boolean hasSavedContent(IProject project) {
        return this.getStore(project).fetchInfo().exists();
    }

    public boolean hasSavedDescription(IProject project) {
        return this.getStore(project).getChild(".project").fetchInfo().exists();
    }

    private IFileStore initializeStore(IResource target, URI location) throws CoreException {
        ResourceInfo info = ((Resource)target).getResourceInfo(false, true);
        this.setLocation(target, info, location);
        FileStoreRoot root = this.getStoreRoot(target);
        return root.createStore(target.getFullPath(), target);
    }

    public boolean internalWrite(IProject target, IProjectDescription description, int updateFlags, boolean hasPublicChanges, boolean hasPrivateChanges) throws CoreException {
        if (hasPrivateChanges) {
            this.getWorkspace().getMetaArea().writePrivateDescription(target);
        }
        if (!hasPublicChanges) {
            return false;
        }
        if (description == null) {
            return false;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try {
            new ModelObjectWriter().write((Object)description, out);
        }
        catch (IOException e) {
            String msg = NLS.bind((String)Messages.resources_writeMeta, (Object)target.getFullPath());
            throw new ResourceException(568, target.getFullPath(), msg, e);
        }
        byte[] newContents = out.toByteArray();
        IFile descriptionFile = target.getFile(".project");
        if (!descriptionFile.exists()) {
            this.workspace.createResource((IResource)descriptionFile, false);
        } else if (!this.descriptionChanged(descriptionFile, newContents)) {
            return false;
        }
        ByteArrayInputStream in = new ByteArrayInputStream(newContents);
        IFileStore descriptionFileStore = ((Resource)((Object)descriptionFile)).getStore();
        IFileInfo fileInfo = descriptionFileStore.fetchInfo();
        if (fileInfo.getAttribute(2)) {
            IStatus result = this.getWorkspace().validateEdit(new IFile[]{descriptionFile}, null);
            if (!result.isOK()) {
                throw new ResourceException(result);
            }
            fileInfo = descriptionFileStore.fetchInfo();
        }
        this.write(descriptionFile, in, fileInfo, 1, false, Policy.monitorFor(null));
        this.workspace.getAliasManager().updateAliases(descriptionFile, this.getStore(descriptionFile), 0, Policy.monitorFor(null));
        long lastModified = ((Resource)((Object)descriptionFile)).getResourceInfo(false, false).getLocalSyncInfo();
        ResourceInfo info = ((Resource)((Object)target)).getResourceInfo(false, true);
        this.updateLocalSync(info, lastModified);
        this.getWorkspace().getMetaArea().clearOldDescription(target);
        return true;
    }

    public boolean isDescriptionSynchronized(IProject target) {
        IFile descriptionFile = target.getFile(".project");
        ResourceInfo projectInfo = ((Resource)((Object)target)).getResourceInfo(false, false);
        if (projectInfo == null) {
            return false;
        }
        return projectInfo.getLocalSyncInfo() == this.getStore(descriptionFile).fetchInfo().getLastModified();
    }

    public boolean isSynchronized(IResource target, int depth) {
        switch (target.getType()) {
            case 8: {
                if (depth == 0) {
                    return true;
                }
                depth = depth == 1 ? 0 : depth;
                IProject[] projects = ((IWorkspaceRoot)target).getProjects(8);
                int i = 0;
                while (i < projects.length) {
                    if (!this.isSynchronized(projects[i], depth)) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
            case 4: {
                if (target.isAccessible()) break;
                return true;
            }
            case 2: {
                if (!this.fastIsSynchronized((Folder)target)) break;
                return true;
            }
            case 1: {
                if (!this.fastIsSynchronized((File)target)) break;
                return true;
            }
        }
        IsSynchronizedVisitor visitor = new IsSynchronizedVisitor(Policy.monitorFor(null));
        UnifiedTree tree = new UnifiedTree(target);
        try {
            tree.accept(visitor, depth);
        }
        catch (CoreException e) {
            Policy.log(e);
            return false;
        }
        catch (IsSynchronizedVisitor.ResourceChangedException e) {
            this.asyncRefresh(e.target);
            return false;
        }
        return true;
    }

    public boolean isLightweightAutoRefreshEnabled() {
        return this.lightweightAutoRefreshEnabled;
    }

    public void link(Resource target, URI location, IFileInfo fileInfo) throws CoreException {
        long lastModified;
        this.initializeStore(target, location);
        ResourceInfo info = target.getResourceInfo(false, true);
        long l = lastModified = fileInfo == null ? 0L : fileInfo.getLastModified();
        if (lastModified == 0L) {
            info.clearModificationStamp();
        }
        this.updateLocalSync(info, lastModified);
    }

    public IPath locationFor(IResource target) {
        return this.getStoreRoot(target).localLocation(target.getFullPath(), target);
    }

    public URI locationURIFor(IResource target) {
        return this.getStoreRoot(target).computeURI(target.getFullPath());
    }

    public void move(IResource source, IFileStore destination, int flags, IProgressMonitor monitor) throws CoreException {
        this.getStore(source).move(destination, 0, monitor);
    }

    public void propertyChange(Preferences.PropertyChangeEvent event) {
        if ("refresh.lightweight.enabled".equals(event.getProperty())) {
            this.lightweightAutoRefreshEnabled = Boolean.valueOf(event.getNewValue().toString());
        }
    }

    public InputStream read(IFile target, boolean force, IProgressMonitor monitor) throws CoreException {
        IFileStore store = this.getStore(target);
        if (this.lightweightAutoRefreshEnabled || !force) {
            IFileInfo fileInfo = store.fetchInfo();
            if (!fileInfo.exists()) {
                this.asyncRefresh(target);
                if (!force) {
                    String message = NLS.bind((String)Messages.localstore_fileNotFound, (Object)store.toString());
                    throw new ResourceException(271, target.getFullPath(), message, null);
                }
            }
            ResourceInfo info = ((Resource)((Object)target)).getResourceInfo(true, false);
            int flags = ((Resource)((Object)target)).getFlags(info);
            ((Resource)((Object)target)).checkExists(flags, true);
            if (fileInfo.getLastModified() != info.getLocalSyncInfo()) {
                this.asyncRefresh(target);
                if (!force) {
                    String message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)target.getFullPath());
                    throw new ResourceException(274, target.getFullPath(), message, null);
                }
            }
        }
        return store.openInputStream(0, monitor);
    }

    public ProjectDescription read(IProject target, boolean creation) throws CoreException {
        ResourceException error;
        ProjectDescription description;
        IFileStore descriptionStore;
        boolean isDefaultLocation;
        ProjectDescription privateDescription;
        URI projectLocation;
        block19: {
            IProgressMonitor monitor = Policy.monitorFor(null);
            projectLocation = null;
            privateDescription = null;
            if (creation) {
                privateDescription = new ProjectDescription();
                this.getWorkspace().getMetaArea().readPrivateDescription(target, privateDescription);
                projectLocation = privateDescription.getLocationURI();
            } else {
                ProjectDescription description2 = ((Project)target).internalGetDescription();
                if (description2 != null && description2.getLocationURI() != null) {
                    projectLocation = description2.getLocationURI();
                }
            }
            boolean bl = isDefaultLocation = projectLocation == null;
            if (isDefaultLocation) {
                projectLocation = URIUtil.toURI((IPath)this.getProjectDefaultLocation(target));
            }
            IFileStore projectStore = this.initializeStore(target, projectLocation);
            descriptionStore = projectStore.getChild(".project");
            description = null;
            error = null;
            BufferedInputStream in = null;
            try {
                in = new BufferedInputStream(descriptionStore.openInputStream(0, monitor));
                Policy.checkCanceled(monitor);
                description = new ProjectDescriptionReader(target).read(new InputSource(in));
            }
            catch (OperationCanceledException e) {
                String msg = NLS.bind((String)Messages.resources_missingProjectMeta, (Object)target.getName());
                throw new ResourceException(567, target.getFullPath(), msg, e);
            }
            catch (CoreException e) {
                description = this.getWorkspace().getMetaArea().readOldDescription(target);
                if (description != null) {
                    ProjectDescription projectDescription = description;
                    FileUtil.safeClose(in);
                    return projectDescription;
                }
                try {
                    if (!descriptionStore.fetchInfo().exists()) {
                        String msg = NLS.bind((String)Messages.resources_missingProjectMeta, (Object)target.getName());
                        throw new ResourceException(567, target.getFullPath(), msg, null);
                    }
                    String msg = NLS.bind((String)Messages.resources_readProjectMeta, (Object)target.getName());
                    error = new ResourceException(567, target.getFullPath(), msg, e);
                }
                catch (Throwable throwable) {
                    FileUtil.safeClose(in);
                    throw throwable;
                }
                FileUtil.safeClose(in);
                break block19;
            }
            FileUtil.safeClose(in);
        }
        if (error == null && description == null) {
            String msg = NLS.bind((String)Messages.resources_readProjectMeta, (Object)target.getName());
            error = new ResourceException(567, target.getFullPath(), msg, null);
        }
        if (description != null) {
            if (!isDefaultLocation) {
                description.setLocationURI(projectLocation);
            }
            if (creation && privateDescription != null) {
                description.updateDynamicState(privateDescription);
            }
        }
        long lastModified = descriptionStore.fetchInfo().getLastModified();
        IFile descriptionFile = target.getFile(".project");
        ResourceInfo info = ((Resource)((Object)descriptionFile)).getResourceInfo(false, false);
        if (info == null) {
            info = this.getWorkspace().createResource((IResource)descriptionFile, false);
            this.updateLocalSync(info, lastModified);
        }
        if (!creation) {
            this.updateLocalSync(info, lastModified);
        }
        info = ((Resource)((Object)target)).getResourceInfo(false, true);
        this.updateLocalSync(info, lastModified);
        if (error != null) {
            throw error;
        }
        return description;
    }

    public boolean refresh(IResource target, int depth, boolean updateAliases, IProgressMonitor monitor) throws CoreException {
        switch (target.getType()) {
            case 8: {
                return this.refreshRoot((IWorkspaceRoot)target, depth, updateAliases, monitor);
            }
            case 4: {
                if (!target.isAccessible()) {
                    return false;
                }
            }
            case 1: 
            case 2: {
                return this.refreshResource(target, depth, updateAliases, monitor);
            }
        }
        return false;
    }

    protected boolean refreshResource(IResource target, int depth, boolean updateAliases, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        int totalWork = 250;
        String title = NLS.bind((String)Messages.localstore_refreshing, (Object)target.getFullPath());
        try {
            monitor.beginTask(title, totalWork);
            RefreshLocalVisitor visitor = updateAliases ? new RefreshLocalAliasVisitor(monitor) : new RefreshLocalVisitor(monitor);
            IFileStore fileStore = ((Resource)target).getStore();
            IFileTree fileTree = fileStore.getFileSystem().fetchFileTree(fileStore, (IProgressMonitor)new SubProgressMonitor(monitor, 0));
            UnifiedTree tree = fileTree == null ? new UnifiedTree(target) : new UnifiedTree(target, fileTree);
            tree.accept(visitor, depth);
            IStatus result = visitor.getErrorStatus();
            if (!result.isOK()) {
                throw new ResourceException(result);
            }
            boolean bl = visitor.resourcesChanged();
            return bl;
        }
        finally {
            monitor.done();
        }
    }

    protected boolean refreshRoot(IWorkspaceRoot target, int depth, boolean updateAliases, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(monitor);
        IProject[] projects = target.getProjects(8);
        int totalWork = projects.length;
        String title = Messages.localstore_refreshingRoot;
        try {
            monitor.beginTask(title, totalWork);
            if (depth == 0) {
                return false;
            }
            boolean changed = false;
            depth = depth == 1 ? 0 : depth;
            int i = 0;
            while (i < projects.length) {
                changed |= this.refresh(projects[i], depth, updateAliases, Policy.subMonitorFor(monitor, 1));
                ++i;
            }
            boolean bl = changed;
            return bl;
        }
        finally {
            monitor.done();
        }
    }

    protected IResource resourceFor(IPath path, boolean files) {
        int numSegments = path.segmentCount();
        if (files && numSegments < 2) {
            return null;
        }
        IWorkspaceRoot root = this.getWorkspace().getRoot();
        if (path.isRoot()) {
            return root;
        }
        if (numSegments == 1) {
            return root.getProject(path.segment(0));
        }
        return files ? root.getFile(path) : root.getFolder(path);
    }

    public long setLocalTimeStamp(IResource target, ResourceInfo info, long value) throws CoreException {
        IFileStore store = this.getStore(target);
        IFileInfo fileInfo = store.fetchInfo();
        fileInfo.setLastModified(value);
        store.putInfo(fileInfo, 2048, null);
        fileInfo = store.fetchInfo();
        long actualValue = fileInfo.getLastModified();
        this.updateLocalSync(info, actualValue);
        return actualValue;
    }

    public void setLocation(IResource target, ResourceInfo info, URI location) {
        FileStoreRoot oldRoot = info.getFileStoreRoot();
        if (location != null) {
            info.setFileStoreRoot(new FileStoreRoot(location, target.getFullPath()));
        } else {
            info.setFileStoreRoot(null);
        }
        if (oldRoot != null) {
            oldRoot.setValid(false);
        }
    }

    public void setResourceAttributes(IResource resource, ResourceAttributes attributes) throws CoreException {
        IFileStore store = this.getStore(resource);
        boolean refresh = false;
        if (resource instanceof IContainer && (store.getFileSystem().attributes() & 4) != 0) {
            refresh = store.fetchInfo().getAttribute(4) ^ attributes.isExecutable();
        }
        store.putInfo(FileUtil.attributesToFileInfo(attributes), 1024, null);
        if (refresh) {
            this.workspace.getRefreshManager().refresh(resource);
        }
    }

    @Override
    public void shutdown(IProgressMonitor monitor) throws CoreException {
        if (this._historyStore != null) {
            this._historyStore.shutdown(monitor);
        }
        ResourcesPlugin.getPlugin().getPluginPreferences().removePropertyChangeListener((Preferences.IPropertyChangeListener)this);
    }

    @Override
    public void startup(IProgressMonitor monitor) throws CoreException {
        Preferences preferences = ResourcesPlugin.getPlugin().getPluginPreferences();
        preferences.addPropertyChangeListener((Preferences.IPropertyChangeListener)this);
        this.lightweightAutoRefreshEnabled = preferences.getBoolean("refresh.lightweight.enabled");
    }

    public void updateLocalSync(ResourceInfo info, long localSyncInfo) {
        info.setLocalSyncInfo(localSyncInfo);
        if (localSyncInfo == -1L) {
            info.clear(2);
        } else {
            info.set(2);
        }
    }

    public void write(IFile target, InputStream content, IFileInfo fileInfo, int updateFlags, boolean append, IProgressMonitor monitor) throws CoreException {
        monitor = Policy.monitorFor(null);
        try {
            IFileStore store = this.getStore(target);
            if (fileInfo.getAttribute(2)) {
                String message = NLS.bind((String)Messages.localstore_couldNotWriteReadOnly, (Object)target.getFullPath());
                throw new ResourceException(272, target.getFullPath(), message, null);
            }
            long lastModified = fileInfo.getLastModified();
            if (BitMask.isSet(updateFlags, 1)) {
                if (append && !target.isLocal(0) && !fileInfo.exists()) {
                    String message = NLS.bind((String)Messages.resources_mustBeLocal, (Object)target.getFullPath());
                    throw new ResourceException(369, target.getFullPath(), message, null);
                }
            } else if (target.isLocal(0)) {
                ResourceInfo info = ((Resource)((Object)target)).getResourceInfo(true, false);
                if (lastModified != info.getLocalSyncInfo()) {
                    this.asyncRefresh(target);
                    String message = NLS.bind((String)Messages.localstore_resourceIsOutOfSync, (Object)target.getFullPath());
                    throw new ResourceException(274, target.getFullPath(), message, null);
                }
                if (!fileInfo.exists()) {
                    this.asyncRefresh(target);
                    String message = NLS.bind((String)Messages.localstore_resourceDoesNotExist, (Object)target.getFullPath());
                    throw new ResourceException(269, target.getFullPath(), message, null);
                }
            } else {
                if (fileInfo.exists()) {
                    String message = NLS.bind((String)Messages.localstore_resourceExists, (Object)target.getFullPath());
                    throw new ResourceException(268, target.getFullPath(), message, null);
                }
                if (append) {
                    String message = NLS.bind((String)Messages.resources_mustBeLocal, (Object)target.getFullPath());
                    throw new ResourceException(369, target.getFullPath(), message, null);
                }
            }
            if (BitMask.isSet(updateFlags, 2) && fileInfo.exists()) {
                this.getHistoryStore().addState(target.getFullPath(), store, fileInfo, false);
            }
            if (!fileInfo.exists()) {
                store.getParent().mkdir(0, null);
            }
            int options = append ? 1 : 0;
            OutputStream out = store.openOutputStream(options, Policy.subMonitorFor(monitor, 0));
            FileUtil.transferStreams(content, out, store.toString(), monitor);
            lastModified = store.fetchInfo().getLastModified();
            ResourceInfo info = ((Resource)((Object)target)).getResourceInfo(false, true);
            this.updateLocalSync(info, lastModified);
            info.incrementContentId();
            info.clear(393216);
            this.workspace.updateModificationStamp(info);
        }
        finally {
            FileUtil.safeClose(content);
        }
    }

    public void write(IFolder target, boolean force, IProgressMonitor monitor) throws CoreException {
        IFileStore store = this.getStore(target);
        if (!force) {
            IFileInfo fileInfo = store.fetchInfo();
            if (fileInfo.isDirectory()) {
                String message = NLS.bind((String)Messages.localstore_resourceExists, (Object)target.getFullPath());
                throw new ResourceException(268, target.getFullPath(), message, null);
            }
            if (fileInfo.exists()) {
                String message = NLS.bind((String)Messages.localstore_fileExists, (Object)target.getFullPath());
                throw new ResourceException(274, target.getFullPath(), message, null);
            }
        }
        store.mkdir(0, monitor);
        ResourceInfo info = ((Resource)((Object)target)).getResourceInfo(false, true);
        this.updateLocalSync(info, store.fetchInfo().getLastModified());
    }

    public void writeSilently(IProject target) throws CoreException {
        IPath location = this.locationFor(target);
        if (location == null) {
            return;
        }
        IFileStore projectStore = this.getStore(target);
        projectStore.mkdir(0, null);
        ProjectDescription desc = ((Project)target).internalGetDescription();
        if (desc == null) {
            return;
        }
        this.getWorkspace().getMetaArea().writePrivateDescription(target);
        IFileStore fileStore = projectStore.getChild(".project");
        OutputStream out = null;
        try {
            try {
                out = fileStore.openOutputStream(0, null);
                new ModelObjectWriter().write((Object)desc, out);
                out.close();
            }
            catch (IOException e) {
                String msg = NLS.bind((String)Messages.resources_writeMeta, (Object)target.getFullPath());
                throw new ResourceException(568, target.getFullPath(), msg, e);
            }
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(out);
            throw throwable;
        }
        FileUtil.safeClose(out);
        this.getWorkspace().getMetaArea().clearOldDescription(target);
    }
}

