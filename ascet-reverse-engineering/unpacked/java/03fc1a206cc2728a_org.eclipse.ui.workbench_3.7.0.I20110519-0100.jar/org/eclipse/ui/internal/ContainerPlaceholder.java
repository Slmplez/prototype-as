/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartPlaceholder;

public class ContainerPlaceholder
extends PartPlaceholder
implements ILayoutContainer {
    private static int nextId = 0;
    private ILayoutContainer realContainer;

    public ContainerPlaceholder(String id) {
        super(id == null ? "Container Placeholder " + nextId++ : id);
    }

    public void add(LayoutPart child) {
        if (!(child instanceof PartPlaceholder)) {
            return;
        }
        this.realContainer.add(child);
    }

    public boolean allowsBorder() {
        return true;
    }

    public LayoutPart[] getChildren() {
        return this.realContainer.getChildren();
    }

    public LayoutPart getFocus() {
        return null;
    }

    public LayoutPart getRealContainer() {
        return (LayoutPart)((Object)this.realContainer);
    }

    public boolean isChildVisible(LayoutPart child) {
        return false;
    }

    public void remove(LayoutPart child) {
        if (!(child instanceof PartPlaceholder)) {
            return;
        }
        this.realContainer.remove(child);
    }

    public void replace(LayoutPart oldChild, LayoutPart newChild) {
        if (!(oldChild instanceof PartPlaceholder) && !(newChild instanceof PartPlaceholder)) {
            return;
        }
        this.realContainer.replace(oldChild, newChild);
    }

    public void setChildVisible(LayoutPart child, boolean visible) {
    }

    public void setFocus(LayoutPart child) {
    }

    public void setRealContainer(ILayoutContainer container) {
        if (container == null) {
            LayoutPart[] children;
            if (this.realContainer != null && (children = this.realContainer.getChildren()) != null) {
                int i = 0;
                int length = children.length;
                while (i < length) {
                    children[i].setContainer(this.realContainer);
                    ++i;
                }
            }
        } else {
            LayoutPart[] children = container.getChildren();
            if (children != null) {
                int i = 0;
                int length = children.length;
                while (i < length) {
                    children[i].setContainer(this);
                    ++i;
                }
            }
        }
        this.realContainer = container;
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

    public boolean childIsZoomed(LayoutPart toTest) {
        return false;
    }
}

