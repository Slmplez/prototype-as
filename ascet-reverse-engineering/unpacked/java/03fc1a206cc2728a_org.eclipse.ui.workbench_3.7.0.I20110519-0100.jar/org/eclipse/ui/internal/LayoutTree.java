/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.ISizeProvider;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.LayoutPartSash;
import org.eclipse.ui.internal.LayoutTreeNode;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;

public class LayoutTree
implements ISizeProvider {
    LayoutTreeNode parent;
    LayoutPart part;
    private int cachedMinimumWidthHint = -1;
    private int cachedMinimumWidth = -1;
    private int cachedMinimumHeightHint = -1;
    private int cachedMinimumHeight = -1;
    private int cachedMaximumWidthHint = -1;
    private int cachedMaximumWidth = -1;
    private int cachedMaximumHeightHint = -1;
    private int cachedMaximumHeight = -1;
    private boolean sizeFlagsDirty = true;
    private int widthSizeFlags = 0;
    private int heightSizeFlags = 0;
    public static int minCacheHits;
    public static int minCacheMisses;
    public static int maxCacheHits;
    public static int maxCacheMisses;
    private boolean forceLayout = true;
    private Rectangle currentBounds = new Rectangle(0, 0, 0, 0);

    public LayoutTree(LayoutPart part) {
        this.part = part;
    }

    public LayoutPart computeRelation(ArrayList relations) {
        return this.part;
    }

    public LayoutPart findPart(Point toFind) {
        return this.part;
    }

    public void disposeSashes() {
    }

    public LayoutTree find(LayoutPart child) {
        if (this.part != child) {
            return null;
        }
        return this;
    }

    public void findSashes(PartPane.Sashes sashes) {
        if (this.getParent() == null) {
            return;
        }
        this.getParent().findSashes(this, sashes);
    }

    public LayoutPart findBottomRight() {
        return this.part;
    }

    public LayoutTreeNode findSash(LayoutPartSash sash) {
        return null;
    }

    public final Rectangle getBounds() {
        return Geometry.copy((Rectangle)this.currentBounds);
    }

    public static int subtract(int a, int b) {
        Assert.isTrue((b >= 0 && b < Integer.MAX_VALUE ? 1 : 0) != 0);
        return LayoutTree.add(a, -b);
    }

    public static int add(int a, int b) {
        if (a == Integer.MAX_VALUE || b == Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }
        return a + b;
    }

    public static void assertValidSize(int toCheck) {
        Assert.isTrue((toCheck >= 0 && (toCheck == Integer.MAX_VALUE || toCheck < 0x3FFFFFFF) ? 1 : 0) != 0);
    }

    public final int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        LayoutTree.assertValidSize(availableParallel);
        LayoutTree.assertValidSize(availablePerpendicular);
        LayoutTree.assertValidSize(preferredParallel);
        if (!this.isVisible()) {
            return 0;
        }
        if (availableParallel == 0) {
            return 0;
        }
        if (preferredParallel == 0) {
            return Math.min(availableParallel, this.computeMinimumSize(width, availablePerpendicular));
        }
        if (preferredParallel == Integer.MAX_VALUE && availableParallel == Integer.MAX_VALUE) {
            return this.computeMaximumSize(width, availablePerpendicular);
        }
        if (!this.hasSizeFlag(width, 4)) {
            return preferredParallel;
        }
        int result = this.doComputePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
        return result;
    }

    protected int doGetSizeFlags(boolean width) {
        return this.part.getSizeFlags(width);
    }

    protected int doComputePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        int result = Math.min(availableParallel, this.part.computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel));
        LayoutTree.assertValidSize(result);
        return result;
    }

    public final int computeMinimumSize(boolean width, int availablePerpendicular) {
        int result;
        LayoutTree.assertValidSize(availablePerpendicular);
        if (!this.hasSizeFlag(width, 128)) {
            return 0;
        }
        if (!this.hasSizeFlag(width, 64)) {
            availablePerpendicular = Integer.MAX_VALUE;
        }
        if (width) {
            int result2;
            if (this.cachedMinimumWidthHint == availablePerpendicular) {
                ++minCacheHits;
                return this.cachedMinimumWidth;
            }
            ++minCacheMisses;
            this.cachedMinimumWidth = result2 = this.doComputeMinimumSize(width, availablePerpendicular);
            this.cachedMinimumWidthHint = availablePerpendicular;
            return result2;
        }
        if (this.cachedMinimumHeightHint == availablePerpendicular) {
            ++minCacheHits;
            return this.cachedMinimumHeight;
        }
        ++minCacheMisses;
        this.cachedMinimumHeight = result = this.doComputeMinimumSize(width, availablePerpendicular);
        this.cachedMinimumHeightHint = availablePerpendicular;
        return result;
    }

    public static void printCacheStatistics() {
        System.out.println("minimize cache " + minCacheHits + " / " + (minCacheHits + minCacheMisses) + " hits " + minCacheHits * 100 / (minCacheHits + minCacheMisses) + "%");
        System.out.println("maximize cache " + maxCacheHits + " / " + (maxCacheHits + maxCacheMisses) + " hits" + maxCacheHits * 100 / (maxCacheHits + maxCacheMisses) + "%");
    }

    public int doComputeMinimumSize(boolean width, int availablePerpendicular) {
        int result = this.doComputePreferredSize(width, Integer.MAX_VALUE, availablePerpendicular, 0);
        LayoutTree.assertValidSize(result);
        return result;
    }

    public final int computeMaximumSize(boolean width, int availablePerpendicular) {
        int result;
        LayoutTree.assertValidSize(availablePerpendicular);
        if (!this.hasSizeFlag(width, 1024)) {
            return Integer.MAX_VALUE;
        }
        if (!this.hasSizeFlag(width, 64)) {
            availablePerpendicular = Integer.MAX_VALUE;
        }
        if (width) {
            int result2;
            if (this.cachedMaximumWidthHint == availablePerpendicular) {
                ++maxCacheHits;
                return this.cachedMaximumWidth;
            }
            ++maxCacheMisses;
            this.cachedMaximumWidth = result2 = this.doComputeMaximumSize(width, availablePerpendicular);
            this.cachedMaximumWidthHint = availablePerpendicular;
            return result2;
        }
        if (this.cachedMaximumHeightHint == availablePerpendicular) {
            ++maxCacheHits;
            return this.cachedMaximumHeight;
        }
        ++maxCacheMisses;
        this.cachedMaximumHeight = result = this.doComputeMaximumSize(width, availablePerpendicular);
        this.cachedMaximumHeightHint = availablePerpendicular;
        return result;
    }

    protected int doComputeMaximumSize(boolean width, int availablePerpendicular) {
        return this.doComputePreferredSize(width, Integer.MAX_VALUE, availablePerpendicular, Integer.MAX_VALUE);
    }

    public void flushNode() {
        this.cachedMinimumWidthHint = -1;
        this.cachedMinimumWidth = -1;
        this.cachedMinimumHeightHint = -1;
        this.cachedMinimumHeight = -1;
        this.cachedMaximumWidthHint = -1;
        this.cachedMaximumWidth = -1;
        this.cachedMaximumHeightHint = -1;
        this.cachedMaximumHeight = -1;
        this.sizeFlagsDirty = true;
        this.forceLayout = true;
    }

    public void flushChildren() {
        this.flushNode();
    }

    public final void flushCache() {
        this.flushNode();
        if (this.parent != null) {
            this.parent.flushCache();
        }
    }

    public final int getSizeFlags(boolean width) {
        if (this.sizeFlagsDirty) {
            this.widthSizeFlags = this.doGetSizeFlags(true);
            this.heightSizeFlags = this.doGetSizeFlags(false);
            this.sizeFlagsDirty = false;
        }
        return width ? this.widthSizeFlags : this.heightSizeFlags;
    }

    public LayoutTreeNode getParent() {
        return this.parent;
    }

    public LayoutTree insert(LayoutPart child, boolean left, LayoutPartSash sash, LayoutPart relative) {
        LayoutTree relativeChild = this.find(relative);
        LayoutTreeNode node = new LayoutTreeNode(sash);
        if (relativeChild == null) {
            node.setChild(left, child);
            node.setChild(!left, this);
            return node;
        }
        LayoutTreeNode oldParent = relativeChild.getParent();
        node.setChild(left, child);
        node.setChild(!left, relativeChild);
        if (oldParent == null) {
            return node;
        }
        oldParent.replaceChild(relativeChild, node);
        return this;
    }

    public boolean isCompressible() {
        return this.part.isCompressible();
    }

    public boolean isVisible() {
        return !(this.part instanceof PartPlaceholder);
    }

    public void recomputeRatio() {
    }

    public LayoutTree remove(LayoutPart child) {
        LayoutTree tree = this.find(child);
        if (tree == null) {
            return this;
        }
        LayoutTreeNode oldParent = tree.getParent();
        if (oldParent == null) {
            return null;
        }
        if (oldParent.getParent() == null) {
            return oldParent.remove(tree);
        }
        oldParent.remove(tree);
        return this;
    }

    public final void setBounds(Rectangle bounds) {
        if (!bounds.equals((Object)this.currentBounds) || this.forceLayout) {
            this.currentBounds = Geometry.copy((Rectangle)bounds);
            this.doSetBounds(this.currentBounds);
            this.forceLayout = false;
        }
    }

    protected void doSetBounds(Rectangle bounds) {
        this.part.setBounds(bounds);
    }

    void setParent(LayoutTreeNode parent) {
        this.parent = parent;
    }

    void setPart(LayoutPart part) {
        this.part = part;
        this.flushCache();
    }

    public String toString() {
        return "(" + this.part.toString() + ")";
    }

    public void createControl(Composite parent) {
    }

    public void describeLayout(StringBuffer buf) {
        this.part.describeLayout(buf);
    }

    public final boolean hasSizeFlag(boolean width, int flag) {
        return (this.getSizeFlags(width) & flag) != 0;
    }
}

