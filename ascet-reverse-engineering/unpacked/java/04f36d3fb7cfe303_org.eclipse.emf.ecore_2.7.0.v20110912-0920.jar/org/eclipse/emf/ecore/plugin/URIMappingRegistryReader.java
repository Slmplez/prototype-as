/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.plugin;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.ecore.resource.URIConverter;

class URIMappingRegistryReader
extends RegistryReader {
    static final String TAG_MAPPING = "mapping";
    static final String ATT_SOURCE = "source";
    static final String ATT_TARGET = "target";
    protected Map<URI, IConfigurationElement> map = new HashMap<URI, IConfigurationElement>();

    public URIMappingRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "uri_mapping");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_MAPPING)) {
            String sourceURIValue = element.getAttribute(ATT_SOURCE);
            if (sourceURIValue == null) {
                this.logMissingAttribute(element, ATT_SOURCE);
            } else {
                String targetURIValue = element.getAttribute(ATT_TARGET);
                if (targetURIValue == null) {
                    this.logMissingAttribute(element, ATT_TARGET);
                } else {
                    if (add) {
                        URI sourceURI = URI.createURI((String)sourceURIValue);
                        URI targetURI = URI.createURI((String)targetURIValue);
                        if (targetURI.isRelative() && targetURI.hasRelativePath()) {
                            targetURI = targetURI.resolve(URI.createURI((String)Platform.getBundle((String)element.getDeclaringExtension().getContributor().getName()).getEntry("/").toString()));
                        }
                        URIConverter.URI_MAP.put(sourceURI, targetURI);
                        IConfigurationElement previous = this.map.put(sourceURI, element);
                        if (previous != null) {
                            EcorePlugin.INSTANCE.log("Both '" + previous.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a URI mapping for '" + sourceURI + "'");
                        }
                        return true;
                    }
                    URI sourceURI = URI.createURI((String)sourceURIValue);
                    URIConverter.URI_MAP.remove(sourceURI);
                    return true;
                }
            }
        }
        return false;
    }
}

