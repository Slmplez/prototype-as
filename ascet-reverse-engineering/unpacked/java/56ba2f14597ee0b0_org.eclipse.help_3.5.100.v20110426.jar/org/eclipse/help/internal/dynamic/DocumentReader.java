/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.entityresolver.LocalEntityResolver;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class DocumentReader {
    private ManagedBuilder cachedBuilder;

    public UAElement read(InputStream in) throws IOException, SAXException, ParserConfigurationException {
        return this.read(in, null);
    }

    public UAElement read(InputStream in, String charset) throws IOException, SAXException, ParserConfigurationException {
        ManagedBuilder managedBuilder = this.getManagedBuilder();
        InputSource input = null;
        input = charset != null ? new InputSource(new InputStreamReader(in, charset)) : new InputSource(in);
        Document document = managedBuilder.builder.parse(input);
        managedBuilder.inUse = false;
        this.prepareDocument(document);
        return UAElementFactory.newElement(document.getDocumentElement());
    }

    protected void prepareDocument(Document document) {
    }

    private synchronized ManagedBuilder getManagedBuilder() throws FactoryConfigurationError, ParserConfigurationException {
        if (this.cachedBuilder == null || this.cachedBuilder.inUse) {
            this.cachedBuilder = this.createManagedBuilder();
        }
        this.cachedBuilder.inUse = true;
        return this.cachedBuilder;
    }

    private ManagedBuilder createManagedBuilder() throws FactoryConfigurationError, ParserConfigurationException {
        ManagedBuilder managedBuilder = new ManagedBuilder();
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(false);
        managedBuilder.builder = factory.newDocumentBuilder();
        managedBuilder.builder.setEntityResolver(new LocalEntityResolver());
        return managedBuilder;
    }

    private class ManagedBuilder {
        public DocumentBuilder builder;
        public boolean inUse;

        private ManagedBuilder() {
        }
    }
}

