/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.persistence.Messages
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$AbstractHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$RootHandler
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.p2.metadata.io;

import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collection;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataParser;
import org.eclipse.equinox.internal.p2.persistence.Messages;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IUDeserializer {
    private IUDeserializerParser deserializer = new IUDeserializerParser(SAXParserFactory.newInstance());

    public Collection<IInstallableUnit> read(InputStream input) throws IOException {
        return this.deserializer.parse(input);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class IUDeserializerParser
    extends MetadataParser {
        private IUOnlyHandler iusHandler;
        private SAXParserFactory parserFactory;

        public IUDeserializerParser(SAXParserFactory factory) {
            super(null, null);
            this.parserFactory = factory;
        }

        public Collection<IInstallableUnit> parse(InputStream stream) throws IOException {
            try {
                this.getParser();
                this.iusHandler = new IUOnlyHandler();
                this.xmlReader.setContentHandler((ContentHandler)((Object)this.iusHandler));
                this.xmlReader.parse(new InputSource(stream));
                if (this.isValidXML()) {
                    return Arrays.asList(this.iusHandler.getInstallableUnits());
                }
                throw new IOException(this.status.toString());
            }
            catch (ParserConfigurationException configException) {
                throw new IOException(configException.getMessage());
            }
            catch (SAXException saxException) {
                throw new IOException(saxException.getMessage());
            }
        }

        protected SAXParser getParser() throws ParserConfigurationException, SAXException {
            if (this.parserFactory == null) {
                throw new SAXException(Messages.XMLParser_No_SAX_Parser);
            }
            this.parserFactory.setNamespaceAware(true);
            this.parserFactory.setValidating(false);
            try {
                this.parserFactory.setFeature("http://xml.org/sax/features/string-interning", true);
            }
            catch (SAXException sAXException) {}
            SAXParser theParser = this.parserFactory.newSAXParser();
            if (theParser == null) {
                throw new SAXException(Messages.XMLParser_No_SAX_Parser);
            }
            this.xmlReader = theParser.getXMLReader();
            return theParser;
        }

        protected Object getRootObject() {
            return null;
        }

        protected String getErrorMessage() {
            return null;
        }

        class IUOnlyHandler
        extends XMLParser.RootHandler {
            private MetadataParser.InstallableUnitsHandler unitsHandler;

            public IUOnlyHandler() {
                super((XMLParser)IUDeserializerParser.this);
            }

            protected void handleRootAttributes(Attributes attributes) {
            }

            public void startElement(String name, Attributes attributes) {
                if ("units".equals(name)) {
                    if (this.unitsHandler == null) {
                        this.unitsHandler = (MetadataParser)IUDeserializerParser.this.new MetadataParser.InstallableUnitsHandler((XMLParser.AbstractHandler)this, attributes);
                    } else {
                        IUDeserializerParser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else {
                    this.invalidElement(name, attributes);
                }
            }

            public IInstallableUnit[] getInstallableUnits() {
                if (this.unitsHandler == null) {
                    return null;
                }
                return this.unitsHandler.getUnits();
            }
        }
    }
}

