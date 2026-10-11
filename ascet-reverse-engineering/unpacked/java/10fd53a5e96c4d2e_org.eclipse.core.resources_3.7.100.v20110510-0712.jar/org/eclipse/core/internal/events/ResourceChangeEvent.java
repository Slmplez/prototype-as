/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.events;

import java.util.ArrayList;
import java.util.EventObject;
import java.util.Map;
import org.eclipse.core.internal.events.ResourceDelta;
import org.eclipse.core.internal.events.ResourceDeltaInfo;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.MarkerDelta;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.IPath;

public class ResourceChangeEvent
extends EventObject
implements IResourceChangeEvent {
    private static final IMarkerDelta[] NO_MARKER_DELTAS = new IMarkerDelta[0];
    private static final long serialVersionUID = 1L;
    IResourceDelta delta;
    IResource resource;
    private int trigger = 0;
    int type;

    protected ResourceChangeEvent(Object source, int type, IResource resource) {
        super(source);
        this.resource = resource;
        this.type = type;
    }

    public ResourceChangeEvent(Object source, int type, int buildKind, IResourceDelta delta) {
        super(source);
        this.delta = delta;
        this.trigger = buildKind;
        this.type = type;
    }

    public IMarkerDelta[] findMarkerDeltas(String findType, boolean includeSubtypes) {
        if (this.delta == null) {
            return NO_MARKER_DELTAS;
        }
        ResourceDeltaInfo info = ((ResourceDelta)this.delta).getDeltaInfo();
        if (info == null) {
            return NO_MARKER_DELTAS;
        }
        Map<IPath, MarkerSet> markerDeltas = info.getMarkerDeltas();
        if (markerDeltas == null || markerDeltas.size() == 0) {
            return NO_MARKER_DELTAS;
        }
        ArrayList<MarkerDelta> matching = new ArrayList<MarkerDelta>();
        for (MarkerSet deltas : markerDeltas.values()) {
            IMarkerSetElement[] elements = deltas.elements();
            int i = 0;
            while (i < elements.length) {
                MarkerDelta markerDelta = (MarkerDelta)elements[i];
                if (findType == null || (includeSubtypes ? markerDelta.isSubtypeOf(findType) : markerDelta.getType().equals(findType))) {
                    matching.add(markerDelta);
                }
                ++i;
            }
        }
        return matching.toArray(new IMarkerDelta[matching.size()]);
    }

    public int getBuildKind() {
        return this.trigger;
    }

    public IResourceDelta getDelta() {
        return this.delta;
    }

    public IResource getResource() {
        return this.resource;
    }

    public int getType() {
        return this.type;
    }

    public void setDelta(IResourceDelta value) {
        this.delta = value;
    }
}

