/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.layout;

import org.eclipse.jface.layout.LayoutGenerator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Control;

public final class GridDataFactory {
    private GridData data;

    private GridDataFactory(GridData d) {
        this.data = d;
    }

    public static GridDataFactory swtDefaults() {
        return new GridDataFactory(new GridData());
    }

    public static GridDataFactory createFrom(GridData data) {
        return new GridDataFactory(GridDataFactory.copyData(data));
    }

    public static GridDataFactory fillDefaults() {
        GridData data = new GridData();
        data.minimumWidth = 1;
        data.minimumHeight = 1;
        data.horizontalAlignment = 4;
        data.verticalAlignment = 4;
        return new GridDataFactory(data);
    }

    public static GridDataFactory defaultsFor(Control theControl) {
        return LayoutGenerator.defaultsFor(theControl);
    }

    public static void generate(Control theControl, int hSpan, int vSpan) {
        GridDataFactory.defaultsFor(theControl).span(hSpan, vSpan).applyTo(theControl);
    }

    public static void generate(Control theControl, Point span) {
        GridDataFactory.defaultsFor(theControl).span(span).applyTo(theControl);
    }

    public GridDataFactory span(int hSpan, int vSpan) {
        this.data.horizontalSpan = hSpan;
        this.data.verticalSpan = vSpan;
        return this;
    }

    public GridDataFactory span(Point span) {
        this.data.horizontalSpan = span.x;
        this.data.verticalSpan = span.y;
        return this;
    }

    public GridDataFactory hint(int xHint, int yHint) {
        this.data.widthHint = xHint;
        this.data.heightHint = yHint;
        return this;
    }

    public GridDataFactory hint(Point hint) {
        this.data.widthHint = hint.x;
        this.data.heightHint = hint.y;
        return this;
    }

    public GridDataFactory align(int hAlign, int vAlign) {
        if (hAlign != 1 && hAlign != 0x1000000 && hAlign != 2 && hAlign != 0x1000008 && hAlign != 3 && hAlign != 4 && hAlign != 16384 && hAlign != 131072) {
            throw new IllegalArgumentException();
        }
        if (vAlign != 1 && vAlign != 0x1000000 && vAlign != 2 && vAlign != 0x1000008 && vAlign != 3 && vAlign != 4 && vAlign != 128 && vAlign != 1024) {
            throw new IllegalArgumentException();
        }
        this.data.horizontalAlignment = hAlign;
        this.data.verticalAlignment = vAlign;
        return this;
    }

    public GridDataFactory indent(int hIndent, int vIndent) {
        this.data.horizontalIndent = hIndent;
        this.data.verticalIndent = vIndent;
        return this;
    }

    public GridDataFactory indent(Point indent) {
        this.data.horizontalIndent = indent.x;
        this.data.verticalIndent = indent.y;
        return this;
    }

    public GridDataFactory grab(boolean horizontal, boolean vertical) {
        this.data.grabExcessHorizontalSpace = horizontal;
        this.data.grabExcessVerticalSpace = vertical;
        return this;
    }

    public GridDataFactory minSize(int minX, int minY) {
        this.data.minimumWidth = minX;
        this.data.minimumHeight = minY;
        return this;
    }

    public GridDataFactory minSize(Point min) {
        this.data.minimumWidth = min.x;
        this.data.minimumHeight = min.y;
        return this;
    }

    public GridDataFactory exclude(boolean shouldExclude) {
        this.data.exclude = shouldExclude;
        return this;
    }

    public GridData create() {
        return GridDataFactory.copyData(this.data);
    }

    public GridDataFactory copy() {
        return new GridDataFactory(this.create());
    }

    public static GridData copyData(GridData data) {
        GridData newData = new GridData(data.horizontalAlignment, data.verticalAlignment, data.grabExcessHorizontalSpace, data.grabExcessVerticalSpace, data.horizontalSpan, data.verticalSpan);
        newData.exclude = data.exclude;
        newData.heightHint = data.heightHint;
        newData.horizontalIndent = data.horizontalIndent;
        newData.minimumHeight = data.minimumHeight;
        newData.minimumWidth = data.minimumWidth;
        newData.verticalIndent = data.verticalIndent;
        newData.widthHint = data.widthHint;
        return newData;
    }

    public void applyTo(Control control) {
        control.setLayoutData((Object)this.create());
    }
}

