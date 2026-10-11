/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.StringReader;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.internal.content.Activator;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;

public final class XMLRootHandler
extends DefaultHandler
implements LexicalHandler {
    private boolean checkRoot;
    private String dtdFound = null;
    private String elementFound = null;
    private String namespaceFound = null;

    public XMLRootHandler(boolean checkRoot) {
        this.checkRoot = checkRoot;
    }

    public final void comment(char[] ch, int start, int length) {
    }

    private final SAXParser createParser(SAXParserFactory parserFactory) throws ParserConfigurationException, SAXException, SAXNotRecognizedException, SAXNotSupportedException {
        SAXParser parser = parserFactory.newSAXParser();
        XMLReader reader = parser.getXMLReader();
        reader.setProperty("http://xml.org/sax/properties/lexical-handler", this);
        try {
            reader.setFeature("http://xml.org/sax/features/validation", false);
            reader.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
        }
        catch (SAXNotRecognizedException sAXNotRecognizedException) {
        }
        catch (SAXNotSupportedException sAXNotSupportedException) {}
        return parser;
    }

    public final void endCDATA() {
    }

    public final void endDTD() {
    }

    public final void endEntity(String name) {
    }

    public String getDTD() {
        return this.dtdFound;
    }

    public String getRootName() {
        return this.elementFound;
    }

    public String getRootNamespace() {
        return this.namespaceFound;
    }

    public boolean parseContents(InputSource contents) throws IOException, ParserConfigurationException, SAXException {
        SAXParserFactory factory;
        block3: {
            try {
                factory = Activator.getDefault().getFactory();
                if (factory != null) break block3;
                return false;
            }
            catch (StopParsingException stopParsingException) {}
        }
        SAXParser parser = this.createParser(factory);
        contents.setSystemId("/");
        parser.parse(contents, (DefaultHandler)this);
        return true;
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return new InputSource(new StringReader(""));
    }

    public final void startCDATA() {
    }

    public final void startDTD(String name, String publicId, String systemId) throws SAXException {
        this.dtdFound = systemId;
        if (!this.checkRoot) {
            throw new StopParsingException();
        }
    }

    public final void startElement(String uri, String elementName, String qualifiedName, Attributes attributes) throws SAXException {
        this.elementFound = elementName;
        this.namespaceFound = uri;
        throw new StopParsingException();
    }

    public final void startEntity(String name) {
    }

    private class StopParsingException
    extends SAXException {
        private static final long serialVersionUID = 1L;

        public StopParsingException() {
            super((String)null);
        }
    }
}

