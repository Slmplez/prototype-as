/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.resource.ContentHandler$Validity
 *  org.eclipse.emf.ecore.resource.impl.PlatformContentHandlerImpl
 *  org.eclipse.emf.ecore.resource.impl.PlatformResourceURIHandlerImpl$WorkbenchHelper
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 */
package org.eclipse.sphinx.emf.resource;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.impl.PlatformContentHandlerImpl;
import org.eclipse.emf.ecore.resource.impl.PlatformResourceURIHandlerImpl;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedPlatformContentHandlerImpl
extends PlatformContentHandlerImpl {
    public Map<String, Object> contentDescription(URI uri, InputStream inputStream, Map<?, ?> options, Map<Object, Object> context) throws IOException {
        IContentType contentType;
        IContentDescription contentDescription = null;
        String contentTypeId = null;
        if (uri.isPlatformResource()) {
            try {
                IFile file = EcorePlatformUtil.getFile(uri);
                contentTypeId = ExtendedPlatform.getContentTypeId((IFile)file);
            }
            catch (CoreException ex) {
                throw new IOException(ex.getMessage());
            }
        } else if (inputStream.available() > 0 && (contentDescription = Platform.getContentTypeManager().getDescriptionFor(inputStream, uri.lastSegment(), IContentDescription.ALL)) != null && (contentType = contentDescription.getContentType()) != null) {
            contentTypeId = contentType.getId();
        }
        Map result = ExtendedPlatformContentHandlerImpl.createContentDescription((ContentHandler.Validity)ContentHandler.Validity.VALID);
        result.put("org.eclipse.emf.ecore:contentType", contentTypeId);
        Set requestedProperties = this.getRequestedProperties(options);
        if (requestedProperties != null) {
            if (contentDescription == null) {
                contentDescription = uri.isPlatformResource() && EcorePlugin.getWorkspaceRoot() != null ? PlatformResourceURIHandlerImpl.WorkbenchHelper.getContentDescription((String)uri.toPlatformString(true), options) : Platform.getContentTypeManager().getDescriptionFor(inputStream, uri.lastSegment(), IContentDescription.ALL);
            }
            if (contentDescription != null) {
                for (String property : requestedProperties) {
                    Object value;
                    QualifiedName qualifiedName = this.getQualifiedName(property);
                    if (qualifiedName == null || (value = this.getDescriptionValue(qualifiedName, contentDescription.getProperty(qualifiedName))) == null) continue;
                    result.put(property, value);
                }
            }
        }
        return result;
    }
}

