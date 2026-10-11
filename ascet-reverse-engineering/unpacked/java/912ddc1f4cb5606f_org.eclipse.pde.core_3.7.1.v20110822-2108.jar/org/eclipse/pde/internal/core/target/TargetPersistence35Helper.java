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
import org.eclipse.pde.internal.core.target.TargetDefinitionPersistenceHelper;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class TargetPersistence35Helper {
    public static void initFromDoc(ITargetDefinition definition, Element root) throws CoreException {
        String name = root.getAttribute("name");
        if (name.length() > 0) {
            definition.setName(name);
        }
        NodeList list = root.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                Element currentElement;
                Element element = (Element)node;
                String nodeName = element.getNodeName();
                if (nodeName.equalsIgnoreCase("locations")) {
                    NodeList locations = element.getChildNodes();
                    int j = 0;
                    while (j < locations.getLength()) {
                        Element locationElement;
                        Node locationNode = locations.item(j);
                        if (locationNode.getNodeType() == 1 && (locationElement = (Element)locationNode).getNodeName().equalsIgnoreCase("location")) {
                            TargetPersistence35Helper.deserializeBundleContainer(definition, locationElement);
                        }
                        ++j;
                    }
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
                            String version = currentElement2.getAttribute("version");
                            NameVersionDescriptor bundle = new NameVersionDescriptor(currentElement2.getAttribute("id"), version.length() > 0 ? version : null);
                            implicit.add(bundle);
                        }
                        ++j;
                    }
                    definition.setImplicitDependencies(implicit.toArray(new NameVersionDescriptor[implicit.size()]));
                }
            }
            ++i;
        }
    }

    private static void deserializeBundleContainer(ITargetDefinition definition, Element location) throws CoreException {
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
            container = new IUBundleContainer(iuIDs, iuVer, uris, flags |= Boolean.valueOf(includeAllPlatforms) != false ? 2 : 0);
        }
        NodeList list = location.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                Element element = (Element)node;
                if (element.getNodeName().equalsIgnoreCase("includeBundles")) {
                    NameVersionDescriptor[] included = TargetPersistence35Helper.deserializeBundles(element);
                    NameVersionDescriptor[] currentIncluded = definition.getIncluded();
                    if (currentIncluded == null || currentIncluded.length == 0) {
                        definition.setIncluded(included);
                    } else {
                        NameVersionDescriptor[] newIncluded = new NameVersionDescriptor[currentIncluded.length + included.length];
                        System.arraycopy(currentIncluded, 0, newIncluded, 0, currentIncluded.length);
                        System.arraycopy(included, 0, newIncluded, currentIncluded.length, included.length);
                        definition.setIncluded(newIncluded);
                    }
                } else if (element.getNodeName().equalsIgnoreCase("optionalBundles")) {
                    NameVersionDescriptor[] optional = TargetPersistence35Helper.deserializeBundles(element);
                    NameVersionDescriptor[] currentOptional = definition.getIncluded();
                    if (currentOptional == null || currentOptional.length == 0) {
                        definition.setIncluded(optional);
                    } else {
                        NameVersionDescriptor[] newOptional = new NameVersionDescriptor[currentOptional.length + optional.length];
                        System.arraycopy(currentOptional, 0, newOptional, 0, currentOptional.length);
                        System.arraycopy(optional, 0, newOptional, currentOptional.length, optional.length);
                        definition.setIncluded(newOptional);
                    }
                }
            }
            ++i;
        }
        IBundleContainer[] currentContainers = definition.getBundleContainers();
        if (currentContainers == null || currentContainers.length == 0) {
            definition.setBundleContainers(new IBundleContainer[]{container});
        } else {
            IBundleContainer[] newContainers = new IBundleContainer[currentContainers.length + 1];
            System.arraycopy(currentContainers, 0, newContainers, 0, currentContainers.length);
            newContainers[currentContainers.length] = container;
            definition.setBundleContainers(newContainers);
        }
    }

    private static NameVersionDescriptor[] deserializeBundles(Element bundleContainer) {
        NodeList nodes = bundleContainer.getChildNodes();
        ArrayList<NameVersionDescriptor> bundles = new ArrayList<NameVersionDescriptor>(nodes.getLength());
        int j = 0;
        while (j < nodes.getLength()) {
            Element includeElement;
            Node include = nodes.item(j);
            if (include.getNodeType() == 1 && (includeElement = (Element)include).getNodeName().equalsIgnoreCase("plugin")) {
                String id = includeElement.getAttribute("id");
                String version = includeElement.getAttribute("version");
                bundles.add(new NameVersionDescriptor(id, version.length() > 0 ? version : null));
            }
            ++j;
        }
        return bundles.toArray(new NameVersionDescriptor[bundles.size()]);
    }
}

