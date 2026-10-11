/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources;

import java.util.Map;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.Marker;
import org.eclipse.core.internal.resources.MarkerInfo;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerDelta
implements IMarkerDelta,
IMarkerSetElement {
    protected int kind;
    protected IResource resource;
    protected MarkerInfo info;

    public MarkerDelta(int kind, IResource resource, MarkerInfo info) {
        this.kind = kind;
        this.resource = resource;
        this.info = info;
    }

    @Override
    public Object getAttribute(String attributeName) {
        return this.info.getAttribute(attributeName);
    }

    @Override
    public int getAttribute(String attributeName, int defaultValue) {
        Object value = this.info.getAttribute(attributeName);
        if (value instanceof Integer) {
            return (Integer)value;
        }
        return defaultValue;
    }

    @Override
    public String getAttribute(String attributeName, String defaultValue) {
        Object value = this.info.getAttribute(attributeName);
        if (value instanceof String) {
            return (String)value;
        }
        return defaultValue;
    }

    @Override
    public boolean getAttribute(String attributeName, boolean defaultValue) {
        Object value = this.info.getAttribute(attributeName);
        if (value instanceof Boolean) {
            return (Boolean)value;
        }
        return defaultValue;
    }

    @Override
    public Map<String, Object> getAttributes() {
        return this.info.getAttributes();
    }

    @Override
    public Object[] getAttributes(String[] attributeNames) {
        return this.info.getAttributes(attributeNames);
    }

    @Override
    public long getId() {
        return this.info.getId();
    }

    @Override
    public int getKind() {
        return this.kind;
    }

    @Override
    public IMarker getMarker() {
        return new Marker(this.resource, this.getId());
    }

    @Override
    public IResource getResource() {
        return this.resource;
    }

    @Override
    public String getType() {
        return this.info.getType();
    }

    @Override
    public boolean isSubtypeOf(String superType) {
        return ((Workspace)this.getResource().getWorkspace()).getMarkerManager().isSubtype(this.getType(), superType);
    }

    public static Map<IPath, MarkerSet> merge(Map<IPath, MarkerSet> oldChanges, Map<IPath, MarkerSet> newChanges) {
        if (oldChanges == null) {
            return newChanges;
        }
        if (newChanges == null) {
            return oldChanges;
        }
        for (IPath key : newChanges.keySet()) {
            MarkerSet oldSet = oldChanges.get(key);
            MarkerSet newSet = newChanges.get(key);
            if (oldSet == null) {
                oldChanges.put(key, newSet);
                continue;
            }
            MarkerDelta.merge(oldSet, newSet.elements());
        }
        return oldChanges;
    }

    protected static MarkerSet merge(MarkerSet oldChanges, IMarkerSetElement[] newChanges) {
        if (oldChanges == null) {
            MarkerSet result = new MarkerSet(newChanges.length);
            int i = 0;
            while (i < newChanges.length) {
                result.add(newChanges[i]);
                ++i;
            }
            return result;
        }
        if (newChanges == null) {
            return oldChanges;
        }
        int i = 0;
        while (i < newChanges.length) {
            MarkerDelta newDelta = (MarkerDelta)newChanges[i];
            MarkerDelta oldDelta = (MarkerDelta)oldChanges.get(newDelta.getId());
            if (oldDelta == null) {
                oldChanges.add(newDelta);
            } else {
                block0 : switch (oldDelta.getKind()) {
                    case 1: {
                        switch (newDelta.getKind()) {
                            case 1: {
                                break block0;
                            }
                            case 2: {
                                oldChanges.remove(oldDelta);
                                break block0;
                            }
                        }
                        break;
                    }
                    case 2: {
                        switch (newDelta.getKind()) {
                            case 1: {
                                break block0;
                            }
                            case 2: {
                                break block0;
                            }
                        }
                        break;
                    }
                    case 4: {
                        switch (newDelta.getKind()) {
                            case 1: {
                                break block0;
                            }
                            case 2: {
                                oldDelta.setKind(2);
                                break block0;
                            }
                        }
                    }
                }
            }
            ++i;
        }
        return oldChanges;
    }

    private void setKind(int kind) {
        this.kind = kind;
    }
}

