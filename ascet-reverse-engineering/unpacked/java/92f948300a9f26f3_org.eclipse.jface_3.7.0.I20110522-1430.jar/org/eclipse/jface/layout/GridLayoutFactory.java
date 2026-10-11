/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.layout.LayoutConstants;
import org.eclipse.jface.layout.LayoutGenerator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;

public final class GridLayoutFactory {
    private GridLayout l;

    private GridLayoutFactory(GridLayout l) {
        this.l = l;
    }

    public static GridLayoutFactory createFrom(GridLayout l) {
        return new GridLayoutFactory(GridLayoutFactory.copyLayout(l));
    }

    public GridLayoutFactory copy() {
        return new GridLayoutFactory(this.create());
    }

    public static GridLayoutFactory swtDefaults() {
        return new GridLayoutFactory(new GridLayout());
    }

    public static GridLayoutFactory fillDefaults() {
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        Point defaultSpacing = LayoutConstants.getSpacing();
        layout.horizontalSpacing = defaultSpacing.x;
        layout.verticalSpacing = defaultSpacing.y;
        return new GridLayoutFactory(layout);
    }

    public GridLayoutFactory equalWidth(boolean equal) {
        this.l.makeColumnsEqualWidth = equal;
        return this;
    }

    public GridLayoutFactory spacing(int hSpacing, int vSpacing) {
        this.l.horizontalSpacing = hSpacing;
        this.l.verticalSpacing = vSpacing;
        return this;
    }

    public GridLayoutFactory spacing(Point spacing) {
        this.l.horizontalSpacing = spacing.x;
        this.l.verticalSpacing = spacing.y;
        return this;
    }

    public GridLayoutFactory margins(Point margins) {
        this.l.marginWidth = margins.x;
        this.l.marginHeight = margins.y;
        return this;
    }

    public GridLayoutFactory margins(int width, int height) {
        this.l.marginWidth = width;
        this.l.marginHeight = height;
        return this;
    }

    public GridLayoutFactory extendedMargins(int left, int right, int top, int bottom) {
        this.l.marginLeft = left;
        this.l.marginRight = right;
        this.l.marginTop = top;
        this.l.marginBottom = bottom;
        return this;
    }

    public GridLayoutFactory extendedMargins(Rectangle differenceRect) {
        this.l.marginLeft = -differenceRect.x;
        this.l.marginTop = -differenceRect.y;
        this.l.marginBottom = differenceRect.y + differenceRect.height;
        this.l.marginRight = differenceRect.x + differenceRect.width;
        return this;
    }

    public GridLayoutFactory numColumns(int numColumns) {
        this.l.numColumns = numColumns;
        return this;
    }

    public GridLayout create() {
        return GridLayoutFactory.copyLayout(this.l);
    }

    public void applyTo(Composite c) {
        c.setLayout((Layout)GridLayoutFactory.copyLayout(this.l));
    }

    public static GridLayout copyLayout(GridLayout l) {
        GridLayout result = new GridLayout(l.numColumns, l.makeColumnsEqualWidth);
        result.horizontalSpacing = l.horizontalSpacing;
        result.marginBottom = l.marginBottom;
        result.marginHeight = l.marginHeight;
        result.marginLeft = l.marginLeft;
        result.marginRight = l.marginRight;
        result.marginTop = l.marginTop;
        result.marginWidth = l.marginWidth;
        result.verticalSpacing = l.verticalSpacing;
        return result;
    }

    public void generateLayout(Composite c) {
        this.applyTo(c);
        LayoutGenerator.generateLayout(c);
    }
}

