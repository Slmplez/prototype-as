/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.StructuralPropertyDescriptor;
import org.eclipse.jdt.core.dom.rewrite.TargetSourceRangeComputer;
import org.eclipse.jdt.internal.core.dom.rewrite.ListRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.NodeRewriteEvent;
import org.eclipse.jdt.internal.core.dom.rewrite.RewriteEvent;
import org.eclipse.text.edits.TextEditGroup;

public final class RewriteEventStore {
    public static final int NEW = 1;
    public static final int ORIGINAL = 2;
    public static final int BOTH = 3;
    final Map eventLookup = new HashMap();
    private EventHolder lastEvent = null;
    private Map editGroups = null;
    List nodeCopySources = null;
    Map nodeRangeInfos = null;
    Map trackedNodes = null;
    private Set insertBoundToPrevious = null;
    private INodePropertyMapper nodePropertyMapper = null;
    private static final String INTERNAL_PLACEHOLDER_PROPERTY = "rewrite_internal_placeholder";

    public void setNodePropertyMapper(INodePropertyMapper nodePropertyMapper) {
        this.nodePropertyMapper = nodePropertyMapper;
    }

    public void clear() {
        this.eventLookup.clear();
        this.lastEvent = null;
        this.trackedNodes = null;
        this.editGroups = null;
        this.insertBoundToPrevious = null;
        this.nodeCopySources = null;
    }

    public void addEvent(ASTNode parent, StructuralPropertyDescriptor childProperty, RewriteEvent event) {
        this.validateHasChildProperty(parent, childProperty);
        if (event.isListRewrite()) {
            this.validateIsListProperty(childProperty);
        }
        EventHolder holder = new EventHolder(parent, childProperty, event);
        ArrayList<EventHolder> entriesList = (ArrayList<EventHolder>)this.eventLookup.get(parent);
        if (entriesList != null) {
            int i = 0;
            while (i < entriesList.size()) {
                EventHolder curr = (EventHolder)entriesList.get(i);
                if (curr.childProperty == childProperty) {
                    entriesList.set(i, holder);
                    this.lastEvent = null;
                    return;
                }
                ++i;
            }
        } else {
            entriesList = new ArrayList<EventHolder>(3);
            this.eventLookup.put(parent, entriesList);
        }
        entriesList.add(holder);
    }

    public RewriteEvent getEvent(ASTNode parent, StructuralPropertyDescriptor property) {
        this.validateHasChildProperty(parent, property);
        if (this.lastEvent != null && this.lastEvent.parent == parent && this.lastEvent.childProperty == property) {
            return this.lastEvent.event;
        }
        List entriesList = (List)this.eventLookup.get(parent);
        if (entriesList != null) {
            int i = 0;
            while (i < entriesList.size()) {
                EventHolder holder = (EventHolder)entriesList.get(i);
                if (holder.childProperty == property) {
                    this.lastEvent = holder;
                    return holder.event;
                }
                ++i;
            }
        }
        return null;
    }

    public NodeRewriteEvent getNodeEvent(ASTNode parent, StructuralPropertyDescriptor childProperty, boolean forceCreation) {
        this.validateIsNodeProperty(childProperty);
        NodeRewriteEvent event = (NodeRewriteEvent)this.getEvent(parent, childProperty);
        if (event == null && forceCreation) {
            Object originalValue = this.accessOriginalValue(parent, childProperty);
            event = new NodeRewriteEvent(originalValue, originalValue);
            this.addEvent(parent, childProperty, event);
        }
        return event;
    }

    public ListRewriteEvent getListEvent(ASTNode parent, StructuralPropertyDescriptor childProperty, boolean forceCreation) {
        this.validateIsListProperty(childProperty);
        ListRewriteEvent event = (ListRewriteEvent)this.getEvent(parent, childProperty);
        if (event == null && forceCreation) {
            List originalValue = (List)this.accessOriginalValue(parent, childProperty);
            event = new ListRewriteEvent(originalValue);
            this.addEvent(parent, childProperty, event);
        }
        return event;
    }

    public Iterator getChangeRootIterator() {
        return new ParentIterator();
    }

    public boolean hasChangedProperties(ASTNode parent) {
        List entriesList = (List)this.eventLookup.get(parent);
        if (entriesList != null) {
            int i = 0;
            while (i < entriesList.size()) {
                EventHolder holder = (EventHolder)entriesList.get(i);
                if (holder.event.getChangeKind() != 0) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public PropertyLocation getPropertyLocation(Object value, int kind) {
        Iterator iter = this.eventLookup.values().iterator();
        while (iter.hasNext()) {
            List events = (List)iter.next();
            int i = 0;
            while (i < events.size()) {
                EventHolder holder = (EventHolder)events.get(i);
                RewriteEvent event = holder.event;
                if (this.isNodeInEvent(event, value, kind)) {
                    return new PropertyLocation(holder.parent, holder.childProperty);
                }
                if (event.isListRewrite()) {
                    RewriteEvent[] children = event.getChildren();
                    int k = 0;
                    while (k < children.length) {
                        if (this.isNodeInEvent(children[k], value, kind)) {
                            return new PropertyLocation(holder.parent, holder.childProperty);
                        }
                        ++k;
                    }
                }
                ++i;
            }
        }
        if (value instanceof ASTNode) {
            ASTNode node = (ASTNode)value;
            return new PropertyLocation(node.getParent(), node.getLocationInParent());
        }
        return null;
    }

    public RewriteEvent findEvent(Object value, int kind) {
        Iterator iter = this.eventLookup.values().iterator();
        while (iter.hasNext()) {
            List events = (List)iter.next();
            int i = 0;
            while (i < events.size()) {
                RewriteEvent event = ((EventHolder)events.get((int)i)).event;
                if (this.isNodeInEvent(event, value, kind)) {
                    return event;
                }
                if (event.isListRewrite()) {
                    RewriteEvent[] children = event.getChildren();
                    int k = 0;
                    while (k < children.length) {
                        if (this.isNodeInEvent(children[k], value, kind)) {
                            return children[k];
                        }
                        ++k;
                    }
                }
                ++i;
            }
        }
        return null;
    }

    private boolean isNodeInEvent(RewriteEvent event, Object value, int kind) {
        if ((kind & 1) != 0 && event.getNewValue() == value) {
            return true;
        }
        return (kind & 2) != 0 && event.getOriginalValue() == value;
    }

    public Object getOriginalValue(ASTNode parent, StructuralPropertyDescriptor property) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null) {
            return event.getOriginalValue();
        }
        return this.accessOriginalValue(parent, property);
    }

    public Object getNewValue(ASTNode parent, StructuralPropertyDescriptor property) {
        RewriteEvent event = this.getEvent(parent, property);
        if (event != null) {
            return event.getNewValue();
        }
        return this.accessOriginalValue(parent, property);
    }

    public List getChangedPropertieEvents(ASTNode parent) {
        ArrayList<RewriteEvent> changedPropertiesEvent = new ArrayList<RewriteEvent>();
        List entriesList = (List)this.eventLookup.get(parent);
        if (entriesList != null) {
            int i = 0;
            while (i < entriesList.size()) {
                EventHolder holder = (EventHolder)entriesList.get(i);
                if (holder.event.getChangeKind() != 0) {
                    changedPropertiesEvent.add(holder.event);
                }
                ++i;
            }
        }
        return changedPropertiesEvent;
    }

    public int getChangeKind(ASTNode node) {
        RewriteEvent event = this.findEvent(node, 2);
        if (event != null) {
            return event.getChangeKind();
        }
        return 0;
    }

    private Object accessOriginalValue(ASTNode parent, StructuralPropertyDescriptor childProperty) {
        if (this.nodePropertyMapper != null) {
            return this.nodePropertyMapper.getOriginalValue(parent, childProperty);
        }
        return parent.getStructuralProperty(childProperty);
    }

    public TextEditGroup getEventEditGroup(RewriteEvent event) {
        if (this.editGroups == null) {
            return null;
        }
        return (TextEditGroup)this.editGroups.get(event);
    }

    public void setEventEditGroup(RewriteEvent event, TextEditGroup editGroup) {
        if (this.editGroups == null) {
            this.editGroups = new IdentityHashMap(5);
        }
        this.editGroups.put(event, editGroup);
    }

    public final TextEditGroup getTrackedNodeData(ASTNode node) {
        if (this.trackedNodes != null) {
            return (TextEditGroup)this.trackedNodes.get(node);
        }
        return null;
    }

    public void setTrackedNodeData(ASTNode node, TextEditGroup editGroup) {
        if (this.trackedNodes == null) {
            this.trackedNodes = new IdentityHashMap();
        }
        this.trackedNodes.put(node, editGroup);
    }

    public final void markAsTracked(ASTNode node, TextEditGroup editGroup) {
        if (this.getTrackedNodeData(node) != null) {
            throw new IllegalArgumentException("Node is already marked as tracked");
        }
        this.setTrackedNodeData(node, editGroup);
    }

    private final CopySourceInfo createCopySourceInfo(PropertyLocation location, ASTNode node, boolean isMove) {
        CopySourceInfo copySource = new CopySourceInfo(location, node, isMove);
        if (this.nodeCopySources == null) {
            this.nodeCopySources = new ArrayList();
        }
        this.nodeCopySources.add(copySource);
        return copySource;
    }

    public final CopySourceInfo markAsCopySource(ASTNode parent, StructuralPropertyDescriptor property, ASTNode node, boolean isMove) {
        return this.createCopySourceInfo(new PropertyLocation(parent, property), node, isMove);
    }

    public final boolean isRangeCopyPlaceholder(ASTNode node) {
        return node.getProperty(INTERNAL_PLACEHOLDER_PROPERTY) != null;
    }

    public final CopySourceInfo createRangeCopy(ASTNode parent, StructuralPropertyDescriptor childProperty, ASTNode first, ASTNode last, boolean isMove, ASTNode internalPlaceholder, ASTNode replacingNode, TextEditGroup editGroup) {
        PropertyLocation loc;
        ArrayList<NodeRangeInfo> innerList;
        CopySourceInfo copyInfo = this.createCopySourceInfo(null, internalPlaceholder, isMove);
        internalPlaceholder.setProperty(INTERNAL_PLACEHOLDER_PROPERTY, internalPlaceholder);
        NodeRangeInfo copyRangeInfo = new NodeRangeInfo(parent, childProperty, first, last, copyInfo, replacingNode, editGroup);
        ListRewriteEvent listEvent = this.getListEvent(parent, childProperty, true);
        int indexFirst = listEvent.getIndex(first, 2);
        if (indexFirst == -1) {
            throw new IllegalArgumentException("Start node is not a original child of the given list");
        }
        int indexLast = listEvent.getIndex(last, 2);
        if (indexLast == -1) {
            throw new IllegalArgumentException("End node is not a original child of the given list");
        }
        if (indexFirst > indexLast) {
            throw new IllegalArgumentException("Start node must be before end node");
        }
        if (this.nodeRangeInfos == null) {
            this.nodeRangeInfos = new HashMap();
        }
        if ((innerList = (ArrayList<NodeRangeInfo>)this.nodeRangeInfos.get(loc = new PropertyLocation(parent, childProperty))) == null) {
            innerList = new ArrayList<NodeRangeInfo>(2);
            this.nodeRangeInfos.put(loc, innerList);
        } else {
            this.assertNoOverlap(listEvent, indexFirst, indexLast, innerList);
        }
        innerList.add(copyRangeInfo);
        return copyInfo;
    }

    public CopySourceInfo[] getNodeCopySources(ASTNode node) {
        if (this.nodeCopySources == null) {
            return null;
        }
        return this.internalGetCopySources(this.nodeCopySources, node);
    }

    public CopySourceInfo[] internalGetCopySources(List copySources, ASTNode node) {
        ArrayList<CopySourceInfo> res = new ArrayList<CopySourceInfo>(3);
        int i = 0;
        while (i < copySources.size()) {
            CopySourceInfo curr = (CopySourceInfo)copySources.get(i);
            if (curr.getNode() == node) {
                res.add(curr);
            }
            ++i;
        }
        if (res.isEmpty()) {
            return null;
        }
        Object[] arr = res.toArray(new CopySourceInfo[res.size()]);
        Arrays.sort(arr);
        return arr;
    }

    private void assertNoOverlap(ListRewriteEvent listEvent, int indexFirst, int indexLast, List innerList) {
        Iterator iter = innerList.iterator();
        while (iter.hasNext()) {
            NodeRangeInfo curr = (NodeRangeInfo)iter.next();
            int currStart = listEvent.getIndex(curr.getStartNode(), 3);
            int currEnd = listEvent.getIndex(curr.getEndNode(), 3);
            if ((currStart >= indexFirst || currEnd >= indexLast || currEnd < indexFirst) && (currStart <= indexFirst || currStart > currEnd || currEnd <= indexLast)) continue;
            throw new IllegalArgumentException("Range overlapps with an existing copy or move range");
        }
    }

    public void prepareMovedNodes(TargetSourceRangeComputer sourceRangeComputer) {
        if (this.nodeCopySources != null) {
            this.prepareSingleNodeCopies();
        }
        if (this.nodeRangeInfos != null) {
            this.prepareNodeRangeCopies(sourceRangeComputer);
        }
    }

    public void revertMovedNodes() {
        if (this.nodeRangeInfos != null) {
            this.removeMoveRangePlaceholders();
        }
    }

    private void removeMoveRangePlaceholders() {
        Iterator iter = this.nodeRangeInfos.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            HashSet<Block> placeholders = new HashSet<Block>();
            List rangeInfos = (List)entry.getValue();
            int i = 0;
            while (i < rangeInfos.size()) {
                placeholders.add(((NodeRangeInfo)rangeInfos.get(i)).getInternalPlaceholder());
                ++i;
            }
            PropertyLocation loc = (PropertyLocation)entry.getKey();
            RewriteEvent[] children = this.getListEvent(loc.getParent(), loc.getProperty(), true).getChildren();
            ArrayList revertedChildren = new ArrayList();
            this.revertListWithRanges(children, placeholders, revertedChildren);
            RewriteEvent[] revertedChildrenArr = revertedChildren.toArray(new RewriteEvent[revertedChildren.size()]);
            this.addEvent(loc.getParent(), loc.getProperty(), new ListRewriteEvent(revertedChildrenArr));
        }
    }

    private void revertListWithRanges(RewriteEvent[] childEvents, Set placeholders, List revertedChildren) {
        int i = 0;
        while (i < childEvents.length) {
            RewriteEvent event = childEvents[i];
            ASTNode node = (ASTNode)event.getOriginalValue();
            if (placeholders.contains(node)) {
                RewriteEvent[] placeholderChildren = this.getListEvent(node, Block.STATEMENTS_PROPERTY, false).getChildren();
                this.revertListWithRanges(placeholderChildren, placeholders, revertedChildren);
            } else {
                revertedChildren.add(event);
            }
            ++i;
        }
    }

    private void prepareNodeRangeCopies(TargetSourceRangeComputer sourceRangeComputer) {
        Iterator iter = this.nodeRangeInfos.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            List rangeInfos = (List)entry.getValue();
            Collections.sort(rangeInfos);
            PropertyLocation loc = (PropertyLocation)entry.getKey();
            RewriteEvent[] children = this.getListEvent(loc.getParent(), loc.getProperty(), true).getChildren();
            RewriteEvent[] newChildren = this.processListWithRanges(rangeInfos, children, sourceRangeComputer);
            this.addEvent(loc.getParent(), loc.getProperty(), new ListRewriteEvent(newChildren));
        }
    }

    private RewriteEvent[] processListWithRanges(List rangeInfos, RewriteEvent[] childEvents, TargetSourceRangeComputer sourceRangeComputer) {
        List<RewriteEvent> newChildEvents = new ArrayList<RewriteEvent>(childEvents.length);
        NodeRangeInfo topInfo = null;
        Stack<ArrayList<RewriteEvent>> newChildrenStack = new Stack<ArrayList<RewriteEvent>>();
        Stack<NodeRangeInfo> topInfoStack = new Stack<NodeRangeInfo>();
        Iterator rangeInfoIterator = rangeInfos.iterator();
        NodeRangeInfo nextInfo = (NodeRangeInfo)rangeInfoIterator.next();
        int k = 0;
        while (k < childEvents.length) {
            RewriteEvent event = childEvents[k];
            ASTNode node = (ASTNode)event.getOriginalValue();
            while (nextInfo != null && node == nextInfo.getStartNode()) {
                nextInfo.updatePlaceholderSourceRanges(sourceRangeComputer);
                Block internalPlaceholder = nextInfo.getInternalPlaceholder();
                NodeRewriteEvent newEvent = nextInfo.isMove() ? new NodeRewriteEvent(internalPlaceholder, nextInfo.replacingNode) : new NodeRewriteEvent(internalPlaceholder, internalPlaceholder);
                newChildEvents.add(newEvent);
                if (nextInfo.editGroup != null) {
                    this.setEventEditGroup(newEvent, nextInfo.editGroup);
                }
                newChildrenStack.push((ArrayList<RewriteEvent>)newChildEvents);
                topInfoStack.push(topInfo);
                newChildEvents = new ArrayList(childEvents.length);
                topInfo = nextInfo;
                NodeRangeInfo nodeRangeInfo = nextInfo = rangeInfoIterator.hasNext() ? (NodeRangeInfo)rangeInfoIterator.next() : null;
            }
            newChildEvents.add(event);
            while (topInfo != null && node == topInfo.getEndNode()) {
                RewriteEvent[] placeholderChildEvents = newChildEvents.toArray(new RewriteEvent[newChildEvents.size()]);
                Block internalPlaceholder = topInfo.getInternalPlaceholder();
                this.addEvent(internalPlaceholder, Block.STATEMENTS_PROPERTY, new ListRewriteEvent(placeholderChildEvents));
                newChildEvents = (List)newChildrenStack.pop();
                topInfo = (NodeRangeInfo)topInfoStack.pop();
            }
            ++k;
        }
        return newChildEvents.toArray(new RewriteEvent[newChildEvents.size()]);
    }

    private void prepareSingleNodeCopies() {
        int i = 0;
        while (i < this.nodeCopySources.size()) {
            CopySourceInfo curr = (CopySourceInfo)this.nodeCopySources.get(i);
            if (curr.isMove && curr.location != null) {
                this.doMarkMovedAsRemoved(curr, curr.location.getParent(), curr.location.getProperty());
            }
            ++i;
        }
    }

    private void doMarkMovedAsRemoved(CopySourceInfo curr, ASTNode parent, StructuralPropertyDescriptor childProperty) {
        if (childProperty.isChildListProperty()) {
            ListRewriteEvent event = this.getListEvent(parent, childProperty, true);
            int index = event.getIndex(curr.getNode(), 2);
            if (index != -1 && event.getChangeKind(index) == 0) {
                event.setNewValue(null, index);
            }
        } else {
            NodeRewriteEvent event = this.getNodeEvent(parent, childProperty, true);
            if (event.getChangeKind() == 0) {
                event.setNewValue(null);
            }
        }
    }

    public boolean isInsertBoundToPrevious(ASTNode node) {
        if (this.insertBoundToPrevious != null) {
            return this.insertBoundToPrevious.contains(node);
        }
        return false;
    }

    public void setInsertBoundToPrevious(ASTNode node) {
        if (this.insertBoundToPrevious == null) {
            this.insertBoundToPrevious = new HashSet();
        }
        this.insertBoundToPrevious.add(node);
    }

    private void validateIsListProperty(StructuralPropertyDescriptor property) {
        if (!property.isChildListProperty()) {
            String message = String.valueOf(property.getId()) + " is not a list property";
            throw new IllegalArgumentException(message);
        }
    }

    private void validateHasChildProperty(ASTNode parent, StructuralPropertyDescriptor property) {
        if (!parent.structuralPropertiesForType().contains(property)) {
            String message = String.valueOf(Signature.getSimpleName(parent.getClass().getName())) + " has no property " + property.getId();
            throw new IllegalArgumentException(message);
        }
    }

    private void validateIsNodeProperty(StructuralPropertyDescriptor property) {
        if (property.isChildListProperty()) {
            String message = String.valueOf(property.getId()) + " is not a node property";
            throw new IllegalArgumentException(message);
        }
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        Iterator iter = this.eventLookup.values().iterator();
        while (iter.hasNext()) {
            List events = (List)iter.next();
            int i = 0;
            while (i < events.size()) {
                buf.append(events.get(i).toString()).append('\n');
                ++i;
            }
        }
        return buf.toString();
    }

    public static boolean isNewNode(ASTNode node) {
        return (node.getFlags() & 2) == 0;
    }

    public static class CopySourceInfo
    implements Comparable {
        public final PropertyLocation location;
        private final ASTNode node;
        public final boolean isMove;

        public CopySourceInfo(PropertyLocation location, ASTNode node, boolean isMove) {
            this.location = location;
            this.node = node;
            this.isMove = isMove;
        }

        public ASTNode getNode() {
            return this.node;
        }

        public int compareTo(Object o2) {
            CopySourceInfo r2 = (CopySourceInfo)o2;
            int startDiff = this.getNode().getStartPosition() - r2.getNode().getStartPosition();
            if (startDiff != 0) {
                return startDiff;
            }
            if (r2.isMove != this.isMove) {
                return this.isMove ? -1 : 1;
            }
            return 0;
        }

        public String toString() {
            StringBuffer buf = new StringBuffer();
            if (this.isMove) {
                buf.append("move source: ");
            } else {
                buf.append("copy source: ");
            }
            buf.append(this.node);
            return buf.toString();
        }
    }

    private static class EventHolder {
        public final ASTNode parent;
        public final StructuralPropertyDescriptor childProperty;
        public final RewriteEvent event;

        public EventHolder(ASTNode parent, StructuralPropertyDescriptor childProperty, RewriteEvent change) {
            this.parent = parent;
            this.childProperty = childProperty;
            this.event = change;
        }

        public String toString() {
            StringBuffer buf = new StringBuffer();
            buf.append(this.parent).append(" - ");
            buf.append(this.childProperty.getId()).append(": ");
            buf.append(this.event).append('\n');
            return buf.toString();
        }
    }

    public static interface INodePropertyMapper {
        public Object getOriginalValue(ASTNode var1, StructuralPropertyDescriptor var2);
    }

    private static class NodeRangeInfo
    implements Comparable {
        private final ASTNode first;
        private final ASTNode last;
        public final CopySourceInfo copyInfo;
        public final ASTNode replacingNode;
        public final TextEditGroup editGroup;

        public NodeRangeInfo(ASTNode parent, StructuralPropertyDescriptor childProperty, ASTNode first, ASTNode last, CopySourceInfo copyInfo, ASTNode replacingNode, TextEditGroup editGroup) {
            this.first = first;
            this.last = last;
            this.copyInfo = copyInfo;
            this.replacingNode = replacingNode;
            this.editGroup = editGroup;
        }

        public ASTNode getStartNode() {
            return this.first;
        }

        public ASTNode getEndNode() {
            return this.last;
        }

        public boolean isMove() {
            return this.copyInfo.isMove;
        }

        public Block getInternalPlaceholder() {
            return (Block)this.copyInfo.getNode();
        }

        public int compareTo(Object o2) {
            NodeRangeInfo r2 = (NodeRangeInfo)o2;
            int startDiff = this.getStartNode().getStartPosition() - r2.getStartNode().getStartPosition();
            if (startDiff != 0) {
                return startDiff;
            }
            int endDiff = this.getEndNode().getStartPosition() - r2.getEndNode().getStartPosition();
            if (endDiff != 0) {
                return -endDiff;
            }
            if (r2.isMove() != this.isMove()) {
                return this.isMove() ? -1 : 1;
            }
            return 0;
        }

        public void updatePlaceholderSourceRanges(TargetSourceRangeComputer sourceRangeComputer) {
            TargetSourceRangeComputer.SourceRange startRange = sourceRangeComputer.computeSourceRange(this.getStartNode());
            TargetSourceRangeComputer.SourceRange endRange = sourceRangeComputer.computeSourceRange(this.getEndNode());
            int startPos = startRange.getStartPosition();
            int endPos = endRange.getStartPosition() + endRange.getLength();
            Block internalPlaceholder = this.getInternalPlaceholder();
            internalPlaceholder.setSourceRange(startPos, endPos - startPos);
        }

        public String toString() {
            StringBuffer buf = new StringBuffer();
            if (this.first != this.last) {
                buf.append("range ");
            }
            if (this.isMove()) {
                buf.append("move source: ");
            } else {
                buf.append("copy source: ");
            }
            buf.append(this.first);
            buf.append(" - ");
            buf.append(this.last);
            return buf.toString();
        }
    }

    private class ParentIterator
    implements Iterator {
        private Iterator eventIter;
        private Iterator sourceNodeIter;
        private Iterator rangeNodeIter;
        private Iterator trackedNodeIter;

        public ParentIterator() {
            this.eventIter = RewriteEventStore.this.eventLookup.keySet().iterator();
            this.sourceNodeIter = RewriteEventStore.this.nodeCopySources != null ? RewriteEventStore.this.nodeCopySources.iterator() : Collections.EMPTY_LIST.iterator();
            this.rangeNodeIter = RewriteEventStore.this.nodeRangeInfos != null ? RewriteEventStore.this.nodeRangeInfos.keySet().iterator() : Collections.EMPTY_LIST.iterator();
            this.trackedNodeIter = RewriteEventStore.this.trackedNodes != null ? RewriteEventStore.this.trackedNodes.keySet().iterator() : Collections.EMPTY_LIST.iterator();
        }

        public boolean hasNext() {
            return this.eventIter.hasNext() || this.sourceNodeIter.hasNext() || this.rangeNodeIter.hasNext() || this.trackedNodeIter.hasNext();
        }

        public Object next() {
            if (this.eventIter.hasNext()) {
                return this.eventIter.next();
            }
            if (this.sourceNodeIter.hasNext()) {
                return ((CopySourceInfo)this.sourceNodeIter.next()).getNode();
            }
            if (this.rangeNodeIter.hasNext()) {
                return ((PropertyLocation)this.rangeNodeIter.next()).getParent();
            }
            return this.trackedNodeIter.next();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class PropertyLocation {
        private final ASTNode parent;
        private final StructuralPropertyDescriptor property;

        public PropertyLocation(ASTNode parent, StructuralPropertyDescriptor property) {
            this.parent = parent;
            this.property = property;
        }

        public ASTNode getParent() {
            return this.parent;
        }

        public StructuralPropertyDescriptor getProperty() {
            return this.property;
        }

        public boolean equals(Object obj) {
            if (obj != null && obj.getClass().equals(this.getClass())) {
                PropertyLocation other = (PropertyLocation)obj;
                return other.getParent().equals(this.getParent()) && other.getProperty().equals(this.getProperty());
            }
            return false;
        }

        public int hashCode() {
            return this.getParent().hashCode() + this.getProperty().hashCode();
        }
    }
}

