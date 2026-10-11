/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;

public class DocumentWriter {
    private Transformer transformer;

    public String writeString(UAElement element, boolean xmlDecl) throws TransformerException, TransformerConfigurationException {
        return this.writeString(element.getElement(), xmlDecl);
    }

    public String writeString(Element element, boolean xmlDecl) throws TransformerException, TransformerConfigurationException {
        byte[] bytes = this.writeBytes(element, xmlDecl);
        String encoding = this.transformer.getOutputProperty("encoding");
        if (encoding == null) {
            encoding = "UTF-8";
        }
        try {
            return new String(bytes, encoding);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new String(bytes);
        }
    }

    public byte[] writeBytes(UAElement element, boolean xmlDecl) throws TransformerException, TransformerConfigurationException {
        return this.writeBytes(element.getElement(), xmlDecl);
    }

    public byte[] writeBytes(Element element, boolean xmlDecl) throws TransformerException, TransformerConfigurationException {
        Document document = element.getOwnerDocument();
        if (this.transformer == null) {
            TransformerFactory factory = TransformerFactory.newInstance();
            this.transformer = factory.newTransformer();
            this.transformer.setOutputProperty("method", "xml");
        }
        DocumentType docType = document.getDoctype();
        Properties props = this.transformer.getOutputProperties();
        if (docType != null) {
            props.setProperty("doctype-public", docType.getPublicId());
            props.setProperty("doctype-system", docType.getSystemId());
        } else {
            props.remove("doctype-public");
            props.remove("doctype-system");
        }
        props.setProperty("omit-xml-declaration", xmlDecl ? "no" : "yes");
        this.transformer.setOutputProperties(props);
        DOMSource source = new DOMSource(element);
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        StreamResult result = new StreamResult(out);
        this.transformer.transform(source, result);
        return out.toByteArray();
    }
}

