/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching.support;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class SystemProperties {
    public static void main(String[] args) {
        try {
            Document doc = SystemProperties.newDocument();
            Element properties = doc.createElement("systemProperties");
            doc.appendChild(properties);
            int i = 0;
            while (i < args.length) {
                String name = args[i];
                String value = System.getProperty(name);
                if (value != null) {
                    Element property = doc.createElement("property");
                    property.setAttribute("name", name);
                    property.setAttribute("value", value);
                    properties.appendChild(property);
                }
                ++i;
            }
            String text = SystemProperties.serializeDocument(doc);
            System.out.print(text);
        }
        catch (ParserConfigurationException parserConfigurationException) {
        }
        catch (IOException iOException) {
        }
        catch (TransformerException transformerException) {}
    }

    private static Document newDocument() throws ParserConfigurationException {
        DocumentBuilderFactory dfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = dfactory.newDocumentBuilder();
        Document doc = docBuilder.newDocument();
        return doc;
    }

    private static String serializeDocument(Document doc) throws IOException, TransformerException {
        ByteArrayOutputStream s = new ByteArrayOutputStream();
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty("method", "xml");
        transformer.setOutputProperty("indent", "yes");
        DOMSource source = new DOMSource(doc);
        StreamResult outputTarget = new StreamResult(s);
        transformer.transform(source, outputTarget);
        return s.toString("UTF8");
    }
}

