/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.team.internal.core.mapping;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IPath;

public class PathTree {
    private Map objects = new HashMap();

    public synchronized Object get(IPath path) {
        Node node = this.getNode(path);
        if (node == null) {
            return null;
        }
        return node.getPayload();
    }

    public synchronized Object put(IPath path, Object object) {
        Node node = this.getNode(path);
        if (node == null) {
            node = this.addNode(path);
        }
        Object previous = node.getPayload();
        node.setPayload(object);
        if (previous == null) {
            this.addToParents(path, path);
        }
        return previous;
    }

    public synchronized Object remove(IPath path) {
        Node node = this.getNode(path);
        if (node == null) {
            return null;
        }
        Object previous = node.getPayload();
        node.setPayload(null);
        if (previous != null) {
            this.removeFromParents(path, path);
            if (node.isEmpty()) {
                this.removeNode(path);
            }
        }
        return previous;
    }

    public synchronized boolean hasChildren(IPath path) {
        if (path.isEmpty()) {
            return !this.objects.isEmpty();
        }
        Node node = this.getNode(path);
        if (node == null) {
            return false;
        }
        return node.hasDescendants();
    }

    public synchronized IPath[] getChildren(IPath path) {
        Set possibleChildren;
        HashSet<IPath> children = new HashSet<IPath>();
        Node node = this.getNode(path);
        if (node != null && (possibleChildren = node.descendantsWithPayload) != null) {
            Iterator it = possibleChildren.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                IPath descendantPath = (IPath)next;
                IPath childPath = null;
                if (descendantPath.segmentCount() == path.segmentCount() + 1) {
                    childPath = descendantPath;
                } else if (descendantPath.segmentCount() > path.segmentCount()) {
                    childPath = descendantPath.removeLastSegments(descendantPath.segmentCount() - path.segmentCount() - 1);
                }
                if (childPath == null) continue;
                children.add(childPath);
            }
        }
        return children.toArray(new IPath[children.size()]);
    }

    private boolean addToParents(IPath path, IPath parent) {
        boolean addedParent = false;
        if (path == parent) {
            addedParent = true;
        } else {
            HashSet<IPath> children;
            Node node = this.getNode(parent);
            if (node == null) {
                node = this.addNode(parent);
            }
            if ((children = node.descendantsWithPayload) == null) {
                node.descendantsWithPayload = children = new HashSet<IPath>();
                addedParent = true;
            }
            children.add(path);
        }
        if (parent.segmentCount() == 0 || !this.addToParents(path, parent.removeLastSegments(1))) {
            // empty if block
        }
        return addedParent;
    }

    private boolean removeFromParents(IPath path, IPath parent) {
        boolean removedParent = false;
        Node node = this.getNode(parent);
        if (node == null) {
            removedParent = true;
        } else {
            Set children = node.descendantsWithPayload;
            if (children == null) {
                removedParent = true;
            } else {
                children.remove(path);
                if (children.isEmpty()) {
                    node.descendantsWithPayload = null;
                    if (node.isEmpty()) {
                        this.removeNode(parent);
                    }
                    removedParent = true;
                }
            }
        }
        if (parent.segmentCount() == 0 || !this.removeFromParents(path, parent.removeLastSegments(1))) {
            // empty if block
        }
        return removedParent;
    }

    public synchronized void clear() {
        this.objects.clear();
    }

    public synchronized boolean isEmpty() {
        return this.objects.isEmpty();
    }

    public synchronized IPath[] getPaths() {
        ArrayList<IPath> result = new ArrayList<IPath>();
        Iterator iter = this.objects.keySet().iterator();
        while (iter.hasNext()) {
            IPath path = (IPath)iter.next();
            Node node = this.getNode(path);
            if (node.getPayload() == null) continue;
            result.add(path);
        }
        return result.toArray(new IPath[result.size()]);
    }

    public synchronized Collection values() {
        ArrayList<Object> result = new ArrayList<Object>();
        Iterator iter = this.objects.keySet().iterator();
        while (iter.hasNext()) {
            IPath path = (IPath)iter.next();
            Node node = this.getNode(path);
            if (node.getPayload() == null) continue;
            result.add(node.getPayload());
        }
        return result;
    }

    public int size() {
        return this.values().size();
    }

    private Node getNode(IPath path) {
        return (Node)this.objects.get(path);
    }

    private Node addNode(IPath path) {
        Node node = new Node();
        this.objects.put(path, node);
        return node;
    }

    private Object removeNode(IPath path) {
        return this.objects.remove(path);
    }

    public synchronized IPath[] setPropogatedProperty(IPath path, int property, boolean value) {
        HashSet changed = new HashSet();
        this.internalSetPropertyBit(path, property, value, changed);
        return changed.toArray(new IPath[changed.size()]);
    }

    private void internalSetPropertyBit(IPath path, int property, boolean value, Set changed) {
        if (path.segmentCount() == 0) {
            return;
        }
        Node node = this.getNode(path);
        if (node == null) {
            return;
        }
        if (value == node.hasFlag(property)) {
            return;
        }
        if (!value && node.descendantHasFlag(property)) {
            return;
        }
        node.setProperty(property, value);
        changed.add(path);
        this.internalSetPropertyBit(path.removeLastSegments(1), property, value, changed);
    }

    public synchronized boolean getProperty(IPath path, int property) {
        if (path.segmentCount() == 0) {
            return false;
        }
        Node node = this.getNode(path);
        if (node == null) {
            return false;
        }
        return node.hasFlag(property);
    }

    class Node {
        Object payload;
        Set descendantsWithPayload;
        int flags;

        Node() {
        }

        public boolean isEmpty() {
            return this.payload == null && (this.descendantsWithPayload == null || this.descendantsWithPayload.isEmpty());
        }

        public Object getPayload() {
            return this.payload;
        }

        public void setPayload(Object payload) {
            this.payload = payload;
        }

        public boolean hasDescendants() {
            return this.descendantsWithPayload != null && !this.descendantsWithPayload.isEmpty();
        }

        public boolean hasFlag(int propertyBit) {
            return (this.flags & propertyBit) != 0;
        }

        public void setProperty(int propertyBit, boolean value) {
            this.flags = value ? (this.flags |= propertyBit) : (this.flags ^= propertyBit);
        }

        public boolean descendantHasFlag(int property) {
            if (this.hasDescendants()) {
                Iterator iter = this.descendantsWithPayload.iterator();
                while (iter.hasNext()) {
                    IPath path = (IPath)iter.next();
                    Node child = PathTree.this.getNode(path);
                    if (!child.hasFlag(property)) continue;
                    return true;
                }
            }
            return false;
        }
    }
}

