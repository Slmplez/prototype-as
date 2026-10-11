/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceFactoryRegistryImpl
implements Resource.Factory.Registry {
    protected Map<String, Object> protocolToFactoryMap = new HashMap<String, Object>();
    protected Map<String, Object> extensionToFactoryMap = new HashMap<String, Object>();
    protected Map<String, Object> contentTypeIdentifierToFactoryMap = new HashMap<String, Object>();
    protected static final Map<?, ?> CONTENT_DESCRIPTION_OPTIONS;

    static {
        HashMap contentDescriptionOptions = new HashMap();
        HashSet<String> requestedProperties = new HashSet<String>();
        requestedProperties.add("org.eclipse.emf.ecore:contentType");
        contentDescriptionOptions.put("REQUESTED_PROPERTIES", requestedProperties);
        CONTENT_DESCRIPTION_OPTIONS = Collections.unmodifiableMap(contentDescriptionOptions);
    }

    @Override
    public Resource.Factory getFactory(URI uri) {
        return ResourceFactoryRegistryImpl.convert(this.getFactory(uri, this.protocolToFactoryMap, this.extensionToFactoryMap, this.contentTypeIdentifierToFactoryMap, "", true));
    }

    @Override
    public Resource.Factory getFactory(URI uri, String contentType) {
        return ResourceFactoryRegistryImpl.convert(this.getFactory(uri, this.protocolToFactoryMap, this.extensionToFactoryMap, this.contentTypeIdentifierToFactoryMap, contentType, true));
    }

    public static Resource.Factory convert(Object resourceFactory) {
        return resourceFactory instanceof Resource.Factory.Descriptor ? ((Resource.Factory.Descriptor)resourceFactory).createFactory() : (Resource.Factory)resourceFactory;
    }

    protected Object getFactory(URI uri, Map<String, Object> protocolToFactoryMap, Map<String, Object> extensionToFactoryMap, Map<String, Object> contentTypeIdentifierToFactoryMap, String contentTypeIdentifier, boolean delegate) {
        Object resourceFactory = null;
        if (!protocolToFactoryMap.isEmpty()) {
            resourceFactory = protocolToFactoryMap.get(uri.scheme());
        }
        if (resourceFactory == null) {
            boolean extensionToFactoryMapIsEmpty = extensionToFactoryMap.isEmpty();
            if (!extensionToFactoryMapIsEmpty) {
                resourceFactory = extensionToFactoryMap.get(uri.fileExtension());
            }
            if (resourceFactory == null) {
                boolean contentTypeIdentifierToFactoryMapIsEmpty = contentTypeIdentifierToFactoryMap.isEmpty();
                if (!contentTypeIdentifierToFactoryMapIsEmpty) {
                    if ("".equals(contentTypeIdentifier)) {
                        contentTypeIdentifier = this.getContentTypeIdentifier(uri);
                    }
                    if (contentTypeIdentifier != null) {
                        resourceFactory = contentTypeIdentifierToFactoryMap.get(contentTypeIdentifier);
                    }
                }
                if (resourceFactory == null) {
                    if (!extensionToFactoryMapIsEmpty) {
                        resourceFactory = extensionToFactoryMap.get("*");
                    }
                    if (resourceFactory == null) {
                        if (!contentTypeIdentifierToFactoryMapIsEmpty) {
                            resourceFactory = contentTypeIdentifierToFactoryMap.get("*");
                        }
                        if (resourceFactory == null && delegate) {
                            resourceFactory = this.delegatedGetFactory(uri, contentTypeIdentifier);
                        }
                    }
                }
            }
        }
        return resourceFactory;
    }

    protected String getContentTypeIdentifier(URI uri) {
        try {
            Map<String, ?> contentDescription = this.getURIConverter().contentDescription(uri, this.getContentDescriptionOptions());
            return (String)contentDescription.get("org.eclipse.emf.ecore:contentType");
        }
        catch (IOException e) {
            return null;
        }
    }

    protected URIConverter getURIConverter() {
        return URIConverter.INSTANCE;
    }

    protected Map<?, ?> getContentDescriptionOptions() {
        return CONTENT_DESCRIPTION_OPTIONS;
    }

    protected Resource.Factory delegatedGetFactory(URI uri, String contentTypeIdentifier) {
        return this.delegatedGetFactory(uri);
    }

    @Deprecated
    protected Resource.Factory delegatedGetFactory(URI uri) {
        return null;
    }

    @Override
    public Map<String, Object> getExtensionToFactoryMap() {
        return this.extensionToFactoryMap;
    }

    @Override
    public Map<String, Object> getProtocolToFactoryMap() {
        return this.protocolToFactoryMap;
    }

    @Override
    public Map<String, Object> getContentTypeToFactoryMap() {
        return this.contentTypeIdentifierToFactoryMap;
    }
}

