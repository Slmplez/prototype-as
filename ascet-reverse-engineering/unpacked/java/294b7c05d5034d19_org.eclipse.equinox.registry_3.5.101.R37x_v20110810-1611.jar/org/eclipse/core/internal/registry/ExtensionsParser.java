/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.registry;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.Contribution;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.internal.registry.RegistryProperties;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class ExtensionsParser
extends DefaultHandler {
    private static final String NO_EXTENSION_MUNGING = "eclipse.noExtensionMunging";
    private static final String VERSION_3_0 = "3.0";
    private static final String VERSION_3_2 = "3.2";
    private static Map extensionPointMap;
    private static long cumulativeTime;
    private boolean compatibilityMode;
    private String locationName = null;
    private Stack stateStack = new Stack();
    private Stack objectStack = new Stack();
    private String schemaVersion = null;
    private MultiStatus status;
    private ExtensionRegistry registry;
    protected ResourceBundle resources;
    private RegistryObjectManager objectManager;
    private Contribution contribution;
    private String configurationElementValue;
    public static final int PARSE_PROBLEM = 1;
    public static final String PLUGIN = "plugin";
    public static final String PLUGIN_ID = "id";
    public static final String PLUGIN_NAME = "name";
    public static final String FRAGMENT = "fragment";
    public static final String BUNDLE_UID = "id";
    public static final String EXTENSION_POINT = "extension-point";
    public static final String EXTENSION_POINT_NAME = "name";
    public static final String EXTENSION_POINT_ID = "id";
    public static final String EXTENSION_POINT_SCHEMA = "schema";
    public static final String EXTENSION = "extension";
    public static final String EXTENSION_NAME = "name";
    public static final String EXTENSION_ID = "id";
    public static final String EXTENSION_TARGET = "point";
    public static final String ELEMENT = "element";
    public static final String ELEMENT_NAME = "name";
    public static final String ELEMENT_VALUE = "value";
    public static final String PROPERTY = "property";
    public static final String PROPERTY_NAME = "name";
    public static final String PROPERTY_VALUE = "value";
    private static final int IGNORED_ELEMENT_STATE = 0;
    private static final int INITIAL_STATE = 1;
    private static final int BUNDLE_STATE = 2;
    private static final int BUNDLE_EXTENSION_POINT_STATE = 5;
    private static final int BUNDLE_EXTENSION_STATE = 6;
    private static final int CONFIGURATION_ELEMENT_STATE = 10;
    private static final int EXTENSION_POINT_INDEX = 0;
    private static final int EXTENSION_INDEX = 1;
    private static final int LAST_INDEX = 1;
    private ArrayList[] scratchVectors = new ArrayList[2];
    private Locator locator = null;
    private boolean extractNamespaces = false;
    private ArrayList processedExtensionIds = null;
    private ArrayList addedRegistryObjects = new ArrayList(5);

    static {
        ExtensionsParser.initializeExtensionPointMap();
        cumulativeTime = 0L;
    }

    private static void initializeExtensionPointMap() {
        HashMap<String, String> map = new HashMap<String, String>(13);
        map.put("org.eclipse.ui.markerImageProvider", "org.eclipse.ui.ide.markerImageProvider");
        map.put("org.eclipse.ui.markerHelp", "org.eclipse.ui.ide.markerHelp");
        map.put("org.eclipse.ui.markerImageProviders", "org.eclipse.ui.ide.markerImageProviders");
        map.put("org.eclipse.ui.markerResolution", "org.eclipse.ui.ide.markerResolution");
        map.put("org.eclipse.ui.projectNatureImages", "org.eclipse.ui.ide.projectNatureImages");
        map.put("org.eclipse.ui.resourceFilters", "org.eclipse.ui.ide.resourceFilters");
        map.put("org.eclipse.ui.markerUpdaters", "org.eclipse.ui.editors.markerUpdaters");
        map.put("org.eclipse.ui.documentProviders", "org.eclipse.ui.editors.documentProviders");
        map.put("org.eclipse.ui.workbench.texteditor.markerAnnotationSpecification", "org.eclipse.ui.editors.markerAnnotationSpecification");
        map.put("org.eclipse.help.browser", "org.eclipse.help.base.browser");
        map.put("org.eclipse.help.luceneAnalyzer", "org.eclipse.help.base.luceneAnalyzer");
        map.put("org.eclipse.help.webapp", "org.eclipse.help.base.webapp");
        map.put("org.eclipse.help.support", "org.eclipse.ui.helpSupport");
        extensionPointMap = map;
    }

    public ExtensionsParser(MultiStatus status, ExtensionRegistry registry) {
        this.status = status;
        this.registry = registry;
    }

    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
    }

    public void characters(char[] ch, int start, int length) {
        int state = (Integer)this.stateStack.peek();
        if (state != 10) {
            return;
        }
        if (state == 10) {
            ConfigurationElement currentConfigElement = (ConfigurationElement)this.objectStack.peek();
            String value = new String(ch, start, length);
            if (this.configurationElementValue == null) {
                if (value.trim().length() != 0) {
                    this.configurationElementValue = value;
                }
            } else {
                this.configurationElementValue = String.valueOf(this.configurationElementValue) + value;
            }
            if (this.configurationElementValue != null) {
                currentConfigElement.setValue(this.configurationElementValue);
            }
        }
    }

    public void endDocument() {
    }

    public void endElement(String uri, String elementName, String qName) {
        switch ((Integer)this.stateStack.peek()) {
            case 0: {
                this.stateStack.pop();
                break;
            }
            case 1: {
                this.internalError(NLS.bind((String)RegistryMessages.parse_internalStack, (Object)elementName));
                break;
            }
            case 2: {
                this.stateStack.pop();
                ArrayList extensionPoints = this.scratchVectors[0];
                ArrayList extensions = this.scratchVectors[1];
                int[] namespaceChildren = new int[2 + extensionPoints.size() + extensions.size()];
                int position = 2;
                if (extensionPoints.size() > 0) {
                    namespaceChildren[0] = extensionPoints.size();
                    Iterator iter = extensionPoints.iterator();
                    while (iter.hasNext()) {
                        namespaceChildren[position++] = ((RegistryObject)iter.next()).getObjectId();
                    }
                    extensionPoints.clear();
                }
                if (extensions.size() > 0) {
                    Extension[] renamedExtensions = this.fixRenamedExtensionPoints(extensions.toArray(new Extension[extensions.size()]));
                    namespaceChildren[1] = renamedExtensions.length;
                    int i = 0;
                    while (i < renamedExtensions.length) {
                        namespaceChildren[position++] = renamedExtensions[i].getObjectId();
                        ++i;
                    }
                    extensions.clear();
                }
                this.contribution.setRawChildren(namespaceChildren);
                break;
            }
            case 5: {
                if (!elementName.equals(EXTENSION_POINT)) break;
                this.stateStack.pop();
                break;
            }
            case 6: {
                if (!elementName.equals(EXTENSION)) break;
                this.stateStack.pop();
                Extension currentExtension = (Extension)this.objectStack.pop();
                if (currentExtension.getNamespaceIdentifier() == null) {
                    currentExtension.setNamespaceIdentifier(this.contribution.getDefaultNamespace());
                }
                currentExtension.setContributorId(this.contribution.getContributorId());
                this.scratchVectors[1].add(currentExtension);
                break;
            }
            case 10: {
                this.stateStack.pop();
                this.configurationElementValue = null;
                ConfigurationElement currentConfigElement = (ConfigurationElement)this.objectStack.pop();
                String value = currentConfigElement.getValueAsIs();
                if (value != null) {
                    currentConfigElement.setValue(this.translate(value).trim());
                }
                RegistryObject parent = (RegistryObject)this.objectStack.peek();
                int[] oldValues = parent.getRawChildren();
                int size = oldValues.length;
                int[] newValues = new int[size + 1];
                int i = 0;
                while (i < size) {
                    newValues[i] = oldValues[i];
                    ++i;
                }
                newValues[size] = currentConfigElement.getObjectId();
                parent.setRawChildren(newValues);
                currentConfigElement.setParentId(parent.getObjectId());
                currentConfigElement.setParentType(parent instanceof ConfigurationElement ? (byte)1 : 2);
            }
        }
    }

    public void error(SAXParseException ex) {
        this.logStatus(ex);
    }

    public void fatalError(SAXParseException ex) throws SAXException {
        this.cleanup();
        this.logStatus(ex);
        throw ex;
    }

    private void cleanup() {
        Iterator i = this.addedRegistryObjects.iterator();
        while (i.hasNext()) {
            RegistryObject object = (RegistryObject)i.next();
            if (object instanceof ExtensionPoint) {
                String id = ((ExtensionPoint)object).getUniqueIdentifier();
                this.objectManager.removeExtensionPoint(id);
                continue;
            }
            this.objectManager.remove(object.getObjectId(), true);
        }
    }

    private void handleExtensionPointState(String elementName) {
        this.stateStack.push(new Integer(0));
        this.unknownElement(EXTENSION_POINT, elementName);
    }

    private void handleExtensionState(String elementName, Attributes attributes) {
        this.stateStack.push(new Integer(10));
        this.configurationElementValue = null;
        ConfigurationElement currentConfigurationElement = this.registry.getElementFactory().createConfigurationElement(this.contribution.shouldPersist());
        currentConfigurationElement.setContributorId(this.contribution.getContributorId());
        this.objectStack.push(currentConfigurationElement);
        currentConfigurationElement.setName(elementName);
        this.parseConfigurationElementAttributes(attributes);
        this.objectManager.add(currentConfigurationElement, true);
        this.addedRegistryObjects.add(currentConfigurationElement);
    }

    private void handleInitialState(String elementName, Attributes attributes) {
        this.compatibilityMode = attributes.getLength() > 0;
        this.stateStack.push(new Integer(2));
        this.objectStack.push(this.contribution);
    }

    private void handleBundleState(String elementName, Attributes attributes) {
        if (elementName.equals(EXTENSION_POINT)) {
            this.stateStack.push(new Integer(5));
            this.parseExtensionPointAttributes(attributes);
            return;
        }
        if (elementName.equals(EXTENSION)) {
            this.stateStack.push(new Integer(6));
            this.parseExtensionAttributes(attributes);
            return;
        }
        this.stateStack.push(new Integer(0));
        if (!this.compatibilityMode) {
            this.unknownElement(PLUGIN, elementName);
        }
    }

    private void logStatus(SAXParseException ex) {
        String name = ex.getSystemId();
        if (name == null) {
            name = this.locationName;
        }
        name = name == null ? "" : name.substring(1 + name.lastIndexOf("/"));
        String msg = name.equals("") ? NLS.bind((String)RegistryMessages.parse_error, (Object)ex.getMessage()) : NLS.bind((String)RegistryMessages.parse_errorNameLineColumn, (Object[])new Object[]{name, Integer.toString(ex.getLineNumber()), Integer.toString(ex.getColumnNumber()), ex.getMessage()});
        this.error((IStatus)new Status(2, "org.eclipse.equinox.registry", 1, msg, (Throwable)ex));
    }

    public Contribution parseManifest(SAXParserFactory factory, InputSource in, String manifestName, RegistryObjectManager registryObjects, Contribution currentNamespace, ResourceBundle bundle) throws ParserConfigurationException, SAXException, IOException {
        long start = 0L;
        this.resources = bundle;
        this.objectManager = registryObjects;
        this.contribution = currentNamespace;
        if (this.registry.debug()) {
            start = System.currentTimeMillis();
        }
        if (factory == null) {
            throw new SAXException(RegistryMessages.parse_xmlParserNotAvailable);
        }
        try {
            this.locationName = in.getSystemId();
            if (this.locationName == null) {
                this.locationName = manifestName;
            }
            factory.setNamespaceAware(true);
            try {
                factory.setFeature("http://xml.org/sax/features/string-interning", true);
            }
            catch (SAXException sAXException) {}
            factory.setValidating(false);
            factory.newSAXParser().parse(in, (DefaultHandler)this);
            Contribution contribution = (Contribution)this.objectStack.pop();
            return contribution;
        }
        finally {
            if (this.registry.debug()) {
                System.out.println("Cumulative parse time so far : " + (cumulativeTime += System.currentTimeMillis() - start));
            }
        }
    }

    private void parseConfigurationElementAttributes(Attributes attributes) {
        int len;
        ConfigurationElement parentConfigurationElement = (ConfigurationElement)this.objectStack.peek();
        int n = len = attributes != null ? attributes.getLength() : 0;
        if (len == 0) {
            parentConfigurationElement.setProperties(RegistryObjectManager.EMPTY_STRING_ARRAY);
            return;
        }
        String[] properties = new String[len * 2];
        int i = 0;
        while (i < len) {
            properties[i * 2] = attributes.getLocalName(i);
            properties[i * 2 + 1] = this.translate(attributes.getValue(i));
            ++i;
        }
        parentConfigurationElement.setProperties(properties);
        properties = null;
    }

    private void parseExtensionAttributes(Attributes attributes) {
        Extension currentExtension = this.registry.getElementFactory().createExtension(this.contribution.shouldPersist());
        this.objectStack.push(currentExtension);
        String simpleId = null;
        String namespaceName = null;
        int len = attributes != null ? attributes.getLength() : 0;
        int i = 0;
        while (i < len) {
            String attrName = attributes.getLocalName(i);
            String attrValue = attributes.getValue(i).trim();
            if (attrName.equals("name")) {
                currentExtension.setLabel(this.translate(attrValue));
            } else if (attrName.equals("id")) {
                int simpleIdStart = attrValue.lastIndexOf(46);
                if (simpleIdStart != -1 && this.extractNamespaces) {
                    simpleId = attrValue.substring(simpleIdStart + 1);
                    namespaceName = attrValue.substring(0, simpleIdStart);
                } else {
                    simpleId = attrValue;
                    namespaceName = this.contribution.getDefaultNamespace();
                }
                currentExtension.setSimpleIdentifier(simpleId);
                currentExtension.setNamespaceIdentifier(namespaceName);
            } else if (attrName.equals(EXTENSION_TARGET)) {
                String targetName;
                if (attrValue.lastIndexOf(46) == -1) {
                    String baseId = this.contribution.getDefaultNamespace();
                    targetName = String.valueOf(baseId) + '.' + attrValue;
                } else {
                    targetName = attrValue;
                }
                currentExtension.setExtensionPointIdentifier(targetName);
            } else {
                this.unknownAttribute(attrName, EXTENSION);
            }
            ++i;
        }
        if (currentExtension.getExtensionPointIdentifier() == null) {
            this.missingAttribute(EXTENSION_TARGET, EXTENSION);
            this.stateStack.pop();
            this.stateStack.push(new Integer(0));
            this.objectStack.pop();
            return;
        }
        if (simpleId != null && this.registry.debug()) {
            String uniqueId = String.valueOf(namespaceName) + '.' + simpleId;
            IExtension existingExtension = this.registry.getExtension(uniqueId);
            if (existingExtension != null) {
                String currentSupplier = this.contribution.getDefaultNamespace();
                String existingSupplier = existingExtension.getContributor().getName();
                String msg = NLS.bind((String)RegistryMessages.parse_duplicateExtension, (Object[])new String[]{currentSupplier, existingSupplier, uniqueId});
                this.registry.log((IStatus)new Status(2, "org.eclipse.equinox.registry", 0, msg, null));
            } else if (this.processedExtensionIds != null) {
                Iterator i2 = this.processedExtensionIds.iterator();
                while (i2.hasNext()) {
                    String currentSupplier;
                    if (!uniqueId.equals(i2.next())) continue;
                    String existingSupplier = currentSupplier = this.contribution.getDefaultNamespace();
                    String msg = NLS.bind((String)RegistryMessages.parse_duplicateExtension, (Object[])new String[]{currentSupplier, existingSupplier, uniqueId});
                    this.registry.log((IStatus)new Status(2, "org.eclipse.equinox.registry", 0, msg, null));
                    break;
                }
            }
            if (this.processedExtensionIds == null) {
                this.processedExtensionIds = new ArrayList(10);
            }
            this.processedExtensionIds.add(uniqueId);
        }
        this.objectManager.add(currentExtension, true);
        this.addedRegistryObjects.add(currentExtension);
    }

    private void missingAttribute(String attribute, String element) {
        if (this.locator == null) {
            this.internalError(NLS.bind((String)RegistryMessages.parse_missingAttribute, (Object)attribute, (Object)element));
        } else {
            this.internalError(NLS.bind((String)RegistryMessages.parse_missingAttributeLine, (Object[])new String[]{attribute, element, Integer.toString(this.locator.getLineNumber())}));
        }
    }

    private void unknownAttribute(String attribute, String element) {
        if (this.locator == null) {
            this.internalError(NLS.bind((String)RegistryMessages.parse_unknownAttribute, (Object)attribute, (Object)element));
        } else {
            this.internalError(NLS.bind((String)RegistryMessages.parse_unknownAttributeLine, (Object[])new String[]{attribute, element, Integer.toString(this.locator.getLineNumber())}));
        }
    }

    private void unknownElement(String parent, String element) {
        if (this.locator == null) {
            this.internalError(NLS.bind((String)RegistryMessages.parse_unknownElement, (Object)element, (Object)parent));
        } else {
            this.internalError(NLS.bind((String)RegistryMessages.parse_unknownElementLine, (Object[])new String[]{element, parent, Integer.toString(this.locator.getLineNumber())}));
        }
    }

    private void parseExtensionPointAttributes(Attributes attributes) {
        ExtensionPoint currentExtPoint = this.registry.getElementFactory().createExtensionPoint(this.contribution.shouldPersist());
        int len = attributes != null ? attributes.getLength() : 0;
        int i = 0;
        while (i < len) {
            String attrName = attributes.getLocalName(i);
            String attrValue = attributes.getValue(i).trim();
            if (attrName.equals("name")) {
                currentExtPoint.setLabel(this.translate(attrValue));
            } else if (attrName.equals("id")) {
                String uniqueId;
                String namespaceName;
                int simpleIdStart = attrValue.lastIndexOf(46);
                if (simpleIdStart != -1 && this.extractNamespaces) {
                    namespaceName = attrValue.substring(0, simpleIdStart);
                    uniqueId = attrValue;
                } else {
                    namespaceName = this.contribution.getDefaultNamespace();
                    uniqueId = String.valueOf(namespaceName) + '.' + attrValue;
                }
                currentExtPoint.setUniqueIdentifier(uniqueId);
                currentExtPoint.setNamespace(namespaceName);
            } else if (attrName.equals(EXTENSION_POINT_SCHEMA)) {
                currentExtPoint.setSchema(attrValue);
            } else {
                this.unknownAttribute(attrName, EXTENSION_POINT);
            }
            ++i;
        }
        if (currentExtPoint.getSimpleIdentifier() == null || currentExtPoint.getLabel() == null) {
            String attribute = currentExtPoint.getSimpleIdentifier() == null ? "id" : "name";
            this.missingAttribute(attribute, EXTENSION_POINT);
            this.stateStack.pop();
            this.stateStack.push(new Integer(0));
            return;
        }
        if (!this.objectManager.addExtensionPoint(currentExtPoint, true)) {
            if (this.registry.debug()) {
                String msg = NLS.bind((String)RegistryMessages.parse_duplicateExtensionPoint, (Object)currentExtPoint.getUniqueIdentifier(), (Object)this.contribution.getDefaultNamespace());
                this.registry.log((IStatus)new Status(4, "org.eclipse.equinox.registry", 0, msg, null));
            }
            this.stateStack.pop();
            this.stateStack.push(new Integer(0));
            return;
        }
        if (currentExtPoint.getNamespace() == null) {
            currentExtPoint.setNamespace(this.contribution.getDefaultNamespace());
        }
        currentExtPoint.setContributorId(this.contribution.getContributorId());
        this.addedRegistryObjects.add(currentExtPoint);
        this.scratchVectors[0].add(currentExtPoint);
    }

    public void startDocument() {
        this.stateStack.push(new Integer(1));
        int i = 0;
        while (i <= 1) {
            this.scratchVectors[i] = new ArrayList();
            ++i;
        }
    }

    public void startElement(String uri, String elementName, String qName, Attributes attributes) {
        switch ((Integer)this.stateStack.peek()) {
            case 1: {
                this.handleInitialState(elementName, attributes);
                break;
            }
            case 2: {
                this.handleBundleState(elementName, attributes);
                break;
            }
            case 5: {
                this.handleExtensionPointState(elementName);
                break;
            }
            case 6: 
            case 10: {
                this.handleExtensionState(elementName, attributes);
                break;
            }
            default: {
                this.stateStack.push(new Integer(0));
                if (this.compatibilityMode) break;
                this.internalError(NLS.bind((String)RegistryMessages.parse_unknownTopElement, (Object)elementName));
            }
        }
    }

    public void warning(SAXParseException ex) {
        this.logStatus(ex);
    }

    private void internalError(String message) {
        this.error((IStatus)new Status(2, "org.eclipse.equinox.registry", 1, message, null));
    }

    public void processingInstruction(String target, String data) {
        if (target.equalsIgnoreCase("eclipse")) {
            this.schemaVersion = VERSION_3_0;
            StringTokenizer tokenizer = new StringTokenizer(data, "=\"");
            while (tokenizer.hasMoreTokens()) {
                String token = tokenizer.nextToken();
                if (!token.equalsIgnoreCase("version")) continue;
                if (!tokenizer.hasMoreTokens()) break;
                this.schemaVersion = tokenizer.nextToken();
                break;
            }
            this.initializeExtractNamespace();
        }
    }

    public void error(IStatus error) {
        this.status.add(error);
    }

    protected String translate(String key) {
        return this.registry.translate(key, this.resources);
    }

    private Extension[] fixRenamedExtensionPoints(Extension[] extensions) {
        if (extensions == null || this.versionAtLeast(VERSION_3_0) || RegistryProperties.getProperty(NO_EXTENSION_MUNGING) != null) {
            return extensions;
        }
        int i = 0;
        while (i < extensions.length) {
            Extension extension = extensions[i];
            String oldPointId = extension.getExtensionPointIdentifier();
            String newPointId = (String)extensionPointMap.get(oldPointId);
            if (newPointId != null) {
                extension.setExtensionPointIdentifier(newPointId);
            }
            ++i;
        }
        return extensions;
    }

    private void initializeExtractNamespace() {
        this.extractNamespaces = new Boolean(this.versionAtLeast(VERSION_3_2));
    }

    private boolean versionAtLeast(String testVersion) {
        if (this.schemaVersion == null) {
            return false;
        }
        StringTokenizer testVersionTokenizer = new StringTokenizer(testVersion, ".");
        StringTokenizer schemaVersionTokenizer = new StringTokenizer(this.schemaVersion, ".");
        while (testVersionTokenizer.hasMoreTokens() && schemaVersionTokenizer.hasMoreTokens()) {
            try {
                if (Integer.parseInt(schemaVersionTokenizer.nextToken()) >= Integer.parseInt(testVersionTokenizer.nextToken())) continue;
                return false;
            }
            catch (NumberFormatException numberFormatException) {
                return false;
            }
        }
        return true;
    }
}

