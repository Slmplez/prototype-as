/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.equinox.internal.p2.artifact.repository.CompositeArtifactRepository
 *  org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.IProvisioningAgentProvider
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.ArtifactKeyQuery
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.p2.publisher;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.equinox.internal.p2.artifact.repository.CompositeArtifactRepository;
import org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.eclipse.equinox.internal.p2.publisher.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.Publisher;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.ArtifactKeyQuery;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public abstract class AbstractPublisherApplication
implements IApplication {
    protected static final String[][] INPLACE_MAPPING_RULES = new String[][]{{"(& (classifier=osgi.bundle) (format=packed)", "${repoUrl}/features/${id}_${version}.jar.pack.gz"}, {"(& (classifier=osgi.bundle))", "${repoUrl}/plugins/${id}_${version}.jar"}, {"(& (classifier=binary))", "${repoUrl}/binary/${id}_${version}"}, {"(& (classifier=org.eclipse.update.feature))", "${repoUrl}/features/${id}_${version}.jar"}};
    public static final String PUBLISH_PACK_FILES_AS_SIBLINGS = "publishPackFilesAsSiblings";
    protected PublisherInfo info;
    protected String source;
    protected URI metadataLocation;
    protected String metadataRepoName;
    protected URI artifactLocation;
    protected String artifactRepoName;
    protected URI[] contextMetadataRepositories;
    protected URI[] contextArtifactRepositories;
    protected boolean compress = false;
    protected boolean inplace = false;
    protected boolean append = false;
    protected boolean reusePackedFiles = false;
    protected String[] configurations;
    private IStatus status;
    private ServiceReference<IProvisioningAgent> agentRef;
    protected IProvisioningAgent agent;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public IStatus getStatus() {
        return this.status;
    }

    protected void initialize(PublisherInfo publisherInfo) throws ProvisionException {
        if (this.inplace) {
            File location = new File(this.source);
            if (this.metadataLocation == null) {
                this.metadataLocation = location.toURI();
            }
            if (this.artifactLocation == null) {
                this.artifactLocation = location.toURI();
            }
            publisherInfo.setArtifactOptions(publisherInfo.getArtifactOptions() | 1 | 2);
        }
        this.initializeRepositories(publisherInfo);
    }

    protected IStatus createConfigurationEror(String message) {
        return new Status(4, "org.eclipse.equinox.p2.publisher", message);
    }

    private boolean isEmpty(IArtifactRepository repo) {
        IQueryResult result = repo.query(QueryUtil.createLimitQuery((IQuery)ArtifactKeyQuery.ALL_KEYS, (int)1), null);
        return result.isEmpty();
    }

    protected void initializeRepositories(PublisherInfo publisherInfo) throws ProvisionException {
        CompositeArtifactRepository contextArtifact;
        CompositeMetadataRepository contextMetadata;
        if (this.artifactLocation != null) {
            IArtifactRepository repo = Publisher.createArtifactRepository(this.agent, this.artifactLocation, this.artifactRepoName, this.compress, this.reusePackedFiles);
            if (!this.append && !this.isEmpty(repo)) {
                File repoLocation = URIUtil.toFile((URI)this.artifactLocation);
                if (repoLocation != null && this.source != null) {
                    if (repoLocation.isFile()) {
                        repoLocation = repoLocation.getParentFile();
                    }
                    if (repoLocation.equals(new File(this.source))) {
                        throw new IllegalArgumentException(NLS.bind((String)Messages.exception_artifactRepoNoAppendDestroysInput, (Object)URIUtil.toUnencodedString((URI)this.artifactLocation)));
                    }
                }
                repo.removeAll();
            }
            publisherInfo.setArtifactRepository(repo);
        } else if ((publisherInfo.getArtifactOptions() & 2) > 0) {
            throw new ProvisionException(this.createConfigurationEror(Messages.exception_noArtifactRepo));
        }
        if (this.metadataLocation == null) {
            throw new ProvisionException(this.createConfigurationEror(Messages.exception_noMetadataRepo));
        }
        publisherInfo.setMetadataRepository(Publisher.createMetadataRepository(this.agent, this.metadataLocation, this.metadataRepoName, this.append, this.compress));
        if (this.contextMetadataRepositories != null && this.contextMetadataRepositories.length > 0 && (contextMetadata = CompositeMetadataRepository.createMemoryComposite((IProvisioningAgent)this.agent)) != null) {
            int i = 0;
            while (i < this.contextMetadataRepositories.length) {
                contextMetadata.addChild(this.contextMetadataRepositories[i]);
                ++i;
            }
            if (contextMetadata.getChildren().size() > 0) {
                publisherInfo.setContextMetadataRepository((IMetadataRepository)contextMetadata);
            }
        }
        if (this.contextArtifactRepositories != null && this.contextArtifactRepositories.length > 0 && (contextArtifact = CompositeArtifactRepository.createMemoryComposite((IProvisioningAgent)this.agent)) != null) {
            int i = 0;
            while (i < this.contextArtifactRepositories.length) {
                contextArtifact.addChild(this.contextArtifactRepositories[i]);
                ++i;
            }
            if (contextArtifact.getChildren().size() > 0) {
                publisherInfo.setContextArtifactRepository((IArtifactRepository)contextArtifact);
            }
        }
    }

    protected void processCommandLineArguments(String[] args, PublisherInfo publisherInfo) throws Exception {
        if (args == null) {
            return;
        }
        int i = 0;
        while (i < args.length) {
            this.processFlag(args[i], publisherInfo);
            if (i != args.length - 1 && !args[i + 1].startsWith("-")) {
                this.processParameter(args[i], args[++i], publisherInfo);
            }
            ++i;
        }
    }

    protected void processParameter(String arg, String parameter, PublisherInfo publisherInfo) throws URISyntaxException {
        try {
            if (arg.equalsIgnoreCase("-metadataRepository") || arg.equalsIgnoreCase("-mr")) {
                this.metadataLocation = URIUtil.fromString((String)parameter);
            }
            if (arg.equalsIgnoreCase("-artifactRepository") || arg.equalsIgnoreCase("-ar")) {
                this.artifactLocation = URIUtil.fromString((String)parameter);
            }
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.exception_repoMustBeURL, (Object)parameter));
        }
        if (arg.equalsIgnoreCase("-metadataRepositoryName")) {
            this.metadataRepoName = parameter;
        }
        if (arg.equalsIgnoreCase("-source")) {
            if (!new File(parameter).exists()) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.exception_sourcePath, (Object)parameter));
            }
            this.source = parameter;
        }
        if (arg.equalsIgnoreCase("-artifactRepositoryName")) {
            this.artifactRepoName = parameter;
        }
        if (arg.equalsIgnoreCase("-configs")) {
            publisherInfo.setConfigurations(AbstractPublisherAction.getArrayFromString(parameter, ","));
        }
        if (arg.equalsIgnoreCase("-contextMetadata")) {
            this.setContextRepositories(this.processRepositoryList(parameter), this.contextArtifactRepositories);
        }
        if (arg.equalsIgnoreCase("-contextArtifacts")) {
            this.setContextRepositories(this.contextMetadataRepositories, this.processRepositoryList(parameter));
        }
    }

    private URI[] processRepositoryList(String parameter) {
        String[] list = AbstractPublisherAction.getArrayFromString(parameter, ",");
        if (list == null || list.length == 0) {
            return null;
        }
        ArrayList<URI> result = new ArrayList<URI>(list.length);
        if (result != null) {
            int i = 0;
            while (i < list.length) {
                try {
                    result.add(URIUtil.fromString((String)list[i]));
                }
                catch (URISyntaxException e) {
                    e.printStackTrace();
                }
                ++i;
            }
        }
        return result.toArray(new URI[result.size()]);
    }

    protected void processFlag(String arg, PublisherInfo publisherInfo) {
        if (arg.equalsIgnoreCase("-publishArtifacts") || arg.equalsIgnoreCase("-pa")) {
            publisherInfo.setArtifactOptions(publisherInfo.getArtifactOptions() | 2);
        }
        if (arg.equalsIgnoreCase("-publishArtifactRepository") || arg.equalsIgnoreCase("-par")) {
            publisherInfo.setArtifactOptions(publisherInfo.getArtifactOptions() | 1);
        }
        if (arg.equalsIgnoreCase("-overwriteArtifacts")) {
            publisherInfo.setArtifactOptions(publisherInfo.getArtifactOptions() | 4);
        }
        if (arg.equalsIgnoreCase("-append")) {
            this.append = true;
        }
        if (arg.equalsIgnoreCase("-compress")) {
            this.compress = true;
        }
        if (arg.equalsIgnoreCase("-reusePack200Files")) {
            this.reusePackedFiles = true;
        }
        if (arg.equalsIgnoreCase("-inplace")) {
            this.inplace = true;
        }
    }

    private void setupAgent() throws ProvisionException {
        ServiceReference providerRef;
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgent");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.agentRef = bundleContext.getServiceReference((Class)clazz);
        if (this.agentRef != null) {
            this.agent = (IProvisioningAgent)Activator.getContext().getService(this.agentRef);
            if (this.agent != null) {
                return;
            }
        }
        BundleContext bundleContext2 = Activator.getContext();
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgentProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((providerRef = bundleContext2.getServiceReference((Class)clazz2)) == null) {
            throw new RuntimeException("No provisioning agent provider is available");
        }
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)Activator.getContext().getService(providerRef);
        if (provider == null) {
            throw new RuntimeException("No provisioning agent provider is available");
        }
        this.agent = provider.createAgent(null);
        Activator.getContext().ungetService(providerRef);
    }

    public Object run(String[] args) throws Exception {
        try {
            this.info = this.createPublisherInfo();
            this.processCommandLineArguments(args, this.info);
            Object result = this.run(this.info);
            if (result != IApplication.EXIT_OK) {
                System.out.println(NLS.bind((String)Messages.message_publisherArguments, null));
                int i = 0;
                while (i < args.length) {
                    System.out.println(args[i]);
                    ++i;
                }
            }
            return result;
        }
        catch (Exception e) {
            if (e.getMessage() != null) {
                System.err.println(e.getMessage());
            } else {
                e.printStackTrace(System.err);
            }
            throw e;
        }
    }

    protected PublisherInfo createPublisherInfo() {
        return new PublisherInfo();
    }

    public Object run(PublisherInfo publisherInfo) throws Exception {
        block4: {
            try {
                this.info = publisherInfo;
                this.setupAgent();
                this.initialize(publisherInfo);
                System.out.println(NLS.bind((String)Messages.message_generatingMetadata, (Object)publisherInfo.getSummary()));
                long before = System.currentTimeMillis();
                IPublisherAction[] actions = this.createActions();
                Publisher publisher = this.createPublisher(publisherInfo);
                IStatus result = publisher.publish(actions, (IProgressMonitor)new NullProgressMonitor());
                long after = System.currentTimeMillis();
                if (result.isOK()) {
                    System.out.println(NLS.bind((String)Messages.message_generationCompleted, (Object)String.valueOf((after - before) / 1000L)));
                    return IApplication.EXIT_OK;
                }
                System.out.println(result);
                Throwable th = result.getException();
                if (th != null) {
                    System.out.println();
                    System.out.println(NLS.bind((String)Messages.message_resultException, null));
                    th.printStackTrace(System.out);
                    System.out.println();
                }
            }
            catch (ProvisionException e) {
                this.status = e.getStatus();
                if (this.status.getSeverity() != 4 || this.status.getMessage() == null) break block4;
                System.out.println(this.status.getMessage());
            }
        }
        return new Integer(1);
    }

    protected abstract IPublisherAction[] createActions();

    protected Publisher createPublisher(PublisherInfo publisherInfo) {
        return new Publisher(publisherInfo);
    }

    public Object start(IApplicationContext context) throws Exception {
        return this.run((String[])context.getArguments().get("application.args"));
    }

    public void stop() {
        if (this.agentRef != null) {
            Activator.getContext().ungetService(this.agentRef);
            this.agentRef = null;
        }
    }

    public void setArtifactLocation(URI location) {
        this.artifactLocation = location;
    }

    public void setMetadataLocation(URI location) {
        this.metadataLocation = location;
    }

    public boolean reuseExistingPack200Files() {
        return this.reusePackedFiles;
    }

    public void setReuseExistingPackedFiles(boolean value) {
        this.reusePackedFiles = value;
    }

    public void setCompress(boolean value) {
        this.compress = value;
    }

    public void setContextRepositories(URI[] metadata, URI[] artifacts) {
        this.contextMetadataRepositories = metadata;
        this.contextArtifactRepositories = artifacts;
    }
}

