/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.launching.IVMInstall
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.jdt.launching.environments.IExecutionEnvironment
 */
package org.eclipse.pde.internal.core.target;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.TargetDefinitionPersistenceHelper;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;
import org.eclipse.pde.internal.core.util.VMUtil;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class TargetPersistence34Helper {
    public static void initFromDoc(ITargetDefinition definition, Element root) throws CoreException {
        String name = root.getAttribute("name");
        if (name.length() > 0) {
            definition.setName(name);
        }
        AbstractBundleContainer oldStylePrimaryContainer = null;
        ArrayList<AbstractBundleContainer> bundleContainers = new ArrayList<AbstractBundleContainer>();
        NodeList list = root.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                Element currentElement;
                Node entry;
                Element currentElement2;
                Element element = (Element)node;
                String nodeName = element.getNodeName();
                if (nodeName.equalsIgnoreCase("location")) {
                    oldStylePrimaryContainer = (AbstractBundleContainer)TargetPersistence34Helper.deserializeBundleContainer(element);
                } else if (nodeName.equalsIgnoreCase("content")) {
                    boolean useAll = Boolean.TRUE.toString().equalsIgnoreCase(element.getAttribute("useAllPlugins"));
                    if (useAll) {
                        bundleContainers.add(oldStylePrimaryContainer);
                    }
                    bundleContainers.addAll(TargetPersistence34Helper.deserializeBundleContainersFromOldStyleElement(element, definition, oldStylePrimaryContainer, useAll));
                    if (bundleContainers.isEmpty()) {
                        bundleContainers.add(oldStylePrimaryContainer);
                    }
                } else if (nodeName.equalsIgnoreCase("environment")) {
                    NodeList envEntries = element.getChildNodes();
                    int j = 0;
                    while (j < envEntries.getLength()) {
                        Node entry2 = envEntries.item(j);
                        if (entry2.getNodeType() == 1) {
                            currentElement2 = (Element)entry2;
                            if (currentElement2.getNodeName().equalsIgnoreCase("os")) {
                                definition.setOS(TargetDefinitionPersistenceHelper.getTextContent(currentElement2));
                            } else if (currentElement2.getNodeName().equalsIgnoreCase("ws")) {
                                definition.setWS(TargetDefinitionPersistenceHelper.getTextContent(currentElement2));
                            } else if (currentElement2.getNodeName().equalsIgnoreCase("arch")) {
                                definition.setArch(TargetDefinitionPersistenceHelper.getTextContent(currentElement2));
                            } else if (currentElement2.getNodeName().equalsIgnoreCase("nl")) {
                                definition.setNL(TargetDefinitionPersistenceHelper.getTextContent(currentElement2));
                            }
                        }
                        ++j;
                    }
                } else if (nodeName.equalsIgnoreCase("targetJRE")) {
                    String text = element.getAttribute("path");
                    if (text.length() == 0) {
                        NodeList argEntries = element.getChildNodes();
                        int j = 0;
                        while (j < argEntries.getLength()) {
                            entry = argEntries.item(j);
                            if (entry.getNodeType() == 1) {
                                String vmName;
                                IVMInstall vmInstall;
                                currentElement = (Element)entry;
                                IPath path = null;
                                if (currentElement.getNodeName().equalsIgnoreCase("execEnv")) {
                                    IExecutionEnvironment env = JavaRuntime.getExecutionEnvironmentsManager().getEnvironment(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                                    if (env != null) {
                                        path = JavaRuntime.newJREContainerPath((IExecutionEnvironment)env);
                                    }
                                } else if (currentElement.getNodeName().equalsIgnoreCase("jreName") && (vmInstall = VMUtil.getVMInstall(vmName = TargetDefinitionPersistenceHelper.getTextContent(currentElement))) != null) {
                                    path = JavaRuntime.newJREContainerPath((IVMInstall)vmInstall);
                                }
                                definition.setJREContainer(path);
                            }
                            ++j;
                        }
                    }
                } else if (nodeName.equalsIgnoreCase("launcherArgs")) {
                    NodeList argEntries = element.getChildNodes();
                    int j = 0;
                    while (j < argEntries.getLength()) {
                        Node entry3 = argEntries.item(j);
                        if (entry3.getNodeType() == 1) {
                            currentElement2 = (Element)entry3;
                            if (currentElement2.getNodeName().equalsIgnoreCase("programArgs")) {
                                definition.setProgramArguments(TargetDefinitionPersistenceHelper.getTextContent(currentElement2));
                            } else if (currentElement2.getNodeName().equalsIgnoreCase("vmArgs")) {
                                definition.setVMArguments(TargetDefinitionPersistenceHelper.getTextContent(currentElement2));
                            }
                        }
                        ++j;
                    }
                } else if (nodeName.equalsIgnoreCase("implicitDependencies")) {
                    NodeList implicitEntries = element.getChildNodes();
                    ArrayList<NameVersionDescriptor> implicit = new ArrayList<NameVersionDescriptor>(implicitEntries.getLength());
                    int j = 0;
                    while (j < implicitEntries.getLength()) {
                        entry = implicitEntries.item(j);
                        if (entry.getNodeType() == 1 && (currentElement = (Element)entry).getNodeName().equalsIgnoreCase("plugin")) {
                            String version = currentElement.getAttribute("version");
                            NameVersionDescriptor bundle = new NameVersionDescriptor(currentElement.getAttribute("id"), version.length() > 0 ? version : null);
                            implicit.add(bundle);
                        }
                        ++j;
                    }
                    definition.setImplicitDependencies(implicit.toArray(new NameVersionDescriptor[implicit.size()]));
                }
            }
            ++i;
        }
        definition.setBundleContainers(bundleContainers.toArray(new IBundleContainer[bundleContainers.size()]));
    }

    private static IBundleContainer deserializeBundleContainer(Element location) throws CoreException {
        String def = location.getAttribute("useDefault");
        String path = null;
        String type = null;
        if (def.length() > 0 && Boolean.valueOf(def).booleanValue()) {
            path = "${eclipse_home}";
            type = "Profile";
        } else {
            path = location.getAttribute("path");
        }
        if (type == null) {
            type = path.endsWith("plugins") ? "Directory" : "Profile";
        }
        IBundleContainer container = null;
        if ("Directory".equals(type)) {
            container = TargetDefinitionPersistenceHelper.getTargetPlatformService().newDirectoryContainer(path);
        } else if ("Profile".equals(type)) {
            String configArea = location.getAttribute("configuration");
            container = TargetDefinitionPersistenceHelper.getTargetPlatformService().newProfileContainer(path, configArea.length() > 0 ? configArea : null);
        }
        return container;
    }

    private static List deserializeBundleContainersFromOldStyleElement(Element content, ITargetDefinition definition, AbstractBundleContainer primaryContainer, boolean useAll) throws CoreException {
        ArrayList<IBundleContainer> containers = new ArrayList<IBundleContainer>();
        NodeList list = content.getChildNodes();
        ArrayList<NameVersionDescriptor> included = new ArrayList<NameVersionDescriptor>(list.getLength());
        ArrayList<NameVersionDescriptor> optional = new ArrayList<NameVersionDescriptor>();
        int i = 0;
        while (i < list.getLength()) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                String id;
                Node lNode;
                int j;
                Element element = (Element)node;
                if (!useAll && element.getNodeName().equalsIgnoreCase("plugins")) {
                    NodeList plugins = element.getChildNodes();
                    j = 0;
                    while (j < plugins.getLength()) {
                        lNode = plugins.item(j);
                        if (lNode.getNodeType() == 1) {
                            Element plugin = (Element)lNode;
                            id = plugin.getAttribute("id");
                            boolean isOptional = plugin.getAttribute("optional").equalsIgnoreCase(Boolean.toString(true));
                            if (id.length() > 0) {
                                NameVersionDescriptor info = new NameVersionDescriptor(id, null);
                                if (isOptional) {
                                    optional.add(info);
                                } else {
                                    included.add(info);
                                }
                            }
                        }
                        ++j;
                    }
                    if (included.size() > 0 || optional.size() > 0) {
                        containers.add(primaryContainer);
                    }
                } else if (element.getNodeName().equalsIgnoreCase("extraLocations")) {
                    NodeList locations = element.getChildNodes();
                    j = 0;
                    while (j < locations.getLength()) {
                        Element location;
                        String path;
                        lNode = locations.item(j);
                        if (lNode.getNodeType() == 1 && (path = (location = (Element)lNode).getAttribute("path")).length() > 0) {
                            containers.add(TargetDefinitionPersistenceHelper.getTargetPlatformService().newDirectoryContainer(path));
                        }
                        ++j;
                    }
                } else if (!useAll && element.getNodeName().equalsIgnoreCase("features")) {
                    NodeList features = element.getChildNodes();
                    j = 0;
                    while (j < features.getLength()) {
                        Element feature;
                        lNode = features.item(j);
                        if (lNode.getNodeType() == 1 && (id = (feature = (Element)lNode).getAttribute("id")).length() > 0 && primaryContainer != null) {
                            containers.add(TargetDefinitionPersistenceHelper.getTargetPlatformService().newFeatureContainer(primaryContainer.getLocation(false), id, null));
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
        if (!(useAll || included.size() <= 0 && optional.size() <= 0)) {
            if (included.size() > 0) {
                definition.setIncluded(included.toArray(new NameVersionDescriptor[included.size()]));
            }
            if (optional.size() > 0) {
                definition.setOptional(optional.toArray(new NameVersionDescriptor[optional.size()]));
            }
        }
        return containers;
    }
}

