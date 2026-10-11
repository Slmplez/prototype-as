/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescriber
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.ITextContentDescriber
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescriber;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.ITextContentDescriber;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.URIConverter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ContentHandlerImpl
implements ContentHandler {
    public static Map<String, Object> createContentDescription(ContentHandler.Validity validity) {
        HashMap<String, Object> result = new HashMap<String, Object>();
        result.put("org.eclipse.emf.ecore:validity", (Object)validity);
        return result;
    }

    protected Set<String> getRequestedProperties(Map<?, ?> options) {
        return (Set)options.get("REQUESTED_PROPERTIES");
    }

    protected boolean isRequestedProperty(String property, Map<?, ?> options) {
        if ("org.eclipse.emf.ecore:validity".equals(property) || "org.eclipse.emf.ecore:contentType".equals(property)) {
            return true;
        }
        Set<String> requestedProperties = this.getRequestedProperties(options);
        if (requestedProperties == null) {
            return true;
        }
        return requestedProperties.contains(property);
    }

    @Override
    public boolean canHandle(URI uri) {
        return true;
    }

    public Map<String, Object> contentDescription(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        Map<String, Object> result = ContentHandlerImpl.createContentDescription(ContentHandler.Validity.INDETERMINATE);
        if (this.isRequestedProperty("org.eclipse.core.runtime:bom", options)) {
            result.put("org.eclipse.core.runtime:bom", (Object)this.getByteOrderMark(uri, inputStream, options, context));
        }
        return result;
    }

    protected ContentHandler.ByteOrderMark getByteOrderMark(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        ContentHandler.ByteOrderMark result = (ContentHandler.ByteOrderMark)((Object)context.get("org.eclipse.core.runtime:bom"));
        if (result == null) {
            result = ContentHandler.ByteOrderMark.read(inputStream);
            inputStream.reset();
            context.put("org.eclipse.core.runtime:bom", (Object)result);
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Describer
    implements IContentDescriber,
    ITextContentDescriber,
    IExecutableExtension {
        protected ContentHandler contentHandler;
        private static final QualifiedName[] SUPPORTED_OPTIONS = new QualifiedName[]{IContentDescription.CHARSET, IContentDescription.BYTE_ORDER_MARK};
        protected static final String CONTENT_TYPE_ID = "contentTypeID";
        protected static final String EXTENSIONS = "extensions";

        public QualifiedName[] getSupportedOptions() {
            return SUPPORTED_OPTIONS;
        }

        protected String getProperty(QualifiedName qualifiedName) {
            return qualifiedName.toString();
        }

        protected Object getDescriptionValue(QualifiedName qualifiedName, Object value) {
            if (value == null) {
                return null;
            }
            if (IContentDescription.BYTE_ORDER_MARK.equals((Object)qualifiedName)) {
                return ((ContentHandler.ByteOrderMark)((Object)value)).bytes();
            }
            return value;
        }

        public int describe(InputStream inputStream, IContentDescription description) throws IOException {
            Map<String, ?> result;
            HashMap<String, Set<Object>> options = new HashMap<String, Set<Object>>();
            if (description != null) {
                HashMap<String, QualifiedName> requestedPropertyToQualifiedNameMap = new HashMap<String, QualifiedName>();
                HashSet<String> requestedProperties = new HashSet<String>();
                QualifiedName[] qualifiedNameArray = this.getSupportedOptions();
                int n = qualifiedNameArray.length;
                int n2 = 0;
                while (n2 < n) {
                    String property;
                    QualifiedName qualifiedName = qualifiedNameArray[n2];
                    if (description.isRequested(qualifiedName) && (property = this.getProperty(qualifiedName)) != null) {
                        requestedPropertyToQualifiedNameMap.put(property, qualifiedName);
                        requestedProperties.add(property);
                    }
                    ++n2;
                }
                options.put("REQUESTED_PROPERTIES", requestedProperties);
                result = this.contentHandler.contentDescription(URI.createURI((String)"*"), inputStream, options, new HashMap<Object, Object>());
                for (Map.Entry<String, ?> property : result.entrySet()) {
                    QualifiedName qualifiedName = (QualifiedName)requestedPropertyToQualifiedNameMap.get(property.getKey());
                    if (qualifiedName == null) continue;
                    description.setProperty(qualifiedName, this.getDescriptionValue(qualifiedName, property.getValue()));
                }
            } else {
                options.put("REQUESTED_PROPERTIES", Collections.emptySet());
                result = this.contentHandler.contentDescription(URI.createURI((String)"*"), inputStream, options, new HashMap<Object, Object>());
            }
            return ((ContentHandler.Validity)((Object)result.get("org.eclipse.emf.ecore:validity"))).ordinal();
        }

        public int describe(Reader reader, IContentDescription description) throws IOException {
            return this.describe(new URIConverter.ReadableInputStream(reader), description);
        }

        public void setInitializationData(IConfigurationElement configurationElement, String propertyName, Object data) throws CoreException {
            Map<String, String> parameters = this.getParameters(configurationElement, propertyName, data);
            this.contentHandler = this.createContentHandler(parameters);
        }

        protected ContentHandler createContentHandler(Map<String, String> parameters) {
            return null;
        }

        protected Map<String, String> getParameters(IConfigurationElement configurationElement, String propertyName, Object data) {
            HashMap<String, String> parameters = new HashMap<String, String>();
            if (data != null) {
                Map dataMap = (Map)data;
                parameters.putAll(dataMap);
                parameters.put(CONTENT_TYPE_ID, configurationElement.getAttribute("id"));
                String fileExtensions = configurationElement.getAttribute("file-extensions");
                if (fileExtensions != null) {
                    parameters.put(EXTENSIONS, fileExtensions.replace(',', ' '));
                }
            }
            return parameters;
        }
    }
}

