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
 *  org.eclipse.equinox.internal.p2.metadata.ArtifactKey
 *  org.eclipse.equinox.internal.p2.persistence.XMLConstants
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$AbstractHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$DocHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$PropertiesHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLParser$RootHandler
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter$ProcessingInstruction
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.spi.ProcessingStepDescriptor
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.Activator;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactDescriptor;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepository;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.internal.p2.metadata.ArtifactKey;
import org.eclipse.equinox.internal.p2.persistence.XMLParser;
import org.eclipse.equinox.internal.p2.persistence.XMLWriter;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ProcessingStepDescriptor;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class SimpleArtifactRepositoryIO {
    private final IProvisioningAgent agent;
    private Location lockLocation = null;

    public SimpleArtifactRepositoryIO(IProvisioningAgent agent) {
        this.agent = agent;
    }

    public void write(SimpleArtifactRepository repository, OutputStream output) {
        BufferedOutputStream bufferedOutput = null;
        try {
            try {
                bufferedOutput = new BufferedOutputStream(output);
                Writer repositoryWriter = new Writer(bufferedOutput);
                repositoryWriter.write(repository);
            }
            finally {
                if (bufferedOutput != null) {
                    ((OutputStream)bufferedOutput).close();
                }
            }
        }
        catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public IArtifactRepository read(URI location, InputStream input, IProgressMonitor monitor, boolean acquireLock) throws ProvisionException {
        SimpleArtifactRepository simpleArtifactRepository;
        block21: {
            BufferedInputStream bufferedInput = null;
            try {
                bufferedInput = new BufferedInputStream(input);
                Parser repositoryParser = new Parser(Activator.getContext(), "org.eclipse.equinox.p2.artifact.repository");
                repositoryParser.setErrorContext(location.toURL().toExternalForm());
                IStatus result = null;
                boolean lock = false;
                try {
                    if (this.canLock(location) && acquireLock) {
                        lock = this.lock(location, true, monitor);
                        if (lock) {
                            repositoryParser.parse(input);
                            result = repositoryParser.getStatus();
                        } else {
                            result = Status.CANCEL_STATUS;
                        }
                    } else {
                        repositoryParser.parse(input);
                        result = repositoryParser.getStatus();
                    }
                }
                finally {
                    if (lock) {
                        this.unlock(location);
                    }
                }
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
                SimpleArtifactRepository repository = repositoryParser.getRepository();
                if (repository == null) {
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1002, Messages.io_parseError, null));
                }
                simpleArtifactRepository = repository;
                if (bufferedInput == null) break block21;
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
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1002, msg, (Throwable)ioe));
                }
            }
            bufferedInput.close();
        }
        return simpleArtifactRepository;
    }

    private synchronized boolean canLock(URI repositoryLocation) {
        if (!URIUtil.isFileURI((URI)repositoryLocation)) {
            return false;
        }
        try {
            this.lockLocation = this.getLockLocation(repositoryLocation);
        }
        catch (IOException iOException) {
            return false;
        }
        return !this.lockLocation.isReadOnly();
    }

    private synchronized boolean lock(URI repositoryLocation, boolean wait, IProgressMonitor monitor) throws IOException {
        if (!Activator.getInstance().enableArtifactLocking()) {
            return true;
        }
        this.lockLocation = this.getLockLocation(repositoryLocation);
        boolean locked = this.lockLocation.lock();
        if (locked || !wait) {
            return locked;
        }
        do {
            if (monitor.isCanceled()) {
                return false;
            }
            try {
                Thread.sleep(200L);
            }
            catch (InterruptedException interruptedException) {}
        } while (!(locked = this.lockLocation.lock()));
        return true;
    }

    private void unlock(URI repositoryLocation) {
        if (!Activator.getInstance().enableArtifactLocking()) {
            return;
        }
        if (this.lockLocation != null) {
            this.lockLocation.release();
        }
    }

    private Location getLockLocation(URI repositoryLocation) throws IOException {
        if (!URIUtil.isFileURI((URI)repositoryLocation)) {
            throw new IOException("Cannot lock a non file based repository");
        }
        return Activator.getInstance().getLockLocation(repositoryLocation);
    }

    private class Parser
    extends XMLParser
    implements XMLConstants {
        private SimpleArtifactRepository theRepository;

        public Parser(BundleContext context, String bundleId) {
            super(context, bundleId);
            this.theRepository = null;
        }

        public synchronized void parse(InputStream stream) throws IOException {
            this.status = null;
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

        public SimpleArtifactRepository getRepository() {
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

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class ArtifactHandler
        extends XMLParser.AbstractHandler {
            private final String[] required;
            private Set<SimpleArtifactDescriptor> artifacts;
            SimpleArtifactDescriptor currentArtifact;
            private XMLParser.PropertiesHandler propertiesHandler;
            private XMLParser.PropertiesHandler repositoryPropertiesHandler;
            private ProcessingStepsHandler processingStepsHandler;

            public ArtifactHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, Set<SimpleArtifactDescriptor> artifacts) {
                super((XMLParser)Parser.this, (ContentHandler)parentHandler, "artifact");
                this.required = new String[]{"classifier", "id", "version"};
                this.currentArtifact = null;
                this.propertiesHandler = null;
                this.repositoryPropertiesHandler = null;
                this.processingStepsHandler = null;
                this.artifacts = artifacts;
                String[] values = this.parseRequiredAttributes(attributes, this.required);
                Version version = Parser.this.checkVersion("artifact", "version", values[2]);
                this.currentArtifact = new SimpleArtifactDescriptor((IArtifactKey)new ArtifactKey(values[0], values[1], version));
            }

            public void startElement(String name, Attributes attributes) {
                if ("processing".equals(name)) {
                    if (this.processingStepsHandler == null) {
                        this.processingStepsHandler = new ProcessingStepsHandler(this, attributes);
                    } else {
                        Parser.this.duplicateElement(this, name, attributes);
                    }
                } else if ("properties".equals(name)) {
                    if (this.propertiesHandler == null) {
                        this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)Parser.this, (ContentHandler)((Object)this), attributes);
                    } else {
                        Parser.this.duplicateElement(this, name, attributes);
                    }
                } else if ("repositoryProperties".equals(name)) {
                    if (this.repositoryPropertiesHandler == null) {
                        this.repositoryPropertiesHandler = new XMLParser.PropertiesHandler((XMLParser)Parser.this, (ContentHandler)((Object)this), attributes);
                    } else {
                        Parser.this.duplicateElement(this, name, attributes);
                    }
                } else {
                    this.invalidElement(name, attributes);
                }
            }

            protected void finished() {
                if (Parser.this.isValidXML() && this.currentArtifact != null) {
                    OrderedProperties properties = this.propertiesHandler == null ? new OrderedProperties(0) : this.propertiesHandler.getProperties();
                    this.currentArtifact.addProperties((Map)properties);
                    properties = this.repositoryPropertiesHandler == null ? new OrderedProperties(0) : this.repositoryPropertiesHandler.getProperties();
                    this.currentArtifact.addRepositoryProperties((Map<String, String>)properties);
                    ProcessingStepDescriptor[] processingSteps = this.processingStepsHandler == null ? new ProcessingStepDescriptor[]{} : this.processingStepsHandler.getProcessingSteps();
                    this.currentArtifact.setProcessingSteps((IProcessingStepDescriptor[])processingSteps);
                    this.artifacts.add(this.currentArtifact);
                }
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class ArtifactsHandler
        extends XMLParser.AbstractHandler {
            private Set<SimpleArtifactDescriptor> artifacts;

            public ArtifactsHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
                super((XMLParser)Parser.this, (ContentHandler)parentHandler, "artifacts");
                String size = this.parseOptionalAttribute(attributes, "size");
                this.artifacts = size != null ? new LinkedHashSet(new Integer(size)) : new LinkedHashSet(4);
            }

            public Set<SimpleArtifactDescriptor> getArtifacts() {
                return this.artifacts;
            }

            public void startElement(String name, Attributes attributes) {
                if (name.equals("artifact")) {
                    new ArtifactHandler(this, attributes, this.artifacts);
                } else {
                    this.invalidElement(name, attributes);
                }
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class MappingRuleHandler
        extends XMLParser.AbstractHandler {
            private final String[] required;

            public MappingRuleHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<String[]> mappingRules) {
                super((XMLParser)Parser.this, (ContentHandler)parentHandler, "rule");
                this.required = new String[]{"filter", "output"};
                mappingRules.add(this.parseRequiredAttributes(attributes, this.required));
            }

            public void startElement(String name, Attributes attributes) {
                this.invalidElement(name, attributes);
            }
        }

        protected class MappingRulesHandler
        extends XMLParser.AbstractHandler {
            private List<String[]> mappingRules;

            public MappingRulesHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
                super((XMLParser)Parser.this, (ContentHandler)parentHandler, "mappings");
                String size = this.parseOptionalAttribute(attributes, "size");
                this.mappingRules = size != null ? new ArrayList(new Integer(size)) : new ArrayList(4);
            }

            public String[][] getMappingRules() {
                String[][] rules = new String[this.mappingRules.size()][2];
                int index = 0;
                while (index < this.mappingRules.size()) {
                    String[] ruleAttributes = this.mappingRules.get(index);
                    rules[index] = ruleAttributes;
                    ++index;
                }
                return rules;
            }

            public void startElement(String name, Attributes attributes) {
                if (name.equals("rule")) {
                    new MappingRuleHandler(this, attributes, this.mappingRules);
                } else {
                    this.invalidElement(name, attributes);
                }
            }
        }

        /*
         * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class ProcessingStepHandler
        extends XMLParser.AbstractHandler {
            private final String[] required;
            private final String[] optional;

            public ProcessingStepHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes, List<IProcessingStepDescriptor> processingSteps) {
                super((XMLParser)Parser.this, (ContentHandler)parentHandler, "step");
                this.required = new String[]{"id", "required"};
                this.optional = new String[]{"data"};
                String[] attributeValues = this.parseAttributes(attributes, this.required, this.optional);
                processingSteps.add((IProcessingStepDescriptor)new ProcessingStepDescriptor(attributeValues[0], attributeValues[2], Parser.this.checkBoolean("step", "required", attributeValues[1]).booleanValue()));
            }

            public void startElement(String name, Attributes attributes) {
                this.invalidElement(name, attributes);
            }
        }

        protected class ProcessingStepsHandler
        extends XMLParser.AbstractHandler {
            private List<IProcessingStepDescriptor> processingSteps;

            public ProcessingStepsHandler(XMLParser.AbstractHandler parentHandler, Attributes attributes) {
                super((XMLParser)Parser.this, (ContentHandler)parentHandler, "processing");
                String size = this.parseOptionalAttribute(attributes, "size");
                this.processingSteps = size != null ? new ArrayList(new Integer(size)) : new ArrayList(4);
            }

            public IProcessingStepDescriptor[] getProcessingSteps() {
                return (IProcessingStepDescriptor[])this.processingSteps.toArray(new ProcessingStepDescriptor[this.processingSteps.size()]);
            }

            public void startElement(String name, Attributes attributes) {
                if (name.equals("step")) {
                    new ProcessingStepHandler(this, attributes, this.processingSteps);
                } else {
                    this.invalidElement(name, attributes);
                }
            }
        }

        private final class RepositoryDocHandler
        extends XMLParser.DocHandler {
            public RepositoryDocHandler(String rootName, XMLParser.RootHandler rootHandler) {
                super((XMLParser)Parser.this, rootName, rootHandler);
            }

            public void processingInstruction(String target, String data) throws SAXException {
                Version repositoryVersion;
                if ("artifactRepository".equals(target) && !XML_TOLERANCE.isIncluded(repositoryVersion = Parser.this.extractPIVersion(target, data))) {
                    throw new SAXException(NLS.bind((String)Messages.io_incompatibleVersion, (Object)repositoryVersion, (Object)XML_TOLERANCE));
                }
            }
        }

        private final class RepositoryHandler
        extends XMLParser.RootHandler {
            private final String[] required;
            private final String[] optional;
            private String[] attrValues;
            private MappingRulesHandler mappingRulesHandler;
            private XMLParser.PropertiesHandler propertiesHandler;
            private ArtifactsHandler artifactsHandler;
            private SimpleArtifactRepository repository;

            public RepositoryHandler() {
                super((XMLParser)Parser.this);
                this.required = new String[]{"name", "type", "version"};
                this.optional = new String[]{"description", "provider"};
                this.attrValues = new String[this.required.length + this.optional.length];
                this.mappingRulesHandler = null;
                this.propertiesHandler = null;
                this.artifactsHandler = null;
                this.repository = null;
            }

            public SimpleArtifactRepository getRepository() {
                return this.repository;
            }

            protected void handleRootAttributes(Attributes attributes) {
                this.attrValues = this.parseAttributes(attributes, this.required, this.optional);
                this.attrValues[2] = Parser.this.checkVersion("repository", "version", this.attrValues[2]).toString();
            }

            public void startElement(String name, Attributes attributes) {
                if ("mappings".equals(name)) {
                    if (this.mappingRulesHandler == null) {
                        this.mappingRulesHandler = new MappingRulesHandler((XMLParser.AbstractHandler)this, attributes);
                    } else {
                        Parser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else if ("artifacts".equals(name)) {
                    if (this.artifactsHandler == null) {
                        this.artifactsHandler = new ArtifactsHandler((XMLParser.AbstractHandler)this, attributes);
                    } else {
                        Parser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else if ("properties".equals(name)) {
                    if (this.propertiesHandler == null) {
                        this.propertiesHandler = new XMLParser.PropertiesHandler((XMLParser)Parser.this, (ContentHandler)((Object)this), attributes);
                    } else {
                        Parser.this.duplicateElement((XMLParser.AbstractHandler)this, name, attributes);
                    }
                } else {
                    this.invalidElement(name, attributes);
                }
            }

            protected void finished() {
                if (Parser.this.isValidXML()) {
                    String[][] mappingRules = this.mappingRulesHandler == null ? new String[0][0] : this.mappingRulesHandler.getMappingRules();
                    OrderedProperties properties = this.propertiesHandler == null ? new OrderedProperties(0) : this.propertiesHandler.getProperties();
                    HashSet<SimpleArtifactDescriptor> artifacts = this.artifactsHandler == null ? new HashSet(0) : this.artifactsHandler.getArtifacts();
                    this.repository = new SimpleArtifactRepository(SimpleArtifactRepositoryIO.this.agent, this.attrValues[0], this.attrValues[1], this.attrValues[2], this.attrValues[3], this.attrValues[4], artifacts, mappingRules, (Map<String, String>)properties);
                }
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class Writer
    extends XMLWriter
    implements XMLConstants {
        public Writer(OutputStream output) throws IOException {
            super(output, PI_DEFAULTS);
        }

        public void write(SimpleArtifactRepository repository) {
            this.start("repository");
            this.attribute("name", repository.getName());
            this.attribute("type", repository.getType());
            this.attribute("version", repository.getVersion());
            this.attributeOptional("provider", repository.getProvider());
            this.attributeOptional("description", repository.getDescription());
            this.writeProperties(repository.getProperties());
            this.writeMappingRules(repository.getRules());
            this.writeArtifacts(repository.getDescriptors());
            this.end("repository");
            this.flush();
        }

        private void writeMappingRules(String[][] rules) {
            if (rules.length > 0) {
                this.start("mappings");
                this.attribute("size", rules.length);
                int i = 0;
                while (i < rules.length) {
                    this.start("rule");
                    this.attribute("filter", rules[i][0]);
                    this.attribute("output", rules[i][1]);
                    this.end("rule");
                    ++i;
                }
                this.end("mappings");
            }
        }

        private void writeArtifacts(Set<SimpleArtifactDescriptor> artifactDescriptors) {
            this.start("artifacts");
            this.attribute("size", artifactDescriptors.size());
            for (SimpleArtifactDescriptor descriptor : artifactDescriptors) {
                IArtifactKey key = descriptor.getArtifactKey();
                this.start("artifact");
                this.attribute("classifier", key.getClassifier());
                this.attribute("id", key.getId());
                this.attribute("version", key.getVersion());
                this.writeProcessingSteps(descriptor.getProcessingSteps());
                this.writeProperties(descriptor.getProperties());
                this.writeProperties("repositoryProperties", descriptor.getRepositoryProperties());
                this.end("artifact");
            }
            this.end("artifacts");
        }

        private void writeProcessingSteps(IProcessingStepDescriptor[] processingSteps) {
            if (processingSteps.length > 0) {
                this.start("processing");
                this.attribute("size", processingSteps.length);
                int i = 0;
                while (i < processingSteps.length) {
                    this.start("step");
                    this.attribute("id", processingSteps[i].getProcessorId());
                    this.attribute("data", processingSteps[i].getData());
                    this.attribute("required", processingSteps[i].isRequired());
                    this.end("step");
                    ++i;
                }
                this.end("processing");
            }
        }
    }

    private static interface XMLConstants
    extends org.eclipse.equinox.internal.p2.persistence.XMLConstants {
        public static final Version COMPATIBLE_VERSION = Version.createOSGi((int)1, (int)0, (int)0);
        public static final Version CURRENT_VERSION = Version.createOSGi((int)1, (int)1, (int)0);
        public static final VersionRange XML_TOLERANCE = new VersionRange(COMPATIBLE_VERSION, true, Version.createOSGi((int)2, (int)0, (int)0), false);
        public static final String PI_REPOSITORY_TARGET = "artifactRepository";
        public static final XMLWriter.ProcessingInstruction[] PI_DEFAULTS = new XMLWriter.ProcessingInstruction[]{XMLWriter.ProcessingInstruction.makeTargetVersionInstruction((String)"artifactRepository", (Version)CURRENT_VERSION)};
        public static final String REPOSITORY_ELEMENT = "repository";
        public static final String REPOSITORY_PROPERTIES_ELEMENT = "repositoryProperties";
        public static final String MAPPING_RULES_ELEMENT = "mappings";
        public static final String MAPPING_RULE_ELEMENT = "rule";
        public static final String ARTIFACTS_ELEMENT = "artifacts";
        public static final String ARTIFACT_ELEMENT = "artifact";
        public static final String PROCESSING_STEPS_ELEMENT = "processing";
        public static final String PROCESSING_STEP_ELEMENT = "step";
        public static final String MAPPING_RULE_FILTER_ATTRIBUTE = "filter";
        public static final String MAPPING_RULE_OUTPUT_ATTRIBUTE = "output";
        public static final String ARTIFACT_CLASSIFIER_ATTRIBUTE = "classifier";
        public static final String STEP_DATA_ATTRIBUTE = "data";
        public static final String STEP_REQUIRED_ATTRIBUTE = "required";
    }
}

