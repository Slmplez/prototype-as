/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.content.IContentType
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.core.runtime.content.IContentType;

public class SpellingContext {
    private IContentType fContentType;

    public void setContentType(IContentType contentType) {
        this.fContentType = contentType;
    }

    public IContentType getContentType() {
        return this.fContentType;
    }
}

