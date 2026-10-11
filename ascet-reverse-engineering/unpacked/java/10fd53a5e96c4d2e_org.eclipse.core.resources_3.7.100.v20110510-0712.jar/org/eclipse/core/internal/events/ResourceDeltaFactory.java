/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.events;

import java.util.Map;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.NodeComparison;
import org.eclipse.core.internal.events.NodeIDMap;
import org.eclipse.core.internal.events.ResourceComparator;
import org.eclipse.core.internal.events.ResourceDelta;
import org.eclipse.core.internal.events.ResourceDeltaInfo;
import org.eclipse.core.internal.resources.MarkerSet;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class ResourceDeltaFactory {
    protected static final ResourceDelta[] NO_CHILDREN = new ResourceDelta[0];

    public static ResourceDelta computeDelta(Workspace workspace, ElementTree oldTree, ElementTree newTree, IPath root, long markerGeneration) {
        ResourceComparator comparator = markerGeneration >= 0L ? ResourceComparator.getNotificationComparator() : ResourceComparator.getBuildComparator();
        newTree.immutable();
        DeltaDataTree delta = null;
        delta = Path.ROOT.equals((Object)root) ? newTree.getDataTree().compareWith(oldTree.getDataTree(), comparator) : newTree.getDataTree().compareWith(oldTree.getDataTree(), comparator, root);
        delta = delta.asReverseComparisonTree(comparator);
        Path pathInTree = root.isRoot() ? Path.ROOT : root;
        Path pathInDelta = Path.ROOT;
        Map<IPath, MarkerSet> allMarkerDeltas = null;
        if (markerGeneration >= 0L) {
            allMarkerDeltas = workspace.getMarkerManager().getMarkerDeltas(markerGeneration);
        }
        ResourceDeltaInfo deltaInfo = new ResourceDeltaInfo(workspace, allMarkerDeltas, comparator);
        ResourceDelta result = ResourceDeltaFactory.createDelta(workspace, delta, deltaInfo, (IPath)pathInTree, (IPath)pathInDelta);
        deltaInfo.setNodeIDMap(ResourceDeltaFactory.computeNodeIDMap(result, new NodeIDMap()));
        result.fixMovesAndMarkers(oldTree);
        int segmentCount = result.getFullPath().segmentCount();
        if (segmentCount <= 1) {
            ResourceDeltaFactory.checkForOpen(result, segmentCount);
        }
        return result;
    }

    protected static void checkForOpen(ResourceDelta delta, int segmentCount) {
        if (delta.getKind() == 1 && delta.newInfo.isSet(1)) {
            delta.status |= 0x4000;
        }
        if (segmentCount == 1) {
            return;
        }
        ResourceDelta[] children = delta.children;
        int i = 0;
        while (i < children.length) {
            ResourceDeltaFactory.checkForOpen(children[i], 1);
            ++i;
        }
    }

    protected static NodeIDMap computeNodeIDMap(ResourceDelta delta, NodeIDMap nodeIDMap) {
        ResourceDelta[] children = delta.children;
        int i = 0;
        while (i < children.length) {
            ResourceDelta child = children[i];
            IPath path = child.getFullPath();
            switch (child.getKind()) {
                case 1: {
                    nodeIDMap.putNewPath(child.newInfo.getNodeId(), path);
                    break;
                }
                case 2: {
                    nodeIDMap.putOldPath(child.oldInfo.getNodeId(), path);
                    break;
                }
                case 4: {
                    long oldID = child.oldInfo.getNodeId();
                    long newID = child.newInfo.getNodeId();
                    if (oldID == newID) break;
                    nodeIDMap.putOldPath(oldID, path);
                    nodeIDMap.putNewPath(newID, path);
                }
            }
            ResourceDeltaFactory.computeNodeIDMap(child, nodeIDMap);
            ++i;
        }
        return nodeIDMap;
    }

    protected static ResourceDelta createDelta(Workspace workspace, DeltaDataTree delta, ResourceDeltaInfo deltaInfo, IPath pathInTree, IPath pathInDelta) {
        ResourceDelta result = new ResourceDelta(pathInTree, deltaInfo);
        NodeComparison compare = (NodeComparison)delta.getData(pathInDelta);
        int comparison = compare.getUserComparison();
        result.setStatus(comparison);
        if (comparison == 0 || Path.ROOT.equals((Object)pathInTree)) {
            ResourceInfo info = workspace.getResourceInfo(pathInTree, true, false);
            result.setOldInfo(info);
            result.setNewInfo(info);
        } else {
            result.setOldInfo((ResourceInfo)compare.getOldData());
            result.setNewInfo((ResourceInfo)compare.getNewData());
        }
        IPath[] childKeys = delta.getChildren(pathInDelta);
        int numChildren = childKeys.length;
        if (numChildren == 0) {
            result.setChildren(NO_CHILDREN);
        } else {
            ResourceDelta[] children = new ResourceDelta[numChildren];
            int i = 0;
            while (i < numChildren) {
                IPath newTreePath = pathInTree == pathInDelta ? childKeys[i] : pathInTree.append(childKeys[i].lastSegment());
                children[i] = ResourceDeltaFactory.createDelta(workspace, delta, deltaInfo, newTreePath, childKeys[i]);
                ++i;
            }
            result.setChildren(children);
        }
        int status = result.status;
        if ((status & 0x1F) == 0 && numChildren != 0) {
            result.setStatus(status |= 4);
        }
        return result;
    }

    public static IResourceDelta newEmptyDelta(IProject project) {
        ResourceDelta result = new ResourceDelta(project.getFullPath(), new ResourceDeltaInfo((Workspace)project.getWorkspace(), null, ResourceComparator.getBuildComparator()));
        result.setStatus(0);
        result.setChildren(NO_CHILDREN);
        ResourceInfo info = ((Project)project).getResourceInfo(true, false);
        result.setOldInfo(info);
        result.setNewInfo(info);
        return result;
    }
}

