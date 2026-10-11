/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.extension;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractContentExtensionProvider;
import org.eclipse.help.IContentExtension;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.extension.ContentExtension;

public class ContentExtensionManager {
    private static final String EXTENSION_POINT_ID_CONTENT_EXTENSION = "org.eclipse.help.contentExtension";
    private static final String ELEMENT_NAME_CONTENT_EXTENSION_PROVIDER = "contentExtensionProvider";
    private static final String ATTRIBUTE_NAME_CLASS = "class";
    private static final ContentExtension[] EMPTY_ARRAY = new ContentExtension[0];
    private AbstractContentExtensionProvider[] contentExtensionProviders;
    private Map extensionsByPath;
    private Map replacesByPath;

    public ContentExtension[] getExtensions(String locale) {
        if (this.extensionsByPath == null) {
            this.loadExtensions(locale);
        }
        ArrayList extensions = new ArrayList();
        Iterator iter = this.extensionsByPath.values().iterator();
        while (iter.hasNext()) {
            extensions.addAll((Collection)iter.next());
        }
        iter = this.replacesByPath.values().iterator();
        while (iter.hasNext()) {
            extensions.addAll((Collection)iter.next());
        }
        return extensions.toArray(new ContentExtension[extensions.size()]);
    }

    public ContentExtension[] getExtensions(String path, int type, String locale) {
        Map map;
        List extensions;
        if (this.extensionsByPath == null) {
            this.loadExtensions(locale);
        }
        if ((extensions = (List)(map = type == 0 ? this.extensionsByPath : this.replacesByPath).get(path)) != null) {
            return extensions.toArray(new ContentExtension[extensions.size()]);
        }
        return EMPTY_ARRAY;
    }

    public void clearCache() {
        if (this.extensionsByPath != null) {
            this.extensionsByPath.clear();
        }
        if (this.replacesByPath != null) {
            this.replacesByPath.clear();
        }
    }

    private void loadExtensions(String locale) {
        this.extensionsByPath = new HashMap();
        this.replacesByPath = new HashMap();
        this.contentExtensionProviders = this.getContentExtensionProviders();
        int i = 0;
        while (i < this.contentExtensionProviders.length) {
            IContentExtension[] extensions = this.contentExtensionProviders[i].getContentExtensions(locale);
            int j = 0;
            while (j < extensions.length) {
                ContentExtension extension = extensions[j] instanceof ContentExtension ? (ContentExtension)extensions[j] : (ContentExtension)UAElementFactory.newElement(extensions[j]);
                String content = extension.getContent();
                String path = extension.getPath();
                if (content != null && path != null) {
                    int type = extension.getType();
                    Map map = type == 0 ? this.extensionsByPath : this.replacesByPath;
                    content = this.normalizePath(content);
                    path = this.normalizePath(path);
                    extension.setContent(content);
                    extension.setPath(path);
                    ArrayList<ContentExtension> list = (ArrayList<ContentExtension>)map.get(path);
                    if (list == null) {
                        list = new ArrayList<ContentExtension>();
                        map.put(path, list);
                    }
                    list.add(extension);
                }
                ++j;
            }
            ++i;
        }
    }

    private AbstractContentExtensionProvider[] getContentExtensionProviders() {
        if (this.contentExtensionProviders == null) {
            ArrayList<AbstractContentExtensionProvider> providers = new ArrayList<AbstractContentExtensionProvider>();
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_CONTENT_EXTENSION);
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement elem = elements[i];
                if (elem.getName().equals(ELEMENT_NAME_CONTENT_EXTENSION_PROVIDER)) {
                    try {
                        AbstractContentExtensionProvider provider = (AbstractContentExtensionProvider)elem.createExecutableExtension(ATTRIBUTE_NAME_CLASS);
                        providers.add(provider);
                    }
                    catch (CoreException e) {
                        String msg = "Error instantiating user assistance content extension provider class \"" + elem.getAttribute(ATTRIBUTE_NAME_CLASS) + '\"';
                        HelpPlugin.logError(msg, e);
                    }
                }
                ++i;
            }
            this.contentExtensionProviders = providers.toArray(new AbstractContentExtensionProvider[providers.size()]);
        }
        return this.contentExtensionProviders;
    }

    private String normalizePath(String path) {
        int bundleStart = path.charAt(0) == '/' ? 1 : 0;
        int bundleEnd = path.indexOf(47, bundleStart);
        int pathStart = bundleEnd + 1;
        int pathEnd = path.indexOf(35, pathStart);
        if (pathEnd == -1) {
            int secondLastSlash;
            int lastSlash = path.lastIndexOf(47);
            if (lastSlash > 0 && (secondLastSlash = path.lastIndexOf(47, lastSlash - 1)) != -1) {
                boolean hasDot;
                String secondLastToken = path.substring(secondLastSlash, lastSlash);
                boolean bl = hasDot = secondLastToken.indexOf(46) != -1;
                if (hasDot) {
                    pathEnd = lastSlash;
                }
            }
            if (pathEnd == -1) {
                pathEnd = path.length();
            }
        }
        int elementStart = Math.min(pathEnd + 1, path.length());
        int elementEnd = path.length();
        if (bundleEnd > bundleStart && pathStart > bundleEnd && pathEnd > pathStart && elementStart >= pathEnd && elementEnd >= elementStart) {
            String bundleId = path.substring(bundleStart, bundleEnd);
            String relativePath = path.substring(pathStart, pathEnd);
            String elementId = path.substring(elementStart, elementEnd);
            path = String.valueOf('/') + bundleId + '/' + relativePath;
            if (elementId.length() > 0) {
                path = String.valueOf(path) + '#' + elementId;
            }
        }
        return path;
    }
}

