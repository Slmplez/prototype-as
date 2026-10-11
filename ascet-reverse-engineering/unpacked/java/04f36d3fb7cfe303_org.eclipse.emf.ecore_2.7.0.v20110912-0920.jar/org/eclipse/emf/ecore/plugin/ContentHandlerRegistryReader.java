/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.emf.ecore.plugin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.ecore.resource.ContentHandler;

class ContentHandlerRegistryReader
extends RegistryReader {
    static final String TAG_HANDLER = "contentHandler";
    static final String ATT_CLASS = "class";
    static final String ATT_PRIORITY = "priority";
    private static final Map<String, List<ContentHandler>> CONTRIBUTION_MAP = new HashMap<String, List<ContentHandler>>();

    public ContentHandlerRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "content_handler");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_HANDLER)) {
            String contributorClassName;
            int priority = 0;
            if (element.getAttribute(ATT_PRIORITY) != null) {
                priority = Integer.parseInt(element.getAttribute(ATT_PRIORITY));
            }
            if ((contributorClassName = element.getAttribute(ATT_CLASS)) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
                return false;
            }
            String contributorName = element.getContributor().getName();
            if (add) {
                try {
                    Class contributorHandlerClass = Platform.getBundle((String)element.getNamespaceIdentifier()).loadClass(contributorClassName);
                    HashMap<String, String> parameters = new HashMap<String, String>();
                    IConfigurationElement[] iConfigurationElementArray = element.getChildren("parameter");
                    int n = iConfigurationElementArray.length;
                    int n2 = 0;
                    while (n2 < n) {
                        IConfigurationElement parameter = iConfigurationElementArray[n2];
                        parameters.put(parameter.getAttribute("name"), parameter.getAttribute("value"));
                        ++n2;
                    }
                    ContentHandler contentHandler = parameters.isEmpty() ? (ContentHandler)contributorHandlerClass.newInstance() : (ContentHandler)contributorHandlerClass.getConstructor(Map.class).newInstance(parameters);
                    ContentHandler.Registry.INSTANCE.put(priority, contentHandler);
                    List<ContentHandler> contributions = CONTRIBUTION_MAP.get(contributorName);
                    if (contributions == null) {
                        contributions = new ArrayList<ContentHandler>();
                        CONTRIBUTION_MAP.put(contributorName, contributions);
                    }
                    contributions.add(contentHandler);
                    return true;
                }
                catch (Exception exception) {
                    EcorePlugin.INSTANCE.log(exception);
                }
                return true;
            }
            List<ContentHandler> contributions = CONTRIBUTION_MAP.get(contributorName);
            if (contributions != null) {
                for (List values : ContentHandler.Registry.INSTANCE.values()) {
                    values.removeAll(contributions);
                }
            }
            CONTRIBUTION_MAP.remove(contributorName);
            return true;
        }
        if (!element.getName().equals("parameter")) return false;
        return true;
    }
}

