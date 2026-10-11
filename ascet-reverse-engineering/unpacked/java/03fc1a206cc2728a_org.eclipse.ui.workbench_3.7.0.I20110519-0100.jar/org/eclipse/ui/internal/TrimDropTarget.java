/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.AnimationEngine;
import org.eclipse.ui.internal.TrimDragPreferences;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.dnd.DragBorder;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.IDragOverListener;
import org.eclipse.ui.internal.dnd.IDropTarget;
import org.eclipse.ui.internal.dnd.IDropTarget2;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.LayoutUtil;
import org.eclipse.ui.internal.layout.TrimDescriptor;
import org.eclipse.ui.internal.layout.TrimLayout;
import org.eclipse.ui.internal.layout.TrimToolBarBase;

class TrimDropTarget
implements IDragOverListener {
    private ActualTrimDropTarget dropTarget;
    private TrimLayout layout;
    private Composite windowComposite;

    public TrimDropTarget(Composite someComposite, WorkbenchWindow theWindow) {
        this.layout = (TrimLayout)someComposite.getLayout();
        this.windowComposite = someComposite;
        this.dropTarget = new ActualTrimDropTarget();
    }

    public IDropTarget drag(Control currentControl, Object draggedObject, Point position, Rectangle dragRectangle) {
        if (!(draggedObject instanceof IWindowTrim)) {
            return null;
        }
        IWindowTrim trim = (IWindowTrim)draggedObject;
        if (trim.getControl().getShell() != this.windowComposite.getShell()) {
            return null;
        }
        if (this.dropTarget.draggedTrim == null) {
            this.dropTarget.startDrag(trim);
        }
        this.dropTarget.track(position);
        this.windowComposite.getDisplay().update();
        return this.dropTarget;
    }

    private final class ActualTrimDropTarget
    implements IDropTarget2 {
        public IWindowTrim draggedTrim = null;
        private DragBorder border = null;
        private int dockedArea = 0;
        private int cursorAreaId;
        private int initialAreaId = 0;
        private IWindowTrim initialInsertBefore = null;
        private Rectangle initialLocation;

        private ActualTrimDropTarget() {
        }

        public void startDrag(IWindowTrim trim) {
            if (this.draggedTrim != trim) {
                this.draggedTrim = trim;
                this.initialAreaId = TrimDropTarget.this.layout.getTrimAreaId(this.draggedTrim.getControl());
                this.initialInsertBefore = this.getInsertBefore(this.initialAreaId, this.draggedTrim);
                this.initialLocation = DragUtil.getDisplayBounds(this.draggedTrim.getControl());
                this.dockedArea = this.initialAreaId;
            }
        }

        private int getTrimArea(Point pos) {
            int areaId = this.getTrimArea(pos, 0);
            if (areaId == 0) {
                areaId = this.getTrimArea(pos, TrimDragPreferences.getThreshold());
            }
            return areaId;
        }

        private int getTrimArea(Point pos, int extendedBoundaryWidth) {
            int[] areaIds = TrimDropTarget.this.layout.getAreaIds();
            int i = 0;
            while (i < areaIds.length) {
                Rectangle trimRect = TrimDropTarget.this.layout.getTrimRect(TrimDropTarget.this.windowComposite, areaIds[i]);
                trimRect = Geometry.toControl((Control)TrimDropTarget.this.windowComposite, (Rectangle)trimRect);
                if ((areaIds[i] & this.getValidSides()) != 0) {
                    switch (areaIds[i]) {
                        case 16384: {
                            trimRect.width += extendedBoundaryWidth;
                            if (pos.y < trimRect.y || pos.y > trimRect.y + trimRect.height || pos.x > trimRect.x + trimRect.width) break;
                            return areaIds[i];
                        }
                        case 131072: {
                            trimRect.x -= extendedBoundaryWidth;
                            trimRect.width += extendedBoundaryWidth;
                            if (pos.y < trimRect.y || pos.y > trimRect.y + trimRect.height || pos.x < trimRect.x) break;
                            return areaIds[i];
                        }
                        case 128: {
                            trimRect.height += extendedBoundaryWidth;
                            if (pos.x < trimRect.x || pos.x > trimRect.x + trimRect.width || pos.y > trimRect.y + trimRect.height) break;
                            return areaIds[i];
                        }
                        case 1024: {
                            trimRect.y -= extendedBoundaryWidth;
                            trimRect.height += extendedBoundaryWidth;
                            if (pos.x < trimRect.x || pos.x > trimRect.x + trimRect.width || pos.y < trimRect.y) break;
                            return areaIds[i];
                        }
                    }
                }
                ++i;
            }
            return 0;
        }

        private IWindowTrim getInsertBefore(int areaId, Point pos) {
            boolean isHorizontal = areaId == 128 || areaId == 1024;
            List tDescs = TrimDropTarget.this.layout.getTrimArea(areaId).getDescriptors();
            Iterator iter = tDescs.iterator();
            while (iter.hasNext()) {
                TrimDescriptor desc = (TrimDescriptor)iter.next();
                if (desc.getTrim() == this.draggedTrim) continue;
                Rectangle bb = desc.getCache().getControl().getBounds();
                Point center = Geometry.centerPoint((Rectangle)bb);
                if (!(isHorizontal ? pos.x < center.x : pos.y < center.y)) continue;
                return desc.getTrim();
            }
            return null;
        }

        private IWindowTrim getInsertBefore(int areaId, IWindowTrim trim) {
            List tDescs = TrimDropTarget.this.layout.getTrimArea(areaId).getDescriptors();
            Iterator iter = tDescs.iterator();
            while (iter.hasNext()) {
                TrimDescriptor desc = (TrimDescriptor)iter.next();
                if (desc.getTrim() != trim) continue;
                if (iter.hasNext()) {
                    desc = (TrimDescriptor)iter.next();
                    return desc.getTrim();
                }
                return null;
            }
            return null;
        }

        public void track(Point pos) {
            Rectangle r = new Rectangle(pos.x, pos.y, 1, 1);
            r = Geometry.toControl((Control)TrimDropTarget.this.windowComposite, (Rectangle)r);
            pos.x = r.x;
            pos.y = r.y;
            this.cursorAreaId = this.getTrimArea(pos);
            if (this.cursorAreaId != 0) {
                this.trackInsideTrimArea(pos);
            } else {
                this.trackOutsideTrimArea(pos);
            }
        }

        private void trackInsideTrimArea(Point pos) {
            boolean shouldDock;
            int newArea = this.getTrimArea(pos);
            IWindowTrim newInsertBefore = this.getInsertBefore(newArea, pos);
            boolean bl = shouldDock = this.dockedArea == 0;
            if (this.dockedArea != 0) {
                IWindowTrim curInsertBefore = this.getInsertBefore(this.dockedArea, this.draggedTrim);
                boolean bl2 = shouldDock = this.dockedArea != newArea || curInsertBefore != newInsertBefore;
            }
            if (shouldDock) {
                this.dock(newArea, newInsertBefore);
            }
        }

        private void trackOutsideTrimArea(Point pos) {
            if (this.dockedArea != 0) {
                this.undock();
            }
            this.border.setLocation(pos, 1024);
        }

        private int getValidSides() {
            int result = this.draggedTrim.getValidSides();
            if (result == 0) {
                return result;
            }
            return 148608;
        }

        private void redock() {
            Rectangle startRect = DragUtil.getDisplayBounds(this.draggedTrim.getControl());
            AnimationEngine.createTweakedAnimation(TrimDropTarget.this.windowComposite.getShell(), 400, startRect, this.initialLocation);
            this.dock(this.initialAreaId, this.initialInsertBefore);
        }

        public void drop() {
            if (this.dockedArea == 0) {
                this.redock();
            }
        }

        private void undock() {
            TrimDropTarget.this.layout.removeTrim(this.draggedTrim);
            LayoutUtil.resize(this.draggedTrim.getControl());
            this.draggedTrim.dock(this.initialAreaId);
            this.draggedTrim.getControl().setSize(this.initialLocation.width, this.initialLocation.height);
            boolean wantsFrame = !(this.draggedTrim instanceof TrimToolBarBase);
            this.border = new DragBorder(TrimDropTarget.this.windowComposite, this.draggedTrim.getControl(), wantsFrame);
            this.dockedArea = 0;
        }

        private void dock(int areaId, IWindowTrim insertBefore) {
            if (this.border != null) {
                this.border.dispose();
                this.border = null;
            }
            this.draggedTrim.dock(areaId);
            TrimDropTarget.this.layout.addTrim(areaId, this.draggedTrim, insertBefore);
            LayoutUtil.resize(this.draggedTrim.getControl());
            this.dockedArea = areaId;
        }

        public Cursor getCursor() {
            if (this.cursorAreaId == 0) {
                return TrimDropTarget.this.windowComposite.getDisplay().getSystemCursor(20);
            }
            return TrimDropTarget.this.windowComposite.getDisplay().getSystemCursor(5);
        }

        public Rectangle getSnapRectangle() {
            return new Rectangle(100000, 0, 0, 0);
        }

        public void dragFinished(boolean dropPerformed) {
            if (!dropPerformed && this.dockedArea == 0) {
                this.redock();
            }
            this.draggedTrim = null;
        }
    }
}

