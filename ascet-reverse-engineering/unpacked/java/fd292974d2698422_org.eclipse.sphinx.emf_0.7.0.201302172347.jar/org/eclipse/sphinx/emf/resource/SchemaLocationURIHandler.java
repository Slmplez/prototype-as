/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.xmi.impl.URIHandlerImpl$PlatformSchemeAware
 */
package org.eclipse.sphinx.emf.resource;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.impl.URIHandlerImpl;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SchemaLocationURIHandler
extends URIHandlerImpl.PlatformSchemeAware {
    protected static final String SCHEMA_FILE_EXTENSION = "xsd";
    protected Set<URI> schemaLocationBaseURIs = new HashSet<URI>(1);
    protected Map<String, String> schemaLocationCatalog;

    public SchemaLocationURIHandler(Map<String, String> schemaLocationCatalog) {
        this.schemaLocationCatalog = schemaLocationCatalog;
    }

    public void addSchemaLocationBaseURI(Plugin plugin, String path) {
        if (plugin != null) {
            URI uri = URI.createPlatformPluginURI((String)(String.valueOf(plugin.getBundle().getSymbolicName()) + "/" + path), (boolean)true);
            this.addSchemaLocationBaseURI(uri);
        }
    }

    public void addSchemaLocationBaseURI(URI uri) {
        if (uri != null) {
            this.schemaLocationBaseURIs.add(uri);
        }
    }

    public URI resolve(URI uri) {
        String systemId;
        if (this.schemaLocationCatalog != null && (systemId = this.schemaLocationCatalog.get(uri.toString())) != null) {
            uri = URI.createURI((String)systemId);
        }
        if (uri.isRelative() && uri.hasRelativePath() && SCHEMA_FILE_EXTENSION.equals(this.getFileExtension(uri))) {
            Iterator<URI> iter = this.schemaLocationBaseURIs.iterator();
            while (iter.hasNext()) {
                URI schemaLocationBaseURI = iter.next();
                URI resolvedURI = schemaLocationBaseURI.appendSegments(uri.segments());
                if (resolvedURI.isRelative() || iter.hasNext() && !EcoreResourceUtil.exists(resolvedURI)) continue;
                return resolvedURI;
            }
        }
        return super.resolve(uri);
    }

    public URI deresolve(URI uri) {
        if (!uri.isRelative() && SCHEMA_FILE_EXTENSION.equals(this.getFileExtension(uri))) {
            return URI.createURI((String)uri.lastSegment());
        }
        return super.deresolve(uri);
    }

    protected String getFileExtension(URI uri) {
        return EcorePlatformUtil.createPath(uri).getFileExtension();
    }
}

