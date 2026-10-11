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

final class EditorIdTarget
extends RulerColumnTarget {
    private final String fEditorId;

    EditorIdTarget(String id) {
        Assert.isLegal((id != null ? 1 : 0) != 0);
        this.fEditorId = id;
    }

    public boolean matchesContentType(IContentType contentType) {
        return false;
    }

    public boolean matchesEditorId(String editorId) {
        return this.fEditorId.equals(editorId);
    }

    public boolean matchesClass(Class clazz) {
        return false;
    }

    public String toString() {
        return "editorID=" + this.fEditorId;
    }
}

