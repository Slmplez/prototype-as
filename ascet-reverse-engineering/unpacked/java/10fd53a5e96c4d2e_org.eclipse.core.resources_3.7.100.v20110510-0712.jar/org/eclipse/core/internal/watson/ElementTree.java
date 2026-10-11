/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.watson;

import java.util.HashMap;
import org.eclipse.core.internal.dtree.AbstractDataTreeNode;
import org.eclipse.core.internal.dtree.DataTreeLookup;
import org.eclipse.core.internal.dtree.DataTreeNode;
import org.eclipse.core.internal.dtree.DeltaDataTree;
import org.eclipse.core.internal.dtree.ObjectNotFoundException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.internal.watson.DefaultElementComparator;
import org.eclipse.core.internal.watson.ElementTreeIterator;
import org.eclipse.core.internal.watson.IElementComparator;
import org.eclipse.core.internal.watson.IElementContentVisitor;
import org.eclipse.core.internal.watson.IElementTreeData;
import org.eclipse.core.internal.watson.IPathRequestor;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public class ElementTree {
    protected DeltaDataTree tree;
    protected IElementTreeData userData;
    private volatile ChildIDsCache childIDsCache = null;
    private volatile DataTreeLookup lookupCache = null;
    private volatile DataTreeLookup lookupCacheIgnoreCase = null;
    private static int treeCounter = 0;
    private int treeStamp;

    public ElementTree() {
        this.initialize(new DeltaDataTree());
    }

    protected ElementTree(DataTreeNode rootNode) {
        this.initialize(rootNode);
    }

    protected ElementTree(DeltaDataTree tree) {
        this.initialize(tree);
    }

    protected ElementTree(ElementTree parent) {
        IElementTreeData data;
        if (!parent.isImmutable()) {
            parent.immutable();
        }
        if ((data = parent.getTreeData()) != null) {
            this.userData = (IElementTreeData)data.clone();
        }
        this.initialize(parent.tree.newEmptyDeltaTree());
    }

    public synchronized ElementTree collapseTo(ElementTree parent) {
        Assert.isTrue((boolean)this.tree.isImmutable());
        if (this == parent) {
            return this;
        }
        this.tree.collapseTo(parent.tree, DefaultElementComparator.getComparator());
        return this;
    }

    public synchronized void createElement(IPath key, Object data) {
        if (key.isRoot()) {
            return;
        }
        this.childIDsCache = null;
        IPath parent = key.removeLastSegments(1);
        try {
            this.tree.createChild(parent, key.lastSegment(), data);
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(parent);
        }
        this.lookupCache = DataTreeLookup.newLookup(key, true, data, true);
        this.lookupCacheIgnoreCase = null;
    }

    public synchronized void createSubtree(IPath key, ElementTree subtree) {
        if (key.isRoot()) {
            throw new IllegalArgumentException(Messages.watson_noModify);
        }
        this.childIDsCache = null;
        this.lookupCacheIgnoreCase = null;
        this.lookupCache = null;
        try {
            IPath[] children = subtree.getChildren(subtree.getRoot());
            if (children.length != 1) {
                throw new IllegalArgumentException(Messages.watson_illegalSubtree);
            }
            DataTreeNode node = (DataTreeNode)subtree.tree.copyCompleteSubtree(children[0]);
            this.tree.createSubtree(key, node);
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(key);
        }
    }

    public synchronized void deleteElement(IPath key) {
        if (key.isRoot()) {
            return;
        }
        this.childIDsCache = null;
        this.lookupCacheIgnoreCase = null;
        this.lookupCache = null;
        try {
            this.tree.deleteChild(key.removeLastSegments(1), key.lastSegment());
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(key);
        }
    }

    protected void elementNotFound(IPath key) {
        throw new IllegalArgumentException(NLS.bind((String)Messages.watson_elementNotFound, (Object)key));
    }

    public static int findOldest(ElementTree[] trees) {
        HashMap<ElementTree, ElementTree> candidates = new HashMap<ElementTree, ElementTree>((int)((double)trees.length * 1.5 + 1.0));
        int i = 0;
        while (i < trees.length) {
            candidates.put(trees[i], trees[i]);
            ++i;
        }
        ElementTree oldestSoFar = null;
        while (candidates.size() > 0) {
            ElementTree current = (ElementTree)candidates.values().iterator().next();
            candidates.remove(current);
            ElementTree parent = current.getParent();
            while (parent != null && parent != oldestSoFar) {
                candidates.remove(parent);
                parent = parent.getParent();
            }
            oldestSoFar = current;
        }
        Assert.isNotNull(oldestSoFar);
        int i2 = 0;
        while (i2 < trees.length) {
            if (trees[i2] == oldestSoFar) {
                return i2;
            }
            ++i2;
        }
        Assert.isTrue((boolean)false, (String)"Should not get here");
        return -1;
    }

    public synchronized int getChildCount(IPath key) {
        Assert.isNotNull((Object)key);
        return this.getChildIDs(key).length;
    }

    protected IPath[] getChildIDs(IPath key) {
        ChildIDsCache cache = this.childIDsCache;
        if (cache != null && cache.path == key) {
            return cache.childPaths;
        }
        try {
            if (key == null) {
                return new IPath[]{this.tree.rootKey()};
            }
            IPath[] children = this.tree.getChildren(key);
            this.childIDsCache = new ChildIDsCache(key, children);
            return children;
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(key);
            return null;
        }
    }

    public synchronized IPath[] getChildren(IPath key) {
        Assert.isNotNull((Object)key);
        return this.getChildIDs(key);
    }

    public DeltaDataTree getDataTree() {
        return this.tree;
    }

    public synchronized Object getElementData(IPath key) {
        if (key.isRoot()) {
            return null;
        }
        DataTreeLookup lookup = this.lookupCache;
        if (lookup == null || lookup.key != key) {
            this.lookupCache = lookup = this.tree.lookup(key);
        }
        if (lookup.isPresent) {
            return lookup.data;
        }
        this.elementNotFound(key);
        return null;
    }

    public synchronized Object getElementDataIgnoreCase(IPath key) {
        if (key.isRoot()) {
            return null;
        }
        DataTreeLookup lookup = this.lookupCacheIgnoreCase;
        if (lookup == null || lookup.key != key) {
            this.lookupCacheIgnoreCase = lookup = this.tree.lookupIgnoreCase(key);
        }
        if (lookup.isPresent) {
            return lookup.data;
        }
        this.elementNotFound(key);
        return null;
    }

    public synchronized String[] getNamesOfChildren(IPath key) {
        try {
            if (key == null) {
                return new String[]{""};
            }
            return this.tree.getNamesOfChildren(key);
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(key);
            return null;
        }
    }

    public ElementTree getParent() {
        DeltaDataTree parentTree = this.tree.getParent();
        if (parentTree == null) {
            return null;
        }
        return (ElementTree)parentTree.getData(this.tree.rootKey());
    }

    public IPath getRoot() {
        return this.getChildIDs(null)[0];
    }

    public ElementTree getSubtree(IPath key) {
        if (key.isRoot()) {
            return this;
        }
        try {
            DataTreeNode elementNode = (DataTreeNode)this.tree.copyCompleteSubtree(key);
            return new ElementTree(elementNode);
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(key);
            return null;
        }
    }

    public IElementTreeData getTreeData() {
        return this.userData;
    }

    public static boolean hasChanges(ElementTree newLayer, ElementTree oldLayer, IElementComparator comparator, boolean inclusive) {
        ElementTree layer;
        if (newLayer == null || oldLayer == null) {
            return true;
        }
        if (newLayer == oldLayer) {
            return false;
        }
        if (comparator.compare(newLayer.getTreeData(), oldLayer.getTreeData()) != 0) {
            return true;
        }
        ElementTree stopLayer = null;
        if (newLayer.isImmutable()) {
            stopLayer = newLayer.getParent();
        } else {
            layer = newLayer;
            while (layer != null && layer.getParent() != null) {
                if (!layer.getDataTree().isEmptyDelta()) {
                    return true;
                }
                layer = layer.getParent();
            }
        }
        layer = inclusive ? oldLayer : oldLayer.getParent();
        while (layer != null && layer.getParent() != stopLayer) {
            if (!layer.getDataTree().isEmptyDelta()) {
                return true;
            }
            layer = layer.getParent();
        }
        return false;
    }

    public synchronized void immutable() {
        if (!this.tree.isImmutable()) {
            this.tree.immutable();
            this.lookupCacheIgnoreCase = null;
            this.lookupCache = null;
            this.tree.reroot();
        }
    }

    public synchronized boolean includes(IPath key) {
        DataTreeLookup lookup = this.lookupCache;
        if (lookup == null || lookup.key != key) {
            this.lookupCache = lookup = this.tree.lookup(key);
        }
        return lookup.isPresent;
    }

    public boolean includesIgnoreCase(IPath key) {
        DataTreeLookup lookup = this.lookupCacheIgnoreCase;
        if (lookup == null || lookup.key != key) {
            this.lookupCacheIgnoreCase = lookup = this.tree.lookupIgnoreCase(key);
        }
        return lookup.isPresent;
    }

    protected void initialize(DataTreeNode rootNode) {
        this.initialize(new DeltaDataTree(new DataTreeNode(null, null, new AbstractDataTreeNode[]{rootNode})));
    }

    protected void initialize(DeltaDataTree newTree) {
        this.treeStamp = treeCounter++;
        newTree.setData(newTree.rootKey(), this);
        this.tree = newTree;
    }

    public boolean isImmutable() {
        return this.tree.isImmutable();
    }

    public ElementTree mergeDeltaChain(IPath path, ElementTree[] trees) {
        if (path == null || trees == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.watson_nullArg, (Object)"ElementTree.mergeDeltaChain"));
        }
        if (this.isImmutable()) {
            throw new IllegalArgumentException(Messages.watson_immutable);
        }
        ElementTree current = this;
        if (trees.length > 0) {
            ElementTree toMerge = trees[ElementTree.findOldest(trees)];
            while (toMerge != null) {
                if (path.isRoot()) {
                    IPath[] children = toMerge.getChildren((IPath)Path.ROOT);
                    int i = 0;
                    while (i < children.length) {
                        current.createSubtree(children[i], toMerge.getSubtree(children[i]));
                        ++i;
                    }
                } else {
                    current.createSubtree(path, toMerge.getSubtree(path));
                }
                current.immutable();
                int i = 0;
                while (i < trees.length) {
                    if (trees[i] == toMerge) {
                        trees[i] = current;
                    }
                    ++i;
                }
                current = current.newEmptyDelta();
                toMerge = toMerge.getParent();
            }
        }
        return current;
    }

    public synchronized ElementTree newEmptyDelta() {
        this.lookupCacheIgnoreCase = null;
        this.lookupCache = null;
        return new ElementTree(this);
    }

    public synchronized Object openElementData(IPath key) {
        Assert.isTrue((!this.isImmutable() ? 1 : 0) != 0);
        if (key.isRoot()) {
            return null;
        }
        DataTreeLookup lookup = this.lookupCache;
        if (lookup == null || lookup.key != key) {
            this.lookupCache = lookup = this.tree.lookup(key);
        }
        if (lookup.isPresent) {
            if (lookup.foundInFirstDelta) {
                return lookup.data;
            }
            IElementTreeData oldData = (IElementTreeData)lookup.data;
            if (oldData != null) {
                try {
                    Object newData = oldData.clone();
                    this.tree.setData(key, newData);
                    this.lookupCacheIgnoreCase = null;
                    this.lookupCache = null;
                    return newData;
                }
                catch (ObjectNotFoundException objectNotFoundException) {
                    this.elementNotFound(key);
                }
            }
        } else {
            this.elementNotFound(key);
        }
        return null;
    }

    public synchronized void setElementData(IPath key, Object data) {
        if (key.isRoot()) {
            return;
        }
        Assert.isNotNull((Object)key);
        this.lookupCacheIgnoreCase = null;
        this.lookupCache = null;
        try {
            this.tree.setData(key, data);
        }
        catch (ObjectNotFoundException objectNotFoundException) {
            this.elementNotFound(key);
        }
    }

    public void setTreeData(IElementTreeData data) {
        this.userData = data;
    }

    public void shareStrings(StringPool set) {
        this.tree.storeStrings(set);
    }

    public String toDebugString() {
        final StringBuffer buffer = new StringBuffer("\n");
        IElementContentVisitor visitor = new IElementContentVisitor(){

            public boolean visitElement(ElementTree aTree, IPathRequestor elementID, Object elementContents) {
                buffer.append(elementID.requestPath() + " " + elementContents + "\n");
                return true;
            }
        };
        new ElementTreeIterator(this, (IPath)Path.ROOT).iterate(visitor);
        return buffer.toString();
    }

    public String toString() {
        return "ElementTree(" + this.treeStamp + ")";
    }

    private class ChildIDsCache {
        IPath path;
        IPath[] childPaths;

        ChildIDsCache(IPath path, IPath[] childPaths) {
            this.path = path;
            this.childPaths = childPaths;
        }
    }
}

