/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.impl.ContentHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.PlatformResourceURIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PlatformContentHandlerImpl
extends ContentHandlerImpl {
    protected QualifiedName getQualifiedName(String property) {
        int index = property.lastIndexOf(":");
        if (index == -1) {
            return new QualifiedName(null, property);
        }
        return new QualifiedName(property.substring(0, index), property.substring(index + 1));
    }

    protected Object getDescriptionValue(QualifiedName qualifiedName, Object value) {
        if (value == null) {
            return null;
        }
        if (IContentDescription.BYTE_ORDER_MARK.equals((Object)qualifiedName)) {
            ContentHandler.ByteOrderMark[] byteOrderMarkArray = ContentHandler.ByteOrderMark.values();
            int n = byteOrderMarkArray.length;
            int n2 = 0;
            while (n2 < n) {
                ContentHandler.ByteOrderMark byteOrderMarker = byteOrderMarkArray[n2];
                if (value == byteOrderMarker.bytes()) {
                    return byteOrderMarker;
                }
                ++n2;
            }
            return null;
        }
        return value;
    }

    @Override
    public Map<String, Object> contentDescription(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        IContentDescription contentDescription = uri.isPlatformResource() && PlatformResourceURIHandlerImpl.workspaceRoot != null ? PlatformResourceURIHandlerImpl.WorkbenchHelper.getContentDescription(uri.toPlatformString(true), options) : Platform.getContentTypeManager().getDescriptionFor(inputStream, uri.lastSegment(), IContentDescription.ALL);
        if (contentDescription == null) {
            return INVALID_CONTENT_DESCRIPTION;
        }
        Map<String, Object> result = PlatformContentHandlerImpl.createContentDescription(ContentHandler.Validity.VALID);
        result.put("org.eclipse.emf.ecore:contentType", contentDescription.getContentType().getId());
        Set<String> requestedProperties = this.getRequestedProperties(options);
        if (requestedProperties != null) {
            for (String property : requestedProperties) {
                Object value;
                QualifiedName qualifiedName = this.getQualifiedName(property);
                if (qualifiedName == null || (value = this.getDescriptionValue(qualifiedName, contentDescription.getProperty(qualifiedName))) == null) continue;
                result.put(property, value);
            }
        }
        return result;
    }
}

