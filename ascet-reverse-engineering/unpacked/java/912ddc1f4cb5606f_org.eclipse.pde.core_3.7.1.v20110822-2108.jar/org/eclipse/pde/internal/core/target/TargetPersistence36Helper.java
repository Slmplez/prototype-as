/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core.target;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.pde.internal.core.target.IUBundleContainer;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.TargetDefinitionPersistenceHelper;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class TargetPersistence36Helper {
    public static void initFromDoc(ITargetDefinition definition, Element root) throws CoreException {
        String mode;
        String name = root.getAttribute("name");
        if (name.length() > 0) {
            definition.setName(name);
        }
        if ((mode = root.getAttribute("includeMode")).equalsIgnoreCase("feature")) {
            ((TargetDefinition)definition).setUIMode(1);
        }
        NodeList list = root.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                Element currentElement;
                String version;
                String id;
                Node child;
                NodeList children;
                Element element = (Element)node;
                String nodeName = element.getNodeName();
                if (nodeName.equalsIgnoreCase("locations")) {
                    NodeList locations = element.getChildNodes();
                    ArrayList<IBundleContainer> bundleContainers = new ArrayList<IBundleContainer>();
                    int j = 0;
                    while (j < locations.getLength()) {
                        Element locationElement;
                        Node locationNode = locations.item(j);
                        if (locationNode.getNodeType() == 1 && (locationElement = (Element)locationNode).getNodeName().equalsIgnoreCase("location")) {
                            bundleContainers.add(TargetPersistence36Helper.deserializeBundleContainer(locationElement));
                        }
                        ++j;
                    }
                    definition.setBundleContainers(bundleContainers.toArray(new IBundleContainer[bundleContainers.size()]));
                } else if (nodeName.equalsIgnoreCase("includeBundles")) {
                    children = element.getChildNodes();
                    ArrayList<NameVersionDescriptor> included = new ArrayList<NameVersionDescriptor>();
                    int j = 0;
                    while (j < children.getLength()) {
                        child = children.item(j);
                        if (child.getNodeType() == 1) {
                            Element includeElement = (Element)child;
                            if (includeElement.getNodeName().equalsIgnoreCase("plugin")) {
                                id = includeElement.getAttribute("id");
                                version = includeElement.getAttribute("version");
                                included.add(new NameVersionDescriptor(id, version.length() > 0 ? version : null));
                            } else if (includeElement.getNodeName().equalsIgnoreCase("feature")) {
                                id = includeElement.getAttribute("id");
                                version = includeElement.getAttribute("version");
                                included.add(new NameVersionDescriptor(id, version.length() > 0 ? version : null, "feature"));
                            }
                        }
                        ++j;
                    }
                    definition.setIncluded(included.toArray(new NameVersionDescriptor[included.size()]));
                } else if (nodeName.equalsIgnoreCase("optionalBundles")) {
                    children = element.getChildNodes();
                    ArrayList<NameVersionDescriptor> optional = new ArrayList<NameVersionDescriptor>();
                    int j = 0;
                    while (j < children.getLength()) {
                        Element optionalElement;
                        child = children.item(j);
                        if (child.getNodeType() == 1 && (optionalElement = (Element)child).getNodeName().equalsIgnoreCase("plugin")) {
                            id = optionalElement.getAttribute("id");
                            version = optionalElement.getAttribute("version");
                            optional.add(new NameVersionDescriptor(id, version.length() > 0 ? version : null));
                        }
                        ++j;
                    }
                    definition.setOptional(optional.toArray(new NameVersionDescriptor[optional.size()]));
                } else if (nodeName.equalsIgnoreCase("environment")) {
                    NodeList envEntries = element.getChildNodes();
                    int j = 0;
                    while (j < envEntries.getLength()) {
                        Node entry = envEntries.item(j);
                        if (entry.getNodeType() == 1) {
                            currentElement = (Element)entry;
                            if (currentElement.getNodeName().equalsIgnoreCase("os")) {
                                definition.setOS(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                            } else if (currentElement.getNodeName().equalsIgnoreCase("ws")) {
                                definition.setWS(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                            } else if (currentElement.getNodeName().equalsIgnoreCase("arch")) {
                                definition.setArch(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                            } else if (currentElement.getNodeName().equalsIgnoreCase("nl")) {
                                definition.setNL(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                            }
                        }
                        ++j;
                    }
                } else if (nodeName.equalsIgnoreCase("targetJRE")) {
                    String text = element.getAttribute("path");
                    if (text.length() != 0) {
                        IPath path = Path.fromPortableString((String)text);
                        definition.setJREContainer(path);
                    }
                } else if (nodeName.equalsIgnoreCase("launcherArgs")) {
                    NodeList argEntries = element.getChildNodes();
                    int j = 0;
                    while (j < argEntries.getLength()) {
                        Node entry = argEntries.item(j);
                        if (entry.getNodeType() == 1) {
                            currentElement = (Element)entry;
                            if (currentElement.getNodeName().equalsIgnoreCase("programArgs")) {
                                definition.setProgramArguments(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                            } else if (currentElement.getNodeName().equalsIgnoreCase("vmArgs")) {
                                definition.setVMArguments(TargetDefinitionPersistenceHelper.getTextContent(currentElement));
                            }
                        }
                        ++j;
                    }
                } else if (nodeName.equalsIgnoreCase("implicitDependencies")) {
                    NodeList implicitEntries = element.getChildNodes();
                    ArrayList<NameVersionDescriptor> implicit = new ArrayList<NameVersionDescriptor>(implicitEntries.getLength());
                    int j = 0;
                    while (j < implicitEntries.getLength()) {
                        Element currentElement2;
                        Node entry = implicitEntries.item(j);
                        if (entry.getNodeType() == 1 && (currentElement2 = (Element)entry).getNodeName().equalsIgnoreCase("plugin")) {
                            String version2 = currentElement2.getAttribute("version");
                            NameVersionDescriptor bundle = new NameVersionDescriptor(currentElement2.getAttribute("id"), version2.length() > 0 ? version2 : null);
                            implicit.add(bundle);
                        }
                        ++j;
                    }
                    definition.setImplicitDependencies(implicit.toArray(new NameVersionDescriptor[implicit.size()]));
                }
            }
            ++i;
        }
        String sequenceNumber = root.getAttribute("sequenceNumber");
        try {
            ((TargetDefinition)definition).setSequenceNumber(Integer.parseInt(sequenceNumber));
        }
        catch (NumberFormatException numberFormatException) {
            ((TargetDefinition)definition).setSequenceNumber(0);
        }
    }

    private static IBundleContainer deserializeBundleContainer(Element location) throws CoreException {
        String path = location.getAttribute("path");
        String type = location.getAttribute("type");
        if (type.length() == 0) {
            type = path.endsWith("plugins") ? "Directory" : "Profile";
        }
        IBundleContainer container = null;
        if ("Directory".equals(type)) {
            container = TargetDefinitionPersistenceHelper.getTargetPlatformService().newDirectoryContainer(path);
        } else if ("Profile".equals(type)) {
            String configArea = location.getAttribute("configuration");
            container = TargetDefinitionPersistenceHelper.getTargetPlatformService().newProfileContainer(path, configArea.length() > 0 ? configArea : null);
        } else if ("Feature".equals(type)) {
            String version = location.getAttribute("version");
            container = TargetDefinitionPersistenceHelper.getTargetPlatformService().newFeatureContainer(path, location.getAttribute("id"), version.length() > 0 ? version : null);
        } else if ("InstallableUnit".equals(type)) {
            String includeMode = location.getAttribute("includeMode");
            String includeAllPlatforms = location.getAttribute("includeAllPlatforms");
            String includeSource = location.getAttribute("includeSource");
            NodeList list = location.getChildNodes();
            ArrayList<String> ids = new ArrayList<String>();
            ArrayList<String> versions = new ArrayList<String>();
            ArrayList<URI> repos = new ArrayList<URI>();
            int i = 0;
            while (i < list.getLength()) {
                Node node = list.item(i);
                if (node.getNodeType() == 1) {
                    String loc;
                    Element element = (Element)node;
                    if (element.getNodeName().equalsIgnoreCase("unit")) {
                        String version;
                        String id = element.getAttribute("id");
                        if (id.length() > 0 && (version = element.getAttribute("version")).length() > 0) {
                            ids.add(id);
                            versions.add(version);
                        }
                    } else if (element.getNodeName().equalsIgnoreCase("repository") && (loc = element.getAttribute("location")).length() > 0) {
                        try {
                            repos.add(new URI(loc));
                        }
                        catch (URISyntaxException uRISyntaxException) {}
                    }
                }
                ++i;
            }
            String[] iuIDs = ids.toArray(new String[ids.size()]);
            String[] iuVer = versions.toArray(new String[versions.size()]);
            URI[] uris = repos.toArray(new URI[repos.size()]);
            int flags = 1;
            if (includeMode != null && includeMode.trim().length() > 0 && includeMode.equals("slicer")) {
                flags = 0;
            }
            flags |= Boolean.valueOf(includeAllPlatforms) != false ? 2 : 0;
            container = new IUBundleContainer(iuIDs, iuVer, uris, flags |= Boolean.valueOf(includeSource) != false ? 4 : 0);
        }
        return container;
    }
}

