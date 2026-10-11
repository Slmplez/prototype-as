/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.internal.core.contentDescriber;

import java.io.IOException;
import java.io.StringReader;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public final class AntHandler
extends DefaultHandler {
    private static final String PROJECT = "project";
    private static final String TARGET = "target";
    private static final String MACRODEF = "macrodef";
    private static final String TASKDEF = "taskdef";
    private static final String TYPEDEF = "typedef";
    private static final String PROPERTY = "property";
    private static final String CLASSPATH = "classpath";
    private static final String PATH = "path";
    private static final String IMPORT = "import";
    private String fTopElementFound = null;
    private SAXParserFactory fFactory;
    private boolean fDefaultAttributeFound = false;
    private boolean fTargetFound = false;
    private boolean fAntElementFound = false;
    private int fLevel = -1;

    private final SAXParser createParser(SAXParserFactory parserFactory) throws ParserConfigurationException, SAXException, SAXNotRecognizedException, SAXNotSupportedException {
        SAXParser parser = parserFactory.newSAXParser();
        XMLReader reader = parser.getXMLReader();
        try {
            reader.setFeature("http://xml.org/sax/features/validation", false);
            reader.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
        }
        catch (SAXNotRecognizedException sAXNotRecognizedException) {
        }
        catch (SAXNotSupportedException sAXNotSupportedException) {}
        return parser;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private SAXParserFactory getFactory() {
        AntHandler antHandler = this;
        synchronized (antHandler) {
            if (this.fFactory != null) {
                return this.fFactory;
            }
            this.fFactory = SAXParserFactory.newInstance();
            this.fFactory.setNamespaceAware(true);
        }
        return this.fFactory;
    }

    protected boolean parseContents(InputSource contents) throws IOException, ParserConfigurationException, SAXException {
        block3: {
            try {
                this.fFactory = this.getFactory();
                if (this.fFactory != null) break block3;
                return false;
            }
            catch (StopParsingException stopParsingException) {}
        }
        SAXParser parser = this.createParser(this.fFactory);
        contents.setSystemId("/");
        parser.parse(contents, (DefaultHandler)this);
        return true;
    }

    public InputSource resolveEntity(String publicId, String systemId) throws SAXException {
        return new InputSource(new StringReader(""));
    }

    public final void startElement(String uri, String elementName, String qualifiedName, Attributes attributes) throws SAXException {
        ++this.fLevel;
        if (this.fTopElementFound == null) {
            this.fTopElementFound = elementName;
            if (!this.hasRootProjectElement()) {
                throw new StopParsingException();
            }
            if (attributes != null) {
                boolean bl = this.fDefaultAttributeFound = attributes.getValue("default") != null;
                if (this.fDefaultAttributeFound) {
                    throw new StopParsingException();
                }
            }
        }
        if (this.fLevel == 1 && TARGET.equals(elementName)) {
            this.fTargetFound = true;
            throw new StopParsingException();
        }
        if (this.fLevel == 1 && (MACRODEF.equals(elementName) || TASKDEF.equals(elementName) || TYPEDEF.equals(elementName) || PROPERTY.equals(elementName) || CLASSPATH.equals(elementName) || PATH.equals(elementName) || IMPORT.equals(elementName))) {
            this.fAntElementFound = true;
            throw new StopParsingException();
        }
    }

    public void endElement(String uri, String localName, String qName) throws SAXException {
        super.endElement(uri, localName, qName);
        --this.fLevel;
    }

    protected boolean hasProjectDefaultAttribute() {
        return this.fDefaultAttributeFound;
    }

    protected boolean hasRootProjectElement() {
        return PROJECT.equals(this.fTopElementFound);
    }

    protected boolean hasTargetElement() {
        return this.fTargetFound;
    }

    protected boolean hasAntElement() {
        return this.fAntElementFound;
    }

    private class StopParsingException
    extends SAXException {
        private static final long serialVersionUID = 1L;

        public StopParsingException() {
            super((String)null);
        }
    }
}

