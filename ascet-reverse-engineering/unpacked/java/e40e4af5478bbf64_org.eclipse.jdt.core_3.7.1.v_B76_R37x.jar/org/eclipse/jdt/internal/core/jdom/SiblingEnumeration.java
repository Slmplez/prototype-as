/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.jdom.IDOMNode;

class SiblingEnumeration
implements Enumeration {
    protected IDOMNode fCurrentElement;

    SiblingEnumeration(IDOMNode child) {
        this.fCurrentElement = child;
    }

    public boolean hasMoreElements() {
        return this.fCurrentElement != null;
    }

    public Object nextElement() {
        IDOMNode curr = this.fCurrentElement;
        if (curr != null) {
            this.fCurrentElement = this.fCurrentElement.getNextNode();
        }
        return curr;
    }
}

