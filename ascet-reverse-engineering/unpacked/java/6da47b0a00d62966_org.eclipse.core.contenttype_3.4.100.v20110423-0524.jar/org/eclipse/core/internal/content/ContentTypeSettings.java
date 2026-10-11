/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.content;

import java.util.List;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.internal.content.IContentTypeInfo;
import org.eclipse.core.internal.content.Util;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentTypeSettings;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class ContentTypeSettings
implements IContentTypeSettings,
IContentTypeInfo {
    private ContentType contentType;
    private IScopeContext context;

    static void addFileSpec(IScopeContext context, String contentTypeId, String fileSpec, int type) throws CoreException {
        Preferences contentTypeNode = ContentTypeManager.getInstance().getPreferences(context).node(contentTypeId);
        String key = ContentType.getPreferenceKey(type);
        List existingValues = Util.parseItemsIntoList(contentTypeNode.get(key, null));
        int i = 0;
        while (i < existingValues.size()) {
            if (((String)existingValues.get(i)).equalsIgnoreCase(fileSpec)) {
                return;
            }
            ++i;
        }
        existingValues.add(fileSpec);
        String newValue = Util.toListString(existingValues.toArray());
        ContentType.setPreference(contentTypeNode, key, newValue);
        try {
            contentTypeNode.flush();
        }
        catch (BackingStoreException bse) {
            String message = NLS.bind((String)ContentMessages.content_errorSavingSettings, (Object)contentTypeId);
            Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)bse);
            throw new CoreException((IStatus)status);
        }
    }

    static String[] getFileSpecs(IScopeContext context, String contentTypeId, int type) {
        Preferences contentTypeNode = ContentTypeManager.getInstance().getPreferences(context).node(contentTypeId);
        return ContentTypeSettings.getFileSpecs(contentTypeNode, type);
    }

    static String[] getFileSpecs(Preferences contentTypeNode, int type) {
        String key = ContentType.getPreferenceKey(type);
        String existing = contentTypeNode.get(key, null);
        return Util.parseItems(existing);
    }

    public static String internalGetDefaultProperty(ContentType current, Preferences contentTypePrefs, QualifiedName key) throws BackingStoreException {
        Preferences contentTypeNode;
        String propertyValue;
        String id = current.getId();
        if (contentTypePrefs.nodeExists(id) && (propertyValue = (contentTypeNode = contentTypePrefs.node(id)).get(key.getLocalName(), null)) != null) {
            return propertyValue;
        }
        String propertyValue2 = current.basicGetDefaultProperty(key);
        if (propertyValue2 != null) {
            return propertyValue2;
        }
        ContentType baseType = (ContentType)current.getBaseType();
        return baseType == null ? null : ContentTypeSettings.internalGetDefaultProperty(baseType, contentTypePrefs, key);
    }

    static void removeFileSpec(IScopeContext context, String contentTypeId, String fileSpec, int type) throws CoreException {
        String key;
        Preferences contentTypeNode = ContentTypeManager.getInstance().getPreferences(context).node(contentTypeId);
        String existing = contentTypeNode.get(key = ContentType.getPreferenceKey(type), null);
        if (existing == null) {
            return;
        }
        List existingValues = Util.parseItemsIntoList(contentTypeNode.get(key, null));
        int index = -1;
        int existingCount = existingValues.size();
        int i = 0;
        while (index == -1 && i < existingCount) {
            if (((String)existingValues.get(i)).equalsIgnoreCase(fileSpec)) {
                index = i;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        existingValues.remove(index);
        String newValue = Util.toListString(existingValues.toArray());
        ContentType.setPreference(contentTypeNode, key, newValue);
        try {
            contentTypeNode.flush();
        }
        catch (BackingStoreException bse) {
            String message = NLS.bind((String)ContentMessages.content_errorSavingSettings, (Object)contentTypeId);
            Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)bse);
            throw new CoreException((IStatus)status);
        }
    }

    public ContentTypeSettings(ContentType contentType, IScopeContext context) {
        this.context = context;
        this.contentType = contentType;
    }

    public void addFileSpec(String fileSpec, int type) throws CoreException {
        ContentTypeSettings.addFileSpec(this.context, this.contentType.getId(), fileSpec, type);
    }

    public ContentType getContentType() {
        return this.contentType;
    }

    public String getDefaultCharset() {
        return this.getDefaultProperty(IContentDescription.CHARSET);
    }

    public String getDefaultProperty(QualifiedName key) {
        IEclipsePreferences contentTypePrefs = ContentTypeManager.getInstance().getPreferences(this.context);
        try {
            String propertyValue = ContentTypeSettings.internalGetDefaultProperty(this.contentType, (Preferences)contentTypePrefs, key);
            return "".equals(propertyValue) ? null : propertyValue;
        }
        catch (BackingStoreException backingStoreException) {
            return null;
        }
    }

    public String[] getFileSpecs(int type) {
        return ContentTypeSettings.getFileSpecs(this.context, this.contentType.getId(), type);
    }

    public String getId() {
        return this.contentType.getId();
    }

    public void removeFileSpec(String fileSpec, int type) throws CoreException {
        ContentTypeSettings.removeFileSpec(this.context, this.contentType.getId(), fileSpec, type);
    }

    public void setDefaultCharset(String userCharset) throws CoreException {
        Preferences contentTypeNode = ContentTypeManager.getInstance().getPreferences(this.context).node(this.contentType.getId());
        ContentType.setPreference(contentTypeNode, "charset", userCharset);
        try {
            contentTypeNode.flush();
        }
        catch (BackingStoreException bse) {
            String message = NLS.bind((String)ContentMessages.content_errorSavingSettings, (Object)this.contentType.getId());
            Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)bse);
            throw new CoreException((IStatus)status);
        }
    }
}

