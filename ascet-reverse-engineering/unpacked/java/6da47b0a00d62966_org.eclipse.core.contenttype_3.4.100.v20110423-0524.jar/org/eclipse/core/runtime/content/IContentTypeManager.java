/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IScopeContext
 */
package org.eclipse.core.runtime.content;

import java.util.EventObject;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeMatcher;
import org.eclipse.core.runtime.preferences.IScopeContext;

public interface IContentTypeManager
extends IContentTypeMatcher {
    public static final String CT_TEXT = "org.eclipse.core.runtime.text";

    public void addContentTypeChangeListener(IContentTypeChangeListener var1);

    public IContentType[] getAllContentTypes();

    public IContentType getContentType(String var1);

    public IContentTypeMatcher getMatcher(ISelectionPolicy var1, IScopeContext var2);

    public void removeContentTypeChangeListener(IContentTypeChangeListener var1);

    public static final class ContentTypeChangeEvent
    extends EventObject {
        private static final long serialVersionUID = 1L;
        private IScopeContext context;

        public ContentTypeChangeEvent(IContentType source) {
            super(source);
        }

        public ContentTypeChangeEvent(IContentType source, IScopeContext context) {
            super(source);
            this.context = context;
        }

        public IContentType getContentType() {
            return (IContentType)this.source;
        }

        public IScopeContext getContext() {
            return this.context;
        }
    }

    public static interface IContentTypeChangeListener {
        public void contentTypeChanged(ContentTypeChangeEvent var1);
    }

    public static interface ISelectionPolicy {
        public IContentType[] select(IContentType[] var1, boolean var2, boolean var3);
    }
}

