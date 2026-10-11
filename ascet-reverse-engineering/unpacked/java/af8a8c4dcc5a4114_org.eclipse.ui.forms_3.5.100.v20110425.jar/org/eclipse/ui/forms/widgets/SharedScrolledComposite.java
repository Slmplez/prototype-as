/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ScrollBar
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.ui.forms.widgets.SizeCache;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public abstract class SharedScrolledComposite
extends ScrolledComposite {
    private static final int H_SCROLL_INCREMENT = 5;
    private static final int V_SCROLL_INCREMENT = 64;
    private boolean ignoreLayouts = true;
    private boolean ignoreResizes = false;
    private boolean expandHorizontal = false;
    private boolean expandVertical = false;
    private SizeCache contentCache = new SizeCache();
    private boolean reflowPending = false;
    private boolean delayedReflow = false;

    public SharedScrolledComposite(Composite parent, int style) {
        super(parent, style);
        this.addListener(11, new Listener(){

            public void handleEvent(Event e) {
                if (!SharedScrolledComposite.this.ignoreResizes) {
                    SharedScrolledComposite.this.scheduleReflow(false);
                }
            }
        });
        this.initializeScrollBars();
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        if (this.getContent() != null) {
            this.getContent().setForeground(fg);
        }
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        if (this.getContent() != null) {
            this.getContent().setBackground(bg);
        }
    }

    public void setFont(Font font) {
        super.setFont(font);
        if (this.getContent() != null) {
            this.getContent().setFont(font);
        }
    }

    public void setContent(Control content) {
        super.setContent(content);
        if (content != null) {
            content.setForeground(this.getForeground());
            content.setBackground(this.getBackground());
            content.setFont(this.getFont());
        }
    }

    public boolean setFocus() {
        FormUtil.setFocusScrollingEnabled((Control)this, false);
        boolean result = this.getContent() != null ? this.getContent().setFocus() : super.setFocus();
        FormUtil.setFocusScrollingEnabled((Control)this, true);
        return result;
    }

    public void layout(boolean changed) {
        if (this.ignoreLayouts) {
            return;
        }
        this.ignoreLayouts = true;
        this.ignoreResizes = true;
        super.layout(changed);
        this.ignoreResizes = false;
    }

    public void setExpandHorizontal(boolean expand) {
        this.expandHorizontal = expand;
        super.setExpandHorizontal(expand);
    }

    public void setExpandVertical(boolean expand) {
        this.expandVertical = expand;
        super.setExpandVertical(expand);
    }

    public void reflow(boolean flushCache) {
        ScrollBar bar;
        Composite c = (Composite)this.getContent();
        Rectangle clientArea = this.getClientArea();
        if (c == null) {
            return;
        }
        if (clientArea.width == this.getSize().x && (bar = this.getVerticalBar()) != null) {
            clientArea.width -= bar.getSize().x;
        }
        this.contentCache.setControl((Control)c);
        if (flushCache) {
            this.contentCache.flush();
        }
        Point newSize = this.contentCache.computeSize(FormUtil.getWidthHint(clientArea.width, (Control)c), FormUtil.getHeightHint(clientArea.height, (Control)c));
        if (!this.expandHorizontal || !this.expandVertical) {
            c.setSize(newSize);
        }
        this.setMinSize(newSize);
        FormUtil.updatePageIncrement(this);
        ScrollBar vbar = this.getVerticalBar();
        if (vbar != null) {
            if (this.getClientArea().height - 5 < 64) {
                this.getVerticalBar().setIncrement(this.getClientArea().height - 5);
            } else {
                this.getVerticalBar().setIncrement(64);
            }
        }
        this.ignoreLayouts = false;
        this.layout(flushCache);
        this.ignoreLayouts = true;
        this.contentCache.layoutIfNecessary();
    }

    private void updateSizeWhilePending() {
        Control c = this.getContent();
        Rectangle area = this.getClientArea();
        this.setMinSize(area.width, c.getSize().y);
    }

    private void scheduleReflow(final boolean flushCache) {
        if (this.delayedReflow) {
            if (this.reflowPending) {
                this.updateSizeWhilePending();
                return;
            }
            this.reflowPending = true;
            this.getDisplay().asyncExec(new Runnable(){

                public void run() {
                    SharedScrolledComposite.this.reflowPending = false;
                    if (!SharedScrolledComposite.this.isDisposed()) {
                        SharedScrolledComposite.this.reflow(flushCache);
                    }
                }
            });
        } else {
            this.reflow(flushCache);
        }
    }

    private void initializeScrollBars() {
        ScrollBar vbar;
        ScrollBar hbar = this.getHorizontalBar();
        if (hbar != null) {
            hbar.setIncrement(5);
        }
        if ((vbar = this.getVerticalBar()) != null) {
            vbar.setIncrement(64);
        }
        FormUtil.updatePageIncrement(this);
    }

    public boolean isDelayedReflow() {
        return this.delayedReflow;
    }

    public void setDelayedReflow(boolean delayedReflow) {
        this.delayedReflow = delayedReflow;
    }
}

