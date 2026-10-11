/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.validation.internal.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlConfigurationElement;
import org.osgi.framework.Bundle;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class ConstraintsContentHandler
extends DefaultHandler {
    static final String EMF_VALIDATION_INSTRUCTION = "emf-validation";
    static final String VERSION_PARAMETER = "version";
    static final String NL_PARAMETER = "nl";
    private static final String EXPECTED_VERSION = "1.0";
    private static final ResourceBundleCache resourceBundleCache = new ResourceBundleCache();
    private final IExtension extension;
    private final URL baseUrl;
    private final Stack stack = new Stack();
    private IConfigurationElement resultElement;
    private ResourceBundle resourceBundle;

    public ConstraintsContentHandler(IExtension extension, URL baseUrl) {
        this.extension = extension;
        this.baseUrl = baseUrl;
    }

    public IConfigurationElement getResult() {
        return this.resultElement;
    }

    public void startElement(String namespaceURI, String localName, String qName, Attributes atts) {
        int attCount = atts.getLength();
        HashMap<String, String> attMap = new HashMap<String, String>();
        int i = 0;
        while (i < attCount) {
            attMap.put(atts.getQName(i), this.localize(atts.getValue(i)));
            ++i;
        }
        this.stack.push(new XmlConfigurationElement(qName, attMap, this.extension, this.baseUrl));
    }

    public void endElement(String namespaceURI, String localName, String qName) throws SAXException {
        this.resultElement = this.stack.pop();
        if (!this.stack.isEmpty()) {
            this.stack.peek().addChild(this.resultElement);
            this.resultElement = null;
        }
    }

    public void characters(char[] ch, int start, int length) throws SAXException {
        this.stack.getBody().append(ch, start, length);
    }

    public void processingInstruction(String target, String data) throws SAXException {
        if (target.equals(EMF_VALIDATION_INSTRUCTION)) {
            int[] index = new int[1];
            int i = data.indexOf(61);
            while (i >= 0) {
                String parm = data.substring(index[0], i).trim();
                index[0] = i + 1;
                String value = ConstraintsContentHandler.extractQuotedString(data, index);
                if (value == null) break;
                if (parm.equals(VERSION_PARAMETER)) {
                    this.handleVersionInstruction(value);
                } else if (parm.equals(NL_PARAMETER)) {
                    this.handleNlInstruction(value);
                }
                i = data.indexOf(61, index[0]);
            }
        }
    }

    private static String extractQuotedString(String text, int[] index) {
        int end;
        int start = index[0];
        if (text.charAt(start) != '\"') {
            return null;
        }
        if ((end = text.indexOf(34, ++start)) < 0) {
            return null;
        }
        index[0] = end + 1;
        return text.substring(start, end);
    }

    private void handleNlInstruction(String resourceBundleName) {
        try {
            InputStream input;
            Bundle bundle = Platform.getBundle((String)this.extension.getNamespaceIdentifier());
            this.resourceBundle = resourceBundleCache.get(bundle, resourceBundleName);
            if (this.resourceBundle == null && (input = ConstraintsContentHandler.findLocalizedResource(bundle, resourceBundleName)) != null) {
                this.resourceBundle = new PropertyResourceBundle(input);
                input.close();
                resourceBundleCache.put(bundle, resourceBundleName, this.resourceBundle);
            }
        }
        catch (Exception e) {
            Trace.catching(this.getClass(), "handleNlInstruction", e);
            Log.warningMessage(93, EMFModelValidationStatusCodes.XML_RESOURCE_BUNDLE_NOT_FOUND_MSG, new Object[]{this.getFileName(), resourceBundleName});
        }
    }

    private static InputStream findLocalizedResource(Bundle bundle, String baseName) throws IOException {
        InputStream result = null;
        String locale = Locale.getDefault().toString();
        String searchName = String.valueOf(baseName) + '_' + locale + ".properties";
        while (result == null && searchName != null) {
            URL url = bundle.getResource(searchName);
            if (url != null) {
                result = url.openStream();
                continue;
            }
            if (locale == null) {
                searchName = null;
                continue;
            }
            int lastUnderscore = locale.lastIndexOf(95);
            if (lastUnderscore > 0) {
                locale = locale.substring(0, lastUnderscore);
                searchName = String.valueOf(baseName) + '_' + locale + ".properties";
                continue;
            }
            locale = null;
            searchName = String.valueOf(baseName) + ".properties";
        }
        return result;
    }

    public static void flushResourceBundleCache() {
        resourceBundleCache.flush();
    }

    private void handleVersionInstruction(String version) throws SAXException {
        if (!version.equals(EXPECTED_VERSION)) {
            SAXException e = new SAXException(EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.XML_WRONG_VERSION_MSG, version));
            Trace.throwing(this.getClass(), "handleVersionInstruction", e);
            throw e;
        }
    }

    protected String localize(String s) {
        if (s == null || !s.startsWith("%")) {
            return s;
        }
        if (this.resourceBundle == null) {
            return Platform.getResourceString((Bundle)Platform.getBundle((String)this.extension.getNamespaceIdentifier()), (String)s);
        }
        return this.localize(s, this.resourceBundle);
    }

    protected String localize(String s, ResourceBundle bundle) {
        try {
            return bundle.getString(s.substring(1));
        }
        catch (MissingResourceException e) {
            Trace.catching(this.getClass(), "localize", e);
            return s;
        }
    }

    public void fatalError(SAXParseException e) throws SAXException {
        Log.errorMessage(91, EMFModelValidationStatusCodes.ERROR_PARSING_XML_FILE_MSG, new Object[]{this.getFileName()}, e);
        super.fatalError(e);
    }

    public void error(SAXParseException e) throws SAXException {
        Log.errorMessage(91, EMFModelValidationStatusCodes.ERROR_PARSING_XML_FILE_MSG, new Object[]{this.getFileName()}, e);
        super.error(e);
    }

    public void warning(SAXParseException e) throws SAXException {
        Log.warningMessage(91, EMFModelValidationStatusCodes.ERROR_PARSING_XML_FILE_MSG, new Object[]{this.getFileName()}, e);
        super.warning(e);
    }

    private String getFileName() {
        return this.baseUrl.getFile();
    }

    private static final class ResourceBundleCache {
        private final Map<Bundle, Map<String, ResourceBundle>> map = new HashMap<Bundle, Map<String, ResourceBundle>>();

        private ResourceBundleCache() {
        }

        ResourceBundle get(Bundle osgiBundle, String baseName) {
            ResourceBundle result = null;
            Map<String, ResourceBundle> secondLevel = this.map.get(osgiBundle);
            if (secondLevel != null) {
                result = secondLevel.get(baseName);
            }
            return result;
        }

        void put(Bundle osgiBundle, String baseName, ResourceBundle rb) {
            Map<String, ResourceBundle> secondLevel = this.map.get(osgiBundle);
            if (secondLevel == null) {
                secondLevel = new HashMap<String, ResourceBundle>();
                this.map.put(osgiBundle, secondLevel);
            }
            secondLevel.put(baseName, rb);
        }

        void flush() {
            this.map.clear();
        }
    }

    private class Stack {
        private final List<XmlConfigurationElement> contents = new ArrayList<XmlConfigurationElement>();
        private final List<StringBuffer> bodies = new ArrayList<StringBuffer>();
        private int lastIndex = -1;

        private Stack() {
        }

        public boolean isEmpty() {
            return this.contents.isEmpty();
        }

        public void push(XmlConfigurationElement element) {
            assert (element != null);
            this.contents.add(element);
            this.bodies.add(new StringBuffer(32));
            ++this.lastIndex;
        }

        public XmlConfigurationElement pop() throws SAXException {
            if (this.isEmpty()) {
                SAXException se = new SAXException(EMFModelValidationStatusCodes.XML_CANNOT_POP_STACK_MSG);
                Trace.throwing(this.getClass(), "pop", se);
                throw se;
            }
            XmlConfigurationElement result = this.contents.get(this.lastIndex);
            result.setValue(ConstraintsContentHandler.this.localize(this.getBody().toString().trim()));
            this.contents.remove(this.lastIndex);
            this.bodies.remove(this.lastIndex);
            --this.lastIndex;
            return result;
        }

        public XmlConfigurationElement peek() throws SAXException {
            if (this.isEmpty()) {
                SAXException se = new SAXException(EMFModelValidationStatusCodes.XML_CANNOT_PEEK_STACK_MSG);
                Trace.throwing(this.getClass(), "peek", se);
                throw se;
            }
            return this.contents.get(this.lastIndex);
        }

        public StringBuffer getBody() throws SAXException {
            if (this.isEmpty()) {
                SAXException se = new SAXException(EMFModelValidationStatusCodes.XML_NO_STACK_BODY_MSG);
                Trace.throwing(this.getClass(), "getBody", se);
                throw se;
            }
            return this.bodies.get(this.lastIndex);
        }
    }
}

