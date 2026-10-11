/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.extension;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractContentExtensionProvider;
import org.eclipse.help.IContentExtension;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.extension.ContentExtension;
import org.eclipse.help.internal.extension.ContentExtensionFileParser;
import org.osgi.framework.Bundle;

public class ContentExtensionFileProvider
extends AbstractContentExtensionProvider {
    private static final String EXTENSION_POINT_CONTENT_EXTENSION = "org.eclipse.help.contentExtension";
    private static final String ELEMENT_CONTENT_EXTENSION = "contentExtension";
    private static final String ATTRIBUTE_FILE = "file";
    private static final String ATTRIBUTE_CONTENT = "content";

    public IContentExtension[] getContentExtensions(String locale) {
        ArrayList<ContentExtension> extensions = new ArrayList<ContentExtension>();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        ContentExtensionFileParser parser = new ContentExtensionFileParser();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_CONTENT_EXTENSION);
        int i = 0;
        while (i < elements.length) {
            if (ELEMENT_CONTENT_EXTENSION.equals(elements[i].getName())) {
                String file = elements[i].getAttribute(ATTRIBUTE_FILE);
                String bundleId = elements[i].getContributor().getName();
                Bundle bundle = Platform.getBundle((String)bundleId);
                try {
                    ContentExtension[] ext = parser.parse(bundle, file);
                    int j = 0;
                    while (j < ext.length) {
                        String content = ext[j].getAttribute(ATTRIBUTE_CONTENT);
                        if (content != null) {
                            ext[j].setAttribute(ATTRIBUTE_CONTENT, String.valueOf('/') + bundleId + '/' + content);
                        }
                        extensions.add(ext[j]);
                        ++j;
                    }
                }
                catch (Throwable t) {
                    String msg = "Error reading user assistance content extension file /\"" + bundleId + '/' + file + "\" (skipping file)";
                    HelpPlugin.logError(msg, t);
                }
            }
            ++i;
        }
        return extensions.toArray(new IContentExtension[extensions.size()]);
    }
}

