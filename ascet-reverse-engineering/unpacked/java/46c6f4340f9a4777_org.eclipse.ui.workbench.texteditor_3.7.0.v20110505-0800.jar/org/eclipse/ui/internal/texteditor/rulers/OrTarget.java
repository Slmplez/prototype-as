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

final class OrTarget
extends RulerColumnTarget {
    private final RulerColumnTarget fEither;
    private final RulerColumnTarget fOr;

    OrTarget(RulerColumnTarget either, RulerColumnTarget or) {
        this.fEither = either;
        this.fOr = or;
        Assert.isLegal((either != null ? 1 : 0) != 0);
        Assert.isLegal((or != null ? 1 : 0) != 0);
    }

    public boolean matchesContentType(IContentType contentType) {
        return this.fEither.matchesContentType(contentType) || this.fOr.matchesContentType(contentType);
    }

    public boolean matchesEditorId(String editorId) {
        return this.fEither.matchesEditorId(editorId) || this.fOr.matchesEditorId(editorId);
    }

    public boolean matchesClass(Class clazz) {
        return this.fEither.matchesClass(clazz) || this.fOr.matchesClass(clazz);
    }

    public String toString() {
        return String.valueOf(this.fEither.toString()) + " || " + this.fOr.toString();
    }
}

