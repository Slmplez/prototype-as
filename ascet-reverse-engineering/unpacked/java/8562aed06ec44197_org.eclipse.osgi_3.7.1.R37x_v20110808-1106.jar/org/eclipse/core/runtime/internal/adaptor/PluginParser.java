/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.IModel;
import org.eclipse.core.runtime.internal.adaptor.IPluginInfo;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Version;
import org.osgi.util.tracker.ServiceTracker;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class PluginParser
extends DefaultHandler
implements IModel {
    private static ServiceTracker<SAXParserFactory, SAXParserFactory> xmlTracker = null;
    private PluginInfo manifestInfo = new PluginInfo();
    private BundleContext context;
    private FrameworkAdaptor adaptor;
    Version target;
    static final Version TARGET21 = new Version(2, 1, 0);
    Stack<Integer> stateStack = new Stack();
    Stack<Object> objectStack = new Stack();
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

    public PluginParser(FrameworkAdaptor adaptor, BundleContext context, Version target) {
        this.context = context;
        this.adaptor = adaptor;
        this.target = target;
    }

    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
    }

    public void endDocument() {
    }

    public void endElement(String uri, String elementName, String qName) {
        switch (this.stateStack.peek()) {
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
                    List exports = (List)this.objectStack.pop();
                    if (this.manifestInfo.libraries == null) {
                        this.manifestInfo.libraries = new HashMap<String, List<String>>(3);
                        this.manifestInfo.libraryPaths = new ArrayList<String>(3);
                    }
                    this.manifestInfo.libraries.put(curLibrary, exports);
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

    public void error(SAXParseException ex) {
        this.logStatus(ex);
    }

    public void fatalError(SAXParseException ex) throws SAXException {
        this.logStatus(ex);
        throw ex;
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
            List exportMask = (List)this.objectStack.peek();
            this.objectStack.push(currentLib);
            if (maskValue != null) {
                StringTokenizer tok = new StringTokenizer(maskValue, ",");
                while (tok.hasMoreTokens()) {
                    String value = tok.nextToken();
                    if (exportMask.contains(maskValue)) continue;
                    exportMask.add(value.trim());
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
            this.objectStack.push(new ArrayList());
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

    private void logStatus(SAXParseException ex) {
        String name = ex.getSystemId();
        name = name == null ? "" : name.substring(1 + name.lastIndexOf("/"));
        String msg = name.equals("") ? NLS.bind(EclipseAdaptorMsg.parse_error, ex.getMessage()) : NLS.bind(EclipseAdaptorMsg.parse_errorNameLineColumn, new String[]{name, Integer.toString(ex.getLineNumber()), Integer.toString(ex.getColumnNumber()), ex.getMessage()});
        FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, msg, 0, ex, null);
        this.adaptor.getFrameworkLog().log(entry);
    }

    public synchronized PluginInfo parsePlugin(InputStream in) throws Exception {
        SAXParserFactory factory = PluginParser.acquireXMLParsing(this.context);
        if (factory == null) {
            FrameworkLogEntry entry = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, EclipseAdaptorMsg.ECLIPSE_CONVERTER_NO_SAX_FACTORY, 0, null, null);
            this.adaptor.getFrameworkLog().log(entry);
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
        if ((result = xmlTracker.getService()) != null) {
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
        this.objectStack.push(new ArrayList());
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
        switch (this.stateStack.peek()) {
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

    public void warning(SAXParseException ex) {
        this.logStatus(ex);
    }

    private void internalError(String elementName) {
        String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_PARSE_UNKNOWNTOP_ELEMENT, elementName);
        FrameworkLogEntry error = new FrameworkLogEntry("org.eclipse.osgi", 4, 0, this.manifestInfo.pluginId == null ? message : "Plug-in : " + this.manifestInfo.pluginId + ", " + message, 0, null, null);
        this.adaptor.getFrameworkLog().log(error);
    }

    public void processingInstruction(String instructionTarget, String data) throws SAXException {
        if (instructionTarget.equalsIgnoreCase("eclipse")) {
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

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class PluginInfo
    implements IPluginInfo {
        String schemaVersion;
        String pluginId;
        String version;
        String vendor;
        List<String> libraryPaths;
        Map<String, List<String>> libraries;
        ArrayList<Prerequisite> requires;
        private boolean requiresExpanded = false;
        boolean compatibilityFound = false;
        String pluginClass;
        String masterPluginId;
        String masterVersion;
        String masterMatch;
        private Set<String> filters;
        String pluginName;
        boolean singleton;
        boolean fragment;
        private static final String TARGET21_STRING = "2.1";
        boolean hasExtensionExtensionPoints = false;

        @Override
        public boolean isFragment() {
            return this.fragment;
        }

        public String toString() {
            return new StringBuffer("plugin-id: ").append(this.pluginId).append("  version: ").append(this.version).append(" libraries: ").append(this.libraries).append(" class:").append(this.pluginClass).append(" master: ").append(this.masterPluginId).append(" master-version: ").append(this.masterVersion).append(" requires: ").append(this.requires).append(" singleton: ").append(this.singleton).toString();
        }

        @Override
        public Map<String, List<String>> getLibraries() {
            if (this.libraries == null) {
                return new HashMap<String, List<String>>(0);
            }
            return this.libraries;
        }

        @Override
        public ArrayList<Prerequisite> getRequires() {
            if (!TARGET21.equals(PluginParser.this.target) && this.schemaVersion == null && !this.requiresExpanded) {
                this.requiresExpanded = true;
                if (this.requires == null) {
                    this.requires = new ArrayList(1);
                    this.requires.add(new Prerequisite("org.eclipse.core.runtime", TARGET21_STRING, false, false, "greaterOrEqual"));
                    this.requires.add(new Prerequisite("org.eclipse.core.runtime.compatibility", null, false, false, null));
                } else {
                    int i = 0;
                    while (i < this.requires.size()) {
                        Prerequisite analyzed = this.requires.get(i);
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
                this.requires = new ArrayList<Prerequisite>(0);
                return this.requires;
            }
            return this.requires;
        }

        @Override
        public String getMasterId() {
            return this.masterPluginId;
        }

        @Override
        public String getMasterVersion() {
            return this.masterVersion;
        }

        @Override
        public String getMasterMatch() {
            return this.masterMatch;
        }

        @Override
        public String getPluginClass() {
            return this.pluginClass;
        }

        @Override
        public String getUniqueId() {
            return this.pluginId;
        }

        @Override
        public String getVersion() {
            return this.version;
        }

        @Override
        public Set<String> getPackageFilters() {
            return this.filters;
        }

        @Override
        public String[] getLibrariesName() {
            if (this.libraryPaths == null) {
                return new String[0];
            }
            return this.libraryPaths.toArray(new String[this.libraryPaths.size()]);
        }

        @Override
        public String getPluginName() {
            return this.pluginName;
        }

        @Override
        public String getProviderName() {
            return this.vendor;
        }

        @Override
        public boolean isSingleton() {
            return this.singleton;
        }

        @Override
        public boolean hasExtensionExtensionPoints() {
            return this.hasExtensionExtensionPoints;
        }

        public String getRoot() {
            return this.isFragment() ? "fragment" : "plugin";
        }

        @Override
        public String validateForm() {
            if (this.pluginId == null) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_MISSING_ATTRIBUTE, new String[]{this.getRoot(), "id", this.getRoot()});
            }
            if (this.pluginName == null) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_MISSING_ATTRIBUTE, new String[]{this.getRoot(), "name", this.getRoot()});
            }
            if (this.version == null) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_MISSING_ATTRIBUTE, new String[]{this.getRoot(), "version", this.getRoot()});
            }
            if (this.isFragment() && this.masterPluginId == null) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_MISSING_ATTRIBUTE, new String[]{this.getRoot(), "plugin-id", this.getRoot()});
            }
            if (this.isFragment() && this.masterVersion == null) {
                return NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_MISSING_ATTRIBUTE, new String[]{this.getRoot(), "plugin-version", this.getRoot()});
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

        public int hashCode() {
            return this.name.hashCode();
        }
    }
}

