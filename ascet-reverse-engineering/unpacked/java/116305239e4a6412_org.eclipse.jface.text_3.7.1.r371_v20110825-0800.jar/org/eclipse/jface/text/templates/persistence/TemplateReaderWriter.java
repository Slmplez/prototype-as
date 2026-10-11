/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.templates.Template
 */
package org.eclipse.jface.text.templates.persistence;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.jface.text.templates.persistence.TemplatePersistenceMessages;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class TemplateReaderWriter {
    private static final String TEMPLATE_ROOT = "templates";
    private static final String TEMPLATE_ELEMENT = "template";
    private static final String NAME_ATTRIBUTE = "name";
    private static final String ID_ATTRIBUTE = "id";
    private static final String DESCRIPTION_ATTRIBUTE = "description";
    private static final String CONTEXT_ATTRIBUTE = "context";
    private static final String ENABLED_ATTRIBUTE = "enabled";
    private static final String DELETED_ATTRIBUTE = "deleted";
    private static final String AUTO_INSERTABLE_ATTRIBUTE = "autoinsert";

    public TemplatePersistenceData[] read(Reader reader) throws IOException {
        return this.read(reader, null);
    }

    public TemplatePersistenceData readSingle(Reader reader, String id) throws IOException {
        TemplatePersistenceData[] datas = this.read(new InputSource(reader), null, id);
        if (datas.length > 0) {
            return datas[0];
        }
        return null;
    }

    public TemplatePersistenceData[] read(Reader reader, ResourceBundle bundle) throws IOException {
        return this.read(new InputSource(reader), bundle, null);
    }

    public TemplatePersistenceData[] read(InputStream stream, ResourceBundle bundle) throws IOException {
        return this.read(new InputSource(stream), bundle, null);
    }

    private TemplatePersistenceData[] read(InputSource source, ResourceBundle bundle, String singleId) throws IOException {
        try {
            ArrayList<TemplatePersistenceData> templates = new ArrayList<TemplatePersistenceData>();
            HashSet ids = new HashSet();
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder parser = factory.newDocumentBuilder();
            parser.setErrorHandler(new DefaultHandler());
            Document document = parser.parse(source);
            NodeList elements = document.getElementsByTagName(TEMPLATE_ELEMENT);
            int count = elements.getLength();
            int i = 0;
            while (i != count) {
                Node node = elements.item(i);
                NamedNodeMap attributes = node.getAttributes();
                if (attributes != null) {
                    String id = this.getStringValue(attributes, ID_ATTRIBUTE, null);
                    if (id != null && ids.contains(id)) {
                        throw new IOException(TemplatePersistenceMessages.getString("TemplateReaderWriter.duplicate.id"));
                    }
                    if (singleId == null || singleId.equals(id)) {
                        boolean deleted = this.getBooleanValue(attributes, DELETED_ATTRIBUTE, false);
                        String name = this.getStringValue(attributes, NAME_ATTRIBUTE);
                        name = this.translateString(name, bundle);
                        String description = this.getStringValue(attributes, DESCRIPTION_ATTRIBUTE, "");
                        description = this.translateString(description, bundle);
                        String context = this.getStringValue(attributes, CONTEXT_ATTRIBUTE);
                        if (name == null || context == null) {
                            throw new IOException(TemplatePersistenceMessages.getString("TemplateReaderWriter.error.missing_attribute"));
                        }
                        boolean enabled = this.getBooleanValue(attributes, ENABLED_ATTRIBUTE, true);
                        boolean autoInsertable = this.getBooleanValue(attributes, AUTO_INSERTABLE_ATTRIBUTE, true);
                        StringBuffer buffer = new StringBuffer();
                        NodeList children = node.getChildNodes();
                        int j = 0;
                        while (j != children.getLength()) {
                            String value = children.item(j).getNodeValue();
                            if (value != null) {
                                buffer.append(value);
                            }
                            ++j;
                        }
                        String pattern = buffer.toString();
                        pattern = this.translateString(pattern, bundle);
                        Template template = new Template(name, description, context, pattern, autoInsertable);
                        TemplatePersistenceData data = new TemplatePersistenceData(template, enabled, id);
                        data.setDeleted(deleted);
                        templates.add(data);
                        if (singleId != null && singleId.equals(id)) break;
                    }
                }
                ++i;
            }
            return templates.toArray(new TemplatePersistenceData[templates.size()]);
        }
        catch (ParserConfigurationException parserConfigurationException) {
            Assert.isTrue((boolean)false);
        }
        catch (SAXException e) {
            Throwable t = e.getCause();
            if (t instanceof IOException) {
                throw (IOException)t;
            }
            if (t != null) {
                throw new IOException(t.getMessage());
            }
            throw new IOException(e.getMessage());
        }
        return null;
    }

    public void save(TemplatePersistenceData[] templates, OutputStream stream) throws IOException {
        this.save(templates, new StreamResult(stream));
    }

    public void save(TemplatePersistenceData[] templates, Writer writer) throws IOException {
        this.save(templates, new StreamResult(writer));
    }

    private void save(TemplatePersistenceData[] templates, StreamResult result) throws IOException {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.newDocument();
            Element root = document.createElement(TEMPLATE_ROOT);
            document.appendChild(root);
            int i = 0;
            while (i < templates.length) {
                TemplatePersistenceData data = templates[i];
                Template template = data.getTemplate();
                Element node = document.createElement(TEMPLATE_ELEMENT);
                root.appendChild(node);
                NamedNodeMap attributes = node.getAttributes();
                String id = data.getId();
                if (id != null) {
                    Attr idAttr = document.createAttribute(ID_ATTRIBUTE);
                    idAttr.setValue(id);
                    attributes.setNamedItem(idAttr);
                }
                if (template != null) {
                    Attr name = document.createAttribute(NAME_ATTRIBUTE);
                    name.setValue(TemplateReaderWriter.validateXML(template.getName()));
                    attributes.setNamedItem(name);
                }
                if (template != null) {
                    Attr description = document.createAttribute(DESCRIPTION_ATTRIBUTE);
                    description.setValue(TemplateReaderWriter.validateXML(template.getDescription()));
                    attributes.setNamedItem(description);
                }
                if (template != null) {
                    Attr context = document.createAttribute(CONTEXT_ATTRIBUTE);
                    context.setValue(TemplateReaderWriter.validateXML(template.getContextTypeId()));
                    attributes.setNamedItem(context);
                }
                Attr enabled = document.createAttribute(ENABLED_ATTRIBUTE);
                enabled.setValue(data.isEnabled() ? Boolean.toString(true) : Boolean.toString(false));
                attributes.setNamedItem(enabled);
                Attr deleted = document.createAttribute(DELETED_ATTRIBUTE);
                deleted.setValue(data.isDeleted() ? Boolean.toString(true) : Boolean.toString(false));
                attributes.setNamedItem(deleted);
                if (template != null) {
                    Attr autoInsertable = document.createAttribute(AUTO_INSERTABLE_ATTRIBUTE);
                    autoInsertable.setValue(template.isAutoInsertable() ? Boolean.toString(true) : Boolean.toString(false));
                    attributes.setNamedItem(autoInsertable);
                }
                if (template != null) {
                    Text pattern = document.createTextNode(TemplateReaderWriter.validateXML(template.getPattern()));
                    node.appendChild(pattern);
                }
                ++i;
            }
            Transformer transformer = TransformerFactory.newInstance().newTransformer();
            transformer.setOutputProperty("method", "xml");
            transformer.setOutputProperty("encoding", "UTF-8");
            DOMSource source = new DOMSource(document);
            transformer.transform(source, result);
        }
        catch (ParserConfigurationException parserConfigurationException) {
            Assert.isTrue((boolean)false);
        }
        catch (TransformerException e) {
            if (e.getException() instanceof IOException) {
                throw (IOException)e.getException();
            }
            Assert.isTrue((boolean)false);
        }
    }

    private static String validateXML(String string) throws IOException {
        int i = 0;
        while (i < string.length()) {
            char ch = string.charAt(i);
            if (ch != '\t' && ch != '\n' && ch != '\r' && ch < ' ') {
                throw new IOException("Character reference \"&#" + Integer.toString(ch) + "\" is an invalid XML character.");
            }
            ++i;
        }
        return string;
    }

    private boolean getBooleanValue(NamedNodeMap attributes, String attribute, boolean defaultValue) throws SAXException {
        Node enabledNode = attributes.getNamedItem(attribute);
        if (enabledNode == null) {
            return defaultValue;
        }
        if (enabledNode.getNodeValue().equals(Boolean.toString(true))) {
            return true;
        }
        if (enabledNode.getNodeValue().equals(Boolean.toString(false))) {
            return false;
        }
        throw new SAXException(TemplatePersistenceMessages.getString("TemplateReaderWriter.error.illegal_boolean_attribute"));
    }

    private String getStringValue(NamedNodeMap attributes, String name) throws SAXException {
        String val = this.getStringValue(attributes, name, null);
        if (val == null) {
            throw new SAXException(TemplatePersistenceMessages.getString("TemplateReaderWriter.error.missing_attribute"));
        }
        return val;
    }

    private String getStringValue(NamedNodeMap attributes, String name, String defaultValue) {
        Node node = attributes.getNamedItem(name);
        return node == null ? defaultValue : node.getNodeValue();
    }

    private String translateString(String str, ResourceBundle bundle) {
        if (bundle == null) {
            return str;
        }
        int idx = str.indexOf(37);
        if (idx == -1) {
            return str;
        }
        StringBuffer buf = new StringBuffer();
        int k = 0;
        while (idx != -1) {
            buf.append(str.substring(k, idx));
            k = idx + 1;
            while (k < str.length() && !Character.isWhitespace(str.charAt(k))) {
                ++k;
            }
            String key = str.substring(idx + 1, k);
            buf.append(this.getBundleString(key, bundle));
            idx = str.indexOf(37, k);
        }
        buf.append(str.substring(k));
        return buf.toString();
    }

    private String getBundleString(String key, ResourceBundle bundle) {
        if (bundle != null) {
            try {
                return bundle.getString(key);
            }
            catch (MissingResourceException missingResourceException) {
                return String.valueOf('!') + key + '!';
            }
        }
        return TemplatePersistenceMessages.getString(key);
    }
}

