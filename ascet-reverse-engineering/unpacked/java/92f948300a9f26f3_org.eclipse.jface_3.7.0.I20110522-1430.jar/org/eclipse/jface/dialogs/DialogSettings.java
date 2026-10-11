/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.dialogs;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class DialogSettings
implements IDialogSettings {
    private String name;
    private Map sections;
    private Map items;
    private Map arrayItems;
    private static final String TAG_SECTION = "section";
    private static final String TAG_NAME = "name";
    private static final String TAG_KEY = "key";
    private static final String TAG_VALUE = "value";
    private static final String TAG_LIST = "list";
    private static final String TAG_ITEM = "item";

    public DialogSettings(String sectionName) {
        this.name = sectionName;
        this.items = new HashMap();
        this.arrayItems = new HashMap();
        this.sections = new HashMap();
    }

    public IDialogSettings addNewSection(String sectionName) {
        DialogSettings section = new DialogSettings(sectionName);
        this.addSection(section);
        return section;
    }

    public void addSection(IDialogSettings section) {
        this.sections.put(section.getName(), section);
    }

    public String get(String key) {
        return (String)this.items.get(key);
    }

    public String[] getArray(String key) {
        return (String[])this.arrayItems.get(key);
    }

    public boolean getBoolean(String key) {
        return Boolean.valueOf((String)this.items.get(key));
    }

    public double getDouble(String key) throws NumberFormatException {
        String setting = (String)this.items.get(key);
        if (setting == null) {
            throw new NumberFormatException("There is no setting associated with the key \"" + key + "\"");
        }
        return new Double(setting);
    }

    public float getFloat(String key) throws NumberFormatException {
        String setting = (String)this.items.get(key);
        if (setting == null) {
            throw new NumberFormatException("There is no setting associated with the key \"" + key + "\"");
        }
        return new Float(setting).floatValue();
    }

    public int getInt(String key) throws NumberFormatException {
        String setting = (String)this.items.get(key);
        if (setting == null) {
            throw new NumberFormatException("There is no setting associated with the key \"" + key + "\"");
        }
        return new Integer(setting);
    }

    public long getLong(String key) throws NumberFormatException {
        String setting = (String)this.items.get(key);
        if (setting == null) {
            throw new NumberFormatException("There is no setting associated with the key \"" + key + "\"");
        }
        return new Long(setting);
    }

    public String getName() {
        return this.name;
    }

    public static IDialogSettings getOrCreateSection(IDialogSettings settings, String sectionName) {
        IDialogSettings section = settings.getSection(sectionName);
        if (section == null) {
            section = settings.addNewSection(sectionName);
        }
        return section;
    }

    public IDialogSettings getSection(String sectionName) {
        return (IDialogSettings)this.sections.get(sectionName);
    }

    public IDialogSettings[] getSections() {
        Collection values = this.sections.values();
        IDialogSettings[] result = new DialogSettings[values.size()];
        values.toArray(result);
        return result;
    }

    public void load(Reader r) {
        Document document = null;
        try {
            DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            document = parser.parse(new InputSource(r));
            Node root = document.getFirstChild();
            while (root.getNodeType() == 8) {
                document.removeChild(root);
                root = document.getFirstChild();
            }
            this.load(document, (Element)root);
        }
        catch (ParserConfigurationException parserConfigurationException) {
        }
        catch (IOException iOException) {
        }
        catch (SAXException sAXException) {}
    }

    public void load(String fileName) throws IOException {
        FileInputStream stream = new FileInputStream(fileName);
        BufferedReader reader = new BufferedReader(new InputStreamReader((InputStream)stream, "utf-8"));
        this.load(reader);
        reader.close();
    }

    private void load(Document document, Element root) {
        Node n;
        this.name = root.getAttribute(TAG_NAME);
        NodeList l = root.getElementsByTagName(TAG_ITEM);
        int i = 0;
        while (i < l.getLength()) {
            n = l.item(i);
            if (root == n.getParentNode()) {
                String key = ((Element)l.item(i)).getAttribute(TAG_KEY);
                String value = ((Element)l.item(i)).getAttribute(TAG_VALUE);
                this.items.put(key, value);
            }
            ++i;
        }
        l = root.getElementsByTagName(TAG_LIST);
        i = 0;
        while (i < l.getLength()) {
            n = l.item(i);
            if (root == n.getParentNode()) {
                Element child = (Element)l.item(i);
                String key = child.getAttribute(TAG_KEY);
                NodeList list = child.getElementsByTagName(TAG_ITEM);
                ArrayList<String> valueList = new ArrayList<String>();
                int j = 0;
                while (j < list.getLength()) {
                    Element node = (Element)list.item(j);
                    if (child == node.getParentNode()) {
                        valueList.add(node.getAttribute(TAG_VALUE));
                    }
                    ++j;
                }
                String[] value = new String[valueList.size()];
                valueList.toArray(value);
                this.arrayItems.put(key, value);
            }
            ++i;
        }
        l = root.getElementsByTagName(TAG_SECTION);
        i = 0;
        while (i < l.getLength()) {
            n = l.item(i);
            if (root == n.getParentNode()) {
                DialogSettings s = new DialogSettings("NoName");
                s.load(document, (Element)n);
                this.addSection(s);
            }
            ++i;
        }
    }

    public void put(String key, String[] value) {
        this.arrayItems.put(key, value);
    }

    public void put(String key, double value) {
        this.put(key, String.valueOf(value));
    }

    public void put(String key, float value) {
        this.put(key, String.valueOf(value));
    }

    public void put(String key, int value) {
        this.put(key, String.valueOf(value));
    }

    public void put(String key, long value) {
        this.put(key, String.valueOf(value));
    }

    public void put(String key, String value) {
        this.items.put(key, value);
    }

    public void put(String key, boolean value) {
        this.put(key, String.valueOf(value));
    }

    public void save(Writer writer) throws IOException {
        XMLWriter xmlWriter = new XMLWriter(writer);
        this.save(xmlWriter);
        xmlWriter.flush();
    }

    public void save(String fileName) throws IOException {
        FileOutputStream stream = new FileOutputStream(fileName);
        XMLWriter writer = new XMLWriter(stream);
        this.save(writer);
        writer.close();
    }

    private void save(XMLWriter out) throws IOException {
        String key;
        HashMap<String, String> attributes = new HashMap<String, String>(2);
        attributes.put(TAG_NAME, this.name == null ? "" : this.name);
        out.startTag(TAG_SECTION, attributes);
        attributes.clear();
        Iterator<Object> i = this.items.keySet().iterator();
        while (i.hasNext()) {
            key = (String)i.next();
            attributes.put(TAG_KEY, key == null ? "" : key);
            String string = (String)this.items.get(key);
            attributes.put(TAG_VALUE, string == null ? "" : string);
            out.printTag(TAG_ITEM, attributes, true);
        }
        attributes.clear();
        i = this.arrayItems.keySet().iterator();
        while (i.hasNext()) {
            key = (String)i.next();
            attributes.put(TAG_KEY, key == null ? "" : key);
            out.startTag(TAG_LIST, attributes);
            String[] value = (String[])this.arrayItems.get(key);
            attributes.clear();
            if (value != null) {
                int index = 0;
                while (index < value.length) {
                    String string = value[index];
                    attributes.put(TAG_VALUE, string == null ? "" : string);
                    out.printTag(TAG_ITEM, attributes, true);
                    ++index;
                }
            }
            out.endTag(TAG_LIST);
            attributes.clear();
        }
        i = this.sections.values().iterator();
        while (i.hasNext()) {
            ((DialogSettings)i.next()).save(out);
        }
        out.endTag(TAG_SECTION);
    }

    private static class XMLWriter
    extends BufferedWriter {
        protected int tab = 0;
        protected static final String XML_VERSION = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";

        public XMLWriter(OutputStream output) throws IOException {
            this(new OutputStreamWriter(output, "UTF8"));
        }

        public XMLWriter(Writer output) throws IOException {
            super(output);
            this.writeln(XML_VERSION);
        }

        private void writeln(String text) throws IOException {
            this.write(text);
            this.newLine();
        }

        public void endTag(String name) throws IOException {
            --this.tab;
            this.printTag("/" + name, null, false);
        }

        private void printTabulation() throws IOException {
            int i = 0;
            while (i < this.tab) {
                super.write(9);
                ++i;
            }
        }

        public void printTag(String name, HashMap parameters, boolean close) throws IOException {
            this.printTag(name, parameters, true, true, close);
        }

        private void printTag(String name, HashMap parameters, boolean shouldTab, boolean newLine, boolean close) throws IOException {
            StringBuffer sb = new StringBuffer();
            sb.append('<');
            sb.append(name);
            if (parameters != null) {
                Enumeration e = Collections.enumeration(parameters.keySet());
                while (e.hasMoreElements()) {
                    sb.append(" ");
                    String key = (String)e.nextElement();
                    sb.append(key);
                    sb.append("=\"");
                    sb.append(XMLWriter.getEscaped(String.valueOf(parameters.get(key))));
                    sb.append("\"");
                }
            }
            if (close) {
                sb.append('/');
            }
            sb.append('>');
            if (shouldTab) {
                this.printTabulation();
            }
            if (newLine) {
                this.writeln(sb.toString());
            } else {
                this.write(sb.toString());
            }
        }

        public void startTag(String name, HashMap parameters) throws IOException {
            this.startTag(name, parameters, true);
            ++this.tab;
        }

        private void startTag(String name, HashMap parameters, boolean newLine) throws IOException {
            this.printTag(name, parameters, true, newLine, false);
        }

        private static void appendEscapedChar(StringBuffer buffer, char c) {
            String replacement = XMLWriter.getReplacement(c);
            if (replacement != null) {
                buffer.append('&');
                buffer.append(replacement);
                buffer.append(';');
            } else {
                buffer.append(c);
            }
        }

        private static String getEscaped(String s) {
            StringBuffer result = new StringBuffer(s.length() + 10);
            int i = 0;
            while (i < s.length()) {
                XMLWriter.appendEscapedChar(result, s.charAt(i));
                ++i;
            }
            return result.toString();
        }

        private static String getReplacement(char c) {
            switch (c) {
                case '<': {
                    return "lt";
                }
                case '>': {
                    return "gt";
                }
                case '\"': {
                    return "quot";
                }
                case '\'': {
                    return "apos";
                }
                case '&': {
                    return "amp";
                }
                case '\r': {
                    return "#x0D";
                }
                case '\n': {
                    return "#x0A";
                }
                case '\t': {
                    return "#x09";
                }
            }
            return null;
        }
    }
}

