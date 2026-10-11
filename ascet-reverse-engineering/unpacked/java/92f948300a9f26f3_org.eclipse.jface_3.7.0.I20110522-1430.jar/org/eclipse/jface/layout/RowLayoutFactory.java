/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.RowLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.layout.LayoutConstants;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.RowLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;

public final class RowLayoutFactory {
    private RowLayout layout;

    private RowLayoutFactory(RowLayout layout) {
        this.layout = layout;
    }

    public static RowLayoutFactory createFrom(RowLayout layout) {
        return new RowLayoutFactory(RowLayoutFactory.copyLayout(layout));
    }

    public RowLayoutFactory copy() {
        return new RowLayoutFactory(this.create());
    }

    public static RowLayoutFactory swtDefaults() {
        return new RowLayoutFactory(new RowLayout());
    }

    public static RowLayoutFactory fillDefaults() {
        RowLayout layout = new RowLayout();
        layout.marginTop = 0;
        layout.marginBottom = 0;
        layout.marginLeft = 0;
        layout.marginRight = 0;
        layout.spacing = LayoutConstants.getSpacing().x;
        return new RowLayoutFactory(layout);
    }

    public RowLayoutFactory spacing(int spacing) {
        this.layout.spacing = spacing;
        return this;
    }

    public RowLayoutFactory margins(Point margins) {
        this.layout.marginWidth = margins.x;
        this.layout.marginHeight = margins.y;
        return this;
    }

    public RowLayoutFactory margins(int width, int height) {
        this.layout.marginWidth = width;
        this.layout.marginHeight = height;
        return this;
    }

    public RowLayoutFactory extendedMargins(int left, int right, int top, int bottom) {
        this.layout.marginLeft = left;
        this.layout.marginRight = right;
        this.layout.marginTop = top;
        this.layout.marginBottom = bottom;
        return this;
    }

    public RowLayoutFactory fill(boolean fill) {
        this.layout.fill = fill;
        return this;
    }

    public RowLayoutFactory justify(boolean justify) {
        this.layout.justify = justify;
        return this;
    }

    public RowLayoutFactory pack(boolean pack) {
        this.layout.pack = pack;
        return this;
    }

    public RowLayoutFactory wrap(boolean wrap) {
        this.layout.wrap = wrap;
        return this;
    }

    public RowLayoutFactory type(int type) {
        if (type != 256 && type != 512) {
            throw new IllegalArgumentException();
        }
        this.layout.type = type;
        return this;
    }

    public RowLayout create() {
        return RowLayoutFactory.copyLayout(this.layout);
    }

    public void applyTo(Composite c) {
        c.setLayout((Layout)RowLayoutFactory.copyLayout(this.layout));
    }

    public static RowLayout copyLayout(RowLayout layout) {
        RowLayout result = new RowLayout(layout.type);
        result.marginBottom = layout.marginBottom;
        result.marginTop = layout.marginTop;
        result.marginLeft = layout.marginLeft;
        result.marginRight = layout.marginRight;
        result.marginHeight = layout.marginHeight;
        result.marginWidth = layout.marginWidth;
        result.fill = layout.fill;
        result.justify = layout.justify;
        result.pack = layout.pack;
        result.spacing = layout.spacing;
        result.wrap = layout.wrap;
        result.type = layout.type;
        return result;
    }
}

