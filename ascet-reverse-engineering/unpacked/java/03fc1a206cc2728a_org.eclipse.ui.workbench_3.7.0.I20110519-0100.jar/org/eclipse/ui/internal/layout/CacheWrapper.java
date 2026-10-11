/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.ui.internal.layout.ICachingLayout;
import org.eclipse.ui.internal.layout.SizeCache;

public class CacheWrapper {
    private Composite proxy;
    private SizeCache cache = new SizeCache();
    private Rectangle lastBounds = new Rectangle(0, 0, 0, 0);

    public CacheWrapper(Composite parent) {
        this.proxy = new Composite(parent, 0);
        this.proxy.setLayout((Layout)new WrapperLayout());
    }

    public void flushCache() {
        this.cache.flush();
    }

    public Composite getControl() {
        return this.proxy;
    }

    public void dispose() {
        if (this.proxy != null) {
            this.proxy.dispose();
            this.proxy = null;
        }
    }

    private class WrapperLayout
    extends Layout
    implements ICachingLayout {
        private WrapperLayout() {
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            Control[] children = composite.getChildren();
            if (children.length != 1) {
                return new Point(0, 0);
            }
            CacheWrapper.this.cache.setControl(children[0]);
            return CacheWrapper.this.cache.computeSize(wHint, hHint);
        }

        protected void layout(Composite composite, boolean flushCache) {
            Control[] children = composite.getChildren();
            if (children.length != 1) {
                return;
            }
            Control child = children[0];
            Rectangle newBounds = composite.getClientArea();
            if (!newBounds.equals((Object)CacheWrapper.this.lastBounds)) {
                child.setBounds(newBounds);
                CacheWrapper.this.lastBounds = newBounds;
            }
        }

        public void flush(Control dirtyControl) {
            CacheWrapper.this.flushCache();
        }
    }
}

