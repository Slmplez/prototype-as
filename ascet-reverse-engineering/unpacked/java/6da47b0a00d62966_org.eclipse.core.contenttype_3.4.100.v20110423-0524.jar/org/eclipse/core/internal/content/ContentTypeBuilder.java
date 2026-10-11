/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.content;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeCatalog;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.internal.content.Util;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferenceNodeVisitor;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public class ContentTypeBuilder {
    public static final String PT_CONTENTTYPES = "contentTypes";
    private ContentTypeCatalog catalog;
    private static final IConfigurationElement[] emptyConfArray = new IConfigurationElement[0];

    private static String getUniqueId(String namespace, String baseTypeId) {
        if (baseTypeId == null) {
            return null;
        }
        int separatorPosition = baseTypeId.lastIndexOf(46);
        if (separatorPosition == -1) {
            baseTypeId = String.valueOf(namespace) + '.' + baseTypeId;
        }
        return baseTypeId;
    }

    private static QualifiedName parseQualifiedName(String namespace, String value) {
        if (value == null) {
            return null;
        }
        int separatorPosition = value.lastIndexOf(46);
        if (separatorPosition == -1) {
            return new QualifiedName(namespace, value);
        }
        if (separatorPosition == 0 || separatorPosition == value.length() - 1) {
            return null;
        }
        namespace = value.substring(0, separatorPosition);
        String simpleValue = value.substring(separatorPosition + 1);
        return new QualifiedName(namespace, simpleValue);
    }

    private static byte parsePriority(String priority) {
        if (priority == null) {
            return 0;
        }
        if (priority.equals("high")) {
            return 1;
        }
        if (priority.equals("low")) {
            return -1;
        }
        if (!priority.equals("normal")) {
            return 0;
        }
        return 0;
    }

    protected ContentTypeBuilder(ContentTypeCatalog catalog) {
        this.catalog = catalog;
    }

    private void addFileAssociation(IConfigurationElement fileAssociationElement, ContentType target) {
        String[] fileNames = Util.parseItems(fileAssociationElement.getAttributeAsIs("file-names"));
        int i = 0;
        while (i < fileNames.length) {
            target.internalAddFileSpec(fileNames[i], 5);
            ++i;
        }
        String[] fileExtensions = Util.parseItems(fileAssociationElement.getAttributeAsIs("file-extensions"));
        int i2 = 0;
        while (i2 < fileExtensions.length) {
            target.internalAddFileSpec(fileExtensions[i2], 9);
            ++i2;
        }
    }

    public void buildCatalog() {
        IConfigurationElement[] allContentTypeCEs = this.getConfigurationElements();
        int i = 0;
        while (i < allContentTypeCEs.length) {
            if (allContentTypeCEs[i].getName().equals("content-type")) {
                this.registerContentType(allContentTypeCEs[i]);
            }
            ++i;
        }
        i = 0;
        while (i < allContentTypeCEs.length) {
            if (allContentTypeCEs[i].getName().equals("file-association")) {
                this.registerFileAssociation(allContentTypeCEs[i]);
            }
            ++i;
        }
        this.applyPreferences();
    }

    private void applyPreferences() {
        try {
            final ContentTypeCatalog localCatalog = this.catalog;
            final IEclipsePreferences root = localCatalog.getManager().getPreferences();
            root.accept(new IPreferenceNodeVisitor(){

                public boolean visit(IEclipsePreferences node) {
                    if (node == root) {
                        return true;
                    }
                    ContentType contentType = localCatalog.internalGetContentType(node.name());
                    if (contentType != null) {
                        contentType.processPreferences((Preferences)node);
                    }
                    return false;
                }
            });
        }
        catch (BackingStoreException bse) {
            ContentType.log(ContentMessages.content_errorLoadingSettings, bse);
        }
    }

    private ContentType createContentType(IConfigurationElement contentTypeCE) throws CoreException {
        String defaultCharset;
        String namespace = contentTypeCE.getContributor().getName();
        String simpleId = contentTypeCE.getAttributeAsIs("id");
        String name = contentTypeCE.getAttribute("name");
        if (simpleId == null) {
            this.missingMandatoryAttribute(ContentMessages.content_missingIdentifier, namespace);
        }
        String uniqueId = simpleId.lastIndexOf(46) == -1 ? String.valueOf(namespace) + '.' + simpleId : simpleId;
        if (name == null) {
            this.missingMandatoryAttribute(ContentMessages.content_missingName, uniqueId);
        }
        byte priority = ContentTypeBuilder.parsePriority(contentTypeCE.getAttributeAsIs("priority"));
        String[] fileNames = Util.parseItems(contentTypeCE.getAttributeAsIs("file-names"));
        String[] fileExtensions = Util.parseItems(contentTypeCE.getAttributeAsIs("file-extensions"));
        String baseTypeId = ContentTypeBuilder.getUniqueId(namespace, contentTypeCE.getAttributeAsIs("base-type"));
        String aliasTargetTypeId = ContentTypeBuilder.getUniqueId(namespace, contentTypeCE.getAttributeAsIs("alias-for"));
        IConfigurationElement[] propertyCEs = null;
        Map<Object, Object> defaultProperties = null;
        propertyCEs = contentTypeCE.getChildren("property");
        if (propertyCEs.length > 0) {
            defaultProperties = new HashMap();
            int i = 0;
            while (i < propertyCEs.length) {
                String propertyKey;
                QualifiedName qualifiedKey;
                String defaultValue = propertyCEs[i].getAttributeAsIs("default");
                if (defaultValue == null) {
                    defaultValue = "";
                }
                if ((qualifiedKey = ContentTypeBuilder.parseQualifiedName(namespace, propertyKey = propertyCEs[i].getAttributeAsIs("name"))) == null) {
                    if (ContentTypeManager.DEBUGGING) {
                        String message = NLS.bind((String)ContentMessages.content_invalidProperty, (Object)propertyKey, (Object)ContentTypeBuilder.getUniqueId(namespace, simpleId));
                        ContentType.log(message, null);
                    }
                } else {
                    defaultProperties.put(qualifiedKey, defaultValue);
                }
                ++i;
            }
        }
        if ((defaultCharset = contentTypeCE.getAttributeAsIs("default-charset")) != null) {
            if (defaultProperties == null) {
                defaultProperties = Collections.singletonMap(IContentDescription.CHARSET, defaultCharset);
            } else if (!defaultProperties.containsKey(IContentDescription.CHARSET)) {
                defaultProperties.put(IContentDescription.CHARSET, defaultCharset);
            }
        }
        return ContentType.createContentType(this.catalog, uniqueId, name, priority, fileExtensions, fileNames, baseTypeId, aliasTargetTypeId, defaultProperties, contentTypeCE);
    }

    protected IConfigurationElement[] getConfigurationElements() {
        IExtensionPoint newPoint;
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        if (registry == null) {
            return emptyConfArray;
        }
        IConfigurationElement[] oldConfigElements = emptyConfArray;
        IConfigurationElement[] newConfigElements = emptyConfArray;
        IExtensionPoint oldPoint = registry.getExtensionPoint("org.eclipse.core.runtime", PT_CONTENTTYPES);
        if (oldPoint != null) {
            oldConfigElements = oldPoint.getConfigurationElements();
        }
        if ((newPoint = registry.getExtensionPoint("org.eclipse.core.contenttype", PT_CONTENTTYPES)) != null) {
            newConfigElements = newPoint.getConfigurationElements();
        }
        IConfigurationElement[] allContentTypeCEs = new IConfigurationElement[oldConfigElements.length + newConfigElements.length];
        System.arraycopy(oldConfigElements, 0, allContentTypeCEs, 0, oldConfigElements.length);
        System.arraycopy(newConfigElements, 0, allContentTypeCEs, oldConfigElements.length, newConfigElements.length);
        return allContentTypeCEs;
    }

    private void missingMandatoryAttribute(String messageKey, String argument) throws CoreException {
        String message = NLS.bind((String)messageKey, (Object)argument);
        throw new CoreException((IStatus)new Status(4, "org.eclipse.core.contenttype", 0, message, null));
    }

    private void registerContentType(IConfigurationElement contentTypeCE) {
        try {
            ContentType contentType = this.createContentType(contentTypeCE);
            this.catalog.addContentType(contentType);
        }
        catch (CoreException e) {
            RuntimeLog.log((IStatus)e.getStatus());
        }
    }

    private void registerFileAssociation(IConfigurationElement fileAssociationElement) {
        String contentTypeId = ContentTypeBuilder.getUniqueId(fileAssociationElement.getContributor().getName(), fileAssociationElement.getAttribute("content-type"));
        ContentType target = this.catalog.internalGetContentType(contentTypeId);
        if (target == null) {
            return;
        }
        this.addFileAssociation(fileAssociationElement, target);
    }
}

