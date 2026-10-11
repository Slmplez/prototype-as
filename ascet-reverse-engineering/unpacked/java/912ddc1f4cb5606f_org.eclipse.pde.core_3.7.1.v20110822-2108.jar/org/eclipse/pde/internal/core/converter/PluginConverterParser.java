/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Version
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.pde.internal.core.converter;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.StringTokenizer;
import java.util.Vector;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.converter.IModel;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Version;
import org.osgi.util.tracker.ServiceTracker;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class PluginConverterParser
extends DefaultHandler
implements IModel {
    private static ServiceTracker xmlTracker = null;
    private PluginInfo manifestInfo = new PluginInfo();
    private BundleContext context;
    private Version target;
    private static final Version TARGET21 = new Version(2, 1, 0);
    Stack stateStack = new Stack();
    Stack objectStack = new Stack();
    Locator locator = null;
    private static final int IGNORED_ELEMENT_STATE = 0;
    private static final int INITIAL_STATE = 1;
    private static final int PLUGIN_STATE = 2;
    private static final int PLUGIN_RUNTIME_STATE = 3;
    private static final int PLUGIN_REQUIRES_STATE = 4;
    private static final int PLUGIN_EXTENSION_POINT_STATE = 5;
    private static final int PLUGIN_EXTENSION_STATE = 6;
    private static final int RUNTIME_LIBRARY_STATE = 7;
    private static final int LIBRARY_EXPORT_STATE = 8;
    private static final int PLUGIN_REQUIRES_IMPORT_STATE = 9;
    private static final int FRAGMENT_STATE = 11;

    public PluginConverterParser(BundleContext context, Version target) {
        this.context = context;
        this.target = target;
    }

    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
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
                break;
            }
            case 2: 
            case 11: {
                break;
            }
            case 3: {
                if (!elementName.equals("runtime")) break;
                this.stateStack.pop();
                break;
            }
            case 4: {
                if (!elementName.equals("requires")) break;
                this.stateStack.pop();
                this.objectStack.pop();
                break;
            }
            case 5: {
                if (!elementName.equals("extension-point")) break;
                this.stateStack.pop();
                break;
            }
            case 6: {
                if (!elementName.equals("extension")) break;
                this.stateStack.pop();
                break;
            }
            case 7: {
                if (!elementName.equals("library")) break;
                String curLibrary = (String)this.objectStack.pop();
                if (!curLibrary.trim().equals("")) {
                    Vector exportsVector = (Vector)this.objectStack.pop();
                    if (this.manifestInfo.libraries == null) {
                        this.manifestInfo.libraries = new HashMap(3);
                        this.manifestInfo.libraryPaths = new ArrayList(3);
                    }
                    this.manifestInfo.libraries.put(curLibrary, exportsVector);
                    this.manifestInfo.libraryPaths.add(curLibrary.replace('\\', '/'));
                }
                this.stateStack.pop();
                break;
            }
            case 8: {
                if (!elementName.equals("export")) break;
                this.stateStack.pop();
                break;
            }
            case 9: {
                if (!elementName.equals("import")) break;
                this.stateStack.pop();
            }
        }
    }

    public void handleExtensionPointState(String elementName, Attributes attributes) {
        this.stateStack.push(new Integer(0));
        this.manifestInfo.hasExtensionExtensionPoints = true;
    }

    public void handleExtensionState(String elementName, Attributes attributes) {
        this.stateStack.push(new Integer(0));
        this.manifestInfo.hasExtensionExtensionPoints = true;
    }

    public void handleInitialState(String elementName, Attributes attributes) {
        if (elementName.equals("plugin")) {
            this.stateStack.push(new Integer(2));
            this.parsePluginAttributes(attributes);
        } else if (elementName.equals("fragment")) {
            this.manifestInfo.fragment = true;
            this.stateStack.push(new Integer(11));
            this.parseFragmentAttributes(attributes);
        } else {
            this.stateStack.push(new Integer(0));
            this.internalError(elementName);
        }
    }

    public void handleLibraryExportState(String elementName, Attributes attributes) {
        this.stateStack.push(new Integer(0));
    }

    public void handleLibraryState(String elementName, Attributes attributes) {
        if (elementName.equals("export")) {
            this.stateStack.push(new Integer(8));
            String currentLib = (String)this.objectStack.peek();
            if (attributes == null) {
                return;
            }
            String maskValue = attributes.getValue("", "name");
            this.objectStack.pop();
            Vector exportMask = (Vector)this.objectStack.peek();
            this.objectStack.push(currentLib);
            if (maskValue != null) {
                StringTokenizer tok = new StringTokenizer(maskValue, ",");
                while (tok.hasMoreTokens()) {
                    String value = tok.nextToken();
                    if (exportMask.contains(maskValue)) continue;
                    exportMask.addElement(value.trim());
                }
            }
            return;
        }
        if (elementName.equals("packages")) {
            this.stateStack.push(new Integer(0));
            return;
        }
        this.stateStack.push(new Integer(0));
        this.internalError(elementName);
    }

    public void handlePluginState(String elementName, Attributes attributes) {
        if (elementName.equals("runtime")) {
            Object whatIsIt = this.objectStack.peek();
            if (whatIsIt instanceof PluginInfo && ((PluginInfo)this.objectStack.peek()).libraries != null) {
                this.stateStack.push(new Integer(0));
                return;
            }
            this.stateStack.push(new Integer(3));
            return;
        }
        if (elementName.equals("requires")) {
            this.stateStack.push(new Integer(4));
            this.objectStack.push(new Vector());
            this.parseRequiresAttributes(attributes);
            return;
        }
        if (elementName.equals("extension-point")) {
            this.manifestInfo.singleton = true;
            this.stateStack.push(new Integer(5));
            return;
        }
        if (elementName.equals("extension")) {
            this.manifestInfo.singleton = true;
            this.stateStack.push(new Integer(6));
            return;
        }
        this.stateStack.push(new Integer(0));
        this.internalError(elementName);
    }

    public void handleRequiresImportState(String elementName, Attributes attributes) {
        this.stateStack.push(new Integer(0));
    }

    public void handleRequiresState(String elementName, Attributes attributes) {
        if (elementName.equals("import")) {
            this.parsePluginRequiresImport(attributes);
            return;
        }
        this.stateStack.push(new Integer(0));
        this.internalError(elementName);
    }

    public void handleRuntimeState(String elementName, Attributes attributes) {
        if (elementName.equals("library")) {
            this.stateStack.push(new Integer(7));
            this.parseLibraryAttributes(attributes);
            return;
        }
        this.stateStack.push(new Integer(0));
        this.internalError(elementName);
    }

    public synchronized PluginInfo parsePlugin(InputStream in) throws Exception {
        SAXParserFactory factory = PluginConverterParser.acquireXMLParsing(this.context);
        if (factory == null) {
            return null;
        }
        factory.setNamespaceAware(true);
        factory.setNamespaceAware(true);
        try {
            factory.setFeature("http://xml.org/sax/features/string-interning", true);
        }
        catch (SAXException sAXException) {}
        factory.setValidating(false);
        factory.newSAXParser().parse(in, (DefaultHandler)this);
        return this.manifestInfo;
    }

    public static SAXParserFactory acquireXMLParsing(BundleContext context) {
        SAXParserFactory result;
        if (xmlTracker == null) {
            xmlTracker = new ServiceTracker(context, "javax.xml.parsers.SAXParserFactory", null);
            xmlTracker.open();
        }
        if ((result = (SAXParserFactory)xmlTracker.getService()) != null) {
            return result;
        }
        return SAXParserFactory.newInstance();
    }

    public static void releaseXMLParsing() {
        if (xmlTracker != null) {
            xmlTracker.close();
        }
    }

    public void parseFragmentAttributes(Attributes attributes) {
        this.objectStack.push(this.manifestInfo);
        int len = attributes.getLength();
        int i = 0;
        while (i < len) {
            String attrName = attributes.getLocalName(i);
            String attrValue = attributes.getValue(i).trim();
            if (attrName.equals("id")) {
                this.manifestInfo.pluginId = attrValue;
            } else if (attrName.equals("name")) {
                this.manifestInfo.pluginName = attrValue;
            } else if (attrName.equals("version")) {
                this.manifestInfo.version = attrValue;
            } else if (attrName.equals("provider-name")) {
                this.manifestInfo.vendor = attrValue;
            } else if (attrName.equals("plugin-id")) {
                this.manifestInfo.masterPluginId = attrValue;
            } else if (attrName.equals("plugin-version")) {
                this.manifestInfo.masterVersion = attrValue;
            } else if (attrName.equals("match")) {
                this.manifestInfo.masterMatch = attrValue;
            }
            ++i;
        }
    }

    public void parseLibraryAttributes(Attributes attributes) {
        this.objectStack.push(new Vector());
        String current = attributes.getValue("", "name");
        this.objectStack.push(current);
    }

    public void parsePluginAttributes(Attributes attributes) {
        this.objectStack.push(this.manifestInfo);
        int len = attributes.getLength();
        int i = 0;
        while (i < len) {
            String attrName = attributes.getLocalName(i);
            String attrValue = attributes.getValue(i).trim();
            if (attrName.equals("id")) {
                this.manifestInfo.pluginId = attrValue;
            } else if (attrName.equals("name")) {
                this.manifestInfo.pluginName = attrValue;
            } else if (attrName.equals("version")) {
                this.manifestInfo.version = attrValue;
            } else if (attrName.equals("vendor-name") || attrName.equals("provider-name")) {
                this.manifestInfo.vendor = attrValue;
            } else if (attrName.equals("class")) {
                this.manifestInfo.pluginClass = attrValue;
            }
            ++i;
        }
    }

    public void parsePluginRequiresImport(Attributes attributes) {
        String plugin;
        if (this.manifestInfo.requires == null) {
            this.manifestInfo.requires = new ArrayList();
        }
        if ((plugin = attributes.getValue("", "plugin")) == null) {
            return;
        }
        if (plugin.equals("org.eclipse.core.boot")) {
            return;
        }
        if (plugin.equals("org.eclipse.core.runtime.compatibility")) {
            this.manifestInfo.compatibilityFound = true;
        }
        String version = attributes.getValue("", "version");
        String optional = attributes.getValue("", "optional");
        String export = attributes.getValue("", "export");
        String match = attributes.getValue("", "match");
        this.manifestInfo.requires.add(new Prerequisite(plugin, version, "true".equalsIgnoreCase(optional), "true".equalsIgnoreCase(export), match));
    }

    public void parseRequiresAttributes(Attributes attributes) {
    }

    static String replace(String s, String from, String to) {
        String str = s;
        int fromLen = from.length();
        int toLen = to.length();
        int ix = str.indexOf(from);
        while (ix != -1) {
            str = String.valueOf(str.substring(0, ix)) + to + str.substring(ix + fromLen);
            ix = str.indexOf(from, ix + toLen);
        }
        return str;
    }

    public void startDocument() {
        this.stateStack.push(new Integer(1));
    }

    public void startElement(String uri, String elementName, String qName, Attributes attributes) {
        switch ((Integer)this.stateStack.peek()) {
            case 1: {
                this.handleInitialState(elementName, attributes);
                break;
            }
            case 2: 
            case 11: {
                this.handlePluginState(elementName, attributes);
                break;
            }
            case 3: {
                this.handleRuntimeState(elementName, attributes);
                break;
            }
            case 4: {
                this.handleRequiresState(elementName, attributes);
                break;
            }
            case 5: {
                this.handleExtensionPointState(elementName, attributes);
                break;
            }
            case 6: {
                this.handleExtensionState(elementName, attributes);
                break;
            }
            case 7: {
                this.handleLibraryState(elementName, attributes);
                break;
            }
            case 8: {
                this.handleLibraryExportState(elementName, attributes);
                break;
            }
            case 9: {
                this.handleRequiresImportState(elementName, attributes);
                break;
            }
            default: {
                this.stateStack.push(new Integer(0));
            }
        }
    }

    private void internalError(String elementName) {
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if (target.equalsIgnoreCase("eclipse")) {
            this.manifestInfo.schemaVersion = "3.0";
            StringTokenizer tokenizer = new StringTokenizer(data, "=\"");
            while (tokenizer.hasMoreTokens()) {
                String token = tokenizer.nextToken();
                if (!token.equalsIgnoreCase("version")) continue;
                if (!tokenizer.hasMoreTokens()) break;
                this.manifestInfo.schemaVersion = tokenizer.nextToken();
                break;
            }
        }
    }

    public class PluginInfo {
        private String schemaVersion;
        private String pluginId;
        private String version;
        private String vendor;
        private ArrayList libraryPaths;
        private Map libraries;
        private ArrayList requires;
        private boolean requiresExpanded = false;
        private boolean compatibilityFound = false;
        private String pluginClass;
        private String masterPluginId;
        private String masterVersion;
        private String masterMatch;
        private Set filters;
        private String pluginName;
        private boolean singleton;
        private boolean fragment;
        private static final String TARGET21_STRING = "2.1";
        private boolean hasExtensionExtensionPoints = false;

        public boolean isFragment() {
            return this.fragment;
        }

        public String toString() {
            return "plugin-id: " + this.pluginId + "  version: " + this.version + " libraries: " + this.libraries + " class:" + this.pluginClass + " master: " + this.masterPluginId + " master-version: " + this.masterVersion + " requires: " + this.requires + " singleton: " + this.singleton;
        }

        public Map getLibraries() {
            if (this.libraries == null) {
                return new HashMap(0);
            }
            return this.libraries;
        }

        public ArrayList getRequires() {
            if (!TARGET21.equals((Object)PluginConverterParser.this.target) && this.schemaVersion == null && !this.requiresExpanded) {
                this.requiresExpanded = true;
                if (this.requires == null) {
                    this.requires = new ArrayList(1);
                    this.requires.add(new Prerequisite("org.eclipse.core.runtime", TARGET21_STRING, false, false, "greaterOrEqual"));
                    this.requires.add(new Prerequisite("org.eclipse.core.runtime.compatibility", null, false, false, null));
                } else {
                    int i = 0;
                    while (i < this.requires.size()) {
                        Prerequisite analyzed = (Prerequisite)this.requires.get(i);
                        if ("org.eclipse.ui".equals(analyzed.getName())) {
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.ui.workbench.texteditor", null, true, analyzed.isExported(), null));
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.jface.text", null, true, analyzed.isExported(), null));
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.ui.editors", null, true, analyzed.isExported(), null));
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.ui.views", null, true, analyzed.isExported(), null));
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.ui.ide", null, true, analyzed.isExported(), null));
                        } else if ("org.eclipse.help".equals(analyzed.getName())) {
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.help.base", null, true, analyzed.isExported(), null));
                        } else if ("org.eclipse.core.runtime".equals(analyzed.getName()) && !this.compatibilityFound) {
                            this.requires.add(i + 1, new Prerequisite("org.eclipse.core.runtime.compatibility", null, false, analyzed.isExported(), null));
                        }
                        ++i;
                    }
                    if (!this.requires.contains(new Prerequisite("org.eclipse.core.runtime.compatibility", null, false, false, null))) {
                        this.requires.add(new Prerequisite("org.eclipse.core.runtime.compatibility", null, false, false, null));
                    }
                    Prerequisite runtimePrereq = new Prerequisite("org.eclipse.core.runtime", null, false, false, null);
                    this.requires.remove(runtimePrereq);
                    this.requires.add(new Prerequisite("org.eclipse.core.runtime", TARGET21_STRING, false, false, "greaterOrEqual"));
                }
            }
            if (this.requires == null) {
                this.requires = new ArrayList(0);
                return this.requires;
            }
            return this.requires;
        }

        public String getMasterId() {
            return this.masterPluginId;
        }

        public String getMasterVersion() {
            return this.masterVersion;
        }

        public String getMasterMatch() {
            return this.masterMatch;
        }

        public String getPluginClass() {
            return this.pluginClass;
        }

        public String getUniqueId() {
            return this.pluginId;
        }

        public String getVersion() {
            return this.version;
        }

        public Set getPackageFilters() {
            return this.filters;
        }

        public String[] getLibrariesName() {
            if (this.libraryPaths == null) {
                return new String[0];
            }
            return this.libraryPaths.toArray(new String[this.libraryPaths.size()]);
        }

        public String getPluginName() {
            return this.pluginName;
        }

        public String getProviderName() {
            return this.vendor;
        }

        public boolean isSingleton() {
            return this.singleton;
        }

        public boolean hasExtensionExtensionPoints() {
            return this.hasExtensionExtensionPoints;
        }

        public String getRoot() {
            return this.isFragment() ? "fragment" : "plugin";
        }

        public String validateForm() {
            if (this.pluginId == null) {
                return NLS.bind((String)PDECoreMessages.PluginParser_EclipseConverterMissingAttribute, (Object[])new String[]{this.getRoot(), "id", this.getRoot()});
            }
            if (this.pluginName == null) {
                return NLS.bind((String)PDECoreMessages.PluginParser_EclipseConverterMissingAttribute, (Object[])new String[]{this.getRoot(), "name", this.getRoot()});
            }
            if (this.version == null) {
                return NLS.bind((String)PDECoreMessages.PluginParser_EclipseConverterMissingAttribute, (Object[])new String[]{this.getRoot(), "version", this.getRoot()});
            }
            if (this.isFragment() && this.masterPluginId == null) {
                return NLS.bind((String)PDECoreMessages.PluginParser_EclipseConverterMissingAttribute, (Object[])new String[]{this.getRoot(), "plugin-id", this.getRoot()});
            }
            if (this.isFragment() && this.masterVersion == null) {
                return NLS.bind((String)PDECoreMessages.PluginParser_EclipseConverterMissingAttribute, (Object[])new String[]{this.getRoot(), "plugin-version", this.getRoot()});
            }
            return null;
        }
    }

    public class Prerequisite {
        String name;
        String version;
        boolean optional;
        boolean export;
        String match;

        public boolean isExported() {
            return this.export;
        }

        public String getMatch() {
            return this.match;
        }

        public String getName() {
            return this.name;
        }

        public boolean isOptional() {
            return this.optional;
        }

        public String getVersion() {
            return this.version;
        }

        public Prerequisite(String preqName, String prereqVersion, boolean isOtional, boolean isExported, String prereqMatch) {
            this.name = preqName;
            this.version = prereqVersion;
            this.optional = isOtional;
            this.export = isExported;
            this.match = prereqMatch;
        }

        public String toString() {
            return this.name;
        }

        public boolean equals(Object prereq) {
            if (!(prereq instanceof Prerequisite)) {
                return false;
            }
            return this.name.equals(((Prerequisite)prereq).name);
        }
    }
}

