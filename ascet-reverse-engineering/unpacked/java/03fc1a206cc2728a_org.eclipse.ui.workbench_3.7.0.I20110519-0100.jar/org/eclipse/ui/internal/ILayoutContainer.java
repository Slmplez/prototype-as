/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;

public interface ILayoutContainer {
    public boolean allowsAdd(LayoutPart var1);

    public void add(LayoutPart var1);

    public LayoutPart[] getChildren();

    public void remove(LayoutPart var1);

    public void replace(LayoutPart var1, LayoutPart var2);

    public void findSashes(LayoutPart var1, PartPane.Sashes var2);

    public boolean allowsAutoFocus();

    public void childRequestZoomIn(LayoutPart var1);

    public void childRequestZoomOut();

    public boolean childObscuredByZoom(LayoutPart var1);

    public boolean childIsZoomed(LayoutPart var1);

    public void resizeChild(LayoutPart var1);
}

