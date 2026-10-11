/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.CBanner
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.layout;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.swt.custom.CBanner;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.WindowTrimProxy;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.layout.SizeCache;
import org.eclipse.ui.internal.layout.TrimCommonUIHandle;
import org.eclipse.ui.internal.layout.TrimDescriptor;

public class TrimArea {
    private static final IWindowTrim defaultData = new WindowTrimProxy(null, null, null, 0, true);
    private int fId;
    private String fDisplayName;
    private List lines = new ArrayList();
    private ArrayList fTrim;
    private static final String PREFSIZE_DATA_ID = "prefSize";
    private static final int MIN_BANNER_LEFT = 150;
    private static int TILE_SPACING = 2;
    private static int LINE_SPACING = 2;
    private Rectangle curRect = new Rectangle(0, 0, 0, 0);
    static int tileCount = 0;

    private static IWindowTrim getData(Control control) {
        IWindowTrim data = (IWindowTrim)control.getLayoutData();
        if (data == null) {
            data = defaultData;
        }
        return data;
    }

    public TrimArea(int id, String displayName) {
        this.fTrim = new ArrayList();
        this.fId = id;
        this.fDisplayName = displayName;
    }

    public boolean isEmpty() {
        return this.fTrim.isEmpty();
    }

    public Rectangle getCurRect() {
        return this.curRect;
    }

    public List getTrims() {
        ArrayList<IWindowTrim> trim = new ArrayList<IWindowTrim>(this.fTrim.size());
        Iterator d = this.fTrim.iterator();
        while (d.hasNext()) {
            TrimDescriptor desc = (TrimDescriptor)d.next();
            trim.add(desc.getTrim());
        }
        return trim;
    }

    public List getDescriptors() {
        return (List)this.fTrim.clone();
    }

    private Point getPrefSize(Control ctrl) {
        Point prefSize = ctrl.getSize();
        if (!(prefSize.x != 0 && prefSize.y != 0 || TrimArea.getData(ctrl).isResizeable())) {
            prefSize = ctrl.computeSize(-1, -1);
            ctrl.setSize(prefSize);
        }
        if (TrimArea.getData(ctrl).isResizeable()) {
            if (ctrl instanceof CBanner) {
                CBanner banner = (CBanner)ctrl;
                prefSize.x = banner.getRightWidth() + banner.getBorderWidth() + 150;
                prefSize.y = 0;
            } else {
                prefSize = TrimArea.getData(ctrl).getId().equals("org.eclipse.jface.action.StatusLineManager") ? new Point(250, 26) : ctrl.computeSize(-1, -1);
            }
            ctrl.setData(PREFSIZE_DATA_ID, (Object)prefSize);
        }
        return prefSize;
    }

    public int computeWrappedTrim(int majorHint) {
        int totalMinor = 0;
        this.lines.clear();
        boolean isHorizontal = !this.isVertical();
        TrimLine curLine = new TrimLine(majorHint);
        this.lines.add(curLine);
        TrimCommonUIHandle dragHandle = null;
        List caches = this.getCaches();
        Iterator cacheIter = caches.iterator();
        while (cacheIter.hasNext()) {
            int minorSize;
            SizeCache cache = (SizeCache)cacheIter.next();
            Control ctrl = cache.getControl();
            if (ctrl == null || !ctrl.getVisible()) continue;
            if (ctrl instanceof TrimCommonUIHandle) {
                dragHandle = (TrimCommonUIHandle)ctrl;
                Point dhSize = dragHandle.getSize();
                if (dhSize.x != 0 && dhSize.y != 0) continue;
                dragHandle.setSize(dragHandle.computeSize(-1, -1));
                continue;
            }
            Point prefSize = this.getPrefSize(ctrl);
            int tileLength = isHorizontal ? prefSize.x : prefSize.y;
            int n = minorSize = isHorizontal ? prefSize.y : prefSize.x;
            if (dragHandle != null) {
                Point dhSize = dragHandle.getSize();
                tileLength += isHorizontal ? dhSize.x : dhSize.y;
            }
            if ((tileLength += TILE_SPACING) < curLine.availableSpace || curLine.controls.size() == 0) {
                curLine.addControl(ctrl, tileLength, minorSize, (Control)dragHandle);
            } else {
                totalMinor += curLine.terminate();
                curLine = new TrimLine(majorHint);
                this.lines.add(curLine);
                curLine.addControl(ctrl, tileLength, minorSize, (Control)dragHandle);
            }
            dragHandle = null;
        }
        totalMinor += curLine.terminate();
        return totalMinor += (this.lines.size() + 1) * LINE_SPACING;
    }

    public void tileTrim(int anchorX, int anchorY, int major) {
        this.curRect.x = anchorX;
        this.curRect.y = anchorY;
        boolean isHorizontal = !this.isVertical();
        int tileX = anchorX;
        int tileY = anchorY;
        if (isHorizontal) {
            tileX += TILE_SPACING;
            tileY += LINE_SPACING;
        } else {
            tileY += TILE_SPACING;
            tileX += LINE_SPACING;
        }
        Iterator lineIter = this.lines.iterator();
        while (lineIter.hasNext()) {
            TrimLine line = (TrimLine)lineIter.next();
            int curExtraSpace = line.availableSpace;
            int curResizeCount = line.resizableCount;
            Iterator ctrlIter = line.controls.iterator();
            while (ctrlIter.hasNext()) {
                Control ctrl = (Control)ctrlIter.next();
                Point prefSize = ctrl.getSize();
                if (TrimArea.getData(ctrl).isResizeable() && curResizeCount > 0) {
                    Point cachedPrefSize = (Point)ctrl.getData(PREFSIZE_DATA_ID);
                    prefSize.x = cachedPrefSize.x;
                    prefSize.y = cachedPrefSize.y;
                    int resizeAmount = curExtraSpace / curResizeCount;
                    if (isHorizontal) {
                        prefSize.x += resizeAmount;
                    } else {
                        prefSize.y += resizeAmount;
                    }
                    curExtraSpace -= resizeAmount;
                    --curResizeCount;
                    ctrl.setSize(prefSize);
                }
                ctrl.setLocation(tileX, tileY);
                if (isHorizontal) {
                    tileX += prefSize.x;
                } else {
                    tileY += prefSize.y;
                }
                if (ctrl instanceof TrimCommonUIHandle) continue;
                if (isHorizontal) {
                    tileX += TILE_SPACING;
                    continue;
                }
                tileY += TILE_SPACING;
            }
            if (isHorizontal) {
                tileY += line.minorMax + LINE_SPACING;
                tileX = anchorX + TILE_SPACING;
                continue;
            }
            tileX += line.minorMax + LINE_SPACING;
            tileY = anchorY + TILE_SPACING;
        }
        if (isHorizontal) {
            this.curRect.width = major;
            this.curRect.height = tileY - anchorY;
        } else {
            this.curRect.width = tileX - anchorX;
            this.curRect.height = major;
        }
    }

    public boolean isVertical() {
        return this.fId == 16384 || this.fId == 131072;
    }

    public int getId() {
        return this.fId;
    }

    public String getDisplayName() {
        return this.fDisplayName;
    }

    public void addTrim(TrimDescriptor desc) {
        this.fTrim.add(desc);
    }

    public void addTrim(TrimDescriptor desc, TrimDescriptor beforeMe) {
        int idx = this.fTrim.indexOf(beforeMe);
        if (idx == -1) {
            this.fTrim.add(desc);
        } else {
            ListIterator<TrimDescriptor> i = this.fTrim.listIterator(idx);
            i.add(desc);
        }
    }

    public void removeTrim(TrimDescriptor desc) {
        this.fTrim.remove(desc);
    }

    public boolean contains(TrimDescriptor desc) {
        return this.fTrim.contains(desc);
    }

    public List getCaches() {
        ArrayList<SizeCache> result = new ArrayList<SizeCache>(this.fTrim.size());
        Iterator d = this.fTrim.iterator();
        while (d.hasNext()) {
            TrimDescriptor desc = (TrimDescriptor)d.next();
            if (desc.getDockingCache() != null) {
                result.add(desc.getDockingCache());
            }
            result.add(desc.getCache());
        }
        return result;
    }

    private class TrimLine {
        List controls = new ArrayList();
        int minorMax;
        int resizableCount;
        int availableSpace;

        public TrimLine(int majorHint) {
            this.availableSpace = majorHint;
        }

        void addControl(Control ctrl, int tileLength, int minorSize, Control dragHandle) {
            if (dragHandle != null) {
                this.controls.add(dragHandle);
            }
            this.controls.add(ctrl);
            if (TrimArea.getData(ctrl).isResizeable()) {
                ++this.resizableCount;
            }
            if (minorSize > this.minorMax) {
                this.minorMax = minorSize;
            }
            this.availableSpace -= tileLength;
        }

        int terminate() {
            Iterator ctrls = this.controls.iterator();
            while (ctrls.hasNext()) {
                Control ctrl = (Control)ctrls.next();
                if (!(ctrl instanceof CBanner)) continue;
                CBanner banner = (CBanner)ctrl;
                Point bannerPrefSize = (Point)banner.getData(TrimArea.PREFSIZE_DATA_ID);
                int realWidth = bannerPrefSize.x + this.availableSpace / this.resizableCount;
                Point cbSize = banner.computeSize(realWidth, -1);
                banner.setData(TrimArea.PREFSIZE_DATA_ID, (Object)new Point(bannerPrefSize.x, cbSize.y));
                if (cbSize.y <= this.minorMax) continue;
                this.minorMax = cbSize.y;
            }
            return this.minorMax;
        }
    }
}

