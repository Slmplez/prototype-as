/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$AbstractHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$DocHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$PropertiesHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$RootHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter$ProcessingInstruction
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository$RepositoryState
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.metadata.repository.Activator;
import org.eclipse.equinox.internal.p2.metadata.repository.LocalMetadataRepository;
import org.eclipse.equinox.internal.p2.metadata.repository.Messages;
import org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataParser;
import org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataWriter;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.internal.p2.persistence.XMLWriter;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MetadataRepositoryIO {
    protected final IProvisioningAgent agent;
    static /* synthetic */ Class class$0;

    public MetadataRepositoryIO(IProvisioningAgent agent) {
        this.agent = agent;
    }

    public IMetadataRepository read(URL location, InputStream input, IProgressMonitor monitor) throws ProvisionException {
        IMetadataRepository iMetadataRepository;
        block11: {
            BufferedInputStream bufferedInput = null;
            try {
                bufferedInput = new BufferedInputStream(input);
                Parser repositoryParser = new Parser(Activator.getContext(), "org.eclipse.equinox.p2.metadata.repository");
                repositoryParser.setErrorContext(location.toExternalForm());
                repositoryParser.parse(input, monitor);
                IStatus result = repositoryParser.getStatus();
                switch (result.getSeverity()) {
                    case 8: {
                        throw new OperationCanceledException();
                    }
                    case 4: {
                        throw new ProvisionException(result);
                    }
                    case 1: 
                    case 2: {
                        LogHelper.log((IStatus)result);
                    }
                }
                iMetadataRepository = repositoryParser.getRepository();
                if (bufferedInput == null) break block11;
            }
            catch (Throwable throwable) {
                try {
                    if (bufferedInput != null) {
                        bufferedInput.close();
                    }
                    throw throwable;
                }
                catch (IOException ioe) {
                    String msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1002, msg, (Throwable)ioe));
                }
            }
            bufferedInput.close();
        }
        return iMetadataRepository;
    }

    public void write(IMetadataRepository repository, OutputStream output) throws IOException {
        BufferedOutputStream bufferedOutput = null;
        try {
            bufferedOutput = new BufferedOutputStream(output);
            Writer repositoryWriter = new Writer(bufferedOutput, repository.getClass());
            repositoryWriter.write(repository);
        }
        finally {
            if (bufferedOutput != null) {
                ((OutputStream)bufferedOutput).close();
            }
        }
    }

    protected XMLWriter.ProcessingInstruction[] createPI(Class<?> repositoryClass) {
        return new XMLWriter.ProcessingInstruction[]{XMLWriter.ProcessingInstruction.makeTargetVersionInstruction((String)"metadataRepository", (Version)XMLConstants.CURRENT_VERSION)};
    }

    private class Parser
    extends MetadataParser
    implements XMLConstants {
        private IMetadataRepository theRepository;

        public Parser(BundleContext context, String bundleId) {
            super(context, bundleId);
            this.theRepository = null;
        }

        public synchronized void parse(InputStream stream, IProgressMonitor monitor) throws IOException {
            this.status = null;
            this.setProgressMonitor(monitor);
            monitor.beginTask(Messages.repo_loading, -1);
            try {
                try {
                    this.getParser();
                    RepositoryHandler repositoryHandler = new RepositoryHandler();
                    this.xmlReader.setContentHandler((ContentHandler)((Object)new RepositoryDocHandler("repository", repositoryHandler)));
                    this.xmlReader.parse(new InputSource(stream));
                    if (this.isValidXML()) {
                        this.theRepository = repositoryHandler.getRepository();
                    }
                }
                catch (SAXException e) {
                    if (!(e.getException() instanceof OperationCanceledException)) {
                        throw new IOException(e.getMessage());
                    }
                    monitor.done();
                    stream.close();
                }
                catch (ParserConfigurationException e) {
                    throw new IOException(e.getMessage());
                }
            }
            finally {
                monitor.done();
                stream.close();
            }
        }

        public IMetadataRepository getRepository() {
            return this.theRepository;
        }

        protected Object getRootObject() {
            return this.theRepository;
        }

        protected String getErrorMessage() {
            return Messages.io_parseError;
        }

        public String toString() {
            return null;
        }

        private final class RepositoryDocHandler
        extends XMLParser.DocHandler {
            public RepositoryDocHandler(String rootName, XMLParser.RootHandler rootHandler) {
                super((XMLParser)Parser.this, rootName, rootHandler);
            }

            public void processingInstruction(String target, String data) throws SAXException {
                Version repositoryVersion;
                if ("metadataRepository".equals(target) && !XMLConstants.XML_TOLERANCE.isIncluded(repositoryVersion = Parser.this.extractPIVersion(target, data))) {
                    throw new SAXException(NLS.bind((String)Messages.io_IncompatibleVersion, (Object)repositoryVersion, (Object)XMLConstants.XML_TOLERANCE));
                }
            }
        }

        private final class RepositoryHandler
        extends XMLParser.RootHandler {
            private final String[] required;
            private final String[] optional;
            private MetadataParser.InstallableUnitsHandler unitsHandler;
            private XMLParser.PropertiesHandler propertiesHandler;
            private MetadataParser.RepositoryReferencesHandler repositoryReferencesHandler;
            private AbstractMetadataRepository repository;
            private AbstractMetadataRepository.RepositoryState state;

            public RepositoryHandler() {
                super((XMLParser)Parser.this);
                this.required = new String[]{"name", "type", "version"};
                this.optional = new String[]{"description", "provider"};
                this.unitsHandler = null;
                this.propertiesHandler = null;
                this.repositoryReferencesHandler = null;
                this.repository = null;
                this.state = new AbstractMetadataRepository.RepositoryState();
            }

            public IMetadataRepository getRepository() {
                return this.repository;
            }

            protected void handleRootAttributes(Attributes attributes) {
                String[] values = this.parseAttributes(attributes, this.required, this.optional);
                Version version = Parser.this.checkVersion(this.elementHandled, "version", values[2]);
                this.state.Name = values[0];
                this.state.Type = values[1];
                this.state.Version = version;
                this.state.Description = values[3];
                this.state.Provider = values[4];
                this.state.Location = null;
            }

            public void startElement(String name, Attributes attributes) {
                Parser.this.checkCancel();
                if ("properties".equals(name)) {
                    if (this.propertiesHandler == null) {
                        this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)Parser.this, (ContentHandler)((Object)this), attributes);
                    } else {
                        Parser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else if ("units".equals(name)) {
                    if (this.unitsHandler == null) {
                        this.unitsHandler = new MetadataParser.InstallableUnitsHandler((MetadataParser)Parser.this, (XMLParser.AbstractHandler)this, attributes);
                    } else {
                        Parser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else if ("references".equals(name)) {
                    if (this.repositoryReferencesHandler == null) {
                        this.repositoryReferencesHandler = new MetadataParser.RepositoryReferencesHandler((MetadataParser)Parser.this, (XMLParser.AbstractHandler)this, attributes);
                    } else {
                        Parser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else {
                    this.invalidElement(name, attributes);
                }
            }

            protected void finished() {
                if (Parser.this.isValidXML()) {
                    this.state.Properties = this.propertiesHandler == null ? new OrderedProperties(0) : this.propertiesHandler.getProperties();
                    this.state.Units = this.unitsHandler == null ? new IInstallableUnit[]{} : this.unitsHandler.getUnits();
                    this.state.Repositories = this.repositoryReferencesHandler == null ? new IRepositoryReference[]{} : this.repositoryReferencesHandler.getReferences();
                    Object repositoryObject = null;
                    if (this.state.Type == null) {
                        return;
                    }
                    try {
                        Class<?> clazz = Class.forName(this.state.Type);
                        Class[] classArray = new Class[1];
                        Class<?> clazz2 = class$0;
                        if (clazz2 == null) {
                            try {
                                clazz2 = class$0 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgent");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        classArray[0] = clazz2;
                        Constructor<?> ctor = clazz.getConstructor(classArray);
                        repositoryObject = ctor.newInstance(((Parser)Parser.this).MetadataRepositoryIO.this.agent);
                    }
                    catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (repositoryObject instanceof AbstractMetadataRepository) {
                        this.repository = repositoryObject;
                        this.repository.initialize(this.state);
                    }
                }
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class Writer
    extends MetadataWriter
    implements XMLConstants {
        public Writer(OutputStream output, Class<? extends IMetadataRepository> repositoryClass) throws IOException {
            super(output, MetadataRepositoryIO.this.createPI(repositoryClass));
        }

        public void write(IMetadataRepository repository) {
            this.start("repository");
            this.attribute("name", repository.getName());
            this.attribute("type", repository.getType());
            this.attribute("version", repository.getVersion());
            this.attributeOptional("provider", repository.getProvider());
            this.attributeOptional("description", repository.getDescription());
            this.writeProperties(repository.getProperties());
            if (repository instanceof LocalMetadataRepository) {
                HashSet<IRepositoryReference> references = ((LocalMetadataRepository)repository).repositories;
                this.writeRepositoryReferences(references.iterator(), references.size());
            }
            Set units = repository.query(QueryUtil.createIUAnyQuery(), null).toUnmodifiableSet();
            this.writeInstallableUnits(units.iterator(), units.size());
            this.end("repository");
            this.flush();
        }

        protected void writeRepositoryReferences(Iterator<IRepositoryReference> references, int size) {
            if (size == 0) {
                return;
            }
            this.start("references");
            this.attribute("size", size);
            while (references.hasNext()) {
                this.writeRepositoryReference(references.next());
            }
            this.end("references");
        }

        private void writeRepositoryReference(IRepositoryReference reference) {
            this.start("repository");
            this.attribute("uri", reference.getLocation().toString());
            try {
                this.attribute("url", URIUtil.toURL((URI)reference.getLocation()).toExternalForm());
            }
            catch (MalformedURLException malformedURLException) {
                this.attribute("url", reference.getLocation().toString());
            }
            this.attribute("type", Integer.toString(reference.getType()));
            this.attribute("options", Integer.toString(reference.getOptions()));
            this.end("repository");
        }
    }

    private static interface XMLConstants
    extends org.eclipse.equinox.internal.p2.metadata.repository.io.XMLConstants {
        public static final Version COMPATIBLE_VERSION = Version.createOSGi((int)1, (int)0, (int)0);
        public static final Version CURRENT_VERSION = Version.createOSGi((int)1, (int)1, (int)0);
        public static final VersionRange XML_TOLERANCE = new VersionRange(COMPATIBLE_VERSION, true, Version.createOSGi((int)2, (int)0, (int)0), false);
        public static final String PI_REPOSITORY_TARGET = "metadataRepository";
        public static final String REPOSITORY_ELEMENT = "repository";
    }
}

