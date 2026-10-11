/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.AbstractVMInstall;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.VMStandin;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class VMDefinitionsContainer {
    private Map fVMTypeToVMMap = new HashMap(10);
    private List fVMList;
    private List fInvalidVMList = new ArrayList(10);
    private String fDefaultVMInstallCompositeID;
    private String fDefaultVMInstallConnectorTypeID;
    private MultiStatus fStatus;

    public VMDefinitionsContainer() {
        this.fVMList = new ArrayList(10);
    }

    public void addVM(IVMInstall vm) {
        if (!this.fVMList.contains(vm)) {
            IVMInstallType vmInstallType = vm.getVMInstallType();
            ArrayList<IVMInstall> vmList = (ArrayList<IVMInstall>)this.fVMTypeToVMMap.get(vmInstallType);
            if (vmList == null) {
                vmList = new ArrayList<IVMInstall>(3);
                this.fVMTypeToVMMap.put(vmInstallType, vmList);
            }
            vmList.add(vm);
            File installLocation = vm.getInstallLocation();
            if (installLocation == null || vmInstallType.validateInstallLocation(installLocation).getSeverity() == 4) {
                this.fInvalidVMList.add(vm);
            }
            this.fVMList.add(vm);
        }
    }

    public void addVMList(List vmList) {
        Iterator iterator = vmList.iterator();
        while (iterator.hasNext()) {
            IVMInstall vm = (IVMInstall)iterator.next();
            this.addVM(vm);
        }
    }

    public Map getVMTypeToVMMap() {
        return this.fVMTypeToVMMap;
    }

    public List getVMList() {
        return this.fVMList;
    }

    public List getValidVMList() {
        List vms = this.getVMList();
        ArrayList resultList = new ArrayList(vms.size());
        resultList.addAll(vms);
        resultList.removeAll(this.fInvalidVMList);
        return resultList;
    }

    public String getDefaultVMInstallCompositeID() {
        return this.fDefaultVMInstallCompositeID;
    }

    public void setDefaultVMInstallCompositeID(String id) {
        this.fDefaultVMInstallCompositeID = id;
    }

    public String getDefaultVMInstallConnectorTypeID() {
        return this.fDefaultVMInstallConnectorTypeID;
    }

    public void setDefaultVMInstallConnectorTypeID(String id) {
        this.fDefaultVMInstallConnectorTypeID = id;
    }

    public String getAsXML() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element config = doc.createElement("vmSettings");
        doc.appendChild(config);
        if (this.getDefaultVMInstallCompositeID() != null) {
            config.setAttribute("defaultVM", this.getDefaultVMInstallCompositeID());
        }
        if (this.getDefaultVMInstallConnectorTypeID() != null) {
            config.setAttribute("defaultVMConnector", this.getDefaultVMInstallConnectorTypeID());
        }
        Set vmInstallTypeSet = this.getVMTypeToVMMap().keySet();
        Iterator keyIterator = vmInstallTypeSet.iterator();
        while (keyIterator.hasNext()) {
            IVMInstallType vmInstallType = (IVMInstallType)keyIterator.next();
            Element vmTypeElement = this.vmTypeAsElement(doc, vmInstallType);
            config.appendChild(vmTypeElement);
        }
        return DebugPlugin.serializeDocument((Document)doc);
    }

    private Element vmTypeAsElement(Document doc, IVMInstallType vmType) {
        Element element = doc.createElement("vmType");
        element.setAttribute("id", vmType.getId());
        List vmList = (List)this.getVMTypeToVMMap().get(vmType);
        Iterator vmIterator = vmList.iterator();
        while (vmIterator.hasNext()) {
            IVMInstall vm = (IVMInstall)vmIterator.next();
            Element vmElement = this.vmAsElement(doc, vm);
            element.appendChild(vmElement);
        }
        return element;
    }

    private Element vmAsElement(Document doc, IVMInstall vm) {
        Map attributes;
        Object vmArgs;
        URL url;
        Element element = doc.createElement("vm");
        element.setAttribute("id", vm.getId());
        element.setAttribute("name", vm.getName());
        String installPath = "";
        File installLocation = vm.getInstallLocation();
        if (installLocation != null) {
            installPath = installLocation.getAbsolutePath();
        }
        element.setAttribute("path", installPath);
        LibraryLocation[] libraryLocations = vm.getLibraryLocations();
        if (libraryLocations != null) {
            Element libLocationElement = VMDefinitionsContainer.libraryLocationsAsElement(doc, libraryLocations);
            element.appendChild(libLocationElement);
        }
        if ((url = vm.getJavadocLocation()) != null) {
            element.setAttribute("javadocURL", url.toExternalForm());
        }
        if (vm instanceof IVMInstall2) {
            vmArgs = ((IVMInstall2)((Object)vm)).getVMArgs();
            if (vmArgs != null && ((String)vmArgs).length() > 0) {
                element.setAttribute("vmargs", (String)vmArgs);
            }
        } else {
            vmArgs = vm.getVMArguments();
            if (vmArgs != null && ((String[])vmArgs).length > 0) {
                StringBuffer buffer = new StringBuffer();
                int i = 0;
                while (i < ((Object)vmArgs).length) {
                    buffer.append(String.valueOf(vmArgs[i]) + " ");
                    ++i;
                }
                element.setAttribute("vmargs", buffer.toString());
            }
        }
        if (vm instanceof AbstractVMInstall && !(attributes = ((AbstractVMInstall)vm).getAttributes()).isEmpty()) {
            Element attrElement = doc.createElement("attributeMap");
            Iterator iterator = attributes.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                Element entryElement = doc.createElement("entry");
                entryElement.setAttribute("key", (String)entry.getKey());
                entryElement.setAttribute("value", (String)entry.getValue());
                attrElement.appendChild(entryElement);
            }
            element.appendChild(attrElement);
        }
        return element;
    }

    private static Element libraryLocationsAsElement(Document doc, LibraryLocation[] locations) {
        Element root = doc.createElement("libraryLocations");
        int i = 0;
        while (i < locations.length) {
            URL url;
            Element element = doc.createElement("libraryLocation");
            element.setAttribute("jreJar", locations[i].getSystemLibraryPath().toString());
            element.setAttribute("jreSrc", locations[i].getSystemLibrarySourcePath().toString());
            IPath packageRootPath = locations[i].getPackageRootPath();
            if (packageRootPath != null) {
                element.setAttribute("pkgRoot", packageRootPath.toString());
            }
            if ((url = locations[i].getJavadocLocation()) != null) {
                element.setAttribute("jreJavadoc", url.toExternalForm());
            }
            root.appendChild(element);
            ++i;
        }
        return root;
    }

    public static VMDefinitionsContainer parseXMLIntoContainer(InputStream inputStream) throws IOException {
        VMDefinitionsContainer container = new VMDefinitionsContainer();
        VMDefinitionsContainer.parseXMLIntoContainer(inputStream, container);
        return container;
    }

    public static void parseXMLIntoContainer(InputStream inputStream, VMDefinitionsContainer container) throws IOException {
        BufferedInputStream stream = new BufferedInputStream(inputStream);
        Element config = null;
        try {
            try {
                DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                parser.setErrorHandler(new DefaultHandler());
                config = parser.parse(new InputSource(stream)).getDocumentElement();
            }
            catch (SAXException sAXException) {
                throw new IOException(LaunchingMessages.JavaRuntime_badFormat);
            }
            catch (ParserConfigurationException parserConfigurationException) {
                ((InputStream)stream).close();
                throw new IOException(LaunchingMessages.JavaRuntime_badFormat);
            }
        }
        finally {
            ((InputStream)stream).close();
        }
        if (!config.getNodeName().equalsIgnoreCase("vmSettings")) {
            throw new IOException(LaunchingMessages.JavaRuntime_badFormat);
        }
        container.setDefaultVMInstallCompositeID(config.getAttribute("defaultVM"));
        container.setDefaultVMInstallConnectorTypeID(config.getAttribute("defaultVMConnector"));
        NodeList list = config.getChildNodes();
        int length = list.getLength();
        int i = 0;
        while (i < length) {
            Element vmTypeElement;
            Node node = list.item(i);
            short type = node.getNodeType();
            if (type == 1 && (vmTypeElement = (Element)node).getNodeName().equalsIgnoreCase("vmType")) {
                VMDefinitionsContainer.populateVMTypes(vmTypeElement, container);
            }
            ++i;
        }
    }

    private static void populateVMTypes(Element vmTypeElement, VMDefinitionsContainer container) {
        String id = vmTypeElement.getAttribute("id");
        IVMInstallType vmType = JavaRuntime.getVMInstallType(id);
        if (vmType != null) {
            NodeList vmNodeList = vmTypeElement.getElementsByTagName("vm");
            int i = 0;
            while (i < vmNodeList.getLength()) {
                VMDefinitionsContainer.populateVMForType(vmType, (Element)vmNodeList.item(i), container);
                ++i;
            }
        } else {
            NodeList vmNodeList = vmTypeElement.getElementsByTagName("vm");
            int i = 0;
            while (i < vmNodeList.getLength()) {
                Element vmElement = (Element)vmNodeList.item(i);
                String installPath = vmElement.getAttribute("path");
                String name = vmElement.getAttribute("name");
                Status status = null;
                status = name != null ? new Status(1, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_0, (Object[])new String[]{name})) : (installPath != null ? new Status(1, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_0, (Object[])new String[]{installPath})) : new Status(1, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_2, (Object[])new String[]{id})));
                container.addStatus((IStatus)status);
                ++i;
            }
        }
    }

    private static void populateVMForType(IVMInstallType vmType, Element vmElement, VMDefinitionsContainer container) {
        String id = vmElement.getAttribute("id");
        if (id != null) {
            String vmArgs;
            String installPath = vmElement.getAttribute("path");
            String name = vmElement.getAttribute("name");
            if (name == null) {
                if (installPath == null) {
                    container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_3, (Object[])new String[]{vmType.getName()})));
                    return;
                }
                container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_4, (Object[])new String[]{installPath})));
                return;
            }
            if (installPath == null) {
                container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_5, (Object[])new String[]{name})));
                return;
            }
            VMStandin vmStandin = new VMStandin(vmType, id);
            vmStandin.setName(name);
            File installLocation = new File(installPath);
            vmStandin.setInstallLocation(installLocation);
            String install = installLocation.getAbsolutePath();
            boolean changed = "org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType".equals(vmType.getId()) && LaunchingPlugin.timeStampChanged(install);
            container.addVM(vmStandin);
            if (!changed) {
                NodeList list = vmElement.getChildNodes();
                int length = list.getLength();
                int i = 0;
                while (i < length) {
                    String externalForm;
                    Node node = list.item(i);
                    short type = node.getNodeType();
                    if (type == 1) {
                        Element subElement = (Element)node;
                        String subElementName = subElement.getNodeName();
                        if (subElementName.equals("libraryLocation")) {
                            LibraryLocation loc = VMDefinitionsContainer.getLibraryLocation(subElement);
                            vmStandin.setLibraryLocations(new LibraryLocation[]{loc});
                        } else if (subElementName.equals("libraryLocations")) {
                            VMDefinitionsContainer.setLibraryLocations(vmStandin, subElement);
                        } else if (subElementName.equals("attributeMap")) {
                            NodeList entries = subElement.getElementsByTagName("entry");
                            int j = 0;
                            while (j < entries.getLength()) {
                                Node entryNode = entries.item(j);
                                if (entryNode instanceof Element) {
                                    Element entryElement = (Element)entryNode;
                                    String key = entryElement.getAttribute("key");
                                    String value = entryElement.getAttribute("value");
                                    if (key != null && value != null) {
                                        vmStandin.setAttribute(key, value);
                                    }
                                }
                                ++j;
                            }
                        }
                    }
                    if ((externalForm = vmElement.getAttribute("javadocURL")) != null && externalForm.length() > 0) {
                        try {
                            vmStandin.setJavadocLocation(new URL(externalForm));
                        }
                        catch (MalformedURLException e) {
                            container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_6, (Object[])new String[]{name}), (Throwable)e));
                        }
                    }
                    ++i;
                }
            }
            if ((vmArgs = vmElement.getAttribute("vmargs")) != null && vmArgs.length() > 0) {
                vmStandin.setVMArgs(vmArgs);
            }
        } else {
            String installPath = vmElement.getAttribute("path");
            String name = vmElement.getAttribute("name");
            if (name != null) {
                container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_7, (Object[])new String[]{name})));
            } else if (installPath != null) {
                container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_7, (Object[])new String[]{installPath})));
            } else {
                container.addStatus((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.VMDefinitionsContainer_9, (Object[])new String[]{vmType.getName()})));
            }
        }
    }

    private static LibraryLocation getLibraryLocation(Element libLocationElement) {
        String jreJar = libLocationElement.getAttribute("jreJar");
        String jreSrc = libLocationElement.getAttribute("jreSrc");
        String pkgRoot = libLocationElement.getAttribute("pkgRoot");
        String jreJavadoc = libLocationElement.getAttribute("jreJavadoc");
        URL javadocURL = null;
        if (jreJavadoc.length() == 0) {
            jreJavadoc = null;
        } else {
            try {
                javadocURL = new URL(jreJavadoc);
            }
            catch (MalformedURLException malformedURLException) {
                LaunchingPlugin.log("Library location element is specified incorrectly.");
            }
        }
        if (jreJar != null && jreSrc != null && pkgRoot != null) {
            return new LibraryLocation((IPath)new Path(jreJar), (IPath)new Path(jreSrc), (IPath)new Path(pkgRoot), javadocURL);
        }
        LaunchingPlugin.log("Library location element is specified incorrectly.");
        return null;
    }

    private static void setLibraryLocations(IVMInstall vm, Element libLocationsElement) {
        NodeList list = libLocationsElement.getChildNodes();
        int length = list.getLength();
        ArrayList<LibraryLocation> locations = new ArrayList<LibraryLocation>(length);
        int i = 0;
        while (i < length) {
            Element libraryLocationElement;
            Node node = list.item(i);
            short type = node.getNodeType();
            if (type == 1 && (libraryLocationElement = (Element)node).getNodeName().equals("libraryLocation")) {
                locations.add(VMDefinitionsContainer.getLibraryLocation(libraryLocationElement));
            }
            ++i;
        }
        vm.setLibraryLocations(locations.toArray(new LibraryLocation[locations.size()]));
    }

    public void removeVM(IVMInstall vm) {
        this.fVMList.remove(vm);
        this.fInvalidVMList.remove(vm);
        List list = (List)this.fVMTypeToVMMap.get(vm.getVMInstallType());
        if (list != null) {
            list.remove(vm);
        }
    }

    private void addStatus(IStatus status) {
        if (this.fStatus == null) {
            this.fStatus = new MultiStatus("org.eclipse.jdt.launching", 0, LaunchingMessages.VMDefinitionsContainer_10, null);
        }
        this.fStatus.add(status);
    }

    public IStatus getStatus() {
        return this.fStatus;
    }
}

