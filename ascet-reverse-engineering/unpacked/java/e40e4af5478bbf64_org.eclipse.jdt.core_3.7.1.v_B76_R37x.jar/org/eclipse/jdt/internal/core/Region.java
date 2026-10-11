/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.IRegion;

public class Region
implements IRegion {
    protected ArrayList rootElements = new ArrayList(1);

    public void add(IJavaElement element) {
        if (!this.contains(element)) {
            this.removeAllChildren(element);
            this.rootElements.add(element);
            this.rootElements.trimToSize();
        }
    }

    public boolean contains(IJavaElement element) {
        int size = this.rootElements.size();
        ArrayList parents = this.getAncestors(element);
        int i = 0;
        while (i < size) {
            IJavaElement aTop = (IJavaElement)this.rootElements.get(i);
            if (aTop.equals(element)) {
                return true;
            }
            int j = 0;
            int pSize = parents.size();
            while (j < pSize) {
                if (aTop.equals(parents.get(j))) {
                    return true;
                }
                ++j;
            }
            ++i;
        }
        return false;
    }

    private ArrayList getAncestors(IJavaElement element) {
        ArrayList<IJavaElement> parents = new ArrayList<IJavaElement>();
        IJavaElement parent = element.getParent();
        while (parent != null) {
            parents.add(parent);
            parent = parent.getParent();
        }
        parents.trimToSize();
        return parents;
    }

    public IJavaElement[] getElements() {
        int size = this.rootElements.size();
        IJavaElement[] roots = new IJavaElement[size];
        int i = 0;
        while (i < size) {
            roots[i] = (IJavaElement)this.rootElements.get(i);
            ++i;
        }
        return roots;
    }

    public boolean remove(IJavaElement element) {
        this.removeAllChildren(element);
        return this.rootElements.remove(element);
    }

    protected void removeAllChildren(IJavaElement element) {
        if (element instanceof IParent) {
            ArrayList<IJavaElement> newRootElements = new ArrayList<IJavaElement>();
            int i = 0;
            int size = this.rootElements.size();
            while (i < size) {
                IJavaElement currentRoot = (IJavaElement)this.rootElements.get(i);
                IJavaElement parent = currentRoot.getParent();
                boolean isChild = false;
                while (parent != null) {
                    if (parent.equals(element)) {
                        isChild = true;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (!isChild) {
                    newRootElements.add(currentRoot);
                }
                ++i;
            }
            this.rootElements = newRootElements;
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        IJavaElement[] roots = this.getElements();
        buffer.append('[');
        int i = 0;
        while (i < roots.length) {
            buffer.append(roots[i].getElementName());
            if (i < roots.length - 1) {
                buffer.append(", ");
            }
            ++i;
        }
        buffer.append(']');
        return buffer.toString();
    }
}

