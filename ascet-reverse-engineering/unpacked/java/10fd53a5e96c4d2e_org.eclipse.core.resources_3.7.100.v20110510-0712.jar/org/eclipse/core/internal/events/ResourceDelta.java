/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.core.internal.events;

import java.util.Map;
import org.eclipse.core.internal.events.NodeIDMap;
import org.eclipse.core.internal.events.ResourceDeltaInfo;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceDelta
extends PlatformObject
implements IResourceDelta {
    protected IPath path;
    protected ResourceDeltaInfo deltaInfo;
    protected int status;
    protected ResourceInfo oldInfo;
    protected ResourceInfo newInfo;
    protected ResourceDelta[] children;
    protected IResource cachedResource;
    protected static int KIND_MASK = 255;
    private static IMarkerDelta[] EMPTY_MARKER_DELTAS = new IMarkerDelta[0];

    protected ResourceDelta(IPath path, ResourceDeltaInfo deltaInfo) {
        this.path = path;
        this.deltaInfo = deltaInfo;
    }

    @Override
    public void accept(IResourceDeltaVisitor visitor) throws CoreException {
        this.accept(visitor, 0);
    }

    @Override
    public void accept(IResourceDeltaVisitor visitor, boolean includePhantoms) throws CoreException {
        this.accept(visitor, includePhantoms ? 1 : 0);
    }

    @Override
    public void accept(IResourceDeltaVisitor visitor, int memberFlags) throws CoreException {
        int mask;
        boolean includePhantoms = (memberFlags & 1) != 0;
        boolean includeTeamPrivate = (memberFlags & 2) != 0;
        boolean includeHidden = (memberFlags & 8) != 0;
        int n = mask = includePhantoms ? 31 : 7;
        if ((this.getKind() & mask) == 0) {
            return;
        }
        if (!visitor.visit(this)) {
            return;
        }
        int i = 0;
        while (i < this.children.length) {
            ResourceDelta childDelta = this.children[i];
            if (!(!includeTeamPrivate && childDelta.isTeamPrivate() || !includePhantoms && childDelta.isPhantom() || !includeHidden && childDelta.isHidden())) {
                childDelta.accept(visitor, memberFlags);
            }
            ++i;
        }
    }

    protected void checkForMarkerDeltas() {
        MarkerSet changes;
        if (this.deltaInfo.getMarkerDeltas() == null) {
            return;
        }
        int kind = this.getKind();
        if ((this.path.isRoot() || kind == 1 || kind == 2) && (changes = this.deltaInfo.getMarkerDeltas().get(this.path)) != null && changes.size() > 0) {
            this.status |= 0x20000;
            if (kind == 0) {
                this.status |= 4;
            }
        }
    }

    @Override
    public IResourceDelta findMember(IPath path) {
        int segmentCount = path.segmentCount();
        if (segmentCount == 0) {
            return this;
        }
        ResourceDelta current = this;
        int i = 0;
        while (i < segmentCount) {
            int j;
            ResourceDelta[] currentChildren;
            block4: {
                currentChildren = current.children;
                j = 0;
                int jmax = currentChildren.length;
                while (j < jmax) {
                    if (!currentChildren[j].getFullPath().lastSegment().equals(path.segment(i))) {
                        ++j;
                        continue;
                    }
                    break block4;
                }
                return null;
            }
            current = currentChildren[j];
            ++i;
        }
        return current;
    }

    protected void fixMovesAndMarkers(ElementTree oldTree) {
        NodeIDMap nodeIDMap = this.deltaInfo.getNodeIDMap();
        if (!this.path.isRoot() && !nodeIDMap.isEmpty()) {
            int kind = this.getKind();
            switch (kind) {
                case 1: 
                case 4: {
                    IPath oldPath = nodeIDMap.getOldPath(this.newInfo.getNodeId());
                    if (oldPath == null || oldPath.equals((Object)this.path)) break;
                    ResourceInfo actualOldInfo = (ResourceInfo)oldTree.getElementData(oldPath);
                    this.status = this.status & KIND_MASK | this.deltaInfo.getComparator().compare(actualOldInfo, this.newInfo) & ~KIND_MASK;
                    this.status |= 0x1000;
                    if (kind == 4) {
                        this.status = this.status | 0x40000 | 0x100;
                    }
                    if (this.oldInfo == null || this.newInfo == null || this.oldInfo.getType() == this.newInfo.getType()) break;
                    this.status |= 0x8000;
                }
            }
            switch (kind) {
                case 2: 
                case 4: {
                    IPath newPath = nodeIDMap.getNewPath(this.oldInfo.getNodeId());
                    if (newPath == null || newPath.equals((Object)this.path)) break;
                    this.status |= 0x2000;
                    if (kind != 4) break;
                    this.status = this.status | 0x40000 | 0x100;
                }
            }
        }
        this.checkForMarkerDeltas();
        int i = 0;
        while (i < this.children.length) {
            this.children[i].fixMovesAndMarkers(oldTree);
            ++i;
        }
    }

    @Override
    public IResourceDelta[] getAffectedChildren() {
        return this.getAffectedChildren(7, 0);
    }

    @Override
    public IResourceDelta[] getAffectedChildren(int kindMask) {
        return this.getAffectedChildren(kindMask, 0);
    }

    @Override
    public IResourceDelta[] getAffectedChildren(int kindMask, int memberFlags) {
        boolean includeHidden;
        int numChildren = this.children.length;
        if (numChildren == 0) {
            return this.children;
        }
        boolean includePhantoms = (memberFlags & 1) != 0;
        boolean includeTeamPrivate = (memberFlags & 2) != 0;
        boolean bl = includeHidden = (memberFlags & 8) != 0;
        if (includePhantoms) {
            kindMask |= 0x18;
        }
        int matching = 0;
        int i = 0;
        while (i < numChildren) {
            if (!((this.children[i].getKind() & kindMask) == 0 || !includePhantoms && this.children[i].isPhantom() || !includeTeamPrivate && this.children[i].isTeamPrivate() || !includeHidden && this.children[i].isHidden())) {
                ++matching;
            }
            ++i;
        }
        if (matching == numChildren) {
            IResourceDelta[] result = new IResourceDelta[this.children.length];
            System.arraycopy(this.children, 0, result, 0, this.children.length);
            return result;
        }
        IResourceDelta[] result = new IResourceDelta[matching];
        int nextPosition = 0;
        int i2 = 0;
        while (i2 < numChildren) {
            if (!((this.children[i2].getKind() & kindMask) == 0 || !includePhantoms && this.children[i2].isPhantom() || !includeTeamPrivate && this.children[i2].isTeamPrivate() || !includeHidden && this.children[i2].isHidden())) {
                result[nextPosition++] = this.children[i2];
            }
            ++i2;
        }
        return result;
    }

    protected ResourceDeltaInfo getDeltaInfo() {
        return this.deltaInfo;
    }

    @Override
    public int getFlags() {
        return this.status & ~KIND_MASK;
    }

    @Override
    public IPath getFullPath() {
        return this.path;
    }

    @Override
    public int getKind() {
        return this.status & KIND_MASK;
    }

    @Override
    public IMarkerDelta[] getMarkerDeltas() {
        MarkerSet changes;
        Map<IPath, MarkerSet> markerDeltas = this.deltaInfo.getMarkerDeltas();
        if (markerDeltas == null) {
            return EMPTY_MARKER_DELTAS;
        }
        if (this.path == null) {
            this.path = Path.ROOT;
        }
        if ((changes = markerDeltas.get(this.path)) == null) {
            return EMPTY_MARKER_DELTAS;
        }
        IMarkerSetElement[] elements = changes.elements();
        IMarkerDelta[] result = new IMarkerDelta[elements.length];
        int i = 0;
        while (i < elements.length) {
            result[i] = (IMarkerDelta)((Object)elements[i]);
            ++i;
        }
        return result;
    }

    @Override
    public IPath getMovedFromPath() {
        if ((this.status & 0x1000) != 0) {
            return this.deltaInfo.getNodeIDMap().getOldPath(this.newInfo.getNodeId());
        }
        return null;
    }

    @Override
    public IPath getMovedToPath() {
        if ((this.status & 0x2000) != 0) {
            return this.deltaInfo.getNodeIDMap().getNewPath(this.oldInfo.getNodeId());
        }
        return null;
    }

    @Override
    public IPath getProjectRelativePath() {
        IPath full = this.getFullPath();
        int count = full.segmentCount();
        if (count < 0) {
            return null;
        }
        if (count <= 1) {
            return Path.EMPTY;
        }
        return full.removeFirstSegments(1);
    }

    @Override
    public IResource getResource() {
        if (this.cachedResource != null) {
            return this.cachedResource;
        }
        if (this.path.segmentCount() == 0) {
            return this.deltaInfo.getWorkspace().getRoot();
        }
        ResourceInfo info = null;
        info = (this.getKind() & 0x12) != 0 ? this.oldInfo : this.newInfo;
        if (info == null) {
            Assert.isNotNull(null, (String)("Do not have resource info for resource in delta: " + this.path));
        }
        this.cachedResource = this.deltaInfo.getWorkspace().newResource(this.path, info.getType());
        return this.cachedResource;
    }

    protected boolean isPhantom() {
        if ((this.status & 0x12) != 0) {
            return ResourceInfo.isSet(this.oldInfo.getFlags(), 8);
        }
        return ResourceInfo.isSet(this.newInfo.getFlags(), 8);
    }

    protected boolean isTeamPrivate() {
        if ((this.status & 0x12) != 0) {
            return ResourceInfo.isSet(this.oldInfo.getFlags(), 32768);
        }
        return ResourceInfo.isSet(this.newInfo.getFlags(), 32768);
    }

    protected boolean isHidden() {
        if ((this.status & 0x12) != 0) {
            return ResourceInfo.isSet(this.oldInfo.getFlags(), 0x200000);
        }
        return ResourceInfo.isSet(this.newInfo.getFlags(), 0x200000);
    }

    protected void setChildren(ResourceDelta[] children) {
        this.children = children;
    }

    protected void setNewInfo(ResourceInfo newInfo) {
        this.newInfo = newInfo;
    }

    protected void setOldInfo(ResourceInfo oldInfo) {
        this.oldInfo = oldInfo;
    }

    protected void setStatus(int status) {
        this.status = status;
    }

    public String toDebugString() {
        StringBuffer buffer = new StringBuffer();
        this.writeDebugString(buffer);
        return buffer.toString();
    }

    public String toDeepDebugString() {
        StringBuffer buffer = new StringBuffer("\n");
        this.writeDebugString(buffer);
        int i = 0;
        while (i < this.children.length) {
            buffer.append(this.children[i].toDeepDebugString());
            ++i;
        }
        return buffer.toString();
    }

    public String toString() {
        return "ResourceDelta(" + this.path + ')';
    }

    public void updateMarkers(Map<IPath, MarkerSet> markers) {
        this.deltaInfo.setMarkerDeltas(markers);
    }

    public void writeDebugString(StringBuffer buffer) {
        buffer.append(this.getFullPath());
        buffer.append('[');
        switch (this.getKind()) {
            case 1: {
                buffer.append('+');
                break;
            }
            case 8: {
                buffer.append('>');
                break;
            }
            case 2: {
                buffer.append('-');
                break;
            }
            case 16: {
                buffer.append('<');
                break;
            }
            case 4: {
                buffer.append('*');
                break;
            }
            case 0: {
                buffer.append('~');
                break;
            }
            default: {
                buffer.append('?');
            }
        }
        buffer.append("]: {");
        int changeFlags = this.getFlags();
        boolean prev = false;
        if ((changeFlags & 0x100) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("CONTENT");
            prev = true;
        }
        if ((changeFlags & 0x200000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("LOCAL_CHANGED");
            prev = true;
        }
        if ((changeFlags & 0x1000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("MOVED_FROM(" + this.getMovedFromPath() + ")");
            prev = true;
        }
        if ((changeFlags & 0x2000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("MOVED_TO(" + this.getMovedToPath() + ")");
            prev = true;
        }
        if ((changeFlags & 0x4000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("OPEN");
            prev = true;
        }
        if ((changeFlags & 0x8000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("TYPE");
            prev = true;
        }
        if ((changeFlags & 0x10000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("SYNC");
            prev = true;
        }
        if ((changeFlags & 0x20000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("MARKERS");
            this.writeMarkerDebugString(buffer);
            prev = true;
        }
        if ((changeFlags & 0x40000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("REPLACED");
            prev = true;
        }
        if ((changeFlags & 0x80000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("DESCRIPTION");
            prev = true;
        }
        if ((changeFlags & 0x100000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("ENCODING");
            prev = true;
        }
        if ((changeFlags & 0x400000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("DERIVED_CHANGED");
            prev = true;
        }
        buffer.append("}");
        if (this.isTeamPrivate()) {
            buffer.append(" (team private)");
        }
        if (this.isHidden()) {
            buffer.append(" (hidden)");
        }
    }

    public void writeMarkerDebugString(StringBuffer buffer) {
        Map<IPath, MarkerSet> markerDeltas = this.deltaInfo.getMarkerDeltas();
        if (markerDeltas == null || markerDeltas.isEmpty()) {
            return;
        }
        buffer.append('[');
        for (IPath key : markerDeltas.keySet()) {
            if (!this.getResource().getFullPath().equals((Object)key)) continue;
            IMarkerSetElement[] deltas = markerDeltas.get(key).elements();
            boolean addComma = false;
            int i = 0;
            while (i < deltas.length) {
                IMarkerDelta delta = (IMarkerDelta)((Object)deltas[i]);
                if (addComma) {
                    buffer.append(',');
                }
                switch (delta.getKind()) {
                    case 1: {
                        buffer.append('+');
                        break;
                    }
                    case 2: {
                        buffer.append('-');
                        break;
                    }
                    case 4: {
                        buffer.append('*');
                    }
                }
                buffer.append(delta.getId());
                addComma = true;
                ++i;
            }
        }
        buffer.append(']');
    }
}

