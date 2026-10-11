/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.pde.internal.core.target;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.FeatureBundleContainer;
import org.eclipse.pde.internal.core.target.IUBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.ProfileBundleContainer;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.TargetPersistence34Helper;
import org.eclipse.pde.internal.core.target.TargetPersistence35Helper;
import org.eclipse.pde.internal.core.target.TargetPersistence36Helper;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class TargetDefinitionPersistenceHelper {
    static final String ROOT = "target";
    static final String ATTR_NAME = "name";
    static final String LOCATIONS = "locations";
    static final String LOCATION = "location";
    static final String ATTR_LOCATION_PATH = "path";
    static final String ATTR_LOCATION_TYPE = "type";
    static final String ATTR_USE_DEFAULT = "useDefault";
    static final String INCLUDE_BUNDLES = "includeBundles";
    static final String OPTIONAL_BUNDLES = "optionalBundles";
    static final String ENVIRONMENT = "environment";
    static final String OS = "os";
    static final String WS = "ws";
    static final String ARCH = "arch";
    static final String NL = "nl";
    static final String TARGET_JRE = "targetJRE";
    static final String EXEC_ENV = "execEnv";
    static final String JRE_NAME = "jreName";
    static final String ARGUMENTS = "launcherArgs";
    static final String PROGRAM_ARGS = "programArgs";
    static final String VM_ARGS = "vmArgs";
    static final String IMPLICIT = "implicitDependencies";
    static final String PLUGIN = "plugin";
    static final String PDE_INSTRUCTION = "pde";
    static final String ATTR_ID = "id";
    static final String INSTALLABLE_UNIT = "unit";
    static final String REPOSITORY = "repository";
    static final String ATTR_INCLUDE_MODE = "includeMode";
    public static final String MODE_SLICER = "slicer";
    public static final String MODE_PLANNER = "planner";
    static final String ATTR_INCLUDE_ALL_PLATFORMS = "includeAllPlatforms";
    static final String ATTR_INCLUDE_SOURCE = "includeSource";
    static final String ATTR_OPTIONAL = "optional";
    static final String ATTR_VERSION = "version";
    static final String ATTR_CONFIGURATION = "configuration";
    static final String ATTR_SEQUENCE_NUMBER = "sequenceNumber";
    static final String CONTENT = "content";
    static final String ATTR_USE_ALL = "useAllPlugins";
    static final String PLUGINS = "plugins";
    static final String FEATURES = "features";
    static final String FEATURE = "feature";
    static final String EXTRA_LOCATIONS = "extraLocations";
    private static ITargetPlatformService fTargetService;
    static /* synthetic */ Class class$0;

    public static void persistXML(ITargetDefinition definition, OutputStream output) throws CoreException, ParserConfigurationException, TransformerException, IOException {
        NameVersionDescriptor[] implicitDependencies;
        Element element;
        NameVersionDescriptor[] optional;
        NameVersionDescriptor[] included;
        DocumentBuilderFactory dfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = dfactory.newDocumentBuilder();
        Document doc = docBuilder.newDocument();
        ProcessingInstruction instruction = doc.createProcessingInstruction(PDE_INSTRUCTION, "version=\"3.6\"");
        doc.appendChild(instruction);
        Element rootElement = doc.createElement(ROOT);
        if (definition.getName() != null) {
            rootElement.setAttribute(ATTR_NAME, definition.getName());
        }
        if (((TargetDefinition)definition).getUIMode() == 1) {
            rootElement.setAttribute(ATTR_INCLUDE_MODE, FEATURE);
        }
        rootElement.setAttribute(ATTR_SEQUENCE_NUMBER, Integer.toString(((TargetDefinition)definition).getSequenceNumber()));
        IBundleContainer[] containers = definition.getBundleContainers();
        if (containers != null && containers.length > 0) {
            Element containersElement = doc.createElement(LOCATIONS);
            int i = 0;
            while (i < containers.length) {
                Element containerElement = TargetDefinitionPersistenceHelper.serializeBundleContainer(doc, (AbstractBundleContainer)containers[i]);
                containersElement.appendChild(containerElement);
                ++i;
            }
            rootElement.appendChild(containersElement);
        }
        if ((included = definition.getIncluded()) != null) {
            Element includedElement = doc.createElement(INCLUDE_BUNDLES);
            TargetDefinitionPersistenceHelper.serializeBundles(doc, includedElement, included);
            rootElement.appendChild(includedElement);
        }
        if ((optional = definition.getOptional()) != null) {
            Element optionalElement = doc.createElement(OPTIONAL_BUNDLES);
            TargetDefinitionPersistenceHelper.serializeBundles(doc, optionalElement, optional);
            rootElement.appendChild(optionalElement);
        }
        if (definition.getOS() != null || definition.getWS() != null || definition.getArch() != null || definition.getNL() != null) {
            Element envElement = doc.createElement(ENVIRONMENT);
            if (definition.getOS() != null) {
                element = doc.createElement(OS);
                TargetDefinitionPersistenceHelper.setTextContent(element, definition.getOS());
                envElement.appendChild(element);
            }
            if (definition.getWS() != null) {
                element = doc.createElement(WS);
                TargetDefinitionPersistenceHelper.setTextContent(element, definition.getWS());
                envElement.appendChild(element);
            }
            if (definition.getArch() != null) {
                element = doc.createElement(ARCH);
                TargetDefinitionPersistenceHelper.setTextContent(element, definition.getArch());
                envElement.appendChild(element);
            }
            if (definition.getNL() != null) {
                element = doc.createElement(NL);
                TargetDefinitionPersistenceHelper.setTextContent(element, definition.getNL());
                envElement.appendChild(element);
            }
            rootElement.appendChild(envElement);
        }
        if (definition.getJREContainer() != null) {
            Element jreElement = doc.createElement(TARGET_JRE);
            IPath path = definition.getJREContainer();
            jreElement.setAttribute(ATTR_LOCATION_PATH, path.toPortableString());
            rootElement.appendChild(jreElement);
        }
        if (definition.getVMArguments() != null || definition.getProgramArguments() != null) {
            Element argElement = doc.createElement(ARGUMENTS);
            if (definition.getVMArguments() != null) {
                element = doc.createElement(VM_ARGS);
                TargetDefinitionPersistenceHelper.setTextContent(element, definition.getVMArguments());
                argElement.appendChild(element);
            }
            if (definition.getProgramArguments() != null) {
                element = doc.createElement(PROGRAM_ARGS);
                TargetDefinitionPersistenceHelper.setTextContent(element, definition.getProgramArguments());
                argElement.appendChild(element);
            }
            rootElement.appendChild(argElement);
        }
        if ((implicitDependencies = definition.getImplicitDependencies()) != null && implicitDependencies.length > 0) {
            Element implicit = doc.createElement(IMPLICIT);
            int i = 0;
            while (i < implicitDependencies.length) {
                Element plugin = doc.createElement(PLUGIN);
                plugin.setAttribute(ATTR_ID, implicitDependencies[i].getId());
                if (implicitDependencies[i].getVersion() != null) {
                    plugin.setAttribute(ATTR_VERSION, implicitDependencies[i].getVersion());
                }
                implicit.appendChild(plugin);
                ++i;
            }
            rootElement.appendChild(implicit);
        }
        doc.appendChild(rootElement);
        DOMSource source = new DOMSource(doc);
        StreamResult outputTarget = new StreamResult(output);
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty("method", "xml");
        transformer.setOutputProperty("indent", "yes");
        transformer.transform(source, outputTarget);
    }

    public static void initFromXML(ITargetDefinition definition, InputStream input) throws CoreException, ParserConfigurationException, SAXException, IOException {
        DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        parser.setErrorHandler(new DefaultHandler());
        Document doc = parser.parse(new InputSource(input));
        Element root = doc.getDocumentElement();
        if (!root.getNodeName().equalsIgnoreCase(ROOT)) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.TargetDefinitionPersistenceHelper_0));
        }
        String version = null;
        NodeList list = doc.getChildNodes();
        int i = 0;
        while (i < list.getLength()) {
            ProcessingInstruction instruction;
            Node node = list.item(i);
            if (node.getNodeType() == 7 && (instruction = (ProcessingInstruction)node).getTarget() == PDE_INSTRUCTION) {
                String data = instruction.getData();
                Pattern pattern = Pattern.compile("version=\"(.*)\"");
                Matcher matcher = pattern.matcher(data);
                if (matcher.matches()) {
                    version = matcher.group(1);
                    break;
                }
            }
            ++i;
        }
        if (version == null || version.length() == 0) {
            TargetPersistence36Helper.initFromDoc(definition, root);
        } else if (version.equals("3.6")) {
            TargetPersistence36Helper.initFromDoc(definition, root);
        } else if (version.equals("3.5")) {
            TargetPersistence35Helper.initFromDoc(definition, root);
        } else if (version.compareTo("3.4") <= 0) {
            TargetPersistence34Helper.initFromDoc(definition, root);
        }
    }

    static ITargetPlatformService getTargetPlatformService() throws CoreException {
        if (fTargetService == null) {
            PDECore pDECore = PDECore.getDefault();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((fTargetService = (ITargetPlatformService)pDECore.acquireService(clazz.getName())) == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.TargetDefinitionPersistenceHelper_1));
            }
        }
        return fTargetService;
    }

    static String getTextContent(Element element) throws DOMException {
        NodeList children = element.getChildNodes();
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < children.getLength()) {
            Node currentNode = children.item(i);
            if (currentNode.getNodeType() == 3) {
                result.append(currentNode.getNodeValue());
            }
            ++i;
        }
        return result.toString();
    }

    private static Element serializeBundleContainer(Document doc, AbstractBundleContainer container) throws CoreException {
        Element containerElement = doc.createElement(LOCATION);
        if (!(container instanceof IUBundleContainer)) {
            containerElement.setAttribute(ATTR_LOCATION_PATH, container.getLocation(false));
        }
        containerElement.setAttribute(ATTR_LOCATION_TYPE, container.getType());
        if (container instanceof FeatureBundleContainer) {
            containerElement.setAttribute(ATTR_ID, ((FeatureBundleContainer)container).getFeatureId());
            String version = ((FeatureBundleContainer)container).getFeatureVersion();
            if (version != null) {
                containerElement.setAttribute(ATTR_VERSION, version);
            }
        } else if (container instanceof ProfileBundleContainer) {
            String configurationArea = ((ProfileBundleContainer)container).getConfigurationLocation();
            if (configurationArea != null) {
                containerElement.setAttribute(ATTR_CONFIGURATION, configurationArea);
            }
        } else if (container instanceof IUBundleContainer) {
            IUBundleContainer iubc = (IUBundleContainer)container;
            containerElement.setAttribute(ATTR_INCLUDE_MODE, iubc.getIncludeAllRequired() ? MODE_PLANNER : MODE_SLICER);
            containerElement.setAttribute(ATTR_INCLUDE_ALL_PLATFORMS, Boolean.toString(iubc.getIncludeAllEnvironments()));
            containerElement.setAttribute(ATTR_INCLUDE_SOURCE, Boolean.toString(iubc.getIncludeSource()));
            String[] ids = iubc.getIds();
            Version[] versions = iubc.getVersions();
            int i = 0;
            while (i < ids.length) {
                Element unit = doc.createElement(INSTALLABLE_UNIT);
                unit.setAttribute(ATTR_ID, ids[i]);
                unit.setAttribute(ATTR_VERSION, versions[i].toString());
                containerElement.appendChild(unit);
                ++i;
            }
            URI[] repositories = iubc.getRepositories();
            if (repositories != null) {
                int i2 = 0;
                while (i2 < repositories.length) {
                    Element repo = doc.createElement(REPOSITORY);
                    repo.setAttribute(LOCATION, repositories[i2].toASCIIString());
                    containerElement.appendChild(repo);
                    ++i2;
                }
            }
        }
        return containerElement;
    }

    private static void serializeBundles(Document doc, Element parent, NameVersionDescriptor[] bundles) {
        int j = 0;
        while (j < bundles.length) {
            String version;
            Element includedBundle;
            if (bundles[j].getType() == FEATURE) {
                includedBundle = doc.createElement(FEATURE);
                includedBundle.setAttribute(ATTR_ID, bundles[j].getId());
                version = bundles[j].getVersion();
                if (version != null) {
                    includedBundle.setAttribute(ATTR_VERSION, version);
                }
                parent.appendChild(includedBundle);
            } else {
                includedBundle = doc.createElement(PLUGIN);
                includedBundle.setAttribute(ATTR_ID, bundles[j].getId());
                version = bundles[j].getVersion();
                if (version != null) {
                    includedBundle.setAttribute(ATTR_VERSION, version);
                }
                parent.appendChild(includedBundle);
            }
            ++j;
        }
    }

    private static void setTextContent(Element element, String text) throws DOMException {
        Node child;
        while ((child = element.getFirstChild()) != null) {
            element.removeChild(child);
        }
        if (text != null && text.length() > 0) {
            Text textNode = element.getOwnerDocument().createTextNode(text);
            element.appendChild(textNode);
        }
    }
}

