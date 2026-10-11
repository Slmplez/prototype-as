/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.internal;

import java.lang.reflect.Method;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.internal.TrimUtil;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;

public class HeapStatus
extends Composite {
    private boolean armed;
    private Image gcImage;
    private Image disabledGcImage;
    private Color bgCol;
    private Color usedMemCol;
    private Color lowMemCol;
    private Color freeMemCol;
    private Color topLeftCol;
    private Color bottomRightCol;
    private Color sepCol;
    private Color textCol;
    private Color markCol;
    private Color armCol;
    private Canvas button;
    private IPreferenceStore prefStore;
    private int updateInterval;
    private boolean showMax;
    private long totalMem;
    private long prevTotalMem = -1L;
    private long prevUsedMem = -1L;
    private boolean hasChanged;
    private long usedMem;
    private long mark = -1L;
    private Rectangle imgBounds = new Rectangle(0, 0, 12, 12);
    private long maxMem = Long.MAX_VALUE;
    private boolean maxMemKnown;
    private float lowMemThreshold = 0.05f;
    private boolean showLowMemThreshold = true;
    private boolean updateTooltip = false;
    protected volatile boolean isInGC = false;
    private final Runnable timer = new Runnable(){

        public void run() {
            if (!HeapStatus.this.isDisposed()) {
                HeapStatus.this.updateStats();
                if (HeapStatus.this.hasChanged) {
                    if (HeapStatus.this.updateTooltip) {
                        HeapStatus.this.updateToolTip();
                    }
                    HeapStatus.this.redraw();
                    HeapStatus.this.hasChanged = false;
                }
                HeapStatus.this.getDisplay().timerExec(HeapStatus.this.updateInterval, (Runnable)this);
            }
        }
    };
    private final IPropertyChangeListener prefListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if ("HeapStatus.updateInterval".equals(event.getProperty())) {
                HeapStatus.this.setUpdateIntervalInMS(HeapStatus.this.prefStore.getInt("HeapStatus.updateInterval"));
            } else if ("HeapStatus.showMax".equals(event.getProperty())) {
                HeapStatus.this.showMax = HeapStatus.this.prefStore.getBoolean("HeapStatus.showMax");
            }
        }
    };
    static /* synthetic */ Class class$0;

    public HeapStatus(Composite parent, IPreferenceStore prefStore) {
        super(parent, 0);
        this.maxMem = this.getMaxMem();
        this.maxMemKnown = this.maxMem != Long.MAX_VALUE;
        this.prefStore = prefStore;
        prefStore.addPropertyChangeListener(this.prefListener);
        this.setUpdateIntervalInMS(prefStore.getInt("HeapStatus.updateInterval"));
        this.showMax = prefStore.getBoolean("HeapStatus.showMax");
        this.button = new Canvas((Composite)this, 0);
        this.button.setToolTipText(WorkbenchMessages.HeapStatus_buttonToolTip);
        ImageDescriptor imageDesc = WorkbenchImages.getWorkbenchImageDescriptor("elcl16/trash.gif");
        Display display = this.getDisplay();
        this.gcImage = imageDesc.createImage();
        if (this.gcImage != null) {
            this.imgBounds = this.gcImage.getBounds();
            this.disabledGcImage = new Image((Device)display, this.gcImage, 1);
        }
        this.usedMemCol = display.getSystemColor(29);
        this.lowMemCol = new Color((Device)display, 255, 70, 70);
        this.freeMemCol = new Color((Device)display, 255, 190, 125);
        this.bgCol = display.getSystemColor(22);
        this.topLeftCol = this.armCol = display.getSystemColor(18);
        this.sepCol = this.armCol;
        this.bottomRightCol = display.getSystemColor(20);
        this.markCol = this.textCol = display.getSystemColor(28);
        this.createContextMenu();
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 12: {
                        HeapStatus.this.doDispose();
                        break;
                    }
                    case 11: {
                        Rectangle rect = HeapStatus.this.getClientArea();
                        HeapStatus.this.button.setBounds(rect.width - ((HeapStatus)HeapStatus.this).imgBounds.width - 1, 1, ((HeapStatus)HeapStatus.this).imgBounds.width, rect.height - 2);
                        break;
                    }
                    case 9: {
                        if (event.widget == HeapStatus.this) {
                            HeapStatus.this.paintComposite(event.gc);
                            break;
                        }
                        if (event.widget != HeapStatus.this.button) break;
                        HeapStatus.this.paintButton(event.gc);
                        break;
                    }
                    case 4: {
                        if (event.button != 1 || HeapStatus.this.isInGC) break;
                        HeapStatus.this.arm(false);
                        HeapStatus.this.gc();
                        break;
                    }
                    case 3: {
                        if (event.button != 1) break;
                        if (event.widget == HeapStatus.this) {
                            HeapStatus.this.setMark();
                            break;
                        }
                        if (event.widget != HeapStatus.this.button || HeapStatus.this.isInGC) break;
                        HeapStatus.this.arm(true);
                        break;
                    }
                    case 6: {
                        HeapStatus.this.updateTooltip = true;
                        HeapStatus.this.updateToolTip();
                        break;
                    }
                    case 7: {
                        if (event.widget == HeapStatus.this) {
                            HeapStatus.this.updateTooltip = false;
                            break;
                        }
                        if (event.widget != HeapStatus.this.button) break;
                        HeapStatus.this.arm(false);
                    }
                }
            }
        };
        this.addListener(12, listener);
        this.addListener(3, listener);
        this.addListener(9, listener);
        this.addListener(11, listener);
        this.addListener(6, listener);
        this.addListener(7, listener);
        this.button.addListener(3, listener);
        this.button.addListener(7, listener);
        this.button.addListener(4, listener);
        this.button.addListener(9, listener);
        this.updateStats();
        this.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (!HeapStatus.this.isDisposed()) {
                    HeapStatus.this.getDisplay().timerExec(HeapStatus.this.updateInterval, HeapStatus.this.timer);
                }
            }
        });
    }

    private long getMaxMem() {
        long max = Long.MAX_VALUE;
        try {
            Method maxMemMethod;
            Object o;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Runtime");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((o = (maxMemMethod = clazz.getMethod("maxMemory", new Class[0])).invoke(Runtime.getRuntime(), new Object[0])) instanceof Long) {
                max = (Long)o;
            }
        }
        catch (Exception exception) {}
        return max;
    }

    private void setUpdateIntervalInMS(int interval) {
        this.updateInterval = Math.max(100, interval);
    }

    private void doDispose() {
        this.prefStore.removePropertyChangeListener(this.prefListener);
        if (this.gcImage != null) {
            this.gcImage.dispose();
        }
        if (this.disabledGcImage != null) {
            this.disabledGcImage.dispose();
        }
        if (this.lowMemCol != null) {
            this.lowMemCol.dispose();
        }
        if (this.freeMemCol != null) {
            this.freeMemCol.dispose();
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        GC gc = new GC((Drawable)this);
        Point p = gc.textExtent(WorkbenchMessages.HeapStatus_widthStr);
        int height = this.imgBounds.height;
        height = Math.max(height, p.y) + 4;
        height = Math.max(TrimUtil.TRIM_DEFAULT_HEIGHT, height);
        gc.dispose();
        return new Point(p.x + 15, height);
    }

    private void arm(boolean armed) {
        if (this.armed == armed) {
            return;
        }
        this.armed = armed;
        this.button.redraw();
        this.button.update();
    }

    private void gcRunning(boolean isInGC) {
        if (this.isInGC == isInGC) {
            return;
        }
        this.isInGC = isInGC;
        this.button.redraw();
        this.button.update();
    }

    private void createContextMenu() {
        MenuManager menuMgr = new MenuManager();
        menuMgr.setRemoveAllWhenShown(true);
        menuMgr.addMenuListener(new IMenuListener(){

            public void menuAboutToShow(IMenuManager menuMgr) {
                HeapStatus.this.fillMenu(menuMgr);
            }
        });
        Menu menu = menuMgr.createContextMenu((Control)this);
        this.setMenu(menu);
    }

    private void fillMenu(IMenuManager menuMgr) {
        menuMgr.add((IAction)new SetMarkAction());
        menuMgr.add((IAction)new ClearMarkAction());
        menuMgr.add((IAction)new ShowMaxAction());
        menuMgr.add((IAction)new CloseHeapStatusAction());
    }

    private void setMark() {
        this.updateStats();
        this.mark = this.usedMem;
        this.hasChanged = true;
        this.redraw();
    }

    private void clearMark() {
        this.mark = -1L;
        this.hasChanged = true;
        this.redraw();
    }

    private void gc() {
        this.gcRunning(true);
        Thread t = new Thread(){

            public void run() {
                HeapStatus.this.busyGC();
                HeapStatus.this.getDisplay().asyncExec(new Runnable(this){
                    final /* synthetic */ 6 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        if (!6.access$0(this.this$1).isDisposed()) {
                            HeapStatus.access$24(6.access$0(this.this$1), false);
                        }
                    }
                });
            }

            static /* synthetic */ HeapStatus access$0(6 var0) {
                return var0.HeapStatus.this;
            }
        };
        t.start();
    }

    private void busyGC() {
        int i = 0;
        while (i < 2) {
            System.gc();
            System.runFinalization();
            ++i;
        }
    }

    private void paintButton(GC gc) {
        Rectangle rect = this.button.getClientArea();
        if (this.isInGC) {
            if (this.disabledGcImage != null) {
                int buttonY = (rect.height - this.imgBounds.height) / 2 + rect.y;
                gc.drawImage(this.disabledGcImage, rect.x, buttonY);
            }
            return;
        }
        if (this.armed) {
            gc.setBackground(this.armCol);
            gc.fillRectangle(rect.x, rect.y, rect.width, rect.height);
        }
        if (this.gcImage != null) {
            int by = (rect.height - this.imgBounds.height) / 2 + rect.y;
            gc.drawImage(this.gcImage, rect.x, by);
        }
    }

    private void paintComposite(GC gc) {
        if (this.showMax && this.maxMemKnown) {
            this.paintCompositeMaxKnown(gc);
        } else {
            this.paintCompositeMaxUnknown(gc);
        }
    }

    private void paintCompositeMaxUnknown(GC gc) {
        Rectangle rect = this.getClientArea();
        int x = rect.x;
        int y = rect.y;
        int w = rect.width;
        int h = rect.height;
        int bw = this.imgBounds.width;
        int dx = x + w - bw - 2;
        int sw = w - bw - 3;
        int uw = (int)((long)sw * this.usedMem / this.totalMem);
        int ux = x + 1 + uw;
        gc.setBackground(this.bgCol);
        gc.fillRectangle(rect);
        gc.setForeground(this.sepCol);
        gc.drawLine(dx, y, dx, y + h);
        gc.drawLine(ux, y, ux, y + h);
        gc.setForeground(this.topLeftCol);
        gc.drawLine(x, y, x + w, y);
        gc.drawLine(x, y, x, y + h);
        gc.setForeground(this.bottomRightCol);
        gc.drawLine(x + w - 1, y, x + w - 1, y + h);
        gc.drawLine(x, y + h - 1, x + w, y + h - 1);
        gc.setBackground(this.usedMemCol);
        gc.fillRectangle(x + 1, y + 1, uw, h - 2);
        String s = NLS.bind((String)WorkbenchMessages.HeapStatus_status, (Object)this.convertToMegString(this.usedMem), (Object)this.convertToMegString(this.totalMem));
        Point p = gc.textExtent(s);
        int sx = (rect.width - 15 - p.x) / 2 + rect.x + 1;
        int sy = (rect.height - 2 - p.y) / 2 + rect.y + 1;
        gc.setForeground(this.textCol);
        gc.drawString(s, sx, sy, true);
        if (this.mark != -1L) {
            int ssx = (int)((long)sw * this.mark / this.totalMem) + x + 1;
            this.paintMark(gc, ssx, y, h);
        }
    }

    private void paintCompositeMaxKnown(GC gc) {
        Rectangle rect = this.getClientArea();
        int x = rect.x;
        int y = rect.y;
        int w = rect.width;
        int h = rect.height;
        int bw = this.imgBounds.width;
        int dx = x + w - bw - 2;
        int sw = w - bw - 3;
        int uw = (int)((long)sw * this.usedMem / this.maxMem);
        int ux = x + 1 + uw;
        int tw = (int)((long)sw * this.totalMem / this.maxMem);
        int tx = x + 1 + tw;
        gc.setBackground(this.bgCol);
        gc.fillRectangle(rect);
        gc.setForeground(this.sepCol);
        gc.drawLine(dx, y, dx, y + h);
        gc.drawLine(ux, y, ux, y + h);
        gc.drawLine(tx, y, tx, y + h);
        gc.setForeground(this.topLeftCol);
        gc.drawLine(x, y, x + w, y);
        gc.drawLine(x, y, x, y + h);
        gc.setForeground(this.bottomRightCol);
        gc.drawLine(x + w - 1, y, x + w - 1, y + h);
        gc.drawLine(x, y + h - 1, x + w, y + h - 1);
        if (this.lowMemThreshold != 0.0f && (double)(this.maxMem - this.usedMem) / (double)this.maxMem < (double)this.lowMemThreshold) {
            gc.setBackground(this.lowMemCol);
        } else {
            gc.setBackground(this.usedMemCol);
        }
        gc.fillRectangle(x + 1, y + 1, uw, h - 2);
        gc.setBackground(this.freeMemCol);
        gc.fillRectangle(ux + 1, y + 1, tx - (ux + 1), h - 2);
        if (this.showLowMemThreshold && this.lowMemThreshold != 0.0f) {
            gc.setForeground(this.lowMemCol);
            int thresholdX = x + 1 + (int)((double)sw * (1.0 - (double)this.lowMemThreshold));
            gc.drawLine(thresholdX, y + 1, thresholdX, y + h - 2);
        }
        String s = NLS.bind((String)WorkbenchMessages.HeapStatus_status, (Object)this.convertToMegString(this.usedMem), (Object)this.convertToMegString(this.totalMem));
        Point p = gc.textExtent(s);
        int sx = (rect.width - 15 - p.x) / 2 + rect.x + 1;
        int sy = (rect.height - 2 - p.y) / 2 + rect.y + 1;
        gc.setForeground(this.textCol);
        gc.drawString(s, sx, sy, true);
        if (this.mark != -1L) {
            int ssx = (int)((long)sw * this.mark / this.maxMem) + x + 1;
            this.paintMark(gc, ssx, y, h);
        }
    }

    private void paintMark(GC gc, int x, int y, int h) {
        gc.setForeground(this.markCol);
        gc.drawLine(x, y + 1, x, y + h - 2);
        gc.drawLine(x - 1, y + 1, x + 1, y + 1);
        gc.drawLine(x - 1, y + h - 2, x + 1, y + h - 2);
    }

    private void updateStats() {
        Runtime runtime = Runtime.getRuntime();
        this.totalMem = runtime.totalMemory();
        long freeMem = runtime.freeMemory();
        this.usedMem = this.totalMem - freeMem;
        if (this.convertToMeg(this.prevUsedMem) != this.convertToMeg(this.usedMem)) {
            this.prevUsedMem = this.usedMem;
            this.hasChanged = true;
        }
        if (this.prevTotalMem != this.totalMem) {
            this.prevTotalMem = this.totalMem;
            this.hasChanged = true;
        }
    }

    private void updateToolTip() {
        String markStr;
        String maxStr;
        String totalStr;
        String usedStr = this.convertToMegString(this.usedMem);
        String toolTip = NLS.bind((String)WorkbenchMessages.HeapStatus_memoryToolTip, (Object[])new Object[]{usedStr, totalStr = this.convertToMegString(this.totalMem), maxStr = this.maxMemKnown ? this.convertToMegString(this.maxMem) : WorkbenchMessages.HeapStatus_maxUnknown, markStr = this.mark == -1L ? WorkbenchMessages.HeapStatus_noMark : this.convertToMegString(this.mark)});
        if (!toolTip.equals(this.getToolTipText())) {
            this.setToolTipText(toolTip);
        }
    }

    private String convertToMegString(long numBytes) {
        return NLS.bind((String)WorkbenchMessages.HeapStatus_meg, (Object)new Long(this.convertToMeg(numBytes)));
    }

    private long convertToMeg(long numBytes) {
        return (numBytes + 524288L) / 0x100000L;
    }

    static /* synthetic */ void access$24(HeapStatus heapStatus, boolean bl) {
        heapStatus.gcRunning(bl);
    }

    class ClearMarkAction
    extends Action {
        ClearMarkAction() {
            super(WorkbenchMessages.ClearMarkAction_text);
        }

        public void run() {
            HeapStatus.this.clearMark();
        }
    }

    class CloseHeapStatusAction
    extends Action {
        CloseHeapStatusAction() {
            super(WorkbenchMessages.WorkbenchWindow_close);
        }

        public void run() {
            HeapStatus.this.dispose();
        }
    }

    class SetMarkAction
    extends Action {
        SetMarkAction() {
            super(WorkbenchMessages.SetMarkAction_text);
        }

        public void run() {
            HeapStatus.this.setMark();
        }
    }

    class ShowMaxAction
    extends Action {
        ShowMaxAction() {
            super(WorkbenchMessages.ShowMaxAction_text, 2);
            this.setEnabled(HeapStatus.this.maxMemKnown);
            this.setChecked(HeapStatus.this.showMax);
        }

        public void run() {
            HeapStatus.this.prefStore.setValue("HeapStatus.showMax", this.isChecked());
            HeapStatus.this.redraw();
        }
    }
}

