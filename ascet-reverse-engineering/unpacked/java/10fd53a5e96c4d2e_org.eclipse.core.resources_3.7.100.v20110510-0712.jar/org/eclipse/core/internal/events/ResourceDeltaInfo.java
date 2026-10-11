/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.events;

import java.util.Map;
import org.eclipse.core.internal.events.NodeIDMap;
import org.eclipse.core.internal.events.ResourceComparator;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.runtime.IPath;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceDeltaInfo {
    protected Workspace workspace;
    protected Map<IPath, MarkerSet> allMarkerDeltas;
    protected NodeIDMap nodeIDMap;
    protected ResourceComparator comparator;

    public ResourceDeltaInfo(Workspace workspace, Map<IPath, MarkerSet> markerDeltas, ResourceComparator comparator) {
        this.workspace = workspace;
        this.allMarkerDeltas = markerDeltas;
        this.comparator = comparator;
    }

    public ResourceComparator getComparator() {
        return this.comparator;
    }

    public Map<IPath, MarkerSet> getMarkerDeltas() {
        return this.allMarkerDeltas;
    }

    public NodeIDMap getNodeIDMap() {
        return this.nodeIDMap;
    }

    public Workspace getWorkspace() {
        return this.workspace;
    }

    public void setMarkerDeltas(Map<IPath, MarkerSet> value) {
        this.allMarkerDeltas = value;
    }

    public void setNodeIDMap(NodeIDMap map) {
        this.nodeIDMap = map;
    }
}

