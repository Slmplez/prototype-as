/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.ui.internal.texteditor.rulers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.ui.internal.texteditor.rulers.RulerColumnTarget;

final class ContentTypeTarget
extends RulerColumnTarget {
    private final IContentType fContentType;

    ContentTypeTarget(String contentTypeId) {
        Assert.isLegal((contentTypeId != null ? 1 : 0) != 0);
        this.fContentType = Platform.getContentTypeManager().getContentType(contentTypeId);
    }

    public boolean matchesContentType(IContentType contentType) {
        return this.fContentType != null && contentType != null && contentType.isKindOf(this.fContentType);
    }

    public boolean matchesEditorId(String editorId) {
        return false;
    }

    public boolean matchesClass(Class clazz) {
        return false;
    }

    public String toString() {
        return "contentType=" + this.fContentType;
    }
}

