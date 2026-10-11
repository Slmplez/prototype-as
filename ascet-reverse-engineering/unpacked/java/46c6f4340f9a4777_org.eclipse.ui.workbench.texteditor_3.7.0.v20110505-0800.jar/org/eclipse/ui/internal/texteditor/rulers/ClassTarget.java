/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.ui.internal.texteditor.rulers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnTarget;

final class ClassTarget
extends RulerColumnTarget {
    private final String fClassName;

    ClassTarget(String className) {
        Assert.isLegal((className != null ? 1 : 0) != 0);
        this.fClassName = className;
    }

    public boolean matchesContentType(IContentType contentType) {
        return false;
    }

    public boolean matchesEditorId(String editorId) {
        return false;
    }

    public boolean matchesClass(Class clazz) {
        Assert.isLegal((clazz != null ? 1 : 0) != 0);
        do {
            if (!clazz.getName().equals(this.fClassName)) continue;
            return true;
        } while ((clazz = clazz.getSuperclass()) != null);
        return false;
    }

    public String toString() {
        return "class=" + this.fClassName;
    }
}

