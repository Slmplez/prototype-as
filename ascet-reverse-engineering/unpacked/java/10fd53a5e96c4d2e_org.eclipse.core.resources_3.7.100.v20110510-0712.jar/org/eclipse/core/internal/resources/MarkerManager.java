/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.localstore.SafeChunkyInputStream;
import org.eclipse.core.internal.localstore.SafeFileInputStream;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.Marker;
import org.eclipse.core.internal.resources.MarkerDelta;
import org.eclipse.core.internal.resources.MarkerDeltaManager;
import org.eclipse.core.internal.resources.MarkerInfo;
import org.eclipse.core.internal.resources.MarkerReader;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.MarkerSnapshotReader;
import org.eclipse.core.internal.resources.MarkerTypeDefinitionCache;
import org.eclipse.core.internal.resources.MarkerWriter;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerManager
implements IManager {
    private static final MarkerInfo[] NO_MARKER_INFO = new MarkerInfo[0];
    private static final IMarker[] NO_MARKERS = new IMarker[0];
    protected MarkerTypeDefinitionCache cache = new MarkerTypeDefinitionCache();
    private long changeId = 0L;
    protected Map<IPath, MarkerSet> currentDeltas = null;
    protected final MarkerDeltaManager deltaManager = new MarkerDeltaManager();
    protected Workspace workspace;
    protected MarkerWriter writer = new MarkerWriter(this);

    public MarkerManager(Workspace workspace) {
        this.workspace = workspace;
    }

    public void add(IResource resource, MarkerInfo newMarker) throws CoreException {
        MarkerSet markers;
        Resource target = (Resource)resource;
        ResourceInfo info = this.workspace.getResourceInfo(target.getFullPath(), false, false);
        target.checkExists(target.getFlags(info), false);
        info = this.workspace.getResourceInfo(resource.getFullPath(), false, true);
        if (info == null) {
            return;
        }
        if (this.isPersistent(newMarker)) {
            info.set(4096);
        }
        if ((markers = info.getMarkers(true)) == null) {
            markers = new MarkerSet(1);
        }
        this.basicAdd(resource, markers, newMarker);
        if (!markers.isEmpty()) {
            info.setMarkers(markers);
        }
    }

    private void basicAdd(IResource resource, MarkerSet markers, MarkerInfo newMarker) throws CoreException {
        if (newMarker.getId() != -1L) {
            String message = Messages.resources_changeInAdd;
            throw new ResourceException(new ResourceStatus(566, resource.getFullPath(), message));
        }
        newMarker.setId(this.workspace.nextMarkerId());
        markers.add(newMarker);
        IMarkerSetElement[] changes = new IMarkerSetElement[]{new MarkerDelta(1, resource, newMarker)};
        this.changedMarkers(resource, changes);
    }

    protected MarkerInfo[] basicFindMatching(MarkerSet markers, String type, boolean includeSubtypes) {
        int size = markers.size();
        if (size <= 0) {
            return NO_MARKER_INFO;
        }
        ArrayList<MarkerInfo> result = new ArrayList<MarkerInfo>(size);
        IMarkerSetElement[] elements = markers.elements();
        int i = 0;
        while (i < elements.length) {
            MarkerInfo marker = (MarkerInfo)elements[i];
            if (type == null) {
                result.add(marker);
            } else if (includeSubtypes) {
                if (this.cache.isSubtype(marker.getType(), type)) {
                    result.add(marker);
                }
            } else if (marker.getType().equals(type)) {
                result.add(marker);
            }
            ++i;
        }
        size = result.size();
        if (size <= 0) {
            return NO_MARKER_INFO;
        }
        return result.toArray(new MarkerInfo[size]);
    }

    protected int basicFindMaxSeverity(MarkerSet markers, String type, boolean includeSubtypes) {
        int max = -1;
        int size = markers.size();
        if (size <= 0) {
            return max;
        }
        IMarkerSetElement[] elements = markers.elements();
        int i = 0;
        while (i < elements.length) {
            MarkerInfo marker = (MarkerInfo)elements[i];
            if (type == null) {
                max = Math.max(max, this.getSeverity(marker));
            } else if (includeSubtypes) {
                if (this.cache.isSubtype(marker.getType(), type)) {
                    max = Math.max(max, this.getSeverity(marker));
                }
            } else if (marker.getType().equals(type)) {
                max = Math.max(max, this.getSeverity(marker));
            }
            if (max >= 2) break;
            ++i;
        }
        return max;
    }

    private int getSeverity(MarkerInfo marker) {
        Object o = marker.getAttribute("severity");
        if (o instanceof Integer) {
            Integer i = (Integer)o;
            return i;
        }
        return -1;
    }

    protected void basicRemoveMarkers(ResourceInfo info, IPathRequestor requestor, String type, boolean includeSubtypes) {
        IMarkerSetElement[] matching;
        IPath path;
        MarkerSet markers = info.getMarkers(false);
        if (markers == null) {
            return;
        }
        if (type == null) {
            path = requestor.requestPath();
            info = this.workspace.getResourceInfo(path, false, true);
            info.setMarkers(null);
            matching = markers.elements();
        } else {
            matching = this.basicFindMatching(markers, type, includeSubtypes);
            if (matching.length == 0) {
                return;
            }
            path = requestor.requestPath();
            info = this.workspace.getResourceInfo(path, false, true);
            markers = info.getMarkers(true);
            markers.removeAll(matching);
            info.setMarkers(markers.size() == 0 ? null : markers);
        }
        info.set(4096);
        IMarkerSetElement[] changes = new IMarkerSetElement[matching.length];
        IResource resource = this.workspace.getRoot().findMember(path);
        int i = 0;
        while (i < matching.length) {
            changes[i] = new MarkerDelta(2, resource, (MarkerInfo)matching[i]);
            ++i;
        }
        this.changedMarkers(resource, changes);
    }

    protected void buildMarkers(IMarkerSetElement[] markers, IPath path, int type, ArrayList<IMarker> list) {
        if (markers.length == 0) {
            return;
        }
        Resource resource = this.workspace.newResource(path, type);
        list.ensureCapacity(list.size() + markers.length);
        int i = 0;
        while (i < markers.length) {
            list.add(new Marker(resource, ((MarkerInfo)markers[i]).getId()));
            ++i;
        }
    }

    protected void changedMarkers(IResource resource, IMarkerSetElement[] changes) {
        IPath path;
        MarkerSet previousChanges;
        MarkerSet result;
        if (changes == null || changes.length == 0) {
            return;
        }
        ++this.changeId;
        if (this.currentDeltas == null) {
            this.currentDeltas = this.deltaManager.newGeneration(this.changeId);
        }
        if ((result = MarkerDelta.merge(previousChanges = this.currentDeltas.get(path = resource.getFullPath()), changes)).size() == 0) {
            this.currentDeltas.remove(path);
        } else {
            this.currentDeltas.put(path, result);
        }
        ResourceInfo info = this.workspace.getResourceInfo(path, false, true);
        if (info != null) {
            info.incrementMarkerGenerationCount();
        }
    }

    public IMarker findMarker(IResource resource, long id) {
        MarkerInfo info = this.findMarkerInfo(resource, id);
        return info == null ? null : new Marker(resource, info.getId());
    }

    public MarkerInfo findMarkerInfo(IResource resource, long id) {
        ResourceInfo info = this.workspace.getResourceInfo(resource.getFullPath(), false, false);
        if (info == null) {
            return null;
        }
        MarkerSet markers = info.getMarkers(false);
        if (markers == null) {
            return null;
        }
        return (MarkerInfo)markers.get(id);
    }

    public IMarker[] findMarkers(IResource target, String type, boolean includeSubtypes, int depth) {
        ArrayList<IMarker> result = new ArrayList<IMarker>();
        this.doFindMarkers(target, result, type, includeSubtypes, depth);
        if (result.size() == 0) {
            return NO_MARKERS;
        }
        return result.toArray(new IMarker[result.size()]);
    }

    public void doFindMarkers(IResource target, ArrayList<IMarker> result, String type, boolean includeSubtypes, int depth) {
        if (depth == 2 && target.getType() != 1) {
            this.visitorFindMarkers(target.getFullPath(), result, type, includeSubtypes);
        } else {
            this.recursiveFindMarkers(target.getFullPath(), result, type, includeSubtypes, depth);
        }
    }

    public int findMaxProblemSeverity(IResource target, String type, boolean includeSubtypes, int depth) {
        if (depth == 2 && target.getType() != 1) {
            return this.visitorFindMaxSeverity(target.getFullPath(), type, includeSubtypes);
        }
        return this.recursiveFindMaxSeverity(target.getFullPath(), type, includeSubtypes, depth);
    }

    public long getChangeId() {
        return this.changeId;
    }

    public Map<IPath, MarkerSet> getMarkerDeltas(long startChangeId) {
        return this.deltaManager.assembleDeltas(startChangeId);
    }

    boolean hasDelta(IPath path, long id) {
        if (this.currentDeltas == null) {
            return false;
        }
        MarkerSet set = this.currentDeltas.get(path);
        if (set == null) {
            return false;
        }
        return set.get(id) != null;
    }

    public boolean isPersistent(MarkerInfo info) {
        if (!this.cache.isPersistent(info.getType())) {
            return false;
        }
        Object isTransient = info.getAttribute("transient");
        return isTransient == null || !(isTransient instanceof Boolean) || (Boolean)isTransient == false;
    }

    public boolean isPersistentType(String type) {
        return this.cache.isPersistent(type);
    }

    public boolean isSubtype(String type, String superType) {
        return this.cache.isSubtype(type, superType);
    }

    public void moved(final IResource source, IResource destination, int depth) throws CoreException {
        final int count = destination.getFullPath().segmentCount();
        IResourceVisitor visitor = new IResourceVisitor(){

            public boolean visit(IResource resource) {
                Resource r = (Resource)resource;
                ResourceInfo info = r.getResourceInfo(false, true);
                MarkerSet markers = info.getMarkers(false);
                if (markers == null) {
                    return true;
                }
                info.set(4096);
                IMarkerSetElement[] removed = new IMarkerSetElement[markers.size()];
                IMarkerSetElement[] added = new IMarkerSetElement[markers.size()];
                IPath path = resource.getFullPath().removeFirstSegments(count);
                path = source.getFullPath().append(path);
                Resource sourceChild = MarkerManager.this.workspace.newResource(path, resource.getType());
                IMarkerSetElement[] elements = markers.elements();
                int i = 0;
                while (i < elements.length) {
                    MarkerInfo markerInfo = (MarkerInfo)elements[i];
                    MarkerDelta delta = new MarkerDelta(1, resource, markerInfo);
                    added[i] = delta;
                    delta = new MarkerDelta(2, sourceChild, markerInfo);
                    removed[i] = delta;
                    ++i;
                }
                MarkerManager.this.changedMarkers(resource, added);
                MarkerManager.this.changedMarkers(sourceChild, removed);
                return true;
            }
        };
        destination.accept(visitor, depth, 10);
    }

    private void recursiveFindMarkers(IPath path, ArrayList<IMarker> list, String type, boolean includeSubtypes, int depth) {
        ResourceInfo info = this.workspace.getResourceInfo(path, false, false);
        if (info == null) {
            return;
        }
        MarkerSet markers = info.getMarkers(false);
        if (markers != null) {
            IMarkerSetElement[] matching = type == null ? markers.elements() : this.basicFindMatching(markers, type, includeSubtypes);
            this.buildMarkers(matching, path, info.getType(), list);
        }
        if (depth == 0 || info.getType() == 1) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        IPath[] children = this.workspace.getElementTree().getChildren(path);
        int i = 0;
        while (i < children.length) {
            this.recursiveFindMarkers(children[i], list, type, includeSubtypes, depth);
            ++i;
        }
    }

    private int recursiveFindMaxSeverity(IPath path, String type, boolean includeSubtypes, int depth) {
        ResourceInfo info = this.workspace.getResourceInfo(path, false, false);
        if (info == null) {
            return -1;
        }
        MarkerSet markers = info.getMarkers(false);
        int max = -1;
        if (markers != null && (max = this.basicFindMaxSeverity(markers, type, includeSubtypes)) >= 2) {
            return max;
        }
        if (depth == 0 || info.getType() == 1) {
            return max;
        }
        if (depth == 1) {
            depth = 0;
        }
        IPath[] children = this.workspace.getElementTree().getChildren(path);
        int i = 0;
        while (i < children.length) {
            if ((max = Math.max(max, this.recursiveFindMaxSeverity(children[i], type, includeSubtypes, depth))) >= 2) break;
            ++i;
        }
        return max;
    }

    private void recursiveRemoveMarkers(final IPath path, String type, boolean includeSubtypes, int depth) {
        ResourceInfo info = this.workspace.getResourceInfo(path, false, false);
        if (info == null) {
            return;
        }
        IPathRequestor requestor = new IPathRequestor(){

            public String requestName() {
                return path.lastSegment();
            }

            public IPath requestPath() {
                return path;
            }
        };
        this.basicRemoveMarkers(info, requestor, type, includeSubtypes);
        if (depth == 0 || info.getType() == 1) {
            return;
        }
        if (depth == 1) {
            depth = 0;
        }
        IPath[] children = this.workspace.getElementTree().getChildren(path);
        int i = 0;
        while (i < children.length) {
            this.recursiveRemoveMarkers(children[i], type, includeSubtypes, depth);
            ++i;
        }
    }

    public void removeMarker(IResource resource, long id) {
        MarkerInfo markerInfo = this.findMarkerInfo(resource, id);
        if (markerInfo == null) {
            return;
        }
        ResourceInfo info = ((Workspace)resource.getWorkspace()).getResourceInfo(resource.getFullPath(), false, true);
        MarkerSet markers = info.getMarkers(true);
        int size = markers.size();
        markers.remove(markerInfo);
        info.setMarkers(markers.size() == 0 ? null : markers);
        if (markers.size() != size) {
            if (this.isPersistent(markerInfo)) {
                info.set(4096);
            }
            IMarkerSetElement[] change = new IMarkerSetElement[]{new MarkerDelta(2, resource, markerInfo)};
            this.changedMarkers(resource, change);
        }
    }

    public void removeMarkers(IResource resource, int depth) {
        this.removeMarkers(resource, null, false, depth);
    }

    public void removeMarkers(IResource target, String type, boolean includeSubtypes, int depth) {
        if (depth == 2 && target.getType() != 1) {
            this.visitorRemoveMarkers(target.getFullPath(), type, includeSubtypes);
        } else {
            this.recursiveRemoveMarkers(target.getFullPath(), type, includeSubtypes, depth);
        }
    }

    public void resetMarkerDeltas(long startId) {
        this.currentDeltas = null;
        this.deltaManager.resetDeltas(startId);
    }

    public void restore(IResource resource, boolean generateDeltas, IProgressMonitor monitor) throws CoreException {
        this.restoreFromSave(resource, generateDeltas);
        this.restoreFromSnap(resource);
    }

    protected void restoreFromSave(IResource resource, boolean generateDeltas) throws CoreException {
        IPath sourceLocation = this.workspace.getMetaArea().getMarkersLocationFor(resource);
        IPath tempLocation = this.workspace.getMetaArea().getBackupLocationFor(sourceLocation);
        File sourceFile = new File(sourceLocation.toOSString());
        File tempFile = new File(tempLocation.toOSString());
        if (!sourceFile.exists() && !tempFile.exists()) {
            return;
        }
        try {
            DataInputStream input = new DataInputStream(new SafeFileInputStream(sourceLocation.toOSString(), tempLocation.toOSString()));
            try {
                MarkerReader reader = new MarkerReader(this.workspace);
                reader.read(input, generateDeltas);
            }
            finally {
                input.close();
            }
        }
        catch (Exception e) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)sourceLocation);
            throw new ResourceException(567, sourceLocation, msg, e);
        }
    }

    protected void restoreFromSnap(IResource resource) {
        IPath sourceLocation = this.workspace.getMetaArea().getMarkersSnapshotLocationFor(resource);
        if (!sourceLocation.toFile().exists()) {
            return;
        }
        try {
            DataInputStream input = new DataInputStream(new SafeChunkyInputStream(sourceLocation.toFile()));
            try {
                try {
                    MarkerSnapshotReader reader = new MarkerSnapshotReader(this.workspace);
                    while (true) {
                        reader.read(input);
                    }
                }
                catch (EOFException eOFException) {
                    input.close();
                }
            }
            catch (Throwable throwable) {
                input.close();
                throw throwable;
            }
        }
        catch (Exception e) {
            String msg = NLS.bind((String)Messages.resources_readMeta, (Object)sourceLocation);
            Policy.log(new ResourceStatus(567, sourceLocation, msg, e));
        }
    }

    public void save(ResourceInfo info, IPathRequestor requestor, DataOutputStream output, List<String> list) throws IOException {
        this.writer.save(info, requestor, output, list);
    }

    @Override
    public void shutdown(IProgressMonitor monitor) {
    }

    public void snap(ResourceInfo info, IPathRequestor requestor, DataOutputStream output) throws IOException {
        this.writer.snap(info, requestor, output);
    }

    @Override
    public void startup(IProgressMonitor monitor) {
    }

    private void visitorFindMarkers(IPath path, final ArrayList<IMarker> list, final String type, final boolean includeSubtypes) {
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                ResourceInfo info = (ResourceInfo)elementContents;
                if (info == null) {
                    return false;
                }
                MarkerSet markers = info.getMarkers(false);
                if (markers != null) {
                    IMarkerSetElement[] matching = type == null ? markers.elements() : MarkerManager.this.basicFindMatching(markers, type, includeSubtypes);
                    MarkerManager.this.buildMarkers(matching, requestor.requestPath(), info.getType(), list);
                }
                return true;
            }
        };
        new ElementTreeIterator(this.workspace.getElementTree(), path).iterate(visitor);
    }

    private int visitorFindMaxSeverity(IPath path, String type, boolean includeSubtypes) {
        class MaxSeverityVisitor
        implements IElementContentVisitor {
            int max = -1;
            private final /* synthetic */ String val$type;
            private final /* synthetic */ boolean val$includeSubtypes;

            MaxSeverityVisitor(String string, boolean bl) {
                this.val$type = string;
                this.val$includeSubtypes = bl;
            }

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                if (this.max >= 2) {
                    return false;
                }
                ResourceInfo info = (ResourceInfo)elementContents;
                if (info == null) {
                    return false;
                }
                MarkerSet markers = info.getMarkers(false);
                if (markers != null) {
                    this.max = Math.max(this.max, MarkerManager.this.basicFindMaxSeverity(markers, this.val$type, this.val$includeSubtypes));
                }
                return this.max < 2;
            }
        }
        MaxSeverityVisitor visitor = new MaxSeverityVisitor(type, includeSubtypes);
        new ElementTreeIterator(this.workspace.getElementTree(), path).iterate(visitor);
        return visitor.max;
    }

    private void visitorRemoveMarkers(IPath path, final String type, final boolean includeSubtypes) {
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree tree, IPathRequestor requestor, Object elementContents) {
                ResourceInfo info = (ResourceInfo)elementContents;
                if (info == null) {
                    return false;
                }
                MarkerManager.this.basicRemoveMarkers(info, requestor, type, includeSubtypes);
                return true;
            }
        };
        new ElementTreeIterator(this.workspace.getElementTree(), path).iterate(visitor);
    }
}

