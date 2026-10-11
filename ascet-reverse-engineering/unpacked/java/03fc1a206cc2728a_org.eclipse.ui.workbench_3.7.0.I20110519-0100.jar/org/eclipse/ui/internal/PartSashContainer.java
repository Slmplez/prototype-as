/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.ControlAdapter
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.ControlAdapter;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.LayoutPartSash;
import org.eclipse.ui.internal.LayoutTree;
import org.eclipse.ui.internal.LayoutTreeNode;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.PerspectiveHelper;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.dnd.AbstractDropTarget;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.dnd.SwtUtil;

public abstract class PartSashContainer
extends LayoutPart
implements ILayoutContainer,
IDragOverListener {
    protected Composite parent;
    protected ControlListener resizeListener;
    protected LayoutTree root;
    private Composite parentWidget;
    private LayoutPart zoomedPart;
    protected WorkbenchPage page;
    boolean active = false;
    boolean layoutDirty = false;
    protected ArrayList children = new ArrayList();
    private SashContainerDropTarget dropTarget;

    public PartSashContainer(String id, WorkbenchPage page, Composite parentWidget) {
        super(id);
        this.page = page;
        this.parentWidget = parentWidget;
        this.resizeListener = new ControlAdapter(){

            public void controlResized(ControlEvent e) {
                PartSashContainer.this.resizeSashes();
            }
        };
    }

    public boolean childObscuredByZoom(LayoutPart toTest) {
        LayoutPart zoomPart = this.getZoomedPart();
        if (zoomPart != null && toTest != zoomPart) {
            return true;
        }
        return this.isObscuredByZoom();
    }

    private PartPane[] getVisibleParts(LayoutPart pane) {
        if (pane instanceof PartPane) {
            return new PartPane[]{(PartPane)pane};
        }
        if (pane instanceof PartStack) {
            PartStack stack = (PartStack)pane;
            LayoutPart[] children = stack.getChildren();
            ArrayList<LayoutPart> result = new ArrayList<LayoutPart>(children.length);
            int idx = 0;
            while (idx < children.length) {
                LayoutPart next = children[idx];
                if (next instanceof PartPane) {
                    result.add(next);
                }
                ++idx;
            }
            return result.toArray(new PartPane[result.size()]);
        }
        return new PartPane[0];
    }

    public void findSashes(LayoutPart pane, PartPane.Sashes sashes) {
        if (this.root == null) {
            return;
        }
        LayoutTree part = this.root.find(pane);
        if (part == null) {
            return;
        }
        part.findSashes(sashes);
    }

    public void add(LayoutPart child) {
        if (child == null) {
            return;
        }
        this.addEnhanced(child, 131072, 0.5f, this.findBottomRight());
    }

    void addEnhanced(LayoutPart child, int swtDirectionConstant, float ratioForNewPart, LayoutPart relative) {
        int relativePosition = PageLayout.swtConstantToLayoutPosition(swtDirectionConstant);
        float ratioForUpperLeftPart = relativePosition == 2 || relativePosition == 4 ? 1.0f - ratioForNewPart : ratioForNewPart;
        this.add(child, relativePosition, ratioForUpperLeftPart, relative);
    }

    public void add(LayoutPart child, int relationship, float ratio, LayoutPart relative) {
        Rectangle bounds;
        boolean isHorizontal = relationship == 1 || relationship == 2;
        LayoutTree node = null;
        if (this.root != null && relative != null) {
            node = this.root.find(relative);
        }
        if (this.getParent() == null) {
            Composite control = this.getPage().getClientComposite();
            bounds = control != null && !control.isDisposed() ? control.getBounds() : new Rectangle(0, 0, 800, 600);
            bounds.x = 0;
            bounds.y = 0;
        } else {
            bounds = this.getBounds();
        }
        int totalSize = PartSashContainer.measureTree(bounds, node, isHorizontal);
        int left = (int)((float)totalSize * ratio);
        int right = totalSize - left;
        this.add(child, relationship, left, right, relative);
    }

    static int measureTree(Rectangle outerBounds, LayoutTree toMeasure, boolean horizontal) {
        if (toMeasure == null) {
            return Geometry.getDimension((Rectangle)outerBounds, (boolean)horizontal);
        }
        LayoutTreeNode parent = toMeasure.getParent();
        if (parent == null) {
            return Geometry.getDimension((Rectangle)outerBounds, (boolean)horizontal);
        }
        if (parent.getSash().isHorizontal() == horizontal) {
            return PartSashContainer.measureTree(outerBounds, parent, horizontal);
        }
        boolean isLeft = parent.isLeftChild(toMeasure);
        LayoutTree otherChild = parent.getChild(!isLeft);
        if (otherChild.isVisible()) {
            int left = parent.getSash().getLeft();
            int right = parent.getSash().getRight();
            int childSize = isLeft ? left : right;
            int bias = parent.getCompressionBias();
            if (isLeft) {
                bias = -bias;
            }
            if (bias == 1) {
                return childSize;
            }
            if (bias == -1) {
                return PartSashContainer.measureTree(outerBounds, parent, horizontal) - (left + right - childSize);
            }
            if (left + right == 0) {
                return 0;
            }
            return PartSashContainer.measureTree(outerBounds, parent, horizontal) * childSize / (left + right);
        }
        return PartSashContainer.measureTree(outerBounds, parent, horizontal);
    }

    protected void addChild(RelationshipInfo info) {
        LayoutPart child = info.part;
        this.children.add(child);
        if (this.root == null) {
            this.root = new LayoutTree(child);
        } else {
            int vertical = info.relationship == 1 || info.relationship == 2 ? 512 : 256;
            boolean left = info.relationship == 1 || info.relationship == 3;
            LayoutPartSash sash = new LayoutPartSash(this, vertical);
            sash.setSizes(info.left, info.right);
            if (this.parent != null && !(child instanceof PartPlaceholder)) {
                sash.createControl(this.parent);
            }
            this.root = this.root.insert(child, left, sash, info.relative);
        }
        this.childAdded(child);
        if (this.active) {
            child.createControl(this.parent);
            child.setVisible(true);
            child.setContainer(this);
            this.resizeChild(child);
        }
    }

    void addChildForPlaceholder(LayoutPart child, LayoutPart placeholder) {
        RelationshipInfo newRelationshipInfo = new RelationshipInfo();
        newRelationshipInfo.part = child;
        if (this.root != null) {
            newRelationshipInfo.relationship = 2;
            newRelationshipInfo.relative = this.root.findBottomRight();
            newRelationshipInfo.left = 200;
            newRelationshipInfo.right = 200;
        }
        RelationshipInfo[] relationships = this.computeRelation();
        int i = 0;
        while (i < relationships.length) {
            RelationshipInfo info = relationships[i];
            if (info.part == placeholder) {
                newRelationshipInfo.left = info.left;
                newRelationshipInfo.right = info.right;
                newRelationshipInfo.relationship = info.relationship;
                newRelationshipInfo.relative = info.relative;
            }
            ++i;
        }
        this.addChild(newRelationshipInfo);
        this.flushLayout();
    }

    public boolean allowsBorder() {
        return true;
    }

    protected void childAdded(LayoutPart child) {
        if (this.isDeferred()) {
            child.deferUpdates(true);
        }
    }

    protected void childRemoved(LayoutPart child) {
        if (this.isDeferred()) {
            child.deferUpdates(false);
        }
    }

    public RelationshipInfo[] computeRelation() {
        LayoutTree treeRoot = this.root;
        ArrayList<RelationshipInfo> list = new ArrayList<RelationshipInfo>();
        if (treeRoot == null) {
            return new RelationshipInfo[0];
        }
        RelationshipInfo r = new RelationshipInfo();
        r.part = treeRoot.computeRelation(list);
        list.add(0, r);
        RelationshipInfo[] result = new RelationshipInfo[list.size()];
        list.toArray(result);
        return result;
    }

    public void setActive(boolean isActive) {
        LayoutPart child;
        if (isActive == this.active) {
            return;
        }
        this.active = isActive;
        ArrayList children = (ArrayList)this.children.clone();
        int i = 0;
        int length = children.size();
        while (i < length) {
            child = (LayoutPart)children.get(i);
            if (child instanceof PartStack) {
                PartStack stack = (PartStack)child;
                stack.setActive(isActive);
            }
            ++i;
        }
        if (isActive) {
            this.createControl(this.parentWidget);
            this.parent.addControlListener(this.resizeListener);
            DragUtil.addDragTarget((Control)this.parent, this);
            DragUtil.addDragTarget((Control)this.parent.getShell(), this);
            i = 0;
            length = children.size();
            while (i < length) {
                LayoutTree node;
                child = (LayoutPart)children.get(i);
                child.setContainer(this);
                child.setVisible(this.zoomedPart == null || child == this.zoomedPart);
                if (!(child instanceof PartStack) && this.root != null && (node = this.root.find(child)) != null) {
                    node.flushCache();
                }
                ++i;
            }
            if (this.root != null && !this.isZoomed()) {
                this.root.createControl(this.parent);
            }
            this.resizeSashes();
        } else {
            DragUtil.removeDragTarget((Control)this.parent, this);
            DragUtil.removeDragTarget((Control)this.parent.getShell(), this);
            if (this.resizeListener != null && this.parent != null) {
                this.parent.removeControlListener(this.resizeListener);
            }
            if (children != null) {
                i = 0;
                length = children.size();
                while (i < length) {
                    child = (LayoutPart)children.get(i);
                    child.setContainer(null);
                    if (child instanceof PartStack) {
                        child.setVisible(false);
                    }
                    ++i;
                }
            }
            this.disposeSashes();
        }
    }

    public void createControl(Composite parentWidget) {
        if (this.parent != null) {
            return;
        }
        this.parent = this.createParent(parentWidget);
        ArrayList children = (ArrayList)this.children.clone();
        int i = 0;
        int length = children.size();
        while (i < length) {
            LayoutPart child = (LayoutPart)children.get(i);
            child.createControl(this.parent);
            ++i;
        }
    }

    protected abstract Composite createParent(Composite var1);

    public void dispose() {
        if (this.parent == null) {
            return;
        }
        if (this.children != null) {
            int i = 0;
            int length = this.children.size();
            while (i < length) {
                LayoutPart child = (LayoutPart)this.children.get(i);
                if (child instanceof PartStack) {
                    child.dispose();
                }
                ++i;
            }
        }
        this.disposeParent();
        this.parent = null;
    }

    protected abstract void disposeParent();

    public void disposeSashes() {
        if (this.root != null) {
            this.root.disposeSashes();
        }
    }

    public void setVisible(boolean makeVisible) {
        if (makeVisible == this.getVisible()) {
            return;
        }
        if (!SwtUtil.isDisposed((Control)this.parent)) {
            this.parent.setEnabled(makeVisible);
        }
        super.setVisible(makeVisible);
        ArrayList children = (ArrayList)this.children.clone();
        int i = 0;
        int length = children.size();
        while (i < length) {
            LayoutPart child = (LayoutPart)children.get(i);
            child.setVisible(makeVisible && (this.zoomedPart == null || child == this.zoomedPart));
            ++i;
        }
    }

    public LayoutPart findBottomRight() {
        if (this.root == null) {
            return null;
        }
        return this.root.findBottomRight();
    }

    public Rectangle getBounds() {
        return this.parent.getBounds();
    }

    public LayoutPart[] getChildren() {
        LayoutPart[] result = new LayoutPart[this.children.size()];
        this.children.toArray(result);
        return result;
    }

    public Control getControl() {
        return this.parent;
    }

    public LayoutTree getLayoutTree() {
        return this.root;
    }

    public WorkbenchPage getPage() {
        return this.page;
    }

    public Composite getParent() {
        return this.parent;
    }

    protected boolean isChild(LayoutPart part) {
        return this.children.indexOf(part) >= 0;
    }

    public boolean isZoomed() {
        return this.zoomedPart != null;
    }

    public void resizeChild(LayoutPart childThatChanged) {
        LayoutTree tree;
        if (this.root != null && (tree = this.root.find(childThatChanged)) != null) {
            tree.flushCache();
        }
        this.flushLayout();
    }

    public void remove(LayoutPart child) {
        if (child == this.getZoomedPart()) {
            this.childRequestZoomOut();
        }
        if (!this.isChild(child)) {
            return;
        }
        this.children.remove(child);
        if (this.root != null) {
            this.root = this.root.remove(child);
        }
        this.childRemoved(child);
        if (this.active) {
            child.setVisible(false);
            child.setContainer(null);
            this.flushLayout();
        }
    }

    public void flushLayout() {
        this.layoutDirty = true;
        super.flushLayout();
        if (this.layoutDirty) {
            this.resizeSashes();
        }
    }

    public void replace(LayoutPart oldChild, LayoutPart newChild) {
        if (!this.isChild(oldChild)) {
            return;
        }
        if (oldChild == this.getZoomedPart()) {
            if (newChild instanceof PartPlaceholder) {
                this.childRequestZoomOut();
            } else {
                this.zoomedPart.setZoomed(false);
                this.zoomedPart = newChild;
                this.zoomedPart.setZoomed(true);
            }
        }
        this.children.remove(oldChild);
        this.children.add(newChild);
        this.childAdded(newChild);
        if (this.root != null) {
            LayoutTree leaf = null;
            leaf = this.root.find(oldChild);
            if (leaf != null) {
                leaf.setPart(newChild);
            }
        }
        this.childRemoved(oldChild);
        if (this.active) {
            oldChild.setVisible(false);
            oldChild.setContainer(null);
            newChild.createControl(this.parent);
            newChild.setContainer(this);
            newChild.setVisible(this.zoomedPart == null || this.zoomedPart == newChild);
            this.resizeChild(newChild);
        }
    }

    private void resizeSashes() {
        this.layoutDirty = false;
        if (!this.active) {
            return;
        }
        if (this.isZoomed()) {
            this.getZoomedPart().setBounds(this.parent.getClientArea());
        } else if (this.root != null) {
            this.root.setBounds(this.parent.getClientArea());
        }
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredParallel) {
        if (this.isZoomed()) {
            return this.getZoomedPart().computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
        }
        if (this.root != null) {
            return this.root.computePreferredSize(width, availableParallel, availablePerpendicular, preferredParallel);
        }
        return preferredParallel;
    }

    public int getSizeFlags(boolean width) {
        if (this.isZoomed()) {
            return this.getZoomedPart().getSizeFlags(width);
        }
        if (this.root != null) {
            return this.root.getSizeFlags(width);
        }
        return 0;
    }

    public void setBounds(Rectangle r) {
        this.parent.setBounds(r);
    }

    private void zoomIn(LayoutPart part) {
        if (this.isZoomed()) {
            return;
        }
        this.root.disposeSashes();
        LayoutPart[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            LayoutPart child;
            child.setVisible((child = children[i]) == part);
            ++i;
        }
        this.zoomedPart = part;
        part.setZoomed(true);
        this.layoutDirty = true;
    }

    public LayoutPart getZoomedPart() {
        return this.zoomedPart;
    }

    public void childRequestZoomIn(LayoutPart toZoom) {
        if (!SwtUtil.isDisposed((Control)this.parent)) {
            this.parent.setRedraw(false);
        }
        try {
            this.zoomIn(toZoom);
            this.requestZoomIn();
            if (this.layoutDirty) {
                this.resizeSashes();
            }
        }
        finally {
            if (!SwtUtil.isDisposed((Control)this.parent)) {
                this.parent.setRedraw(true);
            }
        }
    }

    public void childRequestZoomOut() {
        if (!SwtUtil.isDisposed((Control)this.parent)) {
            this.parent.setRedraw(false);
        }
        try {
            this.zoomOut();
            this.requestZoomOut();
            if (this.layoutDirty) {
                this.resizeSashes();
            }
        }
        finally {
            if (!SwtUtil.isDisposed((Control)this.parent)) {
                this.parent.setRedraw(true);
            }
        }
    }

    public void setZoomed(boolean isZoomed) {
        LayoutPart toZoom;
        if (!isZoomed) {
            this.zoomOut();
        } else if (!this.isZoomed() && (toZoom = this.pickPartToZoom()) != null) {
            this.zoomIn(toZoom);
        }
        super.setZoomed(isZoomed);
    }

    public LayoutPart pickPartToZoom() {
        return this.findBottomRight();
    }

    private void zoomOut() {
        if (!this.isZoomed()) {
            return;
        }
        LayoutPart zoomedPart = this.zoomedPart;
        this.zoomedPart = null;
        zoomedPart.setZoomed(false);
        LayoutPart[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            LayoutPart child = children[i];
            child.setVisible(true);
            ++i;
        }
        this.root.createControl(this.getParent());
        LayoutTree node = this.root.find(zoomedPart);
        node.flushCache();
        this.layoutDirty = true;
    }

    public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
        ILayoutContainer sourceContainer;
        boolean editorDropOK;
        boolean differentWindows;
        if (!(draggedObject instanceof LayoutPart)) {
            return null;
        }
        LayoutPart sourcePart = (LayoutPart)draggedObject;
        if (!this.isStackType(sourcePart) && !this.isPaneType(sourcePart)) {
            return null;
        }
        boolean bl = differentWindows = sourcePart.getWorkbenchWindow() != this.getWorkbenchWindow();
        if (sourcePart instanceof ViewPane) {
            differentWindows = ((ViewPane)sourcePart).getPage() != this.getPage();
        }
        boolean bl2 = editorDropOK = sourcePart instanceof EditorPane && sourcePart.getWorkbenchWindow().getWorkbench() == this.getWorkbenchWindow().getWorkbench();
        if (differentWindows && !editorDropOK) {
            return null;
        }
        Rectangle containerBounds = DragUtil.getDisplayBounds((Control)this.parent);
        LayoutPart targetPart = null;
        ILayoutContainer iLayoutContainer = sourceContainer = this.isStackType(sourcePart) ? (ILayoutContainer)((Object)sourcePart) : sourcePart.getContainer();
        if (this.getVisibleChildrenCount(this) == 0) {
            return this.createDropTarget(sourcePart, 0x1000000, 0x1000000, null);
        }
        if (containerBounds.contains(position)) {
            if (this.root != null) {
                targetPart = this.root.findPart(this.parent.toControl(position));
            }
            if (targetPart != null) {
                ILayoutContainer targetContainer;
                IDropTarget target;
                boolean standalone;
                Control targetControl = targetPart.getControl();
                Rectangle targetBounds = DragUtil.getDisplayBounds(targetControl);
                int side = Geometry.getClosestSide((Rectangle)targetBounds, (Point)position);
                int distance = Geometry.getDistanceFromEdge((Rectangle)targetBounds, (Point)position, (int)side);
                boolean bl3 = standalone = this.isStackType(sourcePart) && ((PartStack)sourcePart).isStandalone() || this.isPaneType(sourcePart) && ((PartPane)sourcePart).getStack() != null && ((PartPane)sourcePart).getStack().isStandalone();
                if (differentWindows && targetPart instanceof EditorStack) {
                    IDropTarget target2 = targetPart.getDropTarget(draggedObject, position);
                    return target2;
                }
                if (distance >= 5 && !standalone && (target = targetPart.getDropTarget(draggedObject, position)) != null) {
                    return target;
                }
                if (distance > 30 && this.isStackType(targetPart) && !standalone && targetPart instanceof ILayoutContainer && (targetContainer = (ILayoutContainer)((Object)targetPart)).allowsAdd(sourcePart)) {
                    side = 0x1000000;
                }
                boolean pointlessDrop = this.isZoomed();
                if (sourcePart == targetPart) {
                    pointlessDrop = true;
                }
                if (sourceContainer != null && sourceContainer == targetPart && this.getVisibleChildrenCount(sourceContainer) <= 1) {
                    pointlessDrop = true;
                }
                if (side == 0x1000000 && sourcePart.getContainer() == targetPart) {
                    pointlessDrop = true;
                }
                int cursor = side;
                if (pointlessDrop) {
                    side = 0;
                    cursor = 0x1000000;
                }
                return this.createDropTarget(sourcePart, side, cursor, targetPart);
            }
        } else {
            if (differentWindows) {
                return null;
            }
            int side = Geometry.getClosestSide((Rectangle)containerBounds, (Point)position);
            boolean pointlessDrop = this.isZoomed();
            if ((this.isStackType(sourcePart) && sourcePart.getContainer() == this || sourcePart.getContainer() != null && this.isPaneType(sourcePart) && this.getVisibleChildrenCount(sourcePart.getContainer()) <= 1 && ((LayoutPart)((Object)sourcePart.getContainer())).getContainer() == this) && (this.root == null || this.getVisibleChildrenCount(this) <= 1)) {
                pointlessDrop = true;
            }
            int cursor = Geometry.getOppositeSide((int)side);
            if (pointlessDrop) {
                side = 0;
            }
            return this.createDropTarget(sourcePart, side, cursor, null);
        }
        return null;
    }

    private SashContainerDropTarget createDropTarget(LayoutPart sourcePart, int side, int cursor, LayoutPart targetPart) {
        if (this.dropTarget == null) {
            this.dropTarget = new SashContainerDropTarget(sourcePart, side, cursor, targetPart);
        } else {
            this.dropTarget.setTarget(sourcePart, side, cursor, targetPart);
        }
        return this.dropTarget;
    }

    public abstract boolean isStackType(LayoutPart var1);

    public abstract boolean isPaneType(LayoutPart var1);

    protected void dropObject(PartPane[] toDrop, LayoutPart visiblePart, LayoutPart targetPart, int side) {
        this.getControl().setRedraw(false);
        if (targetPart == null && side == 0x1000000) {
            side = 1024;
        }
        if (side == 0x1000000) {
            if (this.isStackType(targetPart)) {
                PartStack stack = (PartStack)targetPart;
                int idx = 0;
                while (idx < toDrop.length) {
                    PartPane next = toDrop[idx];
                    this.stack(next, stack);
                    ++idx;
                }
            }
        } else {
            PartStack newPart = this.createStack();
            if (toDrop.length == 1 && toDrop[0].getStack() != null) {
                toDrop[0].getStack().copyAppearanceProperties(newPart);
            }
            int idx = 0;
            while (idx < toDrop.length) {
                PartPane next = toDrop[idx];
                this.stack(next, newPart);
                ++idx;
            }
            this.addEnhanced(newPart, side, this.getDockingRatio(newPart, targetPart), targetPart);
        }
        if (visiblePart != null) {
            this.setVisiblePart(visiblePart.getContainer(), visiblePart);
        }
        this.getControl().setRedraw(true);
        if (visiblePart != null) {
            visiblePart.setFocus();
        }
    }

    protected abstract PartStack createStack();

    public void stack(LayoutPart newPart, ILayoutContainer container) {
        PerspectiveHelper pres;
        this.getControl().setRedraw(false);
        Perspective persp = this.page.getActivePerspective();
        PerspectiveHelper perspectiveHelper = pres = persp != null ? persp.getPresentation() : null;
        if (pres != null && newPart instanceof ViewPane) {
            ViewPane vp = (ViewPane)newPart;
            IViewReference vRef = vp.getViewReference();
            LayoutPart fpp = pres.findPart(vRef.getId(), vRef.getSecondaryId());
            if (fpp != null || persp.isFastView(vRef)) {
                this.derefPart(newPart);
            }
        } else {
            this.derefPart(newPart);
        }
        newPart.reparent(this.getParent());
        container.add(newPart);
        this.getControl().setRedraw(true);
    }

    protected abstract void setVisiblePart(ILayoutContainer var1, LayoutPart var2);

    protected abstract LayoutPart getVisiblePart(ILayoutContainer var1);

    protected void derefPart(LayoutPart sourcePart) {
        PartStack stack;
        ILayoutContainer container = sourcePart.getContainer();
        if (container != null) {
            container.remove(sourcePart);
        }
        if (container instanceof LayoutPart && this.isStackType((LayoutPart)((Object)container)) && (stack = (PartStack)container).getChildren().length == 0) {
            this.remove(stack);
            stack.dispose();
        }
    }

    protected int getVisibleChildrenCount(ILayoutContainer container) {
        if (container == null) {
            return 0;
        }
        LayoutPart[] children = container.getChildren();
        int count = 0;
        int idx = 0;
        while (idx < children.length) {
            if (!(children[idx] instanceof PartPlaceholder)) {
                ++count;
            }
            ++idx;
        }
        return count;
    }

    protected float getDockingRatio(LayoutPart dragged, LayoutPart target) {
        return 0.5f;
    }

    public void describeLayout(StringBuffer buf) {
        if (this.root == null) {
            return;
        }
        if (this.isZoomed()) {
            buf.append("zoomed ");
            this.root.describeLayout(buf);
        } else {
            buf.append("layout ");
            this.root.describeLayout(buf);
        }
    }

    void add(LayoutPart child, int relationship, int left, int right, LayoutPart relative) {
        if (child == null) {
            return;
        }
        if (relative != null && !this.isChild(relative)) {
            return;
        }
        if (relationship < 1 || relationship > 4) {
            relationship = 1;
        }
        RelationshipInfo info = new RelationshipInfo();
        info.part = child;
        info.relationship = relationship;
        info.left = left;
        info.right = right;
        info.relative = relative;
        this.addChild(info);
    }

    public boolean childIsZoomed(LayoutPart toTest) {
        return toTest == this.getZoomedPart();
    }

    public boolean allowsAutoFocus() {
        return true;
    }

    protected void startDeferringEvents() {
        super.startDeferringEvents();
        LayoutPart[] deferredChildren = this.children.toArray(new LayoutPart[this.children.size()]);
        int i = 0;
        while (i < deferredChildren.length) {
            LayoutPart child = deferredChildren[i];
            child.deferUpdates(true);
            ++i;
        }
    }

    protected void handleDeferredEvents() {
        super.handleDeferredEvents();
        LayoutPart[] deferredChildren = this.children.toArray(new LayoutPart[this.children.size()]);
        int i = 0;
        while (i < deferredChildren.length) {
            LayoutPart child = deferredChildren[i];
            child.deferUpdates(false);
            ++i;
        }
    }

    public void testInvariants() {
        super.testInvariants();
        if (this.getContainer() != null) {
            Assert.isTrue((this.getZoomedPart() != null == this.getContainer().childIsZoomed(this) ? 1 : 0) != 0);
        }
        LayoutPart[] childArray = this.getChildren();
        int idx = 0;
        while (idx < childArray.length) {
            childArray[idx].testInvariants();
            ++idx;
        }
        if (this.isZoomed()) {
            Assert.isTrue((boolean)this.children.contains(this.zoomedPart));
        }
    }

    protected static class RelationshipInfo {
        protected LayoutPart part;
        protected LayoutPart relative;
        protected int relationship;
        protected int left;
        protected int right;

        protected RelationshipInfo() {
        }

        public float getRatio() {
            int total = this.left + this.right;
            if (total > 0) {
                return (float)this.left / (float)total;
            }
            return 0.5f;
        }
    }

    private class SashContainerDropTarget
    extends AbstractDropTarget {
        private int side;
        private int cursor;
        private LayoutPart targetPart;
        private LayoutPart sourcePart;

        public SashContainerDropTarget(LayoutPart sourcePart, int side, int cursor, LayoutPart targetPart) {
            this.setTarget(sourcePart, side, cursor, targetPart);
        }

        public void setTarget(LayoutPart sourcePart, int side, int cursor, LayoutPart targetPart) {
            this.side = side;
            this.targetPart = targetPart;
            this.sourcePart = sourcePart;
            this.cursor = cursor;
        }

        public void drop() {
            if (this.side != 0) {
                LayoutPart visiblePart = this.sourcePart;
                if (this.sourcePart instanceof PartStack) {
                    visiblePart = PartSashContainer.this.getVisiblePart((PartStack)this.sourcePart);
                }
                PartSashContainer.this.dropObject(PartSashContainer.this.getVisibleParts(this.sourcePart), visiblePart, this.targetPart, this.side);
            }
        }

        public Cursor getCursor() {
            return DragCursors.getCursor(DragCursors.positionToDragCursor(this.cursor));
        }

        public Rectangle getSnapRectangle() {
            Rectangle targetBounds = this.targetPart != null ? DragUtil.getDisplayBounds(this.targetPart.getControl()) : DragUtil.getDisplayBounds((Control)PartSashContainer.this.getParent());
            if (this.side == 0x1000000 || this.side == 0) {
                return targetBounds;
            }
            int distance = Geometry.getDimension((Rectangle)targetBounds, (!Geometry.isHorizontal((int)this.side) ? 1 : 0) != 0);
            return Geometry.getExtrudedEdge((Rectangle)targetBounds, (int)((int)((float)distance * PartSashContainer.this.getDockingRatio(this.sourcePart, this.targetPart))), (int)this.side);
        }
    }
}

