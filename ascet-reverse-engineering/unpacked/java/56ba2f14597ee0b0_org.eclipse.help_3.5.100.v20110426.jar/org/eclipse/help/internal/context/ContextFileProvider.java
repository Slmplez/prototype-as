/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.context;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.xml.transform.TransformerException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractContextProvider;
import org.eclipse.help.IContext;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.Topic;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.context.Context;
import org.eclipse.help.internal.context.ContextFile;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.DocumentWriter;
import org.eclipse.help.internal.dynamic.ExtensionHandler;
import org.eclipse.help.internal.dynamic.IncludeHandler;
import org.eclipse.help.internal.dynamic.ProcessorHandler;
import org.eclipse.help.internal.dynamic.ValidationHandler;
import org.eclipse.help.internal.toc.HrefUtil;
import org.eclipse.help.internal.util.ResourceLocator;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class ContextFileProvider
extends AbstractContextProvider {
    private static final String EXTENSION_POINT_CONTEXTS = "org.eclipse.help.contexts";
    private static final String ELEMENT_CONTEXTS = "contexts";
    private static final String ATTRIBUTE_FILE = "file";
    private static final String ATTRIBUTE_PLUGIN = "plugin";
    private Map pluginContextsByLocale;
    private Map descriptorsByPluginId;
    private Map contextFilesByLocale;
    private DocumentProcessor processor;
    private DocumentReader reader;
    private DocumentWriter writer;
    private Map requiredAttributes;

    public IContext getContext(String contextId, String locale) {
        Map[] contexts;
        HashMap<String, Map[]> pluginContexts;
        int index = contextId.lastIndexOf(46);
        String pluginId = contextId.substring(0, index);
        String shortContextId = contextId.substring(index + 1);
        if (this.pluginContextsByLocale == null) {
            this.pluginContextsByLocale = new HashMap();
        }
        if ((pluginContexts = (HashMap<String, Map[]>)this.pluginContextsByLocale.get(locale)) == null) {
            pluginContexts = new HashMap<String, Map[]>();
            this.pluginContextsByLocale.put(locale, pluginContexts);
        }
        if ((contexts = (Map[])pluginContexts.get(pluginId)) == null) {
            contexts = this.getPluginContexts(pluginId, locale);
            pluginContexts.put(pluginId, contexts);
        }
        ArrayList<Context> matches = new ArrayList<Context>();
        int i = 0;
        while (i < contexts.length) {
            Context context = (Context)contexts[i].get(shortContextId);
            if (context != null) {
                matches.add(context);
            }
            ++i;
        }
        switch (matches.size()) {
            case 0: {
                return null;
            }
            case 1: {
                return (IContext)matches.get(0);
            }
        }
        Context newContext = new Context((IContext)matches.get(0), shortContextId);
        int i2 = 1;
        while (i2 < matches.size()) {
            newContext.mergeContext((IContext)matches.get(i2));
            ++i2;
        }
        return newContext;
    }

    public String[] getPlugins() {
        Map associations = this.getPluginAssociations();
        return associations.keySet().toArray(new String[associations.size()]);
    }

    private Map getPluginAssociations() {
        if (this.descriptorsByPluginId == null) {
            this.descriptorsByPluginId = new HashMap();
            IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor(EXTENSION_POINT_CONTEXTS);
            int i = 0;
            while (i < elements.length) {
                if (ELEMENT_CONTEXTS.equals(elements[i].getName())) {
                    String declaringPluginId = elements[i].getDeclaringExtension().getContributor().getName();
                    String file = elements[i].getAttribute(ATTRIBUTE_FILE);
                    String plugin = elements[i].getAttribute(ATTRIBUTE_PLUGIN);
                    String targetPluginId = plugin == null ? declaringPluginId : plugin;
                    ContextFile descriptor = new ContextFile(declaringPluginId, file);
                    ContextFile[] descriptors = (ContextFile[])this.descriptorsByPluginId.get(targetPluginId);
                    if (descriptors == null) {
                        descriptors = new ContextFile[]{descriptor};
                    } else {
                        ContextFile[] temp = new ContextFile[descriptors.length + 1];
                        System.arraycopy(descriptors, 0, temp, 0, descriptors.length);
                        temp[descriptors.length] = descriptor;
                        descriptors = temp;
                    }
                    this.descriptorsByPluginId.put(targetPluginId, descriptors);
                }
                ++i;
            }
        }
        return this.descriptorsByPluginId;
    }

    public Map[] getPluginContexts(String pluginId, String locale) {
        ArrayList<Map> maps = new ArrayList<Map>();
        Map associations = this.getPluginAssociations();
        ContextFile[] descriptors = (ContextFile[])associations.get(pluginId);
        int i = 0;
        while (i < descriptors.length) {
            Map contexts = this.getContexts(descriptors[i], locale);
            if (contexts != null) {
                maps.add(contexts);
            }
            ++i;
        }
        return maps.toArray(new Map[maps.size()]);
    }

    private Map getContexts(ContextFile descriptor, String locale) {
        Map contexts;
        HashMap<ContextFile, Map> contextsByDescriptor;
        if (this.contextFilesByLocale == null) {
            this.contextFilesByLocale = new HashMap();
        }
        if ((contextsByDescriptor = (HashMap<ContextFile, Map>)this.contextFilesByLocale.get(locale)) == null) {
            contextsByDescriptor = new HashMap<ContextFile, Map>();
            this.contextFilesByLocale.put(locale, contextsByDescriptor);
        }
        if ((contexts = (Map)contextsByDescriptor.get(descriptor)) == null && (contexts = this.loadContexts(descriptor, locale)) != null) {
            contextsByDescriptor.put(descriptor, contexts);
        }
        return contexts;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Map loadContexts(ContextFile descriptor, String locale) {
        Map map;
        InputStream in = ResourceLocator.openFromPlugin(descriptor.getBundleId(), descriptor.getFile(), locale);
        if (in == null) throw new FileNotFoundException();
        try {
            map = this.loadContextsFromInputStream(descriptor, locale, in);
        }
        catch (Throwable throwable) {
            try {
                in.close();
                throw throwable;
            }
            catch (Throwable t) {
                String msg = "Error reading context-sensitive help file /\"" + this.getErrorPath(descriptor, locale) + "\" (skipping file)";
                HelpPlugin.logError(msg, t);
                return null;
            }
        }
        in.close();
        return map;
    }

    private Map loadContextsFromInputStream(ContextFile descriptor, String locale, InputStream in) throws Exception {
        UAElement root;
        if (this.reader == null) {
            this.reader = new DocumentReader();
        }
        if (ELEMENT_CONTEXTS.equals((root = this.reader.read(in)).getElementName())) {
            if (this.processor == null) {
                this.processor = new DocumentProcessor(new ProcessorHandler[]{new ValidationHandler(this.getRequiredAttributes()), new NormalizeHandler(), new IncludeHandler(this.reader, locale), new ExtensionHandler(this.reader, locale)});
            }
            this.processor.process(root, String.valueOf('/') + descriptor.getBundleId() + '/' + descriptor.getFile());
            IUAElement[] children = root.getChildren();
            HashMap<String, Context> contexts = new HashMap<String, Context>();
            int i = 0;
            while (i < children.length) {
                Context context;
                String id;
                if (children[i] instanceof Context && (id = (context = (Context)children[i]).getId()) != null) {
                    Object existingContext = contexts.get(id);
                    if (existingContext == null) {
                        contexts.put(id, context);
                    } else {
                        ((Context)existingContext).mergeContext(context);
                        if (HelpPlugin.DEBUG_CONTEXT) {
                            String error = "Context help ID '" + id + "' is found multiple times in file '" + descriptor.getBundleId() + '/' + descriptor.getFile() + "'\n" + " Description 1: " + ((Context)existingContext).getText() + '\n' + " Description 2: " + context.getText();
                            System.out.println(error);
                        }
                    }
                }
                ++i;
            }
            return contexts;
        }
        String msg = "Required root element \"contexts\" missing from context-sensitive help file \"/" + this.getErrorPath(descriptor, locale) + "\" (skipping)";
        HelpPlugin.logError(msg);
        return null;
    }

    private String getErrorPath(ContextFile descriptor, String locale) {
        return ResourceLocator.getErrorPath(descriptor.getBundleId(), descriptor.getFile(), locale);
    }

    private Map getRequiredAttributes() {
        if (this.requiredAttributes == null) {
            this.requiredAttributes = new HashMap();
            this.requiredAttributes.put("context", new String[]{"id"});
            this.requiredAttributes.put("topic", new String[]{"label", "href"});
            this.requiredAttributes.put("anchor", new String[]{"id"});
            this.requiredAttributes.put("include", new String[]{"path"});
        }
        return this.requiredAttributes;
    }

    private class NormalizeHandler
    extends ProcessorHandler {
        private NormalizeHandler() {
        }

        public short handle(UAElement element, String id) {
            int index;
            Topic topic;
            String href;
            if (element instanceof Context) {
                Context context = (Context)element;
                IUAElement[] children = context.getChildren();
                if (children.length > 0 && "description".equals(((UAElement)children[0]).getElementName())) {
                    StringBuffer buf = new StringBuffer();
                    Element description = ((UAElement)children[0]).getElement();
                    Node node = description.getFirstChild();
                    while (node != null) {
                        if (node.getNodeType() == 3) {
                            buf.append(node.getNodeValue());
                        } else if (node.getNodeType() == 1) {
                            if (ContextFileProvider.this.writer == null) {
                                ContextFileProvider.this.writer = new DocumentWriter();
                            }
                            try {
                                buf.append(ContextFileProvider.this.writer.writeString((Element)node, false));
                            }
                            catch (TransformerException e) {
                                String msg = "Internal error while normalizing context-sensitive help descriptions";
                                HelpPlugin.logError(msg, e);
                            }
                        }
                        Node old = node;
                        node = node.getNextSibling();
                        description.removeChild(old);
                    }
                    Document document = description.getOwnerDocument();
                    description.appendChild(document.createTextNode(buf.toString()));
                }
            } else if (element instanceof Topic && (href = (topic = (Topic)element).getHref()) != null && (index = id.indexOf(47, 1)) != -1) {
                String pluginId = id.substring(1, index);
                topic.setHref(HrefUtil.normalizeHref(pluginId, href));
            }
            return 0;
        }
    }
}

