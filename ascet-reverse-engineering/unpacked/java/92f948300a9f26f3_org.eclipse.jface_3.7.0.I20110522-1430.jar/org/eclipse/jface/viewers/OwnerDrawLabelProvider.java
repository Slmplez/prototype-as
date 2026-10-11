/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.viewers;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jface.viewers.CellLabelProvider;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerColumn;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public abstract class OwnerDrawLabelProvider
extends CellLabelProvider {
    private static final String OWNER_DRAW_LABEL_PROVIDER_LISTENER = "owner_draw_label_provider_listener";

    public static void setUpOwnerDraw(ColumnViewer viewer) {
        ++OwnerDrawLabelProvider.getOrCreateOwnerDrawListener((ColumnViewer)viewer).enabledGlobally;
    }

    private static OwnerDrawListener getOrCreateOwnerDrawListener(ColumnViewer viewer) {
        Control control = viewer.getControl();
        OwnerDrawListener listener = (OwnerDrawListener)control.getData(OWNER_DRAW_LABEL_PROVIDER_LISTENER);
        if (listener == null) {
            listener = new OwnerDrawListener(viewer);
            control.setData(OWNER_DRAW_LABEL_PROVIDER_LISTENER, (Object)listener);
            control.addListener(41, (Listener)listener);
            control.addListener(40, (Listener)listener);
            control.addListener(42, (Listener)listener);
        }
        return listener;
    }

    public void dispose(ColumnViewer viewer, ViewerColumn column) {
        if (!viewer.getControl().isDisposed()) {
            this.setOwnerDrawEnabled(viewer, column, false);
        }
        super.dispose(viewer, column);
    }

    protected void initialize(ColumnViewer viewer, ViewerColumn column) {
        this.initialize(viewer, column, true);
    }

    protected final void initialize(ColumnViewer viewer, ViewerColumn column, boolean enableOwnerDraw) {
        super.initialize(viewer, column);
        this.setOwnerDrawEnabled(viewer, column, enableOwnerDraw);
    }

    public void update(ViewerCell cell) {
        Rectangle cellBounds = cell.getBounds();
        cell.getControl().redraw(cellBounds.x, cellBounds.y, cellBounds.width, cellBounds.height, true);
    }

    protected void erase(Event event, Object element) {
        Rectangle bounds = event.getBounds();
        if ((event.detail & 2) != 0) {
            Color oldForeground = event.gc.getForeground();
            Color oldBackground = event.gc.getBackground();
            event.gc.setBackground(event.item.getDisplay().getSystemColor(26));
            event.gc.setForeground(event.item.getDisplay().getSystemColor(27));
            event.gc.fillRectangle(bounds);
            event.gc.setForeground(oldForeground);
            event.gc.setBackground(oldBackground);
            event.detail &= 0xFFFFFFFD;
        }
    }

    protected abstract void measure(Event var1, Object var2);

    protected abstract void paint(Event var1, Object var2);

    protected void setOwnerDrawEnabled(ColumnViewer viewer, ViewerColumn column, boolean enabled) {
        if (enabled) {
            OwnerDrawListener listener = OwnerDrawLabelProvider.getOrCreateOwnerDrawListener(viewer);
            if (column == null) {
                ++listener.enabledGlobally;
            } else {
                listener.enabledColumns.add(column);
            }
        } else {
            OwnerDrawListener listener = (OwnerDrawListener)viewer.getControl().getData(OWNER_DRAW_LABEL_PROVIDER_LISTENER);
            if (listener != null) {
                if (column == null) {
                    --listener.enabledGlobally;
                } else {
                    listener.enabledColumns.remove(column);
                }
                if (listener.enabledColumns.isEmpty() && listener.enabledGlobally <= 0) {
                    viewer.getControl().removeListener(41, (Listener)listener);
                    viewer.getControl().removeListener(40, (Listener)listener);
                    viewer.getControl().removeListener(42, (Listener)listener);
                    viewer.getControl().setData(OWNER_DRAW_LABEL_PROVIDER_LISTENER, null);
                }
            }
        }
    }

    static class OwnerDrawListener
    implements Listener {
        Set enabledColumns = new HashSet();
        int enabledGlobally = 0;
        private ColumnViewer viewer;

        OwnerDrawListener(ColumnViewer viewer) {
            this.viewer = viewer;
        }

        public void handleEvent(Event event) {
            CellLabelProvider provider = this.viewer.getViewerColumn(event.index).getLabelProvider();
            ViewerColumn column = this.viewer.getViewerColumn(event.index);
            if ((this.enabledGlobally > 0 || this.enabledColumns.contains(column)) && provider instanceof OwnerDrawLabelProvider) {
                Object element = event.item.getData();
                OwnerDrawLabelProvider ownerDrawProvider = (OwnerDrawLabelProvider)provider;
                switch (event.type) {
                    case 41: {
                        ownerDrawProvider.measure(event, element);
                        break;
                    }
                    case 42: {
                        ownerDrawProvider.paint(event, element);
                        break;
                    }
                    case 40: {
                        ownerDrawProvider.erase(event, element);
                    }
                }
            }
        }
    }
}

