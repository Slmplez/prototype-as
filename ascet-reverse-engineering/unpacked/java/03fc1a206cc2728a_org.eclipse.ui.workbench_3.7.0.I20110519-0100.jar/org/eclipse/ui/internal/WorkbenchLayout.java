/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CBanner
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.swt.custom.CBanner;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.TrimArea;
import org.eclipse.ui.internal.TrimLayoutData;
import org.eclipse.ui.internal.layout.TrimCommonUIHandle;

public class WorkbenchLayout
extends Layout {
    private static int defaultMargin = 5;
    public static final String TRIMID_CMD_PRIMARY = "Command Primary";
    public static final String TRIMID_CMD_SECONDARY = "Command Secondary";
    public static final String TRIMID_VERTICAL1 = "vertical1";
    public static final String TRIMID_VERTICAL2 = "vertical2";
    public static final String TRIMID_STATUS = "Status";
    public static final String TRIMID_CENTER = "Center";
    public CBanner banner;
    private int topMax;
    public Composite centerComposite;
    private int spacing = 0;
    private TrimArea cmdPrimaryTrimArea = new TrimArea("Command Primary", 128, defaultMargin);
    private TrimArea cmdSecondaryTrimArea = new TrimArea("Command Secondary", 128, defaultMargin);
    private TrimArea leftTrimArea = new TrimArea("vertical1", 16384, defaultMargin);
    private TrimArea rightTrimArea = new TrimArea("vertical2", 131072, defaultMargin);
    private TrimArea bottomTrimArea = new TrimArea("Status", 1024, defaultMargin);
    private int horizontalHandleSize = -1;
    private int verticalHandleSize = -1;
    private List dragHandles = new ArrayList();
    private static Composite layoutComposite;
    private static Rectangle clientRect;

    public void createCBanner(Composite workbenchComposite) {
        this.banner = new CBanner(workbenchComposite, 0);
        this.banner.setSimple(false);
        this.banner.setRightWidth(175);
        this.banner.setLocation(0, 0);
        Composite bannerLeft = new Composite((Composite)this.banner, 0){

            public Point computeSize(int wHint, int hHint, boolean changed) {
                if (layoutComposite != null) {
                    return WorkbenchLayout.this.computeSize(WorkbenchLayout.TRIMID_CMD_PRIMARY, wHint);
                }
                return super.computeSize(wHint, hHint, changed);
            }
        };
        bannerLeft.setLayout((Layout)new LeftBannerLayout());
        bannerLeft.setBackground(workbenchComposite.getDisplay().getSystemColor(10));
        this.banner.setLeft((Control)bannerLeft);
        Composite bannerRight = new Composite((Composite)this.banner, 0){

            public Point computeSize(int wHint, int hHint, boolean changed) {
                if (layoutComposite != null) {
                    return WorkbenchLayout.this.computeSize(WorkbenchLayout.TRIMID_CMD_SECONDARY, wHint);
                }
                return super.computeSize(wHint, hHint, changed);
            }
        };
        bannerRight.setBackground(workbenchComposite.getDisplay().getSystemColor(10));
        this.banner.setRight((Control)bannerRight);
        bannerRight.addControlListener(new ControlListener(){

            public void controlMoved(ControlEvent e) {
            }

            public void controlResized(ControlEvent e) {
                Composite leftComp = (Composite)e.widget;
                leftComp.getShell().layout(true);
            }
        });
        this.banner.moveBelow(null);
    }

    protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
        Point size = new Point(wHint, hHint);
        if (size.x == -1) {
            size.x = 300;
        }
        if (size.y == -1) {
            size.y = 300;
        }
        return size;
    }

    protected void layout(Composite composite, boolean flushCache) {
        layoutComposite = composite;
        clientRect = composite.getClientArea();
        this.resetDragHandles();
        if (this.useCBanner()) {
            this.banner.moveBelow(null);
            Point bannerSize = this.banner.computeSize(WorkbenchLayout.clientRect.width, -1);
            this.topMax = bannerSize.y;
            this.banner.setSize(bannerSize);
        } else {
            Point c1Size = this.computeSize(TRIMID_CMD_PRIMARY, WorkbenchLayout.clientRect.width);
            Point c2Size = this.computeSize(TRIMID_CMD_SECONDARY, WorkbenchLayout.clientRect.width);
            this.topMax = c1Size.y + c2Size.y;
        }
        Point v1Size = this.computeSize(TRIMID_VERTICAL1, WorkbenchLayout.clientRect.height - this.topMax);
        Point v2Size = this.computeSize(TRIMID_VERTICAL2, WorkbenchLayout.clientRect.height - this.topMax);
        this.computeSize(TRIMID_STATUS, WorkbenchLayout.clientRect.width - (v1Size.x + v2Size.x));
        if (this.useCBanner()) {
            Point leftLoc = this.banner.getLeft().getLocation();
            this.cmdPrimaryTrimArea.areaBounds.x = leftLoc.x;
            this.cmdPrimaryTrimArea.areaBounds.y = leftLoc.y;
        } else {
            this.cmdPrimaryTrimArea.areaBounds.x = 0;
            this.cmdPrimaryTrimArea.areaBounds.y = 0;
        }
        this.layoutTrim(this.cmdPrimaryTrimArea, this.cmdPrimaryTrimArea.areaBounds);
        if (this.useCBanner()) {
            Point rightLoc = this.banner.getRight().getLocation();
            this.cmdSecondaryTrimArea.areaBounds.x = rightLoc.x;
            this.cmdSecondaryTrimArea.areaBounds.y = rightLoc.y;
        } else {
            this.cmdSecondaryTrimArea.areaBounds.x = 0;
            this.cmdSecondaryTrimArea.areaBounds.y = this.cmdPrimaryTrimArea.areaBounds.height;
        }
        this.layoutTrim(this.cmdSecondaryTrimArea, this.cmdSecondaryTrimArea.areaBounds);
        this.leftTrimArea.areaBounds.x = 0;
        this.leftTrimArea.areaBounds.y = this.topMax;
        this.layoutTrim(this.leftTrimArea, this.leftTrimArea.areaBounds);
        this.rightTrimArea.areaBounds.x = WorkbenchLayout.clientRect.width - this.rightTrimArea.areaBounds.width;
        this.rightTrimArea.areaBounds.y = this.topMax;
        this.layoutTrim(this.rightTrimArea, this.rightTrimArea.areaBounds);
        this.bottomTrimArea.areaBounds.x = this.leftTrimArea.areaBounds.width;
        this.bottomTrimArea.areaBounds.y = WorkbenchLayout.clientRect.height - this.bottomTrimArea.areaBounds.height;
        this.layoutTrim(this.bottomTrimArea, this.bottomTrimArea.areaBounds);
        this.layoutCenter();
    }

    private boolean useCBanner() {
        return this.banner != null && this.banner.getVisible();
    }

    private TrimArea getTrimArea(String areaId) {
        if (TRIMID_CMD_PRIMARY.equals(areaId)) {
            return this.cmdPrimaryTrimArea;
        }
        if (TRIMID_CMD_SECONDARY.equals(areaId)) {
            return this.cmdSecondaryTrimArea;
        }
        if (TRIMID_VERTICAL1.equals(areaId)) {
            return this.leftTrimArea;
        }
        if (TRIMID_VERTICAL2.equals(areaId)) {
            return this.rightTrimArea;
        }
        if (TRIMID_STATUS.equals(areaId)) {
            return this.bottomTrimArea;
        }
        return null;
    }

    private List getTrimContents(String areaId) {
        ArrayList<Control> trimContents = new ArrayList<Control>();
        Control[] children = layoutComposite.getChildren();
        int i = 0;
        while (i < children.length) {
            if (!children[i].isDisposed() && children[i].getVisible() && children[i].getLayoutData() instanceof TrimLayoutData) {
                TrimLayoutData tlData = (TrimLayoutData)children[i].getLayoutData();
                if (tlData.areaId.equals(areaId)) {
                    trimContents.add(children[i]);
                }
            }
            ++i;
        }
        return trimContents;
    }

    private void layoutCenter() {
        if (this.centerComposite != null) {
            Rectangle areaBounds = new Rectangle(this.leftTrimArea.areaBounds.x + this.leftTrimArea.areaBounds.width, this.topMax, WorkbenchLayout.clientRect.width - (this.leftTrimArea.areaBounds.width + this.rightTrimArea.areaBounds.width), WorkbenchLayout.clientRect.height - (this.topMax + this.bottomTrimArea.areaBounds.height));
            this.centerComposite.setBounds(areaBounds);
        }
    }

    private Point computeSize(String areaId, int majorHint) {
        TrimArea trimArea = this.getTrimArea(areaId);
        boolean horizontal = trimArea.orientation == 128 || trimArea.orientation == 1024;
        trimArea.trimContents = this.getTrimContents(trimArea.areaId);
        trimArea.trimLines = this.computeWrappedTrim(trimArea, majorHint);
        int minorMax = 0;
        Iterator iter = trimArea.trimLines.iterator();
        while (iter.hasNext()) {
            TrimLine curLine = (TrimLine)iter.next();
            minorMax += curLine.minorMax;
        }
        minorMax = Math.max(minorMax, trimArea.defaultMinor);
        Point computedSize = new Point(0, 0);
        if (horizontal) {
            computedSize.x = trimArea.areaBounds.width = majorHint;
            computedSize.y = trimArea.areaBounds.height = minorMax;
        } else {
            computedSize.x = trimArea.areaBounds.width = minorMax;
            computedSize.y = trimArea.areaBounds.height = majorHint;
        }
        return computedSize;
    }

    private List computeWrappedTrim(TrimArea trimArea, int majorHint) {
        boolean horizontal = trimArea.orientation == 128 || trimArea.orientation == 1024;
        ArrayList<TrimLine> lines = new ArrayList<TrimLine>();
        TrimLine curLine = new TrimLine();
        lines.add(curLine);
        curLine.minorMax = trimArea.defaultMinor;
        int tilePos = 0;
        Iterator iter = trimArea.trimContents.iterator();
        while (iter.hasNext()) {
            int minorSize;
            int curTileSize;
            Control control = (Control)iter.next();
            TrimLayoutData td = (TrimLayoutData)control.getLayoutData();
            Point prefSize = horizontal ? control.computeSize(-1, -1) : control.computeSize(-1, majorHint);
            int n = curTileSize = horizontal ? prefSize.x : prefSize.y;
            if (curLine.controls.size() > 0) {
                curTileSize += this.spacing;
            }
            if (td.listener != null) {
                curTileSize += horizontal ? this.horizontalHandleSize : this.verticalHandleSize;
            }
            if (tilePos + curTileSize <= majorHint || curLine.controls.size() == 0) {
                curLine.controls.add(control);
                int n2 = minorSize = horizontal ? prefSize.y : prefSize.x;
                if (minorSize > curLine.minorMax) {
                    curLine.minorMax = minorSize;
                }
                tilePos += curTileSize;
            } else {
                curLine.extraSpace = majorHint - tilePos;
                curLine = new TrimLine();
                lines.add(curLine);
                curLine.controls.add(control);
                int n3 = minorSize = horizontal ? prefSize.y : prefSize.x;
                if (minorSize > curLine.minorMax) {
                    curLine.minorMax = minorSize;
                }
                tilePos = curTileSize;
            }
            if ((td.flags & 1) == 0) continue;
            ++curLine.resizableCount;
        }
        curLine.extraSpace = majorHint - tilePos;
        return lines;
    }

    private void layoutTrim(TrimArea trimArea, Rectangle areaBounds) {
        boolean horizontal = trimArea.orientation == 128 || trimArea.orientation == 1024;
        int areaMajor = horizontal ? areaBounds.width : areaBounds.height;
        List tileAreas = trimArea.trimLines;
        int tilePosMinor = horizontal ? areaBounds.y : areaBounds.x;
        Iterator areaIter = tileAreas.iterator();
        while (areaIter.hasNext()) {
            TrimLine curLine = (TrimLine)areaIter.next();
            int resizePadding = 0;
            if (curLine.resizableCount > 0 && curLine.extraSpace > 0) {
                resizePadding = curLine.extraSpace / curLine.resizableCount;
            }
            int tilePosMajor = horizontal ? areaBounds.x : areaBounds.y;
            Iterator iter = curLine.controls.iterator();
            while (iter.hasNext()) {
                int minor;
                Control control = (Control)iter.next();
                TrimLayoutData td = (TrimLayoutData)control.getLayoutData();
                Point prefSize = control.computeSize(-1, -1);
                int major = horizontal ? prefSize.x : prefSize.y;
                int n = minor = horizontal ? prefSize.y : prefSize.x;
                if (major > areaMajor) {
                    major = areaMajor;
                }
                if ((td.flags & 4) != 0) {
                    minor = curLine.minorMax;
                }
                if ((td.flags & 1) != 0) {
                    major += resizePadding;
                }
                if (td.listener != null && this.createHandles()) {
                    TrimCommonUIHandle handle = this.getDragHandle(trimArea.orientation);
                    if (horizontal) {
                        handle.setBounds(tilePosMajor, tilePosMinor, this.getHandleSize(true), curLine.minorMax);
                    } else {
                        handle.setBounds(tilePosMinor, tilePosMajor, curLine.minorMax, this.getHandleSize(false));
                    }
                    tilePosMajor += horizontal ? this.getHandleSize(true) : this.getHandleSize(false);
                }
                switch (trimArea.orientation) {
                    case 128: {
                        control.setBounds(tilePosMajor, tilePosMinor, major, minor);
                        break;
                    }
                    case 16384: {
                        control.setBounds(tilePosMinor, tilePosMajor, minor, major);
                        break;
                    }
                    case 131072: {
                        int rightEdge = tilePosMinor + curLine.minorMax;
                        control.setBounds(rightEdge - minor, tilePosMajor, minor, major);
                        break;
                    }
                    case 1024: {
                        int bottomEdge = tilePosMinor + curLine.minorMax;
                        control.setBounds(tilePosMajor, bottomEdge - minor, major, minor);
                    }
                }
                tilePosMajor += major + this.spacing;
            }
            tilePosMinor += curLine.minorMax;
            int n = tilePosMajor = horizontal ? areaBounds.x : areaBounds.y;
        }
    }

    private boolean createHandles() {
        return false;
    }

    private void resetDragHandles() {
        Iterator iter = this.dragHandles.iterator();
        while (iter.hasNext()) {
        }
    }

    private TrimCommonUIHandle getDragHandle(int orientation) {
        Iterator iter = this.dragHandles.iterator();
        if (iter.hasNext()) {
            TrimCommonUIHandle handle = (TrimCommonUIHandle)((Object)iter.next());
            return handle;
        }
        System.out.println("new Handle");
        return null;
    }

    public static int getOrientation(String areaId) {
        if (TRIMID_CMD_PRIMARY.equals(areaId)) {
            return 128;
        }
        if (TRIMID_CMD_SECONDARY.equals(areaId)) {
            return 128;
        }
        if (TRIMID_VERTICAL1.equals(areaId)) {
            return 16384;
        }
        if (TRIMID_VERTICAL2.equals(areaId)) {
            return 131072;
        }
        if (TRIMID_STATUS.equals(areaId)) {
            return 1024;
        }
        return 0;
    }

    private int getHandleSize(boolean horizontal) {
        int length;
        if (horizontal && this.horizontalHandleSize != -1) {
            return this.horizontalHandleSize;
        }
        if (!horizontal && this.verticalHandleSize != -1) {
            return this.verticalHandleSize;
        }
        CoolBar bar = new CoolBar(layoutComposite, horizontal ? 256 : 512);
        CoolItem item = new CoolItem(bar, 0);
        Label ctrl = new Label((Composite)bar, 8);
        ctrl.setText("Button 1");
        Point size = ctrl.computeSize(-1, -1);
        Point ps = item.computeSize(size.x, size.y);
        item.setPreferredSize(ps);
        item.setControl((Control)ctrl);
        bar.pack();
        Point bl = ctrl.getLocation();
        Point cl = bar.getLocation();
        ctrl.dispose();
        item.dispose();
        bar.dispose();
        if (horizontal) {
            this.horizontalHandleSize = length = bl.x - cl.x;
        } else {
            this.verticalHandleSize = length = bl.y - cl.y;
        }
        return length;
    }

    private class LeftBannerLayout
    extends Layout {
        private LeftBannerLayout() {
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            return new Point(wHint, WorkbenchLayout.this.topMax);
        }

        protected void layout(Composite composite, boolean flushCache) {
        }
    }

    private class TrimLine {
        List controls = new ArrayList();
        int minorMax = 0;
        int resizableCount = 0;
        int extraSpace = 0;

        private TrimLine() {
        }
    }
}

