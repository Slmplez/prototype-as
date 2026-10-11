/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.internal.dnd.DragUtil;
import org.eclipse.ui.internal.dnd.SwtUtil;
import org.eclipse.ui.internal.layout.SizeCache;

public class ProxyControl {
    private Composite control;
    private Control target = null;
    private SizeCache targetCache = null;
    private Control commonAncestor;
    private boolean visible = true;
    private DisposeListener disposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            if (e.widget == ProxyControl.this.target || e.widget == ProxyControl.this.control) {
                ProxyControl.this.setTargetControl(null);
            }
        }
    };
    private Listener visibilityListener = new Listener(){

        public void handleEvent(Event event) {
            if (ProxyControl.this.target != null) {
                ProxyControl.this.visible = ProxyControl.this.control.getVisible();
                ProxyControl.this.target.setVisible(ProxyControl.this.visible);
            }
        }
    };
    private ControlListener controlListener = new ControlListener(){

        public void controlMoved(ControlEvent e) {
            ProxyControl.this.layout();
        }

        public void controlResized(ControlEvent e) {
        }
    };

    public void setVisible(boolean visible) {
    }

    public ProxyControl(Composite parent) {
        this.control = new Composite(parent, 262144);
        this.control.setVisible(false);
        this.control.setLayout(new Layout(){

            protected void layout(Composite composite, boolean flushCache) {
                ProxyControl.this.layout();
            }

            protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
                if (ProxyControl.this.targetCache == null) {
                    if (ProxyControl.this.target != null) {
                        return ProxyControl.this.target.computeSize(wHint, hHint, flushCache);
                    }
                    return new Point(1, 1);
                }
                return ProxyControl.this.targetCache.computeSize(wHint, hHint);
            }
        });
        this.control.addDisposeListener(this.disposeListener);
        this.control.addListener(22, this.visibilityListener);
        this.control.addListener(23, this.visibilityListener);
    }

    public void setTargetControl(Control target) {
        this.targetCache = null;
        this.internalSetTargetControl(target);
    }

    private void internalSetTargetControl(Control target) {
        if (this.target != target) {
            Composite next;
            if (this.target != null) {
                next = this.control;
                while (next != this.commonAncestor && next != null) {
                    next.removeControlListener(this.controlListener);
                    next = next.getParent();
                }
                this.commonAncestor = null;
                if (!this.target.isDisposed()) {
                    this.target.removeDisposeListener(this.disposeListener);
                }
            }
            if (this.target == null && target != null) {
                this.control.setVisible(this.visible);
            }
            this.target = target;
            if (target != null) {
                this.commonAncestor = SwtUtil.findCommonAncestor(this.target, (Control)this.control);
                next = this.control;
                while (next != null && next != this.commonAncestor) {
                    next.addControlListener(this.controlListener);
                    next = next.getParent();
                }
                target.setVisible(this.control.getVisible());
                target.addDisposeListener(this.disposeListener);
            } else {
                this.control.setVisible(false);
            }
        }
    }

    public void setTarget(SizeCache cache) {
        this.targetCache = cache;
        if (this.targetCache != null) {
            this.setTargetControl(cache.getControl());
        } else {
            this.setTargetControl(null);
        }
    }

    public Control getControl() {
        return this.control;
    }

    public Control getTarget() {
        return this.target;
    }

    public void layout() {
        if (this.getTarget() == null) {
            return;
        }
        Rectangle displayBounds = Geometry.toDisplay((Control)this.control.getParent(), (Rectangle)this.control.getBounds());
        Rectangle clippingRegion = DragUtil.getDisplayBounds((Control)this.control.getParent());
        displayBounds = displayBounds.intersection(clippingRegion);
        Rectangle targetBounds = Geometry.toControl((Control)this.getTarget().getParent(), (Rectangle)displayBounds);
        this.getTarget().setBounds(targetBounds);
    }
}

