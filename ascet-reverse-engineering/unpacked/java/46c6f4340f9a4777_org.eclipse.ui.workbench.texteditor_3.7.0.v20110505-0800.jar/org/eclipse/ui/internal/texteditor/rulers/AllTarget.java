/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.ui.internal.texteditor.rulers;

import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnTarget;

final class AllTarget
extends RulerColumnTarget {
    AllTarget() {
    }

    public boolean matchesContentType(IContentType contentType) {
        return true;
    }

    public boolean matchesEditorId(String editorId) {
        return true;
    }

    public boolean matchesClass(Class clazz) {
        return true;
    }

    public String toString() {
        return "All";
    }
}

