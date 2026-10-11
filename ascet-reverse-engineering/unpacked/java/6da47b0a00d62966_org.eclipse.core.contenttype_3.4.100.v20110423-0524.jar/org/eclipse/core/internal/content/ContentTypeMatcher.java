/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import org.eclipse.core.internal.content.BasicDescription;
import org.eclipse.core.internal.content.ContentDescription;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeCatalog;
import org.eclipse.core.internal.content.ContentTypeHandler;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.internal.content.ContentTypeSettings;
import org.eclipse.core.internal.content.DefaultDescription;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.content.IContentTypeMatcher;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class ContentTypeMatcher
implements IContentTypeMatcher {
    private IScopeContext context;
    private IContentTypeManager.ISelectionPolicy policy;

    public ContentTypeMatcher(IContentTypeManager.ISelectionPolicy policy, IScopeContext context) {
        this.policy = policy;
        this.context = context;
    }

    public IContentType findContentTypeFor(InputStream contents, String fileName) throws IOException {
        ContentTypeCatalog currentCatalog = this.getCatalog();
        IContentType[] all = currentCatalog.findContentTypesFor(this, contents, fileName);
        return all.length > 0 ? new ContentTypeHandler((ContentType)all[0], currentCatalog.getGeneration()) : null;
    }

    public IContentType findContentTypeFor(String fileName) {
        ContentTypeCatalog currentCatalog = this.getCatalog();
        IContentType[] associated = currentCatalog.findContentTypesFor(this, fileName);
        return associated.length == 0 ? null : new ContentTypeHandler((ContentType)associated[0], currentCatalog.getGeneration());
    }

    public IContentType[] findContentTypesFor(InputStream contents, String fileName) throws IOException {
        ContentTypeCatalog currentCatalog = this.getCatalog();
        IContentType[] types = currentCatalog.findContentTypesFor(this, contents, fileName);
        IContentType[] result = new IContentType[types.length];
        int generation = currentCatalog.getGeneration();
        int i = 0;
        while (i < result.length) {
            result[i] = new ContentTypeHandler((ContentType)types[i], generation);
            ++i;
        }
        return result;
    }

    public IContentType[] findContentTypesFor(String fileName) {
        ContentTypeCatalog currentCatalog = this.getCatalog();
        IContentType[] types = currentCatalog.findContentTypesFor(this, fileName);
        IContentType[] result = new IContentType[types.length];
        int generation = currentCatalog.getGeneration();
        int i = 0;
        while (i < result.length) {
            result[i] = new ContentTypeHandler((ContentType)types[i], generation);
            ++i;
        }
        return result;
    }

    private ContentTypeCatalog getCatalog() {
        return ContentTypeManager.getInstance().getCatalog();
    }

    public IContentDescription getDescriptionFor(InputStream contents, String fileName, QualifiedName[] options) throws IOException {
        return this.getCatalog().getDescriptionFor(this, contents, fileName, options);
    }

    public IContentDescription getDescriptionFor(Reader contents, String fileName, QualifiedName[] options) throws IOException {
        return this.getCatalog().getDescriptionFor(this, contents, fileName, options);
    }

    public IScopeContext getContext() {
        return this.context;
    }

    public IContentTypeManager.ISelectionPolicy getPolicy() {
        return this.policy;
    }

    public Collection getDirectlyAssociated(final ContentTypeCatalog catalog, final String fileSpec, final int typeMask) {
        final IEclipsePreferences root = this.context.getNode("org.eclipse.core.runtime/content-types");
        final HashSet result = new HashSet(3);
        try {
            root.accept(new IPreferenceNodeVisitor(){

                public boolean visit(IEclipsePreferences node) {
                    if (node == root) {
                        return true;
                    }
                    String[] fileSpecs = ContentTypeSettings.getFileSpecs((Preferences)node, typeMask);
                    int i = 0;
                    while (i < fileSpecs.length) {
                        if (fileSpecs[i].equalsIgnoreCase(fileSpec)) {
                            ContentType associated = catalog.getContentType(node.name());
                            if (associated == null) break;
                            result.add(associated);
                            break;
                        }
                        ++i;
                    }
                    return false;
                }
            });
        }
        catch (BackingStoreException bse) {
            ContentType.log(ContentMessages.content_errorLoadingSettings, bse);
        }
        return result == null ? Collections.EMPTY_SET : result;
    }

    public IContentDescription getSpecificDescription(BasicDescription description) {
        if (description == null || ContentTypeManager.getInstance().getContext().equals(this.getContext())) {
            return description;
        }
        if (description instanceof DefaultDescription) {
            return new DefaultDescription(new ContentTypeSettings((ContentType)description.getContentTypeInfo(), this.context));
        }
        ((ContentDescription)description).setContentTypeInfo(new ContentTypeSettings((ContentType)description.getContentTypeInfo(), this.context));
        return description;
    }
}

