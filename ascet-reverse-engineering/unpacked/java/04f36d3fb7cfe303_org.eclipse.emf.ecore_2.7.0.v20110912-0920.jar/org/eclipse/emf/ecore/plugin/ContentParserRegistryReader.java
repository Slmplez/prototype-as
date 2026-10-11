/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.emf.ecore.plugin;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.ecore.resource.Resource;

class ContentParserRegistryReader
extends RegistryReader {
    static final String TAG_PARSER = "parser";
    static final String ATT_CONTENT_TYPE_IDENTIFIER = "contentTypeIdentifier";
    static final String ATT_CLASS = "class";

    public ContentParserRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "content_parser");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_PARSER)) {
            String contentTypeIdentifier = element.getAttribute(ATT_CONTENT_TYPE_IDENTIFIER);
            if (contentTypeIdentifier == null) {
                this.logMissingAttribute(element, ATT_CONTENT_TYPE_IDENTIFIER);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    Object previous = Resource.Factory.Registry.INSTANCE.getContentTypeToFactoryMap().put(contentTypeIdentifier, new RegistryReader.ResourceFactoryDescriptor(element, ATT_CLASS));
                    if (previous instanceof RegistryReader.ResourceFactoryDescriptor) {
                        RegistryReader.ResourceFactoryDescriptor descriptor = (RegistryReader.ResourceFactoryDescriptor)previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a content parser for '" + contentTypeIdentifier + "'");
                    }
                    return true;
                }
                Resource.Factory.Registry.INSTANCE.getContentTypeToFactoryMap().remove(contentTypeIdentifier);
                return true;
            }
        }
        return false;
    }
}

