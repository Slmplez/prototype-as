/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;

public class DetachedPlaceHolder
extends PartPlaceholder
implements ILayoutContainer {
    ArrayList children = new ArrayList();
    Rectangle bounds;

    public DetachedPlaceHolder(String id, Rectangle bounds) {
        super(id);
        this.bounds = bounds;
    }

    public void add(LayoutPart newPart) {
        if (!(newPart instanceof PartPlaceholder)) {
            return;
        }
        this.children.add(newPart);
    }

    public boolean allowsBorder() {
        return false;
    }

    public Rectangle getBounds() {
        return this.bounds;
    }

    public LayoutPart[] getChildren() {
        LayoutPart[] result = new LayoutPart[this.children.size()];
        this.children.toArray(result);
        return result;
    }

    public void remove(LayoutPart part) {
        this.children.remove(part);
    }

    public void replace(LayoutPart oldPart, LayoutPart newPart) {
        this.remove(oldPart);
        this.add(newPart);
    }

    public void restoreState(IMemento memento) {
        Integer bigInt = memento.getInteger("x");
        int x = bigInt;
        bigInt = memento.getInteger("y");
        int y = bigInt;
        bigInt = memento.getInteger("width");
        int width = bigInt;
        bigInt = memento.getInteger("height");
        int height = bigInt;
        this.bounds = new Rectangle(x, y, width, height);
        IMemento[] childrenMem = memento.getChildren("view");
        int i = 0;
        while (i < childrenMem.length) {
            PartPlaceholder holder = new PartPlaceholder(childrenMem[i].getString("id"));
            holder.setContainer(this);
            this.children.add(holder);
            ++i;
        }
    }

    public void saveState(IMemento memento) {
        memento.putInteger("x", this.bounds.x);
        memento.putInteger("y", this.bounds.y);
        memento.putInteger("width", this.bounds.width);
        memento.putInteger("height", this.bounds.height);
        int i = 0;
        while (i < this.children.size()) {
            IMemento childMem = memento.createChild("view");
            LayoutPart child = (LayoutPart)this.children.get(i);
            childMem.putString("id", child.getID());
            ++i;
        }
    }

    public void findSashes(LayoutPart part, PartPane.Sashes sashes) {
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            container.findSashes(this, sashes);
        }
    }

    public boolean allowsAutoFocus() {
        return false;
    }
}

