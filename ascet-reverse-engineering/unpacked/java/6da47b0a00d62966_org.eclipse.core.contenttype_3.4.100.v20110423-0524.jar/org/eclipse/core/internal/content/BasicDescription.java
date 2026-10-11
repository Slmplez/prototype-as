/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.content;

import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeHandler;
import org.eclipse.core.internal.content.IContentTypeInfo;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;

public abstract class BasicDescription
implements IContentDescription {
    protected IContentTypeInfo contentTypeInfo;

    public BasicDescription(IContentTypeInfo contentTypeInfo) {
        this.contentTypeInfo = contentTypeInfo;
    }

    public IContentType getContentType() {
        ContentType contentType = this.contentTypeInfo.getContentType();
        return new ContentTypeHandler(contentType, contentType.getCatalog().getGeneration());
    }

    public IContentTypeInfo getContentTypeInfo() {
        return this.contentTypeInfo;
    }
}

