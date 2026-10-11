/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.core.runtime.ListenerList;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.events.IHyperlinkListener;
import org.eclipse.ui.internal.forms.widgets.FormsResources;

public abstract class AbstractHyperlink
extends Canvas {
    private boolean hasFocus;
    boolean paintFocus = true;
    private boolean armed;
    private ListenerList listeners;
    protected int marginWidth = 1;
    protected int marginHeight = 1;

    public AbstractHyperlink(Composite parent, int style) {
        super(parent, style);
        this.addListener(1, new Listener(){

            public void handleEvent(Event e) {
                if (e.character == '\r') {
                    AbstractHyperlink.this.handleActivate(e);
                }
            }
        });
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                AbstractHyperlink.this.paint(e);
            }
        });
        this.addListener(31, new Listener(){

            public void handleEvent(Event e) {
                switch (e.detail) {
                    case 4: 
                    case 32: 
                    case 64: 
                    case 256: 
                    case 512: {
                        e.doit = false;
                        return;
                    }
                }
                e.doit = true;
            }
        });
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 15: {
                        AbstractHyperlink.this.hasFocus = true;
                        AbstractHyperlink.this.handleEnter(e);
                        break;
                    }
                    case 16: {
                        AbstractHyperlink.this.hasFocus = false;
                        AbstractHyperlink.this.handleExit(e);
                        break;
                    }
                    case 14: {
                        AbstractHyperlink.this.handleActivate(e);
                        break;
                    }
                    case 6: {
                        AbstractHyperlink.this.handleEnter(e);
                        break;
                    }
                    case 7: {
                        AbstractHyperlink.this.handleExit(e);
                        break;
                    }
                    case 3: {
                        AbstractHyperlink.this.handleMouseDown(e);
                        break;
                    }
                    case 4: {
                        AbstractHyperlink.this.handleMouseUp(e);
                        break;
                    }
                    case 5: {
                        AbstractHyperlink.this.handleMouseMove(e);
                    }
                }
            }
        };
        this.addListener(6, listener);
        this.addListener(7, listener);
        this.addListener(3, listener);
        this.addListener(4, listener);
        this.addListener(5, listener);
        this.addListener(15, listener);
        this.addListener(16, listener);
        this.setCursor(FormsResources.getHandCursor());
    }

    public void addHyperlinkListener(IHyperlinkListener listener) {
        if (this.listeners == null) {
            this.listeners = new ListenerList();
        }
        this.listeners.add((Object)listener);
    }

    public void removeHyperlinkListener(IHyperlinkListener listener) {
        if (this.listeners == null) {
            return;
        }
        this.listeners.remove((Object)listener);
    }

    public boolean getSelection() {
        return this.hasFocus;
    }

    protected void handleEnter(Event e) {
        this.redraw();
        if (this.listeners == null) {
            return;
        }
        int size = this.listeners.size();
        HyperlinkEvent he = new HyperlinkEvent((Widget)this, this.getHref(), this.getText(), e.stateMask);
        Object[] listenerList = this.listeners.getListeners();
        int i = 0;
        while (i < size) {
            IHyperlinkListener listener = (IHyperlinkListener)listenerList[i];
            listener.linkEntered(he);
            ++i;
        }
    }

    protected void handleExit(Event e) {
        this.armed = false;
        this.redraw();
        if (this.listeners == null) {
            return;
        }
        int size = this.listeners.size();
        HyperlinkEvent he = new HyperlinkEvent((Widget)this, this.getHref(), this.getText(), e.stateMask);
        Object[] listenerList = this.listeners.getListeners();
        int i = 0;
        while (i < size) {
            IHyperlinkListener listener = (IHyperlinkListener)listenerList[i];
            listener.linkExited(he);
            ++i;
        }
    }

    protected void handleActivate(Event e) {
        this.armed = false;
        if (this.listeners == null) {
            return;
        }
        int size = this.listeners.size();
        this.setCursor(FormsResources.getBusyCursor());
        HyperlinkEvent he = new HyperlinkEvent((Widget)this, this.getHref(), this.getText(), e.stateMask);
        Object[] listenerList = this.listeners.getListeners();
        int i = 0;
        while (i < size) {
            IHyperlinkListener listener = (IHyperlinkListener)listenerList[i];
            listener.linkActivated(he);
            ++i;
        }
        if (!this.isDisposed()) {
            this.setCursor(FormsResources.getHandCursor());
            this.triggerAccessible();
        }
    }

    void triggerAccessible() {
        this.getAccessible().setFocus(-1);
    }

    public void setHref(Object href) {
        this.setData("href", href);
    }

    public Object getHref() {
        return this.getData("href");
    }

    public String getText() {
        return this.getToolTipText();
    }

    protected abstract void paintHyperlink(GC var1);

    protected void paint(PaintEvent e) {
        GC gc = e.gc;
        Rectangle clientArea = this.getClientArea();
        if (clientArea.width == 0 || clientArea.height == 0) {
            return;
        }
        this.paintHyperlink(gc);
        if (this.paintFocus && this.hasFocus) {
            Rectangle carea = this.getClientArea();
            gc.setForeground(this.getForeground());
            gc.drawFocus(0, 0, carea.width, carea.height);
        }
    }

    private void handleMouseDown(Event e) {
        if (e.button != 1) {
            return;
        }
        this.armed = true;
    }

    private void handleMouseUp(Event e) {
        if (!this.armed || e.button != 1) {
            return;
        }
        Point size = this.getSize();
        if (e.x < 0) {
            return;
        }
        if (e.y < 0) {
            return;
        }
        if (e.x >= size.x) {
            return;
        }
        if (e.y >= size.y) {
            return;
        }
        this.handleActivate(e);
    }

    private void handleMouseMove(Event e) {
        if (this.armed) {
            Point size = this.getSize();
            this.armed = e.x >= 0 && e.y >= 0 && e.x < size.x && e.y < size.y;
        }
    }

    public void setEnabled(boolean enabled) {
        boolean needsRedraw = enabled ^ this.getEnabled();
        super.setEnabled(enabled);
        if (needsRedraw) {
            this.redraw();
        }
    }
}

