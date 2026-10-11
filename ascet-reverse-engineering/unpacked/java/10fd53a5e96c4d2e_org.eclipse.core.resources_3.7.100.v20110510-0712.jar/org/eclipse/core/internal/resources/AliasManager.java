/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.localstore.FileSystemResourceManager;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AliasManager
implements IManager,
ILifecycleListener,
IResourceChangeListener {
    private final AddToCollectionDoit addToCollection = new AddToCollectionDoit();
    protected final Set<IResource> aliasedProjects = new HashSet<IResource>();
    protected final HashSet<IResource> aliases = new HashSet();
    private final Set<IResource> changedLinks = new HashSet<IResource>();
    private boolean changedProjects = false;
    private final FindAliasesDoit findAliases = new FindAliasesDoit();
    protected final LocationMap locationsMap = new LocationMap();
    private int nonDefaultResourceCount = 0;
    public IPath suffix;
    protected final Workspace workspace;

    public AliasManager(Workspace workspace) {
        this.workspace = workspace;
    }

    private void addToLocationsMap(IProject project) {
        HashMap<IPath, LinkDescription> links;
        ProjectDescription description;
        IFileStore location = ((Resource)((Object)project)).getStore();
        if (location != null) {
            this.locationsMap.add(location, project);
        }
        if ((description = ((Project)project).internalGetDescription()) == null) {
            return;
        }
        if (description.getLocationURI() != null) {
            ++this.nonDefaultResourceCount;
        }
        if ((links = description.getLinks()) == null) {
            return;
        }
        for (LinkDescription linkDesc : links.values()) {
            IResource link = project.findMember(linkDesc.getProjectRelativePath());
            if (link == null) continue;
            try {
                URI locationURI = linkDesc.getLocationURI();
                locationURI = link.getPathVariableManager().resolveURI(locationURI);
                this.addToLocationsMap(link, EFS.getStore((URI)locationURI));
            }
            catch (CoreException coreException) {}
        }
    }

    private void addToLocationsMap(IResource link, IFileStore location) {
        if (location != null && !link.isVirtual() && this.locationsMap.add(location, link)) {
            ++this.nonDefaultResourceCount;
        }
    }

    private void buildAliasedProjectsSet() {
        this.aliasedProjects.clear();
        if (this.nonDefaultResourceCount <= 0) {
            return;
        }
        this.addToCollection.setCollection(this.aliasedProjects);
        this.locationsMap.overLappingResourcesDo(this.addToCollection);
    }

    private void buildLocationsMap() {
        this.locationsMap.clear();
        this.nonDefaultResourceCount = 0;
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        int i = 0;
        while (i < projects.length) {
            if (projects[i].isAccessible()) {
                this.addToLocationsMap(projects[i]);
            }
            ++i;
        }
    }

    private boolean checkDeletion(Project project, IFileStore location) throws CoreException {
        if (project.exists() && !location.fetchInfo().exists()) {
            Assert.isTrue((this.workspace.getWorkManager().getLock().getDepth() > 0 ? 1 : 0) != 0);
            project.deleteResource(false, null);
            return true;
        }
        return false;
    }

    public IResource[] computeAliases(IResource resource, IFileStore location) {
        if (this.hasNoAliases(resource)) {
            return null;
        }
        this.aliases.clear();
        this.internalComputeAliases(resource, location);
        int size = this.aliases.size();
        if (size == 0) {
            return null;
        }
        return this.aliases.toArray(new IResource[size]);
    }

    public IResource[] findResources(IFileStore location) {
        final ArrayList resources = new ArrayList();
        this.locationsMap.matchingResourcesDo(location, new Doit(){

            public void doit(IResource resource) {
                resources.add(resource);
            }
        });
        return resources.toArray(new IResource[0]);
    }

    private void computeDeepAliases(IResource resource, IFileStore location) {
        if (location == null) {
            return;
        }
        this.internalComputeAliases(resource, location);
        this.addToCollection.setCollection(this.aliases);
        this.locationsMap.matchingPrefixDo(location, this.addToCollection);
        if (resource.getType() == 4) {
            try {
                IResource[] members = ((IProject)resource).members();
                FileSystemResourceManager localManager = this.workspace.getFileSystemManager();
                int i = 0;
                while (i < members.length) {
                    IFileStore linkLocation;
                    if (members[i].isLinked() && (linkLocation = localManager.getStore(members[i])) != null) {
                        this.locationsMap.matchingPrefixDo(linkLocation, this.addToCollection);
                    }
                    ++i;
                }
            }
            catch (CoreException coreException) {}
        }
    }

    Comparator<IFileStore> getComparator() {
        return new Comparator<IFileStore>(){

            @Override
            public int compare(IFileStore store1, IFileStore store2) {
                URI uri2;
                URI uri1;
                int compare = this.compareStringOrNull(store1.getFileSystem().getScheme(), store2.getFileSystem().getScheme());
                if (compare != 0) {
                    return compare;
                }
                try {
                    uri1 = store1.toURI();
                    uri2 = store2.toURI();
                }
                catch (Exception e) {
                    Policy.log(e);
                    return 1;
                }
                Path path1 = new Path(uri1.getPath());
                Path path2 = new Path(uri2.getPath());
                compare = this.compareStringOrNull(path1.getDevice(), path2.getDevice());
                if (compare != 0) {
                    return compare;
                }
                int segmentCount1 = path1.segmentCount();
                int segmentCount2 = path2.segmentCount();
                int i = 0;
                while (i < segmentCount1 && i < segmentCount2) {
                    compare = path1.segment(i).compareTo(path2.segment(i));
                    if (compare != 0) {
                        return compare;
                    }
                    ++i;
                }
                compare = segmentCount1 - segmentCount2;
                if (compare != 0) {
                    return compare;
                }
                return this.compareStringOrNull(uri1.getQuery(), uri2.getQuery());
            }

            private int compareStringOrNull(String string1, String string2) {
                if (string1 == null) {
                    if (string2 == null) {
                        return 0;
                    }
                    return 1;
                }
                if (string2 == null) {
                    return -1;
                }
                return string1.compareTo(string2);
            }
        };
    }

    @Override
    public void handleEvent(LifecycleEvent event) {
        switch (event.kind) {
            case 1024: 
            case 524288: {
                Resource link = (Resource)event.resource;
                if (link.isLinked()) {
                    this.removeFromLocationsMap(link, link.getStore());
                }
            }
            case 131072: {
                this.changedLinks.add(event.resource);
                break;
            }
            case 262144: {
                this.changedLinks.add(event.resource);
                break;
            }
            case 512: {
                this.changedLinks.add(event.resource);
                break;
            }
            case 256: {
                this.changedLinks.add(event.newResource);
                break;
            }
            case 2048: {
                Resource link = (Resource)event.resource;
                if (link.isLinked()) {
                    this.removeFromLocationsMap(link, link.getStore());
                }
                this.changedLinks.add(event.newResource);
            }
        }
    }

    private boolean hasNoAliases(IResource resource) {
        boolean noAliases;
        IProject project = resource.getProject();
        boolean bl = noAliases = !this.aliasedProjects.contains(project);
        if (this.hasStructureChanges()) {
            this.updateStructureChanges();
            noAliases &= this.nonDefaultResourceCount <= 0 || !this.aliasedProjects.contains(project);
        }
        return noAliases;
    }

    private boolean hasStructureChanges() {
        return this.changedProjects || !this.changedLinks.isEmpty();
    }

    private void internalComputeAliases(IResource resource, IFileStore location) {
        IFileStore searchLocation = location;
        if (searchLocation == null) {
            searchLocation = ((Resource)resource).getStore();
        }
        if (searchLocation == null) {
            return;
        }
        this.suffix = Path.EMPTY;
        this.findAliases.setSearchAlias(resource);
        do {
            this.locationsMap.matchingResourcesDo(searchLocation, this.findAliases);
            this.suffix = new Path(searchLocation.getName()).append(this.suffix);
        } while ((searchLocation = searchLocation.getParent()) != null);
    }

    private void removeFromLocationsMap(IResource link, IFileStore location) {
        if (location != null && this.locationsMap.remove(location, link)) {
            --this.nonDefaultResourceCount;
        }
    }

    @Override
    public void resourceChanged(IResourceChangeEvent event) {
        IResourceDelta delta = event.getDelta();
        if (delta == null) {
            return;
        }
        if (delta.getAffectedChildren(3).length > 0) {
            this.changedProjects = true;
        }
        IResourceDelta[] changed = delta.getAffectedChildren(4);
        int i = 0;
        while (i < changed.length) {
            if ((changed[i].getFlags() & 0x80000) == 524288 || (changed[i].getFlags() & 0x4000) == 16384) {
                this.changedProjects = true;
                break;
            }
            ++i;
        }
    }

    @Override
    public void shutdown(IProgressMonitor monitor) {
        this.workspace.removeResourceChangeListener(this);
        this.locationsMap.clear();
    }

    @Override
    public void startup(IProgressMonitor monitor) {
        this.workspace.addLifecycleListener(this);
        this.workspace.addResourceChangeListener(this, 1);
        this.buildLocationsMap();
        this.buildAliasedProjectsSet();
    }

    public void updateAliases(IResource resource, IFileStore location, int depth, IProgressMonitor monitor) throws CoreException {
        if (this.hasNoAliases(resource)) {
            return;
        }
        this.aliases.clear();
        if (depth == 0) {
            this.internalComputeAliases(resource, location);
        } else {
            this.computeDeepAliases(resource, location);
        }
        if (this.aliases.size() == 0) {
            return;
        }
        FileSystemResourceManager localManager = this.workspace.getFileSystemManager();
        HashSet aliasesCopy = (HashSet)this.aliases.clone();
        for (IResource alias : aliasesCopy) {
            monitor.subTask(NLS.bind((String)Messages.links_updatingDuplicate, (Object)alias.getFullPath()));
            if (alias.getType() == 4 && this.checkDeletion((Project)alias, location) || ((Resource)alias).isFiltered()) continue;
            localManager.refresh(alias, 2, false, null);
        }
    }

    private void updateStructureChanges() {
        boolean hadChanges = false;
        if (this.changedProjects) {
            this.changedProjects = false;
            hadChanges = true;
            this.buildLocationsMap();
        } else {
            for (IResource resource : this.changedLinks) {
                hadChanges = true;
                if (!resource.isAccessible() || !resource.isLinked()) continue;
                this.addToLocationsMap(resource, ((Resource)resource).getStore());
            }
        }
        this.changedLinks.clear();
        if (hadChanges) {
            this.buildAliasedProjectsSet();
        }
        this.changedProjects = false;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class AddToCollectionDoit
    implements Doit {
        Collection<IResource> collection;

        @Override
        public void doit(IResource resource) {
            this.collection.add(resource);
        }

        public void setCollection(Collection<IResource> collection) {
            this.collection = collection;
        }
    }

    static interface Doit {
        public void doit(IResource var1);
    }

    class FindAliasesDoit
    implements Doit {
        private int aliasType;
        private IPath searchPath;

        FindAliasesDoit() {
        }

        public void doit(IResource match) {
            if (match.getFullPath().isPrefixOf(this.searchPath)) {
                return;
            }
            IPath aliasPath = null;
            switch (match.getType()) {
                case 4: {
                    IResource testResource;
                    if (AliasManager.this.suffix.segmentCount() > 0 && (testResource = ((IProject)match).findMember(AliasManager.this.suffix.segment(0))) != null && testResource.isLinked()) {
                        return;
                    }
                    aliasPath = match.getFullPath().append(AliasManager.this.suffix);
                    break;
                }
                case 2: {
                    aliasPath = match.getFullPath().append(AliasManager.this.suffix);
                    break;
                }
                case 1: {
                    if (AliasManager.this.suffix.segmentCount() != 0) break;
                    aliasPath = match.getFullPath();
                }
            }
            if (aliasPath != null) {
                if (this.aliasType == 1) {
                    AliasManager.this.aliases.add(AliasManager.this.workspace.getRoot().getFile(aliasPath));
                } else if (aliasPath.segmentCount() == 1) {
                    AliasManager.this.aliases.add(AliasManager.this.workspace.getRoot().getProject(aliasPath.lastSegment()));
                } else {
                    AliasManager.this.aliases.add(AliasManager.this.workspace.getRoot().getFolder(aliasPath));
                }
            }
        }

        public void setSearchAlias(IResource aliasResource) {
            this.aliasType = aliasResource.getType();
            this.searchPath = aliasResource.getFullPath();
        }
    }

    class LocationMap {
        private final SortedMap<IFileStore, Object> map;

        LocationMap() {
            this.map = new TreeMap<IFileStore, Object>(AliasManager.this.getComparator());
        }

        public boolean add(IFileStore location, IResource resource) {
            Object oldValue = this.map.get(location);
            if (oldValue == null) {
                this.map.put(location, resource);
                return true;
            }
            if (oldValue instanceof IResource) {
                if (resource.equals(oldValue)) {
                    return false;
                }
                ArrayList<Object> newValue = new ArrayList<Object>(2);
                newValue.add(oldValue);
                newValue.add(resource);
                this.map.put(location, newValue);
                return true;
            }
            ArrayList list = (ArrayList)oldValue;
            if (list.contains(resource)) {
                return false;
            }
            list.add(resource);
            return true;
        }

        public void clear() {
            this.map.clear();
        }

        public void matchingPrefixDo(IFileStore prefix, Doit doit) {
            SortedMap<IFileStore, Object> matching;
            IFileStore prefixParent = prefix.getParent();
            if (prefixParent != null) {
                IFileStore endPoint = prefixParent.getChild(String.valueOf(prefix.getName()) + "\u0000");
                matching = this.map.subMap(prefix, endPoint);
            } else {
                matching = this.map;
            }
            for (Object value : matching.values()) {
                if (value == null) {
                    return;
                }
                if (value instanceof List) {
                    Iterator duplicates = ((List)value).iterator();
                    while (duplicates.hasNext()) {
                        doit.doit((IResource)duplicates.next());
                    }
                    continue;
                }
                doit.doit((IResource)value);
            }
        }

        public void matchingResourcesDo(IFileStore location, Doit doit) {
            Object value = this.map.get(location);
            if (value == null) {
                return;
            }
            if (value instanceof List) {
                Iterator duplicates = ((List)value).iterator();
                while (duplicates.hasNext()) {
                    doit.doit((IResource)duplicates.next());
                }
            } else {
                doit.doit((IResource)value);
            }
        }

        public void overLappingResourcesDo(Doit doit) {
            Iterator<Map.Entry<IFileStore, Object>> entries = this.map.entrySet().iterator();
            IFileStore previousStore = null;
            IResource previousResource = null;
            while (entries.hasNext()) {
                Map.Entry<IFileStore, Object> current = entries.next();
                IFileStore currentStore = current.getKey();
                IResource currentResource = null;
                Object value = current.getValue();
                if (value instanceof List) {
                    Iterator duplicates = ((List)value).iterator();
                    while (duplicates.hasNext()) {
                        doit.doit(((IResource)duplicates.next()).getProject());
                    }
                } else {
                    currentResource = (IResource)value;
                }
                if (previousStore != null && previousStore.isParentOf(currentStore)) {
                    if (previousResource != null) {
                        doit.doit(previousResource.getProject());
                        previousResource = null;
                    }
                    if (currentResource == null) continue;
                    doit.doit(currentResource.getProject());
                    continue;
                }
                previousStore = currentStore;
                previousResource = currentResource;
            }
        }

        public boolean remove(IFileStore location, IResource resource) {
            Object oldValue = this.map.get(location);
            if (oldValue == null) {
                return false;
            }
            if (oldValue instanceof IResource) {
                if (resource.equals(oldValue)) {
                    this.map.remove(location);
                    return true;
                }
                return false;
            }
            ArrayList list = (ArrayList)oldValue;
            boolean wasRemoved = list.remove(resource);
            if (list.size() == 0) {
                this.map.remove(location);
            }
            return wasRemoved;
        }
    }
}

