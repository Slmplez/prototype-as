/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.internal.p2.artifact.repository.Messages
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.p2.metadata.repository.Messages
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.repository.IRunnableWithProgress
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 */
package org.eclipse.equinox.p2.publisher;

import java.net.URI;
import java.util.Collection;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.metadata.repository.Messages;
import org.eclipse.equinox.internal.p2.publisher.Activator;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.PublisherResult;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Publisher {
    public static final String PUBLISH_PACK_FILES_AS_SIBLINGS = "publishPackFilesAsSiblings";
    private static final long SERVICE_TIMEOUT = 5000L;
    private IPublisherInfo info;
    private IPublisherResult results;

    public static IMetadataRepository createMetadataRepository(IProvisioningAgent agent, URI location, String name, boolean append, boolean compress) throws ProvisionException {
        try {
            IMetadataRepository result = Publisher.loadMetadataRepository(agent, location, true, true);
            if (result != null && result.isModifiable()) {
                result.setProperty("p2.compressed", compress ? "true" : "false");
                if (!append) {
                    result.removeAll();
                }
                return result;
            }
        }
        catch (ProvisionException provisionException) {}
        IMetadataRepositoryManager manager = (IMetadataRepositoryManager)Publisher.getService(agent, IMetadataRepositoryManager.SERVICE_NAME);
        String repositoryName = name == null ? new StringBuffer().append(location).append(" - metadata").toString() : name;
        IMetadataRepository result = manager.createRepository(location, repositoryName, "org.eclipse.equinox.p2.metadata.repository.simpleRepository", null);
        if (result != null) {
            manager.removeRepository(result.getLocation());
            result.setProperty("p2.compressed", compress ? "true" : "false");
            return result;
        }
        String msg = Messages.repoMan_internalError;
        throw new ProvisionException((IStatus)new Status(4, Activator.ID, 1, msg, null));
    }

    public static IMetadataRepository loadMetadataRepository(IProvisioningAgent agent, URI location, boolean modifiable, boolean removeFromManager) throws ProvisionException {
        IMetadataRepositoryManager manager = (IMetadataRepositoryManager)Publisher.getService(agent, IMetadataRepositoryManager.SERVICE_NAME);
        boolean existing = manager.contains(location);
        IMetadataRepository result = manager.loadRepository(location, modifiable ? 1 : 0, null);
        if (!existing && removeFromManager) {
            manager.removeRepository(location);
        }
        return result;
    }

    public static IArtifactRepository createArtifactRepository(IProvisioningAgent agent, URI location, String name, boolean compress, boolean reusePackedFiles) throws ProvisionException {
        try {
            IArtifactRepository result = Publisher.loadArtifactRepository(agent, location, true, true);
            if (result != null && result.isModifiable()) {
                result.setProperty("p2.compressed", compress ? "true" : "false");
                if (reusePackedFiles) {
                    result.setProperty(PUBLISH_PACK_FILES_AS_SIBLINGS, "true");
                }
                return result;
            }
        }
        catch (ProvisionException provisionException) {}
        IArtifactRepositoryManager manager = (IArtifactRepositoryManager)Publisher.getService(agent, IArtifactRepositoryManager.SERVICE_NAME);
        String repositoryName = name != null ? name : new StringBuffer().append(location).append(" - artifacts").toString();
        IArtifactRepository result = manager.createRepository(location, repositoryName, "org.eclipse.equinox.p2.artifact.repository.simpleRepository", null);
        if (result != null) {
            manager.removeRepository(result.getLocation());
            if (reusePackedFiles) {
                result.setProperty(PUBLISH_PACK_FILES_AS_SIBLINGS, "true");
            }
            result.setProperty("p2.compressed", compress ? "true" : "false");
            return result;
        }
        String msg = org.eclipse.equinox.internal.p2.artifact.repository.Messages.repoMan_internalError;
        throw new ProvisionException((IStatus)new Status(4, Activator.ID, 1, msg, null));
    }

    public static IArtifactRepository loadArtifactRepository(IProvisioningAgent agent, URI location, boolean modifiable, boolean removeFromManager) throws ProvisionException {
        IArtifactRepositoryManager manager = (IArtifactRepositoryManager)Publisher.getService(agent, IArtifactRepositoryManager.SERVICE_NAME);
        boolean existing = manager.contains(location);
        IArtifactRepository result = manager.loadRepository(location, modifiable ? 1 : 0, null);
        if (!existing && removeFromManager) {
            manager.removeRepository(location);
        }
        return result;
    }

    public Publisher(IPublisherInfo info) {
        this.info = info;
        this.results = new PublisherResult();
    }

    protected static <T> T getService(IProvisioningAgent agent, String serviceName) {
        Object service = agent.getService(serviceName);
        if (service != null) {
            return (T)service;
        }
        long start = System.currentTimeMillis();
        do {
            try {
                Thread.sleep(100L);
            }
            catch (InterruptedException interruptedException) {}
            service = agent.getService(serviceName);
            if (service == null) continue;
            return (T)service;
        } while (System.currentTimeMillis() - start < 5000L);
        throw new IllegalStateException(new StringBuffer("Unable to obtain required service: ").append(serviceName).toString());
    }

    public Publisher(IPublisherInfo info, IPublisherResult results) {
        this.info = info;
        this.results = results;
    }

    public IStatus publish(IPublisherAction[] actions, IProgressMonitor monitor) {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)actions.length);
        if (Tracing.DEBUG_PUBLISHING) {
            Tracing.debug((String)"Invoking publisher");
        }
        try {
            ArtifactProcess artifactProcess = new ArtifactProcess(actions, this.info);
            IStatus finalStatus = null;
            if (this.info.getArtifactRepository() != null) {
                finalStatus = this.info.getArtifactRepository().executeBatch((IRunnableWithProgress)artifactProcess, (IProgressMonitor)sub);
                if (finalStatus.isOK()) {
                    finalStatus = artifactProcess.getStatus();
                }
            } else {
                artifactProcess.run((IProgressMonitor)sub);
                finalStatus = artifactProcess.getStatus();
            }
            if (Tracing.DEBUG_PUBLISHING) {
                Tracing.debug((String)new StringBuffer("Publishing complete. Result=").append(finalStatus).toString());
            }
            if (!finalStatus.isOK()) {
                IStatus iStatus = finalStatus;
                return iStatus;
            }
        }
        finally {
            sub.done();
        }
        IMetadataRepository metadataRepository = this.info.getMetadataRepository();
        if (metadataRepository != null) {
            Collection<IInstallableUnit> ius = this.results.getIUs(null, null);
            metadataRepository.addInstallableUnits(ius);
        }
        return Status.OK_STATUS;
    }

    class ArtifactProcess
    implements IRunnableWithProgress {
        private final IPublisherAction[] actions;
        private final IPublisherInfo info;
        private IStatus result = null;

        public ArtifactProcess(IPublisherAction[] actions, IPublisherInfo info) {
            this.info = info;
            this.actions = actions;
        }

        public void run(IProgressMonitor monitor) {
            MultiStatus finalStatus = new MultiStatus("this", 0, "publishing result", null);
            int i = 0;
            while (i < this.actions.length) {
                if (monitor.isCanceled()) {
                    this.result = Status.CANCEL_STATUS;
                    return;
                }
                IStatus status = this.actions[i].perform(this.info, Publisher.this.results, monitor);
                finalStatus.merge(status);
                monitor.worked(1);
                ++i;
            }
            this.result = finalStatus;
        }

        public IStatus getStatus() {
            return this.result;
        }
    }
}

