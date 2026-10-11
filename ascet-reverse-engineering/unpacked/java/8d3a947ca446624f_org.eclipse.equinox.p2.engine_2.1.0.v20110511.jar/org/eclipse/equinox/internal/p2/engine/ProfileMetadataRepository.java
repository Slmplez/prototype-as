/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.repository.IRepositoryReference
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository$RepositoryState
 *  org.eclipse.equinox.p2.repository.spi.RepositoryReference
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EventObject;
import java.util.HashSet;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.repository.IRepositoryReference;
import org.eclipse.equinox.p2.repository.metadata.spi.AbstractMetadataRepository;
import org.eclipse.equinox.p2.repository.spi.RepositoryReference;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProfileMetadataRepository
extends AbstractMetadataRepository {
    private static final String DEFAULT_ARTIFACT_REPO_DIRECTORY = "org.eclipse.equinox.p2.core/cache";
    private static final String ARTIFACTS_XML = "artifacts.xml";
    private static final String FILE_SCHEME = "file";
    private static final String DOT_PROFILE = ".profile";
    public static final String TYPE = "org.eclipse.equinox.p2.engine.repo.metadataRepository";
    public static final Integer VERSION = new Integer(1);
    private IProfile profile;
    private HashSet<IRepositoryReference> repositories = new HashSet();

    public ProfileMetadataRepository(IProvisioningAgent agent, URI location, IProgressMonitor monitor) throws ProvisionException {
        super(agent, location.toString(), TYPE, VERSION.toString(), location, null, null, null);
        try {
            this.profile = ProfileMetadataRepository.getProfile(agent, location);
        }
        catch (RuntimeException e) {
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", 1002, e.getMessage(), (Throwable)e));
        }
        this.publishArtifactRepos();
    }

    private void publishArtifactRepos() {
        List<URI> artifactRepos = this.findArtifactRepos();
        IProvisioningEventBus bus = (IProvisioningEventBus)this.getProvisioningAgent().getService(IProvisioningEventBus.SERVICE_NAME);
        if (bus == null) {
            return;
        }
        for (URI repo : artifactRepos) {
            this.repositories.add((IRepositoryReference)new RepositoryReference(repo, null, 1, 1));
            bus.publishEvent((EventObject)new RepositoryEvent(repo, 1, 4, true));
        }
    }

    private List<URI> findArtifactRepos() {
        String dropinRepositories;
        String sharedBundlePool;
        String bundlePool;
        ArrayList<URI> artifactRepos = new ArrayList<URI>();
        File p2Directory = this.findP2Directory();
        File agentArtifactRepository = this.findAgentArtifactRepositoryDirectory(p2Directory);
        if (agentArtifactRepository != null) {
            artifactRepos.add(agentArtifactRepository.toURI());
        }
        if ((bundlePool = this.profile.getProperty("org.eclipse.equinox.p2.cache")) != null) {
            File bundlePoolFile = new File(bundlePool);
            if (bundlePoolFile.exists()) {
                artifactRepos.add(bundlePoolFile.toURI());
            } else if (Boolean.valueOf(this.profile.getProperty("org.eclipse.equinox.p2.roaming")).booleanValue()) {
                bundlePoolFile = this.findDefaultBundlePool(p2Directory);
                if (bundlePoolFile != null) {
                    artifactRepos.add(bundlePoolFile.toURI());
                }
                return artifactRepos;
            }
        }
        if ((sharedBundlePool = this.profile.getProperty("org.eclipse.equinox.p2.cache.shared")) != null) {
            artifactRepos.add(new File(sharedBundlePool).toURI());
        }
        if ((dropinRepositories = this.profile.getProperty("org.eclipse.equinox.p2.cache.extensions")) != null) {
            StringTokenizer tokenizer = new StringTokenizer(dropinRepositories, "|");
            while (tokenizer.hasMoreTokens()) {
                String repoLocation = "";
                try {
                    repoLocation = tokenizer.nextToken();
                    artifactRepos.add(new URI(repoLocation));
                }
                catch (URISyntaxException e) {
                    LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.engine", new StringBuffer("invalid repo reference with location: ").append(repoLocation).toString(), (Throwable)e));
                }
            }
        }
        return artifactRepos;
    }

    private File findAgentArtifactRepositoryDirectory(File p2Directory) {
        if (p2Directory == null) {
            return null;
        }
        File agentArtifactRepositoryDirectory = new File(p2Directory, DEFAULT_ARTIFACT_REPO_DIRECTORY);
        if (!agentArtifactRepositoryDirectory.isDirectory()) {
            return null;
        }
        return agentArtifactRepositoryDirectory;
    }

    private File findDefaultBundlePool(File p2Directory) {
        if (p2Directory == null) {
            return null;
        }
        File productDirectory = p2Directory.getParentFile();
        if (productDirectory == null || !new File(productDirectory, ARTIFACTS_XML).exists()) {
            return null;
        }
        return productDirectory;
    }

    private File findP2Directory() {
        File profileRegistryDirectory;
        File target = new File(this.getLocation());
        if (target.isFile()) {
            target = target.getParentFile();
        }
        if ((profileRegistryDirectory = target.getParentFile()) == null) {
            return null;
        }
        File p2EngineDirectory = profileRegistryDirectory.getParentFile();
        if (p2EngineDirectory == null) {
            return null;
        }
        return p2EngineDirectory.getParentFile();
    }

    public Collection<IRepositoryReference> getReferences() {
        return Collections.unmodifiableCollection(this.repositories);
    }

    public void initialize(AbstractMetadataRepository.RepositoryState state) {
    }

    public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
        return this.profile.query(query, monitor);
    }

    private static IProfile getProfile(IProvisioningAgent agent, URI location) throws ProvisionException {
        IProfile profile;
        File target;
        if (!FILE_SCHEME.equalsIgnoreCase(location.getScheme())) {
            ProfileMetadataRepository.fail(location, 1000);
        }
        if (!(target = new File(location)).exists()) {
            ProfileMetadataRepository.fail(location, 1000);
        }
        long timestamp = -1L;
        int index = target.getName().lastIndexOf(DOT_PROFILE);
        if (index == -1) {
            ProfileMetadataRepository.fail(location, 1000);
        }
        String profileId = target.getName().substring(0, index);
        if (target.isFile()) {
            try {
                timestamp = Long.parseLong(profileId);
            }
            catch (NumberFormatException numberFormatException) {
                ProfileMetadataRepository.fail(location, 1002);
            }
            target = target.getParentFile();
            if (target == null) {
                ProfileMetadataRepository.fail(location, 1000);
            }
            index = target.getName().lastIndexOf(DOT_PROFILE);
            profileId = target.getName().substring(0, index);
        }
        profileId = SimpleProfileRegistry.unescape(profileId);
        File registryDirectory = target.getParentFile();
        if (registryDirectory == null) {
            ProfileMetadataRepository.fail(location, 1000);
        }
        SimpleProfileRegistry profileRegistry = new SimpleProfileRegistry(agent, registryDirectory, null, false);
        if (timestamp == -1L) {
            long[] timestamps = profileRegistry.listProfileTimestamps(profileId);
            timestamp = timestamps[timestamps.length - 1];
        }
        if ((profile = profileRegistry.getProfile(profileId, timestamp)) == null) {
            ProfileMetadataRepository.fail(location, 1000);
        }
        return profile;
    }

    private static void fail(URI location, int code) throws ProvisionException {
        switch (code) {
            case 1000: {
                String msg = NLS.bind((String)Messages.io_NotFound, (Object)location);
                throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", 1000, msg, null));
            }
            case 1002: {
                String msg = NLS.bind((String)Messages.io_FailedRead, (Object)location);
                throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", 1000, msg, null));
            }
        }
    }
}

