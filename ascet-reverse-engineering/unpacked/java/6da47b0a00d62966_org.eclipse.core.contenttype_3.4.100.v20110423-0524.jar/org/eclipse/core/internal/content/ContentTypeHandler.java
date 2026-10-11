/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.preferences.IScopeContext
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.ref.SoftReference;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeCatalog;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeSettings;
import org.eclipse.core.runtime.preferences.IScopeContext;

public class ContentTypeHandler
implements IContentType {
    private int generation;
    String id;
    private SoftReference targetRef;

    ContentTypeHandler(ContentType target, int generation) {
        this.id = target.getId();
        this.targetRef = new SoftReference<ContentType>(target);
        this.generation = generation;
    }

    public void addFileSpec(String fileSpec, int type) throws CoreException {
        ContentType target = this.getTarget();
        if (target != null) {
            target.addFileSpec(fileSpec, type);
        }
    }

    public boolean equals(Object another) {
        if (another instanceof ContentType) {
            return this.id.equals(((ContentType)another).id);
        }
        if (another instanceof ContentTypeHandler) {
            return this.id.equals(((ContentTypeHandler)another).id);
        }
        return false;
    }

    public IContentType getBaseType() {
        ContentType target = this.getTarget();
        if (target == null) {
            return null;
        }
        ContentType baseType = (ContentType)target.getBaseType();
        return baseType != null ? new ContentTypeHandler(baseType, baseType.getCatalog().getGeneration()) : null;
    }

    public String getDefaultCharset() {
        ContentType target = this.getTarget();
        return target != null ? target.getDefaultCharset() : null;
    }

    public IContentDescription getDefaultDescription() {
        ContentType target = this.getTarget();
        return target != null ? target.getDefaultDescription() : new DummyContentDescription();
    }

    public IContentDescription getDescriptionFor(InputStream contents, QualifiedName[] options) throws IOException {
        ContentType target = this.getTarget();
        return target != null ? target.getDescriptionFor(contents, options) : null;
    }

    public IContentDescription getDescriptionFor(Reader contents, QualifiedName[] options) throws IOException {
        ContentType target = this.getTarget();
        return target != null ? target.getDescriptionFor(contents, options) : null;
    }

    public String[] getFileSpecs(int type) {
        ContentType target = this.getTarget();
        return target != null ? target.getFileSpecs(type) : new String[]{};
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        ContentType target = this.getTarget();
        return target != null ? target.getName() : this.id;
    }

    public IContentTypeSettings getSettings(IScopeContext context) throws CoreException {
        ContentType target = this.getTarget();
        if (target == null) {
            return null;
        }
        IContentTypeSettings settings = target.getSettings(context);
        return settings == target ? this : settings;
    }

    public ContentType getTarget() {
        ContentType target = (ContentType)this.targetRef.get();
        ContentTypeCatalog catalog = ContentTypeManager.getInstance().getCatalog();
        if (target == null || catalog.getGeneration() != this.generation) {
            target = catalog.getContentType(this.id);
            this.targetRef = new SoftReference<ContentType>(target);
            this.generation = catalog.getGeneration();
        }
        return target == null ? null : target.getAliasTarget(true);
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public boolean isAssociatedWith(String fileName) {
        ContentType target = this.getTarget();
        return target != null ? target.isAssociatedWith(fileName) : false;
    }

    public boolean isAssociatedWith(String fileName, IScopeContext context) {
        ContentType target = this.getTarget();
        return target != null ? target.isAssociatedWith(fileName, context) : false;
    }

    public boolean isKindOf(IContentType another) {
        ContentType target;
        if (another instanceof ContentTypeHandler) {
            another = ((ContentTypeHandler)another).getTarget();
        }
        return (target = this.getTarget()) != null ? target.isKindOf(another) : false;
    }

    public void removeFileSpec(String fileSpec, int type) throws CoreException {
        ContentType target = this.getTarget();
        if (target != null) {
            target.removeFileSpec(fileSpec, type);
        }
    }

    public void setDefaultCharset(String userCharset) throws CoreException {
        ContentType target = this.getTarget();
        if (target != null) {
            target.setDefaultCharset(userCharset);
        }
    }

    public String toString() {
        return this.id;
    }

    private class DummyContentDescription
    implements IContentDescription {
        private DummyContentDescription() {
        }

        public String getCharset() {
            return null;
        }

        public IContentType getContentType() {
            return ContentTypeHandler.this;
        }

        public Object getProperty(QualifiedName key) {
            return null;
        }

        public boolean isRequested(QualifiedName key) {
            return false;
        }

        public void setProperty(QualifiedName key, Object value) {
        }
    }
}

