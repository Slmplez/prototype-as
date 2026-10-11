/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MenuDetectEvent
 *  org.eclipse.swt.events.MenuDetectListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.Region
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MenuDetectEvent;
import org.eclipse.swt.events.MenuDetectListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public class ControlDecoration {
    private static boolean DEBUG = false;
    private static boolean MAC = Util.isMac();
    private Control control;
    private Composite composite;
    private Image image;
    private String descriptionText;
    private int position;
    private boolean visible = true;
    private boolean showOnlyOnFocus = false;
    private boolean showHover = true;
    private int marginWidth = 0;
    private ListenerList selectionListeners = new ListenerList();
    private ListenerList menuDetectListeners = new ListenerList();
    private FocusListener focusListener;
    private DisposeListener disposeListener;
    private PaintListener paintListener;
    private MouseTrackListener mouseTrackListener;
    private MouseMoveListener mouseMoveListener;
    private Listener compositeListener;
    private Control moveListeningTarget = null;
    private int listenerInstalls = 0;
    private Rectangle decorationRectangle;
    private Rectangle previousDecorationRectangle;
    private boolean hasFocus = false;
    private Hover hover;

    public ControlDecoration(Control control, int position) {
        this(control, position, null);
    }

    public ControlDecoration(Control control, int position, Composite composite) {
        this.position = position;
        this.control = control;
        this.composite = composite;
        this.addControlListeners();
    }

    public void addMenuDetectListener(MenuDetectListener listener) {
        this.menuDetectListeners.add((Object)listener);
    }

    public void removeMenuDetectListener(MenuDetectListener listener) {
        this.menuDetectListeners.remove((Object)listener);
    }

    public void addSelectionListener(SelectionListener listener) {
        this.selectionListeners.add((Object)listener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.selectionListeners.remove((Object)listener);
    }

    public void dispose() {
        if (this.control == null) {
            return;
        }
        if (this.hover != null) {
            this.hover.dispose();
            this.hover = null;
        }
        this.removeControlListeners();
        this.control = null;
    }

    public Control getControl() {
        return this.control;
    }

    private void addControlListeners() {
        this.disposeListener = new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                ControlDecoration.this.dispose();
            }
        };
        this.printAddListener((Widget)this.control, "DISPOSE");
        this.control.addDisposeListener(this.disposeListener);
        this.focusListener = new FocusListener(){

            public void focusGained(FocusEvent event) {
                ControlDecoration.this.hasFocus = true;
                if (ControlDecoration.this.showOnlyOnFocus) {
                    ControlDecoration.this.update();
                }
            }

            public void focusLost(FocusEvent event) {
                ControlDecoration.this.hasFocus = false;
                if (ControlDecoration.this.showOnlyOnFocus) {
                    ControlDecoration.this.update();
                }
            }
        };
        this.printAddListener((Widget)this.control, "FOCUS");
        this.control.addFocusListener(this.focusListener);
        this.paintListener = new PaintListener(){

            public void paintControl(PaintEvent event) {
                Control control = (Control)event.widget;
                Rectangle rect = ControlDecoration.this.getDecorationRectangle(control);
                if (ControlDecoration.this.shouldShowDecoration()) {
                    event.gc.drawImage(ControlDecoration.this.getImage(), rect.x, rect.y);
                }
            }
        };
        this.mouseMoveListener = new MouseMoveListener(){

            public void mouseMove(MouseEvent event) {
                if (ControlDecoration.this.showHover && !ControlDecoration.this.decorationRectangle.contains(event.x, event.y)) {
                    ControlDecoration.this.hideHover();
                    ControlDecoration.this.printRemoveListener(event.widget, "MOUSEMOVE");
                    ((Control)event.widget).removeMouseMoveListener(ControlDecoration.this.mouseMoveListener);
                    ControlDecoration.this.moveListeningTarget = null;
                }
            }
        };
        this.mouseTrackListener = new MouseTrackListener(){

            public void mouseExit(MouseEvent event) {
                Control target = (Control)event.widget;
                if (target == ControlDecoration.this.moveListeningTarget) {
                    ControlDecoration.this.printRemoveListener((Widget)target, "MOUSEMOVE");
                    target.removeMouseMoveListener(ControlDecoration.this.mouseMoveListener);
                    ControlDecoration.this.moveListeningTarget = null;
                }
                ControlDecoration.this.hideHover();
            }

            public void mouseHover(MouseEvent event) {
                if (ControlDecoration.this.showHover) {
                    ControlDecoration.this.decorationRectangle = ControlDecoration.this.getDecorationRectangle((Control)event.widget);
                    if (ControlDecoration.this.decorationRectangle.contains(event.x, event.y)) {
                        ControlDecoration.this.showHoverText(ControlDecoration.this.getDescriptionText());
                        Control target = (Control)event.widget;
                        if (ControlDecoration.this.moveListeningTarget == null) {
                            ControlDecoration.this.printAddListener((Widget)target, "MOUSEMOVE");
                            target.addMouseMoveListener(ControlDecoration.this.mouseMoveListener);
                            ControlDecoration.this.moveListeningTarget = target;
                        } else if (target != ControlDecoration.this.moveListeningTarget) {
                            ControlDecoration.this.printRemoveListener((Widget)ControlDecoration.this.moveListeningTarget, "MOUSEMOVE");
                            ControlDecoration.this.moveListeningTarget.removeMouseMoveListener(ControlDecoration.this.mouseMoveListener);
                            ControlDecoration.this.printAddListener((Widget)target, "MOUSEMOVE");
                            target.addMouseMoveListener(ControlDecoration.this.mouseMoveListener);
                            ControlDecoration.this.moveListeningTarget = target;
                        }
                    }
                }
            }

            public void mouseEnter(MouseEvent event) {
            }
        };
        this.compositeListener = new Listener(){

            public void handleEvent(Event event) {
                if (!ControlDecoration.this.visible) {
                    return;
                }
                switch (event.type) {
                    case 3: {
                        if (ControlDecoration.this.selectionListeners.isEmpty()) break;
                        ControlDecoration.this.notifySelectionListeners(event);
                        break;
                    }
                    case 8: {
                        if (ControlDecoration.this.selectionListeners.isEmpty()) break;
                        ControlDecoration.this.notifySelectionListeners(event);
                        break;
                    }
                    case 35: {
                        if (ControlDecoration.this.menuDetectListeners.isEmpty()) break;
                        ControlDecoration.this.notifyMenuDetectListeners(event);
                    }
                }
            }
        };
        Object c = this.control.getParent();
        while (c != null) {
            this.installCompositeListeners((Composite)c);
            c = this.composite != null && this.composite == c ? null : (c instanceof Shell ? null : c.getParent());
        }
        this.update();
    }

    private void installCompositeListeners(Composite c) {
        if (!c.isDisposed()) {
            this.printAddListener((Widget)c, "PAINT");
            c.addPaintListener(this.paintListener);
            this.printAddListener((Widget)c, "MOUSETRACK");
            c.addMouseTrackListener(this.mouseTrackListener);
            this.printAddListener((Widget)c, "SWT.MenuDetect");
            c.addListener(35, this.compositeListener);
            this.printAddListener((Widget)c, "SWT.MouseDown");
            c.addListener(3, this.compositeListener);
            this.printAddListener((Widget)c, "SWT.MouseDoubleClick");
            c.addListener(8, this.compositeListener);
        }
    }

    private void removeCompositeListeners(Composite c) {
        if (!c.isDisposed()) {
            this.printRemoveListener((Widget)c, "PAINT");
            c.removePaintListener(this.paintListener);
            this.printRemoveListener((Widget)c, "MOUSETRACK");
            c.removeMouseTrackListener(this.mouseTrackListener);
            this.printRemoveListener((Widget)c, "SWT.MenuDetect");
            c.removeListener(35, this.compositeListener);
            this.printRemoveListener((Widget)c, "SWT.MouseDown");
            c.removeListener(3, this.compositeListener);
            this.printRemoveListener((Widget)c, "SWT.MouseDoubleClick");
            c.removeListener(8, this.compositeListener);
        }
    }

    private void notifySelectionListeners(Event event) {
        if (!(event.widget instanceof Control)) {
            return;
        }
        if (this.getDecorationRectangle((Control)event.widget).contains(event.x, event.y)) {
            SelectionEvent clientEvent = new SelectionEvent(event);
            clientEvent.data = this;
            if (this.getImage() != null) {
                clientEvent.height = this.getImage().getBounds().height;
                clientEvent.width = this.getImage().getBounds().width;
            }
            switch (event.type) {
                case 8: {
                    if (event.button != 1) break;
                    Object[] listeners = this.selectionListeners.getListeners();
                    int i = 0;
                    while (i < listeners.length) {
                        ((SelectionListener)listeners[i]).widgetDefaultSelected(clientEvent);
                        ++i;
                    }
                    break;
                }
                case 3: {
                    if (event.button != 1) break;
                    Object[] listeners = this.selectionListeners.getListeners();
                    int i = 0;
                    while (i < listeners.length) {
                        ((SelectionListener)listeners[i]).widgetSelected(clientEvent);
                        ++i;
                    }
                    break;
                }
            }
        }
    }

    private void notifyMenuDetectListeners(Event event) {
        if (this.getDecorationRectangle(null).contains(event.x, event.y)) {
            MenuDetectEvent clientEvent = new MenuDetectEvent(event);
            clientEvent.data = this;
            Object[] listeners = this.menuDetectListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                ((MenuDetectListener)listeners[i]).menuDetected(clientEvent);
                ++i;
            }
        }
    }

    public void showHoverText(String text) {
        if (this.control == null) {
            return;
        }
        this.showHoverText(text, this.control);
    }

    public void hideHover() {
        if (this.hover != null) {
            this.hover.setVisible(false);
        }
    }

    public void show() {
        if (!this.visible) {
            this.visible = true;
            this.update();
        }
    }

    public void hide() {
        if (this.visible) {
            this.visible = false;
            this.hideHover();
            this.update();
        }
    }

    public String getDescriptionText() {
        return this.descriptionText;
    }

    public void setDescriptionText(String text) {
        this.descriptionText = text;
        this.update();
    }

    public Image getImage() {
        return this.image;
    }

    public void setImage(Image image) {
        this.previousDecorationRectangle = this.getDecorationRectangle((Control)this.control.getShell());
        this.image = image;
        this.update();
    }

    public boolean getShowOnlyOnFocus() {
        return this.showOnlyOnFocus;
    }

    public void setShowOnlyOnFocus(boolean showOnlyOnFocus) {
        this.showOnlyOnFocus = showOnlyOnFocus;
        this.update();
    }

    public boolean getShowHover() {
        return this.showHover;
    }

    public void setShowHover(boolean showHover) {
        this.showHover = showHover;
        this.update();
    }

    public int getMarginWidth() {
        return this.marginWidth;
    }

    public void setMarginWidth(int marginWidth) {
        this.previousDecorationRectangle = this.getDecorationRectangle((Control)this.control.getShell());
        this.marginWidth = marginWidth;
        this.update();
    }

    protected void update() {
        if (this.control == null || this.control.isDisposed()) {
            return;
        }
        Rectangle rect = this.getDecorationRectangle((Control)this.control.getShell());
        if (this.previousDecorationRectangle != null) {
            rect = rect.union(this.previousDecorationRectangle);
        }
        this.control.getShell().redraw(rect.x, rect.y, rect.width, rect.height, true);
        this.control.getShell().update();
        if (this.hover != null && this.getDescriptionText() != null) {
            this.hover.setText(this.getDescriptionText(), this.getDecorationRectangle((Control)this.control.getParent()), this.control);
        }
        this.previousDecorationRectangle = null;
    }

    private void showHoverText(String text, Control hoverNear) {
        if (this.control.isDisposed() || !this.control.isVisible()) {
            return;
        }
        if (!this.showHover) {
            return;
        }
        if (!this.visible) {
            return;
        }
        if (text == null || text.length() == 0) {
            this.hideHover();
            return;
        }
        if (this.hover == null) {
            this.hover = new Hover(hoverNear.getShell());
        }
        this.hover.setText(text, this.getDecorationRectangle((Control)this.control.getParent()), this.control);
        this.hover.setVisible(true);
    }

    private void removeControlListeners() {
        if (this.control == null) {
            return;
        }
        this.printRemoveListener((Widget)this.control, "FOCUS");
        this.control.removeFocusListener(this.focusListener);
        this.focusListener = null;
        this.printRemoveListener((Widget)this.control, "DISPOSE");
        this.control.removeDisposeListener(this.disposeListener);
        this.disposeListener = null;
        Object c = this.control.getParent();
        while (c != null) {
            this.removeCompositeListeners((Composite)c);
            c = this.composite != null && this.composite == c ? null : (c instanceof Shell ? null : c.getParent());
        }
        this.paintListener = null;
        this.mouseTrackListener = null;
        this.compositeListener = null;
        if (this.moveListeningTarget != null) {
            this.printRemoveListener((Widget)this.moveListeningTarget, "MOUSEMOVE");
            this.moveListeningTarget.removeMouseMoveListener(this.mouseMoveListener);
            this.moveListeningTarget = null;
            this.mouseMoveListener = null;
        }
        if (DEBUG) {
            if (this.listenerInstalls > 0) {
                System.out.println("LISTENER LEAK>>>CHECK TRACE ABOVE");
            } else if (this.listenerInstalls < 0) {
                System.out.println("REMOVED UNREGISTERED LISTENERS>>>CHECK TRACE ABOVE");
            } else {
                System.out.println("ALL INSTALLED LISTENERS WERE REMOVED.");
            }
        }
    }

    protected Rectangle getDecorationRectangle(Control targetControl) {
        if (this.getImage() == null || this.control == null) {
            return new Rectangle(0, 0, 0, 0);
        }
        Rectangle imageBounds = this.getImage().getBounds();
        Rectangle controlBounds = this.control.getBounds();
        int x = (this.position & 0x20000) == 131072 ? controlBounds.x + controlBounds.width + this.marginWidth : controlBounds.x - imageBounds.width - this.marginWidth;
        int y = (this.position & 0x80) == 128 ? controlBounds.y : ((this.position & 0x400) == 1024 ? controlBounds.y + this.control.getBounds().height - imageBounds.height : controlBounds.y + (this.control.getBounds().height - imageBounds.height) / 2);
        Point globalPoint = this.control.getParent().toDisplay(x, y);
        Point targetPoint = targetControl == null ? globalPoint : targetControl.toControl(globalPoint);
        return new Rectangle(targetPoint.x, targetPoint.y, imageBounds.width, imageBounds.height);
    }

    private boolean shouldShowDecoration() {
        if (!this.visible) {
            return false;
        }
        if (this.control == null || this.control.isDisposed() || this.getImage() == null) {
            return false;
        }
        if (!this.control.isVisible()) {
            return false;
        }
        if (this.showOnlyOnFocus) {
            return this.hasFocus;
        }
        return true;
    }

    private void printAddListener(Widget widget, String listenerType) {
        ++this.listenerInstalls;
        if (DEBUG) {
            System.out.println("Added listener>>>" + listenerType + " to>>>" + widget);
        }
    }

    private void printRemoveListener(Widget widget, String listenerType) {
        --this.listenerInstalls;
        if (DEBUG) {
            System.out.println("Removed listener>>>" + listenerType + " from>>>" + widget);
        }
    }

    public boolean isVisible() {
        return this.shouldShowDecoration();
    }

    static /* synthetic */ boolean access$0() {
        return MAC;
    }

    class Hover {
        private static final String EMPTY = "";
        private int hao = 10;
        private int haw = 8;
        private int hah = 10;
        private int hm = 2;
        Shell hoverShell;
        String text = "";
        Region region;
        boolean arrowOnLeft = true;

        Hover(Shell parent) {
            Display display = parent.getDisplay();
            this.hoverShell = new Shell(parent, 540684);
            this.hoverShell.setBackground(display.getSystemColor(29));
            this.hoverShell.setForeground(display.getSystemColor(28));
            this.hoverShell.addPaintListener(new PaintListener(this){
                final /* synthetic */ Hover this$1;
                {
                    this.this$1 = hover;
                }

                public void paintControl(PaintEvent pe) {
                    pe.gc.drawText(this.this$1.text, Hover.access$0(this.this$1), Hover.access$0(this.this$1));
                    if (!ControlDecoration.access$0()) {
                        pe.gc.drawPolygon(this.this$1.getPolygon(true));
                    }
                }
            });
            this.hoverShell.addMouseListener((MouseListener)new MouseAdapter(this){
                final /* synthetic */ Hover this$1;
                {
                    this.this$1 = hover;
                }

                public void mouseDown(MouseEvent e) {
                    Hover.access$1(this.this$1).hideHover();
                }
            });
        }

        int[] getPolygon(boolean border) {
            int b;
            Point e = this.getExtent();
            int n = b = border ? 1 : 0;
            if (this.arrowOnLeft) {
                int[] nArray = new int[16];
                nArray[2] = e.x - b;
                nArray[4] = e.x - b;
                nArray[5] = e.y - b;
                nArray[6] = this.hao + this.haw;
                nArray[7] = e.y - b;
                nArray[8] = this.hao + this.haw / 2;
                nArray[9] = e.y + this.hah - b;
                nArray[10] = this.hao;
                nArray[11] = e.y - b;
                nArray[13] = e.y - b;
                return nArray;
            }
            int[] nArray = new int[16];
            nArray[2] = e.x - b;
            nArray[4] = e.x - b;
            nArray[5] = e.y - b;
            nArray[6] = e.x - this.hao - b;
            nArray[7] = e.y - b;
            nArray[8] = e.x - this.hao - this.haw / 2;
            nArray[9] = e.y + this.hah - b;
            nArray[10] = e.x - this.hao - this.haw;
            nArray[11] = e.y - b;
            nArray[13] = e.y - b;
            return nArray;
        }

        void dispose() {
            if (!this.hoverShell.isDisposed()) {
                this.hoverShell.dispose();
            }
            if (this.region != null) {
                this.region.dispose();
            }
        }

        void setVisible(boolean visible) {
            if (visible) {
                if (!this.hoverShell.isVisible()) {
                    this.hoverShell.setVisible(true);
                }
            } else if (this.hoverShell.isVisible()) {
                this.hoverShell.setVisible(false);
            }
        }

        void setText(String t, Rectangle decorationRectangle, Control targetControl) {
            if (t == null) {
                t = EMPTY;
            }
            if (!t.equals(this.text)) {
                Point oldSize = this.getExtent();
                this.text = t;
                this.hoverShell.redraw();
                Point newSize = this.getExtent();
                if (!oldSize.equals((Object)newSize)) {
                    this.arrowOnLeft = decorationRectangle.x <= targetControl.getLocation().x;
                    this.setNewShape();
                }
            }
            Point extent = this.getExtent();
            int y = -extent.y - this.hah + 1;
            int x = this.arrowOnLeft ? -this.hao + this.haw / 2 : -extent.x + this.hao + this.haw / 2;
            this.hoverShell.setLocation(ControlDecoration.this.control.getParent().toDisplay(decorationRectangle.x + x, decorationRectangle.y + y));
        }

        boolean isVisible() {
            return this.hoverShell.isVisible();
        }

        Point getExtent() {
            GC gc = new GC((Drawable)this.hoverShell);
            Point e = gc.textExtent(this.text);
            gc.dispose();
            e.x += this.hm * 2;
            e.y += this.hm * 2;
            return e;
        }

        void setNewShape() {
            Region oldRegion = this.region;
            this.region = new Region();
            this.region.add(this.getPolygon(false));
            this.hoverShell.setRegion(this.region);
            if (oldRegion != null) {
                oldRegion.dispose();
            }
        }

        static /* synthetic */ int access$0(Hover hover) {
            return hover.hm;
        }

        static /* synthetic */ ControlDecoration access$1(Hover hover) {
            return hover.ControlDecoration.this;
        }
    }
}

