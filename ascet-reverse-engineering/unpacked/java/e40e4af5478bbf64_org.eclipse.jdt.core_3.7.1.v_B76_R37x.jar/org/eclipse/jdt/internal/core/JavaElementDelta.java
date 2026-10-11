/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceDelta
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SimpleDelta;

public class JavaElementDelta
extends SimpleDelta
implements IJavaElementDelta {
    IJavaElementDelta[] affectedChildren = EMPTY_DELTA;
    CompilationUnit ast = null;
    IJavaElement changedElement;
    IResourceDelta[] resourceDeltas = null;
    int resourceDeltasCounter;
    IJavaElement movedFromHandle = null;
    IJavaElement movedToHandle = null;
    IJavaElementDelta[] annotationDeltas = EMPTY_DELTA;
    static IJavaElementDelta[] EMPTY_DELTA = new IJavaElementDelta[0];

    public JavaElementDelta(IJavaElement element) {
        this.changedElement = element;
    }

    protected void addAffectedChild(JavaElementDelta child) {
        switch (this.kind) {
            case 1: 
            case 2: {
                return;
            }
            case 4: {
                this.changeFlags |= 8;
                break;
            }
            default: {
                this.kind = 4;
                this.changeFlags |= 8;
            }
        }
        if (this.changedElement.getElementType() >= 5) {
            this.fineGrained();
        }
        if (this.affectedChildren == null || this.affectedChildren.length == 0) {
            this.affectedChildren = new IJavaElementDelta[]{child};
            return;
        }
        SimpleDelta existingChild = null;
        int existingChildIndex = -1;
        int i = 0;
        while (i < this.affectedChildren.length) {
            if (this.equalsAndSameParent(this.affectedChildren[i].getElement(), child.getElement())) {
                existingChild = (JavaElementDelta)this.affectedChildren[i];
                existingChildIndex = i;
                break;
            }
            ++i;
        }
        if (existingChild == null) {
            this.affectedChildren = this.growAndAddToArray(this.affectedChildren, child);
        } else {
            switch (existingChild.getKind()) {
                case 1: {
                    switch (child.getKind()) {
                        case 1: 
                        case 4: {
                            return;
                        }
                        case 2: {
                            this.affectedChildren = this.removeAndShrinkArray(this.affectedChildren, existingChildIndex);
                            return;
                        }
                    }
                    break;
                }
                case 2: {
                    switch (child.getKind()) {
                        case 1: {
                            child.kind = 4;
                            this.affectedChildren[existingChildIndex] = child;
                            return;
                        }
                        case 2: 
                        case 4: {
                            return;
                        }
                    }
                    break;
                }
                case 4: {
                    switch (child.getKind()) {
                        case 1: 
                        case 2: {
                            this.affectedChildren[existingChildIndex] = child;
                            return;
                        }
                        case 4: {
                            IResourceDelta[] resDeltas;
                            IJavaElementDelta[] children = child.getAffectedChildren();
                            int i2 = 0;
                            while (i2 < children.length) {
                                JavaElementDelta childsChild = (JavaElementDelta)children[i2];
                                ((JavaElementDelta)existingChild).addAffectedChild(childsChild);
                                ++i2;
                            }
                            boolean childHadContentFlag = (child.changeFlags & 1) != 0;
                            boolean existingChildHadChildrenFlag = (((JavaElementDelta)existingChild).changeFlags & 8) != 0;
                            ((JavaElementDelta)existingChild).changeFlags |= child.changeFlags;
                            if (childHadContentFlag && existingChildHadChildrenFlag) {
                                ((JavaElementDelta)existingChild).changeFlags &= 0xFFFFFFFE;
                            }
                            if ((resDeltas = child.getResourceDeltas()) != null) {
                                ((JavaElementDelta)existingChild).resourceDeltas = resDeltas;
                                ((JavaElementDelta)existingChild).resourceDeltasCounter = child.resourceDeltasCounter;
                            }
                            return;
                        }
                    }
                    break;
                }
                default: {
                    int flags = existingChild.getFlags();
                    this.affectedChildren[existingChildIndex] = child;
                    child.changeFlags |= flags;
                }
            }
        }
    }

    public void added(IJavaElement element) {
        this.added(element, 0);
    }

    public void added(IJavaElement element, int flags) {
        JavaElementDelta addedDelta = new JavaElementDelta(element);
        addedDelta.added();
        addedDelta.changeFlags |= flags;
        this.insertDeltaTree(element, addedDelta);
    }

    protected void addResourceDelta(IResourceDelta child) {
        switch (this.kind) {
            case 1: 
            case 2: {
                return;
            }
            case 4: {
                this.changeFlags |= 1;
                break;
            }
            default: {
                this.kind = 4;
                this.changeFlags |= 1;
            }
        }
        if (this.resourceDeltas == null) {
            this.resourceDeltas = new IResourceDelta[5];
            this.resourceDeltas[this.resourceDeltasCounter++] = child;
            return;
        }
        if (this.resourceDeltas.length == this.resourceDeltasCounter) {
            this.resourceDeltas = new IResourceDelta[this.resourceDeltasCounter * 2];
            System.arraycopy(this.resourceDeltas, 0, this.resourceDeltas, 0, this.resourceDeltasCounter);
        }
        this.resourceDeltas[this.resourceDeltasCounter++] = child;
    }

    public JavaElementDelta changed(IJavaElement element, int changeFlag) {
        JavaElementDelta changedDelta = new JavaElementDelta(element);
        changedDelta.changed(changeFlag);
        this.insertDeltaTree(element, changedDelta);
        return changedDelta;
    }

    public void changedAST(CompilationUnit changedAST) {
        this.ast = changedAST;
        this.changed(524288);
    }

    public void contentChanged() {
        this.changeFlags |= 1;
    }

    public void closed(IJavaElement element) {
        JavaElementDelta delta = new JavaElementDelta(element);
        delta.changed(1024);
        this.insertDeltaTree(element, delta);
    }

    protected JavaElementDelta createDeltaTree(IJavaElement element, JavaElementDelta delta) {
        JavaElementDelta childDelta = delta;
        ArrayList ancestors = this.getAncestors(element);
        if (ancestors == null) {
            if (this.equalsAndSameParent(delta.getElement(), this.getElement())) {
                this.kind = delta.kind;
                this.changeFlags = delta.changeFlags;
                this.movedToHandle = delta.movedToHandle;
                this.movedFromHandle = delta.movedFromHandle;
            }
        } else {
            int i = 0;
            int size = ancestors.size();
            while (i < size) {
                IJavaElement ancestor = (IJavaElement)ancestors.get(i);
                JavaElementDelta ancestorDelta = new JavaElementDelta(ancestor);
                ancestorDelta.addAffectedChild(childDelta);
                childDelta = ancestorDelta;
                ++i;
            }
        }
        return childDelta;
    }

    protected boolean equalsAndSameParent(IJavaElement e1, IJavaElement e2) {
        IJavaElement parent1;
        return e1.equals(e2) && (parent1 = e1.getParent()) != null && parent1.equals(e2.getParent());
    }

    protected JavaElementDelta find(IJavaElement e) {
        if (this.equalsAndSameParent(this.changedElement, e)) {
            return this;
        }
        int i = 0;
        while (i < this.affectedChildren.length) {
            JavaElementDelta delta = ((JavaElementDelta)this.affectedChildren[i]).find(e);
            if (delta != null) {
                return delta;
            }
            ++i;
        }
        return null;
    }

    public void fineGrained() {
        this.changed(16384);
    }

    public IJavaElementDelta[] getAddedChildren() {
        return this.getChildrenOfType(1);
    }

    public IJavaElementDelta[] getAffectedChildren() {
        return this.affectedChildren;
    }

    private ArrayList getAncestors(IJavaElement element) {
        IJavaElement parent = element.getParent();
        if (parent == null) {
            return null;
        }
        ArrayList<IJavaElement> parents = new ArrayList<IJavaElement>();
        while (!parent.equals(this.changedElement)) {
            parents.add(parent);
            parent = parent.getParent();
            if (parent != null) continue;
            return null;
        }
        parents.trimToSize();
        return parents;
    }

    public CompilationUnit getCompilationUnitAST() {
        return this.ast;
    }

    public IJavaElementDelta[] getAnnotationDeltas() {
        return this.annotationDeltas;
    }

    public IJavaElementDelta[] getChangedChildren() {
        return this.getChildrenOfType(4);
    }

    protected IJavaElementDelta[] getChildrenOfType(int type) {
        int length = this.affectedChildren.length;
        if (length == 0) {
            return new IJavaElementDelta[0];
        }
        ArrayList<IJavaElementDelta> children = new ArrayList<IJavaElementDelta>(length);
        int i = 0;
        while (i < length) {
            if (this.affectedChildren[i].getKind() == type) {
                children.add(this.affectedChildren[i]);
            }
            ++i;
        }
        IJavaElementDelta[] childrenOfType = new IJavaElementDelta[children.size()];
        children.toArray(childrenOfType);
        return childrenOfType;
    }

    protected JavaElementDelta getDeltaFor(IJavaElement element) {
        if (this.equalsAndSameParent(this.getElement(), element)) {
            return this;
        }
        if (this.affectedChildren.length == 0) {
            return null;
        }
        int childrenCount = this.affectedChildren.length;
        int i = 0;
        while (i < childrenCount) {
            JavaElementDelta delta = (JavaElementDelta)this.affectedChildren[i];
            if (this.equalsAndSameParent(delta.getElement(), element)) {
                return delta;
            }
            if ((delta = delta.getDeltaFor(element)) != null) {
                return delta;
            }
            ++i;
        }
        return null;
    }

    public IJavaElement getElement() {
        return this.changedElement;
    }

    public IJavaElement getMovedFromElement() {
        return this.movedFromHandle;
    }

    public IJavaElement getMovedToElement() {
        return this.movedToHandle;
    }

    public IJavaElementDelta[] getRemovedChildren() {
        return this.getChildrenOfType(2);
    }

    public IResourceDelta[] getResourceDeltas() {
        if (this.resourceDeltas == null) {
            return null;
        }
        if (this.resourceDeltas.length != this.resourceDeltasCounter) {
            this.resourceDeltas = new IResourceDelta[this.resourceDeltasCounter];
            System.arraycopy(this.resourceDeltas, 0, this.resourceDeltas, 0, this.resourceDeltasCounter);
        }
        return this.resourceDeltas;
    }

    protected IJavaElementDelta[] growAndAddToArray(IJavaElementDelta[] array, IJavaElementDelta addition) {
        IJavaElementDelta[] old = array;
        array = new IJavaElementDelta[old.length + 1];
        System.arraycopy(old, 0, array, 0, old.length);
        array[old.length] = addition;
        return array;
    }

    protected void insertDeltaTree(IJavaElement element, JavaElementDelta delta) {
        JavaElementDelta childDelta = this.createDeltaTree(element, delta);
        if (!this.equalsAndSameParent(element, this.getElement())) {
            this.addAffectedChild(childDelta);
        }
    }

    public void movedFrom(IJavaElement movedFromElement, IJavaElement movedToElement) {
        JavaElementDelta removedDelta = new JavaElementDelta(movedFromElement);
        removedDelta.kind = 2;
        removedDelta.changeFlags |= 0x20;
        removedDelta.movedToHandle = movedToElement;
        this.insertDeltaTree(movedFromElement, removedDelta);
    }

    public void movedTo(IJavaElement movedToElement, IJavaElement movedFromElement) {
        JavaElementDelta addedDelta = new JavaElementDelta(movedToElement);
        addedDelta.kind = 1;
        addedDelta.changeFlags |= 0x10;
        addedDelta.movedFromHandle = movedFromElement;
        this.insertDeltaTree(movedToElement, addedDelta);
    }

    public void opened(IJavaElement element) {
        JavaElementDelta delta = new JavaElementDelta(element);
        delta.changed(512);
        this.insertDeltaTree(element, delta);
    }

    protected void removeAffectedChild(JavaElementDelta child) {
        int index = -1;
        if (this.affectedChildren != null) {
            int i = 0;
            while (i < this.affectedChildren.length) {
                if (this.equalsAndSameParent(this.affectedChildren[i].getElement(), child.getElement())) {
                    index = i;
                    break;
                }
                ++i;
            }
        }
        if (index >= 0) {
            this.affectedChildren = this.removeAndShrinkArray(this.affectedChildren, index);
        }
    }

    protected IJavaElementDelta[] removeAndShrinkArray(IJavaElementDelta[] old, int index) {
        int rest;
        IJavaElementDelta[] array = new IJavaElementDelta[old.length - 1];
        if (index > 0) {
            System.arraycopy(old, 0, array, 0, index);
        }
        if ((rest = old.length - index - 1) > 0) {
            System.arraycopy(old, index + 1, array, index, rest);
        }
        return array;
    }

    public void removed(IJavaElement element) {
        this.removed(element, 0);
    }

    public void removed(IJavaElement element, int flags) {
        JavaElementDelta removedDelta = new JavaElementDelta(element);
        this.insertDeltaTree(element, removedDelta);
        JavaElementDelta actualDelta = this.getDeltaFor(element);
        if (actualDelta != null) {
            actualDelta.removed();
            actualDelta.changeFlags |= flags;
            actualDelta.affectedChildren = EMPTY_DELTA;
        }
    }

    public void sourceAttached(IJavaElement element) {
        JavaElementDelta attachedDelta = new JavaElementDelta(element);
        attachedDelta.changed(4096);
        this.insertDeltaTree(element, attachedDelta);
    }

    public void sourceDetached(IJavaElement element) {
        JavaElementDelta detachedDelta = new JavaElementDelta(element);
        detachedDelta.changed(8192);
        this.insertDeltaTree(element, detachedDelta);
    }

    public String toDebugString(int depth) {
        int i;
        StringBuffer buffer = new StringBuffer();
        int i2 = 0;
        while (i2 < depth) {
            buffer.append('\t');
            ++i2;
        }
        buffer.append(((JavaElement)this.getElement()).toDebugString());
        this.toDebugString(buffer);
        IJavaElementDelta[] children = this.getAffectedChildren();
        if (children != null) {
            i = 0;
            while (i < children.length) {
                buffer.append("\n");
                buffer.append(((JavaElementDelta)children[i]).toDebugString(depth + 1));
                ++i;
            }
        }
        i = 0;
        while (i < this.resourceDeltasCounter) {
            buffer.append("\n");
            int j = 0;
            while (j < depth + 1) {
                buffer.append('\t');
                ++j;
            }
            IResourceDelta resourceDelta = this.resourceDeltas[i];
            buffer.append(resourceDelta.toString());
            buffer.append("[");
            switch (resourceDelta.getKind()) {
                case 1: {
                    buffer.append('+');
                    break;
                }
                case 2: {
                    buffer.append('-');
                    break;
                }
                case 4: {
                    buffer.append('*');
                    break;
                }
                default: {
                    buffer.append('?');
                }
            }
            buffer.append("]");
            ++i;
        }
        IJavaElementDelta[] annotations = this.getAnnotationDeltas();
        if (annotations != null) {
            int i3 = 0;
            while (i3 < annotations.length) {
                buffer.append("\n");
                buffer.append(((JavaElementDelta)annotations[i3]).toDebugString(depth + 1));
                ++i3;
            }
        }
        return buffer.toString();
    }

    protected boolean toDebugString(StringBuffer buffer, int flags) {
        boolean prev = super.toDebugString(buffer, flags);
        if ((flags & 8) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("CHILDREN");
            prev = true;
        }
        if ((flags & 1) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("CONTENT");
            prev = true;
        }
        if ((flags & 0x10) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("MOVED_FROM(" + ((JavaElement)this.getMovedFromElement()).toStringWithAncestors() + ")");
            prev = true;
        }
        if ((flags & 0x20) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("MOVED_TO(" + ((JavaElement)this.getMovedToElement()).toStringWithAncestors() + ")");
            prev = true;
        }
        if ((flags & 0x40) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("ADDED TO CLASSPATH");
            prev = true;
        }
        if ((flags & 0x80) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("REMOVED FROM CLASSPATH");
            prev = true;
        }
        if ((flags & 0x100) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("REORDERED");
            prev = true;
        }
        if ((flags & 0x8000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("ARCHIVE CONTENT CHANGED");
            prev = true;
        }
        if ((flags & 0x1000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("SOURCE ATTACHED");
            prev = true;
        }
        if ((flags & 0x2000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("SOURCE DETACHED");
            prev = true;
        }
        if ((flags & 0x4000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("FINE GRAINED");
            prev = true;
        }
        if ((flags & 0x10000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("PRIMARY WORKING COPY");
            prev = true;
        }
        if ((flags & 0x20000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("RAW CLASSPATH CHANGED");
            prev = true;
        }
        if ((flags & 0x200000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("RESOLVED CLASSPATH CHANGED");
            prev = true;
        }
        if ((flags & 0x40000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("PRIMARY RESOURCE");
            prev = true;
        }
        if ((flags & 0x200) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("OPENED");
            prev = true;
        }
        if ((flags & 0x400) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("CLOSED");
            prev = true;
        }
        if ((flags & 0x80000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("AST AFFECTED");
            prev = true;
        }
        if ((flags & 0x100000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("CATEGORIES");
            prev = true;
        }
        if ((flags & 0x400000) != 0) {
            if (prev) {
                buffer.append(" | ");
            }
            buffer.append("ANNOTATIONS");
            prev = true;
        }
        return prev;
    }

    public String toString() {
        return this.toDebugString(0);
    }
}

