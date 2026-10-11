/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;

public class OpenableElementInfo
extends JavaElementInfo {
    protected IJavaElement[] children = JavaElement.NO_ELEMENTS;
    protected boolean isStructureKnown = false;

    public void addChild(IJavaElement child) {
        int length = this.children.length;
        if (length == 0) {
            this.children = new IJavaElement[]{child};
        } else {
            int i = 0;
            while (i < length) {
                if (this.children[i].equals(child)) {
                    return;
                }
                ++i;
            }
            this.children = new IJavaElement[length + 1];
            System.arraycopy(this.children, 0, this.children, 0, length);
            this.children[length] = child;
        }
    }

    public IJavaElement[] getChildren() {
        return this.children;
    }

    public boolean isStructureKnown() {
        return this.isStructureKnown;
    }

    public void removeChild(IJavaElement child) {
        int i = 0;
        int length = this.children.length;
        while (i < length) {
            IJavaElement element = this.children[i];
            if (element.equals(child)) {
                if (length == 1) {
                    this.children = JavaElement.NO_ELEMENTS;
                    break;
                }
                IJavaElement[] newChildren = new IJavaElement[length - 1];
                System.arraycopy(this.children, 0, newChildren, 0, i);
                if (i < length - 1) {
                    System.arraycopy(this.children, i + 1, newChildren, i, length - 1 - i);
                }
                this.children = newChildren;
                break;
            }
            ++i;
        }
    }

    public void setChildren(IJavaElement[] children) {
        this.children = children;
    }

    public void setIsStructureKnown(boolean newIsStructureKnown) {
        this.isStructureKnown = newIsStructureKnown;
    }
}

