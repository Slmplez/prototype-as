/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core;

import java.util.HashMap;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.mapping.IStorageMerger;
import org.eclipse.team.internal.core.StorageMergerDescriptor;
import org.eclipse.team.internal.core.TeamPlugin;

public class StorageMergerRegistry {
    private static final String ID_ATTRIBUTE = "id";
    private static final String EXTENSIONS_ATTRIBUTE = "extensions";
    private static final String CONTENT_TYPE_ID_ATTRIBUTE = "contentTypeId";
    private static final String STORAGE_MERGER_EXTENSION_POINT = "storageMergers";
    private static final Object STORAGE_MERGER = "storageMerger";
    private static final String CONTENT_TYPE_BINDING = "contentTypeBinding";
    private static final String STORAGE_MERGER_ID_ATTRIBUTE = "storageMergerId";
    private static boolean NORMALIZE_CASE = true;
    private static StorageMergerRegistry instance;
    private HashMap fIdMap;
    private HashMap fExtensionMap;
    private HashMap fContentTypeBindings;
    private boolean fRegistriesInitialized;

    public static StorageMergerRegistry getInstance() {
        if (instance == null) {
            instance = new StorageMergerRegistry();
        }
        return instance;
    }

    public IStorageMerger createStreamMerger(String type) {
        this.initializeRegistry();
        StorageMergerDescriptor descriptor = (StorageMergerDescriptor)this.search(type);
        if (descriptor != null) {
            return descriptor.createStreamMerger();
        }
        return null;
    }

    public IStorageMerger createStreamMerger(IContentType type) {
        this.initializeRegistry();
        StorageMergerDescriptor descriptor = (StorageMergerDescriptor)this.search(type);
        if (descriptor != null) {
            return descriptor.createStreamMerger();
        }
        return null;
    }

    private void initializeRegistry() {
        if (!this.fRegistriesInitialized) {
            this.registerExtensions();
            this.fRegistriesInitialized = true;
        }
    }

    private void registerExtensions() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor("org.eclipse.team.core", STORAGE_MERGER_EXTENSION_POINT);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (STORAGE_MERGER.equals(element.getName())) {
                this.register(element, new StorageMergerDescriptor(element));
            } else if (CONTENT_TYPE_BINDING.equals(element.getName())) {
                this.createBinding(element, STORAGE_MERGER_ID_ATTRIBUTE);
            }
            ++i;
        }
    }

    private static String normalizeCase(String s) {
        if (NORMALIZE_CASE && s != null) {
            return s.toUpperCase();
        }
        return s;
    }

    void register(IConfigurationElement element, Object data) {
        String types;
        String id = element.getAttribute(ID_ATTRIBUTE);
        if (id != null) {
            if (this.fIdMap == null) {
                this.fIdMap = new HashMap();
            }
            this.fIdMap.put(id, data);
        }
        if ((types = element.getAttribute(EXTENSIONS_ATTRIBUTE)) != null) {
            if (this.fExtensionMap == null) {
                this.fExtensionMap = new HashMap();
            }
            StringTokenizer tokenizer = new StringTokenizer(types, ",");
            while (tokenizer.hasMoreElements()) {
                String extension = tokenizer.nextToken().trim();
                this.fExtensionMap.put(StorageMergerRegistry.normalizeCase(extension), data);
            }
        }
    }

    void createBinding(IConfigurationElement element, String idAttributeName) {
        String type = element.getAttribute(CONTENT_TYPE_ID_ATTRIBUTE);
        String id = element.getAttribute(idAttributeName);
        if (id == null) {
            this.logErrorMessage(NLS.bind((String)"Target attribute id '{0}' missing", (Object)idAttributeName));
        }
        if (type != null && id != null && this.fIdMap != null) {
            Object o = this.fIdMap.get(id);
            if (o != null) {
                IContentType ct = Platform.getContentTypeManager().getContentType(type);
                if (ct != null) {
                    if (this.fContentTypeBindings == null) {
                        this.fContentTypeBindings = new HashMap();
                    }
                    this.fContentTypeBindings.put(ct, o);
                } else {
                    this.logErrorMessage(NLS.bind((String)"Content type id '{0}' not found", (Object)type));
                }
            } else {
                this.logErrorMessage(NLS.bind((String)"Target '{0}' not found", (Object)id));
            }
        }
    }

    private void logErrorMessage(String string) {
        TeamPlugin.log(4, string, null);
    }

    Object search(IContentType type) {
        if (this.fContentTypeBindings != null) {
            while (type != null) {
                Object data = this.fContentTypeBindings.get(type);
                if (data != null) {
                    return data;
                }
                type = type.getBaseType();
            }
        }
        return null;
    }

    Object search(String extension) {
        if (this.fExtensionMap != null) {
            return this.fExtensionMap.get(StorageMergerRegistry.normalizeCase(extension));
        }
        return null;
    }
}

