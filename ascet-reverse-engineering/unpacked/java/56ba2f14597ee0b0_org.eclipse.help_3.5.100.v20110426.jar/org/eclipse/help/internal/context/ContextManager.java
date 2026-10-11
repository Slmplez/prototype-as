/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.context;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractContextProvider;
import org.eclipse.help.IContext;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.context.Context;
import org.eclipse.help.internal.context.ContextFileProvider;

public class ContextManager {
    private static final String EXTENSION_POINT_ID_CONTEXT = "org.eclipse.help.contexts";
    private static final String ELEMENT_NAME_CONTEXT_PROVIDER = "contextProvider";
    private static final String ATTRIBUTE_NAME_CLASS = "class";
    private Map providersByPluginId;
    private Map contextIDsByPluginId;
    private List globalProviders;

    public ContextManager() {
        if (HelpPlugin.DEBUG_CONTEXT) {
            this.checkContextProviders();
        }
    }

    public IContext getContext(String contextId, String locale) {
        int index;
        if (HelpPlugin.DEBUG_CONTEXT && contextId != null) {
            System.out.println("ContextManager.getContext(\"" + contextId + "\")");
        }
        if ((index = contextId.lastIndexOf(46)) != -1) {
            String pluginId = contextId.substring(0, index);
            Iterator iter = this.getContextProviders(pluginId).iterator();
            while (iter.hasNext()) {
                AbstractContextProvider provider = (AbstractContextProvider)iter.next();
                try {
                    IContext context = provider.getContext(contextId, locale);
                    if (context == null) continue;
                    if (HelpPlugin.DEBUG_CONTEXT) {
                        System.out.println("ContextManager.getContext found context, description = \"" + context.getText() + '\"');
                    }
                    return new Context(context, contextId);
                }
                catch (Throwable t) {
                    String msg = "Error querying context provider (" + provider.getClass().getName() + ") with context Id: " + contextId;
                    HelpPlugin.logError(msg, t);
                }
            }
        }
        if (HelpPlugin.DEBUG_CONTEXT) {
            System.out.println("ContextManager.getContext - no context found");
            String id = contextId;
            ArrayList<String> potentialMatches = new ArrayList<String>();
            index = contextId.lastIndexOf(46);
            if (index > -1) {
                id = contextId.substring(index + 1);
            }
            String warning = "Registered Context Provider IDs:\n";
            Iterator iter = this.contextIDsByPluginId.keySet().iterator();
            warning = String.valueOf(warning) + "--------------------------------\n";
            while (iter.hasNext()) {
                String pluginID = (String)iter.next();
                List contextIDList = (List)this.contextIDsByPluginId.get(pluginID);
                int c = 0;
                while (c < contextIDList.size()) {
                    if (((String)contextIDList.get(c)).equalsIgnoreCase(id)) {
                        potentialMatches.add(String.valueOf(pluginID) + '.' + (String)contextIDList.get(c));
                        break;
                    }
                    ++c;
                }
                warning = String.valueOf(warning) + pluginID + ' ' + contextIDList.toString() + '\n';
            }
            warning = String.valueOf(warning) + "--------------------------------";
            System.out.println(warning);
            if (!potentialMatches.isEmpty()) {
                System.out.println("The ID searched is " + contextId + ".  Did you mean to call setHelp with:\n" + potentialMatches);
            }
        }
        return null;
    }

    private List getContextProviders(String pluginId) {
        if (this.providersByPluginId == null) {
            this.loadContextProviders();
        }
        ArrayList list = new ArrayList();
        List forPlugin = (List)this.providersByPluginId.get(pluginId);
        if (forPlugin != null) {
            list.addAll(forPlugin);
        }
        list.addAll(this.globalProviders);
        return list;
    }

    private void loadContextProviders() {
        this.providersByPluginId = new HashMap();
        this.globalProviders = new ArrayList();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_CONTEXT);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement elem = elements[i];
            if (elem.getName().equals(ELEMENT_NAME_CONTEXT_PROVIDER)) {
                try {
                    AbstractContextProvider provider = (AbstractContextProvider)elem.createExecutableExtension(ATTRIBUTE_NAME_CLASS);
                    String[] plugins = provider.getPlugins();
                    if (plugins != null) {
                        int j = 0;
                        while (j < plugins.length) {
                            ArrayList<AbstractContextProvider> list = (ArrayList<AbstractContextProvider>)this.providersByPluginId.get(plugins[j]);
                            if (list == null) {
                                list = new ArrayList<AbstractContextProvider>();
                                this.providersByPluginId.put(plugins[j], list);
                            }
                            list.add(provider);
                            ++j;
                        }
                    } else {
                        this.globalProviders.add(provider);
                    }
                }
                catch (CoreException e) {
                    String msg = "Error instantiating context-sensitive help provider class \"" + elem.getAttribute(ATTRIBUTE_NAME_CLASS) + '\"';
                    HelpPlugin.logError(msg, e);
                }
            }
            ++i;
        }
    }

    private void checkContextProviders() {
        this.contextIDsByPluginId = new Hashtable();
        Hashtable<String, Context> contextByContextID = new Hashtable<String, Context>();
        if (this.providersByPluginId == null) {
            this.loadContextProviders();
        }
        Iterator i = this.providersByPluginId.keySet().iterator();
        while (i.hasNext()) {
            String pluginID = (String)i.next();
            ArrayList providers = (ArrayList)this.providersByPluginId.get(pluginID);
            int p = 0;
            while (p < providers.size()) {
                ContextFileProvider provider = (ContextFileProvider)providers.get(p);
                Map[] maps = provider.getPluginContexts(pluginID, Platform.getNL());
                int m = 0;
                while (m < maps.length) {
                    Iterator i2 = maps[m].keySet().iterator();
                    while (i2.hasNext()) {
                        String contextID = (String)i2.next();
                        String fullID = String.valueOf(pluginID) + '.' + contextID;
                        Context currentContext = (Context)maps[m].get(contextID);
                        if (!contextByContextID.containsKey(fullID)) {
                            contextByContextID.put(fullID, currentContext);
                        } else if (HelpPlugin.DEBUG_CONTEXT) {
                            Context initialContext = (Context)contextByContextID.get(fullID);
                            String error = "Context Help ID '" + contextID + "' is found in multiple context files in plugin '" + pluginID + "'\n" + " Description 1: " + initialContext.getText() + '\n' + " Description 2: " + currentContext.getText();
                            System.out.println(error);
                        }
                        ArrayList<String> list = (ArrayList<String>)this.contextIDsByPluginId.get(pluginID);
                        if (list == null) {
                            list = new ArrayList<String>();
                            this.contextIDsByPluginId.put(pluginID, list);
                        }
                        list.add(contextID);
                    }
                    ++m;
                }
                ++p;
            }
        }
    }
}

