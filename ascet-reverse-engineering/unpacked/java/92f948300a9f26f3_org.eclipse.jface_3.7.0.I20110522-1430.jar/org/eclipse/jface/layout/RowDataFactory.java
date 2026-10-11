/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.RowData
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.layout;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.RowData;
import org.eclipse.swt.widgets.Control;

public final class RowDataFactory {
    private RowData data;

    private RowDataFactory(RowData data) {
        this.data = data;
    }

    public static RowDataFactory swtDefaults() {
        return new RowDataFactory(new RowData());
    }

    public static RowDataFactory createFrom(RowData data) {
        return new RowDataFactory(RowDataFactory.copyData(data));
    }

    public static RowData copyData(RowData data) {
        RowData newData = new RowData(data.width, data.height);
        newData.exclude = data.exclude;
        return newData;
    }

    public RowDataFactory exclude(boolean shouldExclude) {
        this.data.exclude = shouldExclude;
        return this;
    }

    public RowData create() {
        return RowDataFactory.copyData(this.data);
    }

    public RowDataFactory copy() {
        return new RowDataFactory(this.create());
    }

    public void applyTo(Control control) {
        control.setLayoutData((Object)this.create());
    }

    public RowDataFactory hint(int xHint, int yHint) {
        this.data.width = xHint;
        this.data.height = yHint;
        return this;
    }

    public RowDataFactory hint(Point hint) {
        this.data.width = hint.x;
        this.data.height = hint.y;
        return this;
    }
}

