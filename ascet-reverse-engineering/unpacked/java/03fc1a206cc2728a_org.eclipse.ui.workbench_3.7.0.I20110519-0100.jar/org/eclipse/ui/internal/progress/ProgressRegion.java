/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.TrimUtil;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.layout.IWindowTrim;
import org.eclipse.ui.internal.progress.AnimationItem;
import org.eclipse.ui.internal.progress.AnimationManager;
import org.eclipse.ui.internal.progress.JobInfo;
import org.eclipse.ui.internal.progress.ProgressAnimationItem;
import org.eclipse.ui.internal.progress.ProgressCanvasViewer;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.progress.ProgressViewerContentProvider;
import org.eclipse.ui.internal.progress.ProgressViewerLabelProvider;

public class ProgressRegion
implements IWindowTrim {
    ProgressCanvasViewer viewer;
    ProgressAnimationItem animationItem;
    Composite region;
    WorkbenchWindow workbenchWindow;
    private int fWidthHint = -1;
    private int fHeightHint = -1;
    private int side = 1024;
    private boolean forceHorizontal;

    public Control createContents(Composite parent, WorkbenchWindow window) {
        this.workbenchWindow = window;
        GC gc = new GC((Drawable)parent);
        gc.setAdvanced(true);
        this.forceHorizontal = !gc.getAdvanced();
        gc.dispose();
        this.region = new Composite(parent, 0){

            public Point computeSize(int wHint, int hHint, boolean changed) {
                Point size = super.computeSize(wHint, hHint, changed);
                if (ProgressRegion.this.isHorizontal(ProgressRegion.this.side)) {
                    size.y = TrimUtil.TRIM_DEFAULT_HEIGHT;
                } else {
                    size.x = TrimUtil.TRIM_DEFAULT_HEIGHT;
                }
                return size;
            }
        };
        GridLayout gl = new GridLayout();
        gl.marginHeight = 0;
        gl.marginWidth = 0;
        if (this.isHorizontal(this.side)) {
            gl.numColumns = 3;
        }
        this.region.setLayout((Layout)gl);
        this.viewer = new ProgressCanvasViewer(this.region, 524288, 1, 36, this.isHorizontal(this.side) ? 256 : 512);
        this.viewer.setUseHashlookup(true);
        Control viewerControl = this.viewer.getControl();
        GridData gd = new GridData(4, 4, true, true);
        Point viewerSizeHints = this.viewer.getSizeHints();
        if (this.isHorizontal(this.side)) {
            gd.widthHint = viewerSizeHints.x;
            gd.heightHint = viewerSizeHints.y;
        } else {
            gd.widthHint = viewerSizeHints.y;
            gd.heightHint = viewerSizeHints.x;
        }
        viewerControl.setLayoutData((Object)gd);
        int widthPreference = AnimationManager.getInstance().getPreferredWidth() + 25;
        this.animationItem = new ProgressAnimationItem(this, this.isHorizontal(this.side) ? 256 : 512);
        this.animationItem.createControl(this.region);
        this.animationItem.setAnimationContainer(new AnimationItem.IAnimationContainer(){

            public void animationDone() {
                if (ProgressRegion.this.viewer.getControl().isDisposed()) {
                    return;
                }
                ProgressRegion.this.viewer.refresh();
            }

            public void animationStart() {
            }
        });
        if (this.isHorizontal(this.side)) {
            gd = new GridData(1040);
            gd.widthHint = widthPreference;
        } else {
            gd = new GridData(768);
            gd.heightHint = widthPreference;
        }
        this.animationItem.getControl().setLayoutData((Object)gd);
        viewerControl.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDoubleClick(MouseEvent e) {
                ProgressRegion.this.processDoubleClick();
            }
        });
        ProgressViewerContentProvider provider = new ProgressViewerContentProvider(this.viewer, false, false);
        this.viewer.setContentProvider((IContentProvider)provider);
        this.viewer.setInput(provider);
        this.viewer.setLabelProvider((IBaseLabelProvider)new ProgressViewerLabelProvider(viewerControl));
        this.viewer.setComparator(ProgressManagerUtil.getProgressViewerComparator());
        this.viewer.addFilter(new ViewerFilter(){

            public boolean select(Viewer viewer, Object parentElement, Object element) {
                JobInfo info;
                return !(element instanceof JobInfo) || !(info = (JobInfo)element).isBlocked() && info.getJob().getState() != 2;
            }
        });
        return this.region;
    }

    public AnimationItem getAnimationItem() {
        return this.animationItem;
    }

    public Control getControl() {
        return this.region;
    }

    public void processDoubleClick() {
        ProgressManagerUtil.openProgressView(this.workbenchWindow);
    }

    public void dock(int dropSide) {
        int oldSide = this.side;
        this.side = dropSide;
        if (oldSide == dropSide || this.isVertical(oldSide) && this.isVertical(dropSide) || this.isHorizontal(oldSide) && this.isHorizontal(dropSide)) {
            return;
        }
        this.recreate();
    }

    private boolean isHorizontal(int dropSide) {
        if (this.forceHorizontal) {
            return true;
        }
        return dropSide == 128 || dropSide == 1024;
    }

    private boolean isVertical(int dropSide) {
        if (this.forceHorizontal) {
            return false;
        }
        return dropSide == 16384 || dropSide == 131072;
    }

    private void recreate() {
        if (this.region != null && !this.region.isDisposed()) {
            Composite parent = this.region.getParent();
            boolean animating = this.animationItem.animationRunning();
            AnimationManager.getInstance().removeItem(this.animationItem);
            this.region.dispose();
            this.createContents(parent, this.workbenchWindow);
            if (animating) {
                this.animationItem.animationStart();
            }
        }
    }

    public String getId() {
        return "org.eclipse.ui.internal.progress.ProgressRegion";
    }

    public String getDisplayName() {
        return WorkbenchMessages.TrimCommon_Progress_TrimName;
    }

    public int getValidSides() {
        return 148608;
    }

    public boolean isCloseable() {
        return false;
    }

    public void handleClose() {
    }

    public int getWidthHint() {
        return this.fWidthHint;
    }

    public void setWidthHint(int w) {
        this.fWidthHint = w;
    }

    public int getHeightHint() {
        return this.fHeightHint;
    }

    public void setHeightHint(int h) {
        this.fHeightHint = h;
    }

    public boolean isResizeable() {
        return false;
    }
}

