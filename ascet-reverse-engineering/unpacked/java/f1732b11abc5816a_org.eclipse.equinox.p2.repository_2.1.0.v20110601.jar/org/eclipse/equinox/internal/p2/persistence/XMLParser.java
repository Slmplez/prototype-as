/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.p2.persistence;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.StringTokenizer;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.persistence.Messages;
import org.eclipse.equinox.internal.p2.persistence.XMLConstants;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public abstract class XMLParser
extends DefaultHandler
implements XMLConstants {
    protected BundleContext context;
    protected String bundleId;
    protected XMLReader xmlReader;
    protected String errorContext;
    protected MultiStatus status = null;
    protected Locator locator = null;
    private IProgressMonitor monitor;
    private static ServiceTracker<SAXParserFactory, SAXParserFactory> xmlTracker = null;
    static /* synthetic */ Class class$0;

    protected abstract Object getRootObject();

    protected abstract String getErrorMessage();

    public XMLParser(BundleContext context, String pluginId) {
        this.context = context;
        this.bundleId = pluginId;
    }

    public IStatus getStatus() {
        return this.status != null ? this.status : Status.OK_STATUS;
    }

    public boolean isValidXML() {
        return this.status == null || !this.status.matches(12);
    }

    private static synchronized SAXParserFactory acquireXMLParsing(BundleContext context) {
        if (xmlTracker == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("javax.xml.parsers.SAXParserFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            xmlTracker = new ServiceTracker(context, (Class)clazz, null);
            xmlTracker.open();
        }
        return (SAXParserFactory)xmlTracker.getService();
    }

    protected static synchronized void releaseXMLParsing() {
        if (xmlTracker != null) {
            xmlTracker.close();
            xmlTracker = null;
        }
    }

    protected SAXParser getParser() throws ParserConfigurationException, SAXException {
        SAXParserFactory factory = XMLParser.acquireXMLParsing(this.context);
        if (factory == null) {
            throw new SAXException(Messages.XMLParser_No_SAX_Parser);
        }
        factory.setNamespaceAware(true);
        factory.setValidating(false);
        try {
            factory.setFeature("http://xml.org/sax/features/string-interning", true);
        }
        catch (SAXException sAXException) {}
        SAXParser theParser = factory.newSAXParser();
        if (theParser == null) {
            throw new SAXException(Messages.XMLParser_No_SAX_Parser);
        }
        this.xmlReader = theParser.getXMLReader();
        return theParser;
    }

    public static String makeSimpleName(String localName, String qualifiedName) {
        if (localName != null && localName.length() > 0) {
            return localName;
        }
        int nameSpaceIndex = qualifiedName.indexOf(":");
        return nameSpaceIndex == -1 ? qualifiedName : qualifiedName.substring(nameSpaceIndex + 1);
    }

    public void setDocumentLocator(Locator docLocator) {
        this.locator = docLocator;
    }

    protected void setProgressMonitor(IProgressMonitor monitor) {
        this.monitor = monitor;
    }

    public Version extractPIVersion(String target, String data) {
        return this.checkVersion(target, "version", this.extractPIAttribute(data, "version"));
    }

    private String extractPIAttribute(String data, String key) {
        StringTokenizer piTokenizer = new StringTokenizer(data, " '\"");
        String[] tokens = new String[piTokenizer.countTokens()];
        int index = 0;
        int valueIndex = -1;
        while (piTokenizer.hasMoreTokens() && index < tokens.length) {
            tokens[index] = piTokenizer.nextToken();
            if (tokens[index].equals(String.valueOf(key) + '=') && index < tokens.length) {
                valueIndex = index + 1;
            }
            ++index;
        }
        return valueIndex >= 0 ? tokens[valueIndex] : "";
    }

    public void error(SAXParseException ex) {
        this.addError(2, ex.getMessage(), ex);
    }

    public void fatalError(SAXParseException ex) {
        this.addError(4, ex.getMessage(), ex);
    }

    protected String getErrorPrefix() {
        return null;
    }

    protected String getErrorSuffix() {
        return null;
    }

    public final void addError(int severity, String msg, Throwable exception) {
        String root;
        int line = 0;
        int column = 0;
        String key = msg;
        Object[] args = new Object[]{};
        String string = root = this.getRootObject() == null ? "" : " (" + this.getRootObject() + ")";
        if (this.locator != null) {
            String name = this.locator.getSystemId();
            if (this.errorContext != null && (name == null || name.trim().length() == 0)) {
                name = this.errorContext;
            }
            line = this.locator.getLineNumber();
            column = this.locator.getColumnNumber();
            if (line > 0) {
                args = new Object[]{msg, root, name, new Integer(line), new Integer(column)};
                key = column > 0 ? (name != null ? Messages.XMLParser_Error_At_Name_Line_Column : Messages.XMLParser_Error_At_Line_Column) : (name != null ? Messages.XMLParser_Error_At_Name_Line : Messages.XMLParser_Error_At_Line);
            }
        }
        String errMsg = NLS.bind((String)key, (Object[])args);
        String prefix = this.getErrorPrefix();
        String suffix = this.getErrorSuffix();
        if (prefix != null) {
            errMsg = String.valueOf(prefix) + errMsg;
        }
        if (suffix != null) {
            errMsg = String.valueOf(errMsg) + suffix;
        }
        Status currStatus = new Status(severity, "org.eclipse.equinox.p2.core", errMsg, exception);
        if (this.status == null) {
            this.status = new MultiStatus(this.bundleId, 0, new IStatus[]{currStatus}, this.getErrorMessage(), null);
        } else {
            this.status.add((IStatus)currStatus);
        }
    }

    public void trace(String element, Attributes attributes) {
    }

    private static String toString(Attributes attributes) {
        StringBuffer result = new StringBuffer();
        XMLParser.toString(result, attributes);
        return result.toString();
    }

    private static void toString(StringBuffer sb, Attributes attributes) {
        int i = 0;
        while (i < attributes.getLength()) {
            String name = attributes.getLocalName(i);
            String value = attributes.getValue(i).trim();
            sb.append(' ').append(name);
            sb.append('=').append('\"');
            sb.append(value);
            sb.append('\"');
            ++i;
        }
    }

    public void checkRequiredAttribute(String element, String name, Object value) {
        if (value == null) {
            this.addError(2, NLS.bind((String)Messages.XMLParser_Missing_Required_Attribute, (Object)element, (Object)name), null);
        }
    }

    public Boolean checkBoolean(String element, String attribute, String value) {
        try {
            return Boolean.valueOf(value);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            this.invalidAttributeValue(element, attribute, value);
        }
        catch (NullPointerException nullPointerException) {
            this.invalidAttributeValue(element, attribute, null);
        }
        return Boolean.FALSE;
    }

    public Boolean checkBoolean(String element, String attribute, String value, boolean defaultValue) {
        Boolean result;
        Boolean bl = result = defaultValue ? Boolean.TRUE : Boolean.FALSE;
        if (value != null) {
            try {
                return Boolean.valueOf(value);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                this.invalidAttributeValue(element, attribute, value);
            }
        }
        return result;
    }

    public int checkInteger(String element, String attribute, String value) {
        try {
            return Integer.parseInt(value);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            this.invalidAttributeValue(element, attribute, value);
            return 0;
        }
    }

    public URI checkURI(String element, String attribute, String value) {
        try {
            return URIUtil.fromString((String)value);
        }
        catch (URISyntaxException uRISyntaxException) {
            this.invalidAttributeValue(element, attribute, value);
            return null;
        }
    }

    public void checkCancel() {
        if (this.monitor != null && this.monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public Version checkVersion(String element, String attribute, String value) {
        try {
            return Version.parseVersion((String)value);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            this.invalidAttributeValue(element, attribute, value);
        }
        catch (NullPointerException nullPointerException) {
            this.invalidAttributeValue(element, attribute, null);
        }
        return Version.emptyVersion;
    }

    public VersionRange checkVersionRange(String element, String attribute, String value) {
        try {
            if (value != null) {
                return new VersionRange(value);
            }
        }
        catch (IllegalArgumentException illegalArgumentException) {
            this.invalidAttributeValue(element, attribute, value);
        }
        catch (NullPointerException nullPointerException) {
            this.invalidAttributeValue(element, attribute, null);
        }
        return VersionRange.emptyRange;
    }

    public void unexpectedAttribute(String element, String attribute, String value) {
        if (Tracing.DEBUG_PARSE_PROBLEMS) {
            Tracing.debug((String)("Unexpected attribute for element " + element + ": " + attribute + '=' + value));
        }
    }

    public void invalidAttributeValue(String element, String attribute, String value) {
        this.invalidAttributeValue(element, attribute, value, null);
    }

    public void invalidAttributeValue(String element, String attribute, String value, Throwable exception) {
        this.addError(2, NLS.bind((String)Messages.XMLParser_Illegal_Value_For_Attribute, (Object[])new Object[]{attribute, element, value}), exception);
    }

    public void unexpectedElement(AbstractHandler handler, String element, Attributes attributes) {
        if (Tracing.DEBUG_PARSE_PROBLEMS) {
            Tracing.debug((String)("Unexpected element in element " + handler.getName() + ": <" + element + XMLParser.toString(attributes) + '>'));
        }
    }

    public void duplicateElement(AbstractHandler handler, String element, Attributes attributes) {
        this.addError(2, NLS.bind((String)Messages.XMLParser_Duplicate_Element, (Object[])new Object[]{handler.getName(), element, XMLParser.toString(attributes)}), null);
        new IgnoringHandler(handler);
    }

    public void unexpectedCharacterData(AbstractHandler handler, String cdata) {
        if (Tracing.DEBUG_PARSE_PROBLEMS) {
            Tracing.debug((String)("Unexpected character data in element " + handler.getName() + ": " + cdata.trim()));
        }
    }

    protected static int indexOf(String[] array, String value) {
        int i = 0;
        while (i < array.length) {
            if (value == null ? array[i] == null : value.equals(array[i])) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    public void setErrorContext(String errorContext) {
        this.errorContext = errorContext;
    }

    protected abstract class AbstractHandler
    extends DefaultHandler {
        protected ContentHandler parentHandler = null;
        protected String elementHandled = null;
        protected StringBuffer characters = null;

        public AbstractHandler() {
        }

        public AbstractHandler(ContentHandler parentHandler) {
            this.parentHandler = parentHandler;
            XMLParser.this.xmlReader.setContentHandler(this);
        }

        public AbstractHandler(ContentHandler parentHandler, String elementHandled) {
            this.parentHandler = parentHandler;
            XMLParser.this.xmlReader.setContentHandler(this);
            this.elementHandled = elementHandled;
        }

        public void setDocumentLocator(Locator docLocator) {
            XMLParser.this.locator = docLocator;
        }

        public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
            this.finishCharacters();
            String name = XMLParser.makeSimpleName(localName, qName);
            XMLParser.this.trace(name, attributes);
            this.startElement(name, attributes);
        }

        public abstract void startElement(String var1, Attributes var2) throws SAXException;

        public void invalidElement(String name, Attributes attributes) {
            XMLParser.this.unexpectedElement(this, name, attributes);
            new IgnoringHandler(this);
        }

        public void endElement(String namespaceURI, String localName, String qName) {
            this.finishCharacters();
            this.finished();
            XMLParser.this.xmlReader.setContentHandler(this.parentHandler);
        }

        protected void noSubElements(String name, Attributes attributes) {
            XMLParser.this.unexpectedElement(this, name, attributes);
            new IgnoringHandler(this);
        }

        public void characters(char[] chars, int start, int length) {
            if (this.characters == null) {
                this.characters = new StringBuffer();
            }
            this.characters.append(chars, start, length);
        }

        private String finishCharacters() {
            if (this.characters == null || this.characters.length() == 0) {
                return null;
            }
            if (this.allWhiteSpace(this.characters)) {
                this.characters.setLength(0);
                return null;
            }
            try {
                String trimmedChars = this.characters.toString().trim();
                if (trimmedChars.length() == 0) {
                    System.err.println("Unexpected non-whitespace characters: " + trimmedChars);
                    return null;
                }
                this.processCharacters(trimmedChars);
                String string = trimmedChars;
                return string;
            }
            finally {
                this.characters.setLength(0);
            }
        }

        protected void processCharacters(String data) {
            if (data.length() > 0) {
                XMLParser.this.unexpectedCharacterData(this, data);
            }
        }

        private boolean allWhiteSpace(StringBuffer sb) {
            int length = sb.length();
            int i = 0;
            while (i < length) {
                if (!Character.isWhitespace(sb.charAt(i))) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        protected void finished() {
        }

        public String getName() {
            return this.elementHandled != null ? this.elementHandled : "NoName";
        }

        protected URI parseURIAttribute(Attributes attributes, boolean required) {
            String location;
            block5: {
                location = this.parseOptionalAttribute(attributes, "uri");
                if (location != null) {
                    return new URI(location);
                }
                location = required ? this.parseRequiredAttributes(attributes, new String[]{"url"})[0] : this.parseOptionalAttribute(attributes, "url");
                if (location != null) break block5;
                return null;
            }
            try {
                return URIUtil.toURI((URL)new URL(location));
            }
            catch (MalformedURLException e) {
                XMLParser.this.invalidAttributeValue(this.elementHandled, "url", location, e);
            }
            catch (URISyntaxException e) {
                XMLParser.this.invalidAttributeValue(this.elementHandled, "url", location, e);
            }
            return null;
        }

        protected String[] parseRequiredAttributes(Attributes attributes, String[] required) {
            return this.parseAttributes(attributes, required, noAttributes);
        }

        protected String parseOptionalAttribute(Attributes attributes, String name) {
            return this.parseAttributes(attributes, noAttributes, new String[]{name})[0];
        }

        protected String[] parseAttributes(Attributes attributes, String[] required, String[] optional) {
            String[] result = new String[required.length + optional.length];
            int i = 0;
            while (i < attributes.getLength()) {
                String name = attributes.getLocalName(i);
                String value = attributes.getValue(i).trim().intern();
                int j = XMLParser.indexOf(required, name);
                if (j >= 0) {
                    result[j] = value;
                } else {
                    j = XMLParser.indexOf(optional, name);
                    if (j >= 0) {
                        result[required.length + j] = value;
                    } else {
                        XMLParser.this.unexpectedAttribute(this.elementHandled, name, value);
                    }
                }
                ++i;
            }
            i = 0;
            while (i < required.length) {
                XMLParser.this.checkRequiredAttribute(this.elementHandled, required[i], result[i]);
                ++i;
            }
            return result;
        }
    }

    protected class DocHandler
    extends AbstractHandler {
        RootHandler rootHandler;

        public DocHandler(String rootName, RootHandler rootHandler) {
            super(null, rootName);
            this.rootHandler = rootHandler;
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals(this.elementHandled)) {
                this.rootHandler.initialize(this, name, attributes);
                XMLParser.this.xmlReader.setContentHandler(this.rootHandler);
            } else {
                this.noSubElements(name, attributes);
            }
        }
    }

    protected class IgnoringHandler
    extends AbstractHandler {
        public IgnoringHandler(AbstractHandler parent) {
            super(parent);
            this.elementHandled = "IgnoringAll";
        }

        public void startElement(String name, Attributes attributes) {
            this.noSubElements(name, attributes);
        }
    }

    protected class PropertiesHandler
    extends AbstractHandler {
        private OrderedProperties properties;

        public PropertiesHandler(ContentHandler parentHandler, Attributes attributes) {
            super(parentHandler, "properties");
            String size = this.parseOptionalAttribute(attributes, "size");
            this.properties = size != null ? new OrderedProperties(Integer.parseInt(size)) : new OrderedProperties();
        }

        public OrderedProperties getProperties() {
            return this.properties;
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("property")) {
                new PropertyHandler(this, attributes, this.properties);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    protected class PropertyHandler
    extends AbstractHandler {
        public PropertyHandler(ContentHandler parentHandler, Attributes attributes, OrderedProperties properties) {
            super(parentHandler, "property");
            String[] property = this.parseProperty(attributes);
            if (this.isValidProperty(property)) {
                properties.setProperty(property[0], property[1]);
            }
        }

        public void startElement(String name, Attributes attributes) {
            this.invalidElement(name, attributes);
        }

        private String[] parseProperty(Attributes attributes) {
            return this.parseRequiredAttributes(attributes, PROPERTY_ATTRIBUTES);
        }

        private boolean isValidProperty(String[] property) {
            return property.length == 2 && property[0] != null && property[1] != null;
        }
    }

    protected abstract class RootHandler
    extends AbstractHandler {
        public void initialize(DocHandler document, String rootName, Attributes attributes) {
            this.parentHandler = document;
            this.elementHandled = rootName;
            this.handleRootAttributes(attributes);
        }

        protected abstract void handleRootAttributes(Attributes var1);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class TextHandler
    extends AbstractHandler {
        private String text;

        public TextHandler(AbstractHandler parent, String elementName) {
            super(parent, elementName);
            this.text = null;
        }

        public TextHandler(AbstractHandler parent, String elementName, Attributes attributes) {
            super(parent, elementName);
            this.text = null;
            this.parseAttributes(attributes, noAttributes, noAttributes);
        }

        public TextHandler(AbstractHandler parent, String elementName, Attributes attributes, List<String> texts) {
            super(parent, elementName);
            this.text = null;
            this.parseAttributes(attributes, noAttributes, noAttributes);
        }

        public String getText() {
            return this.text != null ? this.text : "";
        }

        @Override
        public void startElement(String name, Attributes attributes) {
            this.invalidElement(name, attributes);
        }

        @Override
        protected void processCharacters(String data) {
            this.text = data == null ? null : data.intern();
        }
    }
}

