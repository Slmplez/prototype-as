/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Sash
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.LayoutPartSash;
import org.eclipse.ui.internal.LayoutTree;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSashContainer;

public class LayoutTreeNode
extends LayoutTree {
    private LayoutTree[] children = new LayoutTree[2];

    public LayoutTreeNode(LayoutPartSash sash) {
        super(sash);
    }

    public void flushChildren() {
        super.flushChildren();
        this.children[0].flushChildren();
        this.children[1].flushChildren();
    }

    public LayoutPart findPart(Point toFind) {
        if (!this.children[0].isVisible()) {
            if (!this.children[1].isVisible()) {
                return null;
            }
            return this.children[1].findPart(toFind);
        }
        if (!this.children[1].isVisible()) {
            return this.children[0].findPart(toFind);
        }
        LayoutPartSash sash = this.getSash();
        Rectangle bounds = sash.getBounds();
        if (sash.isVertical()) {
            if (toFind.x < bounds.x + bounds.width / 2) {
                return this.children[0].findPart(toFind);
            }
            return this.children[1].findPart(toFind);
        }
        if (toFind.y < bounds.y + bounds.height / 2) {
            return this.children[0].findPart(toFind);
        }
        return this.children[1].findPart(toFind);
    }

    public LayoutPart computeRelation(ArrayList relations) {
        PartSashContainer.RelationshipInfo r = new PartSashContainer.RelationshipInfo();
        r.relative = this.children[0].computeRelation(relations);
        r.part = this.children[1].computeRelation(relations);
        r.left = this.getSash().getLeft();
        r.right = this.getSash().getRight();
        r.relationship = this.getSash().isVertical() ? 2 : 4;
        relations.add(0, r);
        return r.relative;
    }

    public void disposeSashes() {
        this.children[0].disposeSashes();
        this.children[1].disposeSashes();
        this.getSash().dispose();
    }

    public LayoutTree find(LayoutPart child) {
        LayoutTree node = this.children[0].find(child);
        if (node != null) {
            return node;
        }
        node = this.children[1].find(child);
        return node;
    }

    public LayoutPart findBottomRight() {
        if (this.children[1].isVisible()) {
            return this.children[1].findBottomRight();
        }
        return this.children[0].findBottomRight();
    }

    public LayoutTreeNode findCommonParent(LayoutPart child1, LayoutPart child2) {
        return this.findCommonParent(child1, child2, false, false);
    }

    LayoutTreeNode findCommonParent(LayoutPart child1, LayoutPart child2, boolean foundChild1, boolean foundChild2) {
        if (!foundChild1) {
            boolean bl = foundChild1 = this.find(child1) != null;
        }
        if (!foundChild2) {
            boolean bl = foundChild2 = this.find(child2) != null;
        }
        if (foundChild1 && foundChild2) {
            return this;
        }
        if (this.parent == null) {
            return null;
        }
        return this.parent.findCommonParent(child1, child2, foundChild1, foundChild2);
    }

    public LayoutTreeNode findSash(LayoutPartSash sash) {
        if (this.getSash() == sash) {
            return this;
        }
        LayoutTreeNode node = this.children[0].findSash(sash);
        if (node != null) {
            return node;
        }
        node = this.children[1].findSash(sash);
        if (node != null) {
            return node;
        }
        return null;
    }

    void findSashes(LayoutTree child, PartPane.Sashes sashes) {
        boolean leftOrTop;
        Sash sash = (Sash)this.getSash().getControl();
        boolean bl = leftOrTop = this.children[0] == child;
        if (sash != null) {
            LayoutPartSash partSash = this.getSash();
            if (leftOrTop) {
                if (partSash.isVertical()) {
                    if (sashes.right == null) {
                        sashes.right = sash;
                    }
                } else if (sashes.bottom == null) {
                    sashes.bottom = sash;
                }
            } else if (partSash.isVertical()) {
                if (sashes.left == null) {
                    sashes.left = sash;
                }
            } else if (sashes.top == null) {
                sashes.top = sash;
            }
        }
        if (this.getParent() != null) {
            this.getParent().findSashes(this, sashes);
        }
    }

    public LayoutPartSash getSash() {
        return (LayoutPartSash)this.part;
    }

    private int getSashSize() {
        return this.getSash().getSashSize();
    }

    public boolean isVisible() {
        return this.children[0].isVisible() || this.children[1].isVisible();
    }

    LayoutTree remove(LayoutTree child) {
        this.getSash().dispose();
        if (this.parent == null) {
            if (this.children[0] == child) {
                this.children[1].setParent(null);
                return this.children[1];
            }
            this.children[0].setParent(null);
            return this.children[0];
        }
        LayoutTreeNode oldParent = this.parent;
        if (this.children[0] == child) {
            oldParent.replaceChild(this, this.children[1]);
        } else {
            oldParent.replaceChild(this, this.children[0]);
        }
        return oldParent;
    }

    void replaceChild(LayoutTree oldChild, LayoutTree newChild) {
        if (this.children[0] == oldChild) {
            this.children[0] = newChild;
        } else if (this.children[1] == oldChild) {
            this.children[1] = newChild;
        }
        newChild.setParent(this);
        if (!this.children[0].isVisible() || !this.children[0].isVisible()) {
            this.getSash().dispose();
        }
        this.flushCache();
    }

    /*
     * Unable to fully structure code
     */
    public boolean sameDirection(boolean isVertical, LayoutTreeNode subTree) {
        treeVertical = this.getSash().isVertical();
        if (treeVertical == isVertical) ** GOTO lbl9
        return false;
lbl-1000:
        // 1 sources

        {
            if (this == subTree) {
                return true;
            }
            if (subTree.children[0].isVisible() && subTree.children[1].isVisible() && subTree.getSash().isVertical() != isVertical) {
                return false;
            }
            subTree = subTree.getParent();
lbl9:
            // 2 sources

            ** while (subTree != null)
        }
lbl10:
        // 1 sources

        return true;
    }

    public int doComputePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        int rightSize;
        LayoutTreeNode.assertValidSize(availablePerpendicular);
        LayoutTreeNode.assertValidSize(availableParallel);
        LayoutTreeNode.assertValidSize(preferredParallel);
        if (!this.children[0].isVisible()) {
            return this.children[1].computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
        }
        if (!this.children[1].isVisible()) {
            return this.children[0].computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
        }
        if (availableParallel == 0) {
            return 0;
        }
        if (width == this.getSash().isVertical()) {
            ChildSizes sizes = this.computeChildSizes(availableParallel, availablePerpendicular, this.getSash().getLeft(), this.getSash().getRight(), preferredParallel);
            return LayoutTreeNode.add(sizes.left, LayoutTreeNode.add(sizes.right, this.getSashSize()));
        }
        ChildSizes sizes = this.computeChildSizes(availablePerpendicular, availableParallel, this.getSash().getLeft(), this.getSash().getRight(), availablePerpendicular);
        int leftSize = this.children[0].computePreferredSize(width, availableParallel, sizes.left, preferredParallel);
        int result = rightSize = this.children[1].computePreferredSize(width, availableParallel, sizes.right, preferredParallel);
        if (leftSize > rightSize) {
            result = leftSize;
        }
        LayoutTreeNode.assertValidSize(result);
        return result;
    }

    ChildSizes computeChildSizes(int width, int height, int left, int right, int preferredWidth) {
        Assert.isTrue((boolean)this.children[0].isVisible());
        Assert.isTrue((boolean)this.children[1].isVisible());
        LayoutTreeNode.assertValidSize(width);
        LayoutTreeNode.assertValidSize(height);
        LayoutTreeNode.assertValidSize(preferredWidth);
        Assert.isTrue((left >= 0 ? 1 : 0) != 0);
        Assert.isTrue((right >= 0 ? 1 : 0) != 0);
        Assert.isTrue((preferredWidth >= 0 ? 1 : 0) != 0);
        Assert.isTrue((preferredWidth <= width ? 1 : 0) != 0);
        boolean vertical = this.getSash().isVertical();
        if (width <= this.getSashSize()) {
            return new ChildSizes(0, 0, false);
        }
        if (width == Integer.MAX_VALUE) {
            if (preferredWidth == Integer.MAX_VALUE) {
                return new ChildSizes(this.children[0].computeMaximumSize(vertical, height), this.children[1].computeMaximumSize(vertical, height), false);
            }
            if (preferredWidth == 0) {
                return new ChildSizes(this.children[0].computeMinimumSize(vertical, height), this.children[1].computeMinimumSize(vertical, height), false);
            }
        }
        int total = left + right;
        double wLeft = left;
        double wRight = right;
        switch (this.getCompressionBias()) {
            case -1: {
                wLeft = 0.0;
                break;
            }
            case 1: {
                wRight = 0.0;
                break;
            }
        }
        double wTotal = wLeft + wRight;
        preferredWidth = Math.max(0, LayoutTreeNode.subtract(preferredWidth, this.getSashSize()));
        width = Math.max(0, LayoutTreeNode.subtract(width, this.getSashSize()));
        int redistribute = LayoutTreeNode.subtract(preferredWidth, total);
        int leftMinimum = this.children[0].computeMinimumSize(vertical, height);
        int rightMinimum = this.children[1].computeMinimumSize(vertical, height);
        int leftMaximum = this.children[0].computeMaximumSize(vertical, height);
        int rightMaximum = this.children[1].computeMaximumSize(vertical, height);
        int leftAvailable = Math.min(leftMaximum, Math.max(0, LayoutTreeNode.subtract(width, rightMinimum)));
        int rightAvailable = Math.min(rightMaximum, Math.max(0, LayoutTreeNode.subtract(width, leftMinimum)));
        int idealLeft = Math.max(leftMinimum, Math.min(preferredWidth, left + (int)Math.round((double)redistribute * wLeft / wTotal)));
        idealLeft = Math.max(idealLeft, preferredWidth - rightAvailable);
        idealLeft = Math.min(idealLeft, leftAvailable);
        idealLeft = this.children[0].computePreferredSize(vertical, leftAvailable, height, idealLeft);
        idealLeft = Math.max(idealLeft, leftMinimum);
        idealLeft = Math.min(idealLeft, leftAvailable);
        int idealRight = Math.max(rightMinimum, preferredWidth - idealLeft);
        rightAvailable = Math.max(0, Math.min(rightAvailable, LayoutTreeNode.subtract(width, idealLeft)));
        idealRight = Math.min(idealRight, rightAvailable);
        idealRight = this.children[1].computePreferredSize(vertical, rightAvailable, height, idealRight);
        idealRight = Math.max(idealRight, rightMinimum);
        return new ChildSizes(idealLeft, idealRight, leftMaximum > leftMinimum && rightMaximum > rightMinimum && leftMinimum + rightMinimum < width);
    }

    protected int doGetSizeFlags(boolean width) {
        if (!this.children[0].isVisible()) {
            return this.children[1].getSizeFlags(width);
        }
        if (!this.children[1].isVisible()) {
            return this.children[0].getSizeFlags(width);
        }
        int leftFlags = this.children[0].getSizeFlags(width);
        int rightFlags = this.children[1].getSizeFlags(width);
        return (leftFlags | rightFlags) & 0xFFFFFBFF | leftFlags & rightFlags & 0x400;
    }

    public void doSetBounds(Rectangle bounds) {
        if (!this.children[0].isVisible()) {
            this.children[1].setBounds(bounds);
            this.getSash().setVisible(false);
            return;
        }
        if (!this.children[1].isVisible()) {
            this.children[0].setBounds(bounds);
            this.getSash().setVisible(false);
            return;
        }
        bounds = Geometry.copy((Rectangle)bounds);
        boolean vertical = this.getSash().isVertical();
        if (!vertical) {
            Geometry.flipXY((Rectangle)bounds);
        }
        ChildSizes childSizes = this.computeChildSizes(bounds.width, bounds.height, this.getSash().getLeft(), this.getSash().getRight(), bounds.width);
        this.getSash().setVisible(true);
        this.getSash().setEnabled(childSizes.resizable);
        Rectangle leftBounds = new Rectangle(bounds.x, bounds.y, childSizes.left, bounds.height);
        Rectangle sashBounds = new Rectangle(leftBounds.x + leftBounds.width, bounds.y, this.getSashSize(), bounds.height);
        Rectangle rightBounds = new Rectangle(sashBounds.x + sashBounds.width, bounds.y, childSizes.right, bounds.height);
        if (!vertical) {
            Geometry.flipXY((Rectangle)leftBounds);
            Geometry.flipXY((Rectangle)sashBounds);
            Geometry.flipXY((Rectangle)rightBounds);
        }
        this.getSash().setBounds(sashBounds);
        this.children[0].setBounds(leftBounds);
        this.children[1].setBounds(rightBounds);
    }

    public void createControl(Composite parent) {
        this.children[0].createControl(parent);
        this.children[1].createControl(parent);
        this.getSash().createControl(parent);
        super.createControl(parent);
    }

    public boolean isCompressible() {
        return this.children[0].isCompressible() || this.children[1].isCompressible();
    }

    public int getCompressionBias() {
        boolean right;
        boolean left = this.children[0].isCompressible();
        if (left == (right = this.children[1].isCompressible())) {
            return 0;
        }
        if (right) {
            return -1;
        }
        return 1;
    }

    boolean isLeftChild(LayoutTree toTest) {
        return this.children[0] == toTest;
    }

    LayoutTree getChild(boolean left) {
        int index = left ? 0 : 1;
        return this.children[index];
    }

    void setChild(boolean left, LayoutPart part) {
        LayoutTree child = new LayoutTree(part);
        this.setChild(left, child);
        this.flushCache();
    }

    void setChild(boolean left, LayoutTree child) {
        int index = left ? 0 : 1;
        this.children[index] = child;
        child.setParent(this);
        this.flushCache();
    }

    public String toString() {
        String s = "<null>\n";
        if (this.part.getControl() != null) {
            s = "<@" + this.part.getControl().hashCode() + ">\n";
        }
        String result = "[";
        result = this.children[0].getParent() != this ? String.valueOf(result) + "{" + this.children[0] + "}" + s : String.valueOf(result) + this.children[0] + s;
        result = this.children[1].getParent() != this ? String.valueOf(result) + "{" + this.children[1] + "}]" : String.valueOf(result) + this.children[1] + "]";
        return result;
    }

    public void describeLayout(StringBuffer buf) {
        if (!this.children[0].isVisible()) {
            if (!this.children[1].isVisible()) {
                return;
            }
            this.children[1].describeLayout(buf);
            return;
        }
        if (!this.children[1].isVisible()) {
            this.children[0].describeLayout(buf);
            return;
        }
        buf.append("(");
        this.children[0].describeLayout(buf);
        buf.append(this.getSash().isVertical() ? "|" : "-");
        this.children[1].describeLayout(buf);
        buf.append(")");
    }

    static class ChildSizes {
        int left;
        int right;
        boolean resizable = true;

        public ChildSizes(int l, int r, boolean resize) {
            this.left = l;
            this.right = r;
            this.resizable = resize;
        }
    }
}

