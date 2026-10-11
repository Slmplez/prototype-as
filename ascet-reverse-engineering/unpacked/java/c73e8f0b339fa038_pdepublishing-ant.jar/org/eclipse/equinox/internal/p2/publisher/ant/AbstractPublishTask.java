/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.artifact.repository.CompositeArtifactRepository
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository
 *  org.eclipse.equinox.internal.p2.publisher.Messages
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.publisher.Publisher
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.artifact.ArtifactKeyQuery
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.publishing.Activator
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.publisher.ant;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.CompositeArtifactRepository;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository;
import org.eclipse.equinox.internal.p2.publisher.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.publisher.Publisher;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.artifact.ArtifactKeyQuery;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.publishing.Activator;
import org.osgi.framework.BundleContext;

public abstract class AbstractPublishTask
extends Task {
    protected static final String ANT_PROPERTY_PREFIX = "${";
    protected boolean compress = false;
    protected boolean reusePackedFiles = false;
    protected boolean append = true;
    protected boolean publish = true;
    protected String source = null;
    protected URI metadataLocation;
    protected String metadataRepoName;
    protected URI artifactLocation;
    protected String artifactRepoName;
    protected PublisherInfo provider = null;
    protected List<RepoEntry> contextRepositories = new ArrayList<RepoEntry>();

    protected IProvisioningAgent getProvisioningAgent() {
        return (IProvisioningAgent)ServiceHelper.getService((BundleContext)Activator.getContext(), (String)IProvisioningAgent.SERVICE_NAME);
    }

    protected IStatus createConfigurationEror(String message) {
        return new Status(4, "org.eclipse.equinox.p2.publisher", message);
    }

    private boolean isEmpty(IArtifactRepository repo) {
        IQueryResult result = repo.query(QueryUtil.createLimitQuery((IQuery)ArtifactKeyQuery.ALL_KEYS, (int)1), null);
        return result.isEmpty();
    }

    protected void initializeRepositories(PublisherInfo info) throws ProvisionException {
        if (this.artifactLocation != null) {
            IArtifactRepository repo = Publisher.createArtifactRepository((IProvisioningAgent)this.getProvisioningAgent(), (URI)this.artifactLocation, (String)this.artifactRepoName, (boolean)this.compress, (boolean)this.reusePackedFiles);
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
                repo.removeAll((IProgressMonitor)new NullProgressMonitor());
            }
            info.setArtifactRepository(repo);
        } else if ((info.getArtifactOptions() & 2) > 0) {
            throw new ProvisionException(this.createConfigurationEror(Messages.exception_noArtifactRepo));
        }
        if (this.metadataLocation == null) {
            throw new ProvisionException(this.createConfigurationEror(Messages.exception_noMetadataRepo));
        }
        info.setMetadataRepository(Publisher.createMetadataRepository((IProvisioningAgent)this.getProvisioningAgent(), (URI)this.metadataLocation, (String)this.metadataRepoName, (boolean)this.append, (boolean)this.compress));
        if (this.contextRepositories.size() > 0) {
            CompositeMetadataRepository contextMetadata = CompositeMetadataRepository.createMemoryComposite((IProvisioningAgent)this.getProvisioningAgent());
            CompositeArtifactRepository contextArtifact = CompositeArtifactRepository.createMemoryComposite((IProvisioningAgent)this.getProvisioningAgent());
            Iterator<RepoEntry> iterator = this.contextRepositories.iterator();
            while (iterator.hasNext()) {
                RepoEntry entry = iterator.next();
                if (contextMetadata != null && entry.isMetadataRepository()) {
                    contextMetadata.addChild(entry.getRepositoryLocation());
                }
                if (contextArtifact == null || !entry.isArtifactRepository()) continue;
                contextArtifact.addChild(entry.getRepositoryLocation());
            }
            if (contextMetadata != null && contextMetadata.getChildren().size() > 0) {
                info.setContextMetadataRepository((IMetadataRepository)contextMetadata);
            }
            if (contextArtifact != null && contextArtifact.getChildren().size() > 0) {
                info.setContextArtifactRepository((IArtifactRepository)contextArtifact);
            }
        }
    }

    protected PublisherInfo getInfo() {
        if (this.provider == null) {
            this.provider = new PublisherInfo();
        }
        if (this.publish) {
            this.provider.setArtifactOptions(this.provider.getArtifactOptions() | 2);
        }
        return this.provider;
    }

    public void setCompress(String value) {
        this.compress = Boolean.valueOf(value);
    }

    public void setReusePackedFiles(String value) {
        this.reusePackedFiles = Boolean.valueOf(value);
    }

    public void setAppend(String value) {
        this.append = Boolean.valueOf(value);
    }

    public void setPublishArtifacts(String value) {
        this.publish = Boolean.valueOf(value);
    }

    public void setArtifactRepository(String location) {
        try {
            this.artifactLocation = URIUtil.fromString((String)location);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Artifact repository location (" + location + ") must be a URL.");
        }
    }

    public void setArtifactRepositoryName(String value) {
        this.artifactRepoName = value;
    }

    public void setMetadataRepository(String location) {
        try {
            this.metadataLocation = URIUtil.fromString((String)location);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Metadata repository location (" + location + ") must be a URL.");
        }
    }

    public void setMetadataRepositoryName(String value) {
        this.metadataRepoName = value;
    }

    public void setRepository(String location) {
        this.setArtifactRepository(location);
        this.setMetadataRepository(location);
    }

    public void setRepositoryName(String name) {
        this.setArtifactRepositoryName(name);
        this.setMetadataRepositoryName(name);
    }

    public void addConfiguredContextRepository(RepoEntry repo) {
        this.contextRepositories.add(repo);
    }

    public static class RepoEntry {
        private URI repoLocation;
        private Boolean metadata = null;
        private Boolean artifact = null;

        public boolean isMetadataRepository() {
            if (this.metadata != null) {
                return this.metadata;
            }
            return !Boolean.TRUE.equals(this.artifact);
        }

        public boolean isArtifactRepository() {
            if (this.artifact != null) {
                return this.artifact;
            }
            return !Boolean.TRUE.equals(this.metadata);
        }

        public URI getRepositoryLocation() {
            return this.repoLocation;
        }

        public void setLocation(String location) {
            try {
                this.repoLocation = URIUtil.fromString((String)location);
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalArgumentException("Repository location (" + location + ") must be a URL.");
            }
        }

        public void setMetadata(boolean metadata) {
            this.metadata = metadata;
        }

        public void setArtifact(boolean artifact) {
            this.artifact = artifact;
        }
    }
}

