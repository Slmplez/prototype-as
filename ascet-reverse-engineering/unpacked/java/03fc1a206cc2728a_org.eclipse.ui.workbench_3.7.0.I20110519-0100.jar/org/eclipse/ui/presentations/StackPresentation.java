/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.presentations;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.ISizeProvider;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IPresentationSerializer;
import org.eclipse.ui.presentations.IStackPresentationSite;
import org.eclipse.ui.presentations.StackDropResult;

public abstract class StackPresentation
implements ISizeProvider {
    public static final int AS_INACTIVE = 0;
    public static final int AS_ACTIVE_FOCUS = 1;
    public static final int AS_ACTIVE_NOFOCUS = 2;
    private IStackPresentationSite site;

    protected StackPresentation(IStackPresentationSite stackSite) {
        Assert.isNotNull((Object)stackSite);
        this.site = stackSite;
    }

    protected IStackPresentationSite getSite() {
        return this.site;
    }

    public abstract void setBounds(Rectangle var1);

    public Point computeMinimumSize() {
        return new Point(0, 0);
    }

    public int getSizeFlags(boolean width) {
        boolean hasMaximumSize = this.getSite().getState() == 0;
        return 0x80 | (hasMaximumSize ? 1024 : 0);
    }

    public int computePreferredSize(boolean width, int availableParallel, int availablePerpendicular, int preferredResult) {
        int minSize = Geometry.getCoordinate((Point)this.computeMinimumSize(), (boolean)width);
        if (this.getSite().getState() == 0 || preferredResult < minSize) {
            return minSize;
        }
        return preferredResult;
    }

    public abstract void dispose();

    public abstract void setActive(int var1);

    public abstract void setVisible(boolean var1);

    public abstract void setState(int var1);

    public abstract Control getControl();

    public abstract void addPart(IPresentablePart var1, Object var2);

    public abstract void removePart(IPresentablePart var1);

    public void movePart(IPresentablePart toMove, Object cookie) {
        this.removePart(toMove);
        this.addPart(toMove, cookie);
        if (this.getSite().getSelectedPart() == toMove) {
            this.selectPart(toMove);
            toMove.setFocus();
        }
    }

    public abstract void selectPart(IPresentablePart var1);

    public abstract StackDropResult dragOver(Control var1, Point var2);

    public abstract void showSystemMenu();

    public abstract void showPaneMenu();

    public void showPartList() {
    }

    public void saveState(IPresentationSerializer context, IMemento memento) {
    }

    public void restoreState(IPresentationSerializer context, IMemento memento) {
    }

    public abstract Control[] getTabList(IPresentablePart var1);
}

