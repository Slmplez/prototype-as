/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.persistence;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState;
import org.eclipse.equinox.internal.p2.persistence.Messages;
import org.eclipse.equinox.internal.p2.persistence.XMLConstants;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class CompositeParser
extends XMLParser
implements XMLConstants {
    private static final Version CURRENT_VERSION = Version.createOSGi((int)1, (int)0, (int)0);
    static final VersionRange XML_TOLERANCE = new VersionRange(CURRENT_VERSION, true, Version.createOSGi((int)2, (int)0, (int)0), false);
    private static final String REQUIRED_CAPABILITY_ELEMENT = "required";
    private static final String REPOSITORY_ELEMENT = "repository";
    String repositoryType;
    private CompositeRepositoryState theState;

    public CompositeParser(BundleContext context, String bundleId, String type) {
        super(context, bundleId);
        this.repositoryType = type;
    }

    public void parse(File file) throws IOException {
        if (this.errorContext == null) {
            this.setErrorContext(file.getAbsolutePath());
        }
        this.parse(new FileInputStream(file));
    }

    public synchronized void parse(InputStream stream) throws IOException {
        this.status = null;
        try {
            try {
                this.getParser();
                RepositoryHandler repositoryHandler = new RepositoryHandler();
                this.xmlReader.setContentHandler(new RepositoryDocHandler(REPOSITORY_ELEMENT, (XMLParser.RootHandler)repositoryHandler));
                this.xmlReader.parse(new InputSource(stream));
                if (this.isValidXML()) {
                    this.theState = repositoryHandler.getRepository();
                }
            }
            catch (SAXException e) {
                throw new IOException(e.getMessage());
            }
            catch (ParserConfigurationException e) {
                throw new IOException(e.getMessage());
            }
        }
        finally {
            stream.close();
        }
    }

    public CompositeRepositoryState getRepositoryState() {
        return this.theState;
    }

    protected Object getRootObject() {
        return null;
    }

    protected String getErrorMessage() {
        return Messages.io_parseError;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ChildHandler
    extends XMLParser.AbstractHandler {
        private final String[] required;
        private final String[] optional;
        URI currentRepo;
        private List<URI> repos;

        public ChildHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<URI> repos) {
            super(CompositeParser.this, parentHandler, "child");
            this.required = new String[]{"location"};
            this.optional = new String[0];
            this.currentRepo = null;
            String[] values = this.parseAttributes(attributes, this.required, this.optional);
            this.repos = repos;
            if (values[0] == null) {
                return;
            }
            this.currentRepo = CompositeParser.this.checkURI(CompositeParser.REQUIRED_CAPABILITY_ELEMENT, "uri", values[0]);
        }

        @Override
        public void startElement(String name, Attributes attributes) {
            CompositeParser.this.checkCancel();
        }

        @Override
        protected void finished() {
            if (this.currentRepo != null) {
                this.repos.add(this.currentRepo);
            }
        }
    }

    protected class ChildrenHandler
    extends XMLParser.AbstractHandler {
        private ArrayList<URI> children;

        public ChildrenHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
            super(CompositeParser.this, parentHandler, "children");
            String size = this.parseOptionalAttribute(attributes, "size");
            this.children = size != null ? new ArrayList(new Integer(size)) : new ArrayList(4);
        }

        public URI[] getChildren() {
            return this.children.toArray(new URI[this.children.size()]);
        }

        public void startElement(String name, Attributes attributes) {
            if (name.equals("child")) {
                new ChildHandler(this, attributes, this.children);
            } else {
                this.invalidElement(name, attributes);
            }
        }
    }

    private final class RepositoryDocHandler
    extends XMLParser.DocHandler {
        public RepositoryDocHandler(String rootName, XMLParser.RootHandler rootHandler) {
            super((XMLParser)CompositeParser.this, rootName, rootHandler);
        }

        public void processingInstruction(String target, String data) throws SAXException {
            Version repositoryVersion;
            if (CompositeParser.this.repositoryType.equals(target) && !XML_TOLERANCE.isIncluded(repositoryVersion = CompositeParser.this.extractPIVersion(target, data))) {
                throw new SAXException(NLS.bind((String)Messages.io_IncompatibleVersion, (Object)repositoryVersion, (Object)XML_TOLERANCE));
            }
        }
    }

    private final class RepositoryHandler
    extends XMLParser.RootHandler {
        private final String[] required;
        private final String[] optional;
        private XMLParser.PropertiesHandler propertiesHandler;
        private ChildrenHandler childrenHandler;
        private CompositeRepositoryState state;
        private String[] attrValues;

        public RepositoryHandler() {
            super(CompositeParser.this);
            this.required = new String[]{"name", "type", "version"};
            this.optional = new String[]{"description", "provider"};
            this.propertiesHandler = null;
            this.childrenHandler = null;
            this.attrValues = new String[this.required.length + this.optional.length];
        }

        public CompositeRepositoryState getRepository() {
            return this.state;
        }

        protected void handleRootAttributes(Attributes attributes) {
            this.attrValues = this.parseAttributes(attributes, this.required, this.optional);
            this.attrValues[2] = CompositeParser.this.checkVersion(CompositeParser.REPOSITORY_ELEMENT, "version", this.attrValues[2]).toString();
        }

        public void startElement(String name, Attributes attributes) {
            if ("properties".equals(name)) {
                if (this.propertiesHandler == null) {
                    this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)CompositeParser.this, (ContentHandler)this, attributes);
                } else {
                    CompositeParser.this.duplicateElement(this, name, attributes);
                }
            } else if ("children".equals(name)) {
                if (this.childrenHandler == null) {
                    this.childrenHandler = new ChildrenHandler(this, attributes);
                } else {
                    CompositeParser.this.duplicateElement(this, name, attributes);
                }
            } else {
                this.invalidElement(name, attributes);
            }
        }

        protected void finished() {
            if (CompositeParser.this.isValidXML()) {
                this.state = new CompositeRepositoryState();
                this.state.setName(this.attrValues[0]);
                this.state.setType(this.attrValues[1]);
                this.state.setVersion(this.attrValues[2]);
                this.state.setDescription(this.attrValues[3]);
                this.state.setProvider(this.attrValues[4]);
                this.state.setProperties((Map<String, String>)(this.propertiesHandler == null ? new OrderedProperties(0) : this.propertiesHandler.getProperties()));
                this.state.setChildren(this.childrenHandler == null ? new URI[]{} : this.childrenHandler.getChildren());
            }
        }
    }
}

