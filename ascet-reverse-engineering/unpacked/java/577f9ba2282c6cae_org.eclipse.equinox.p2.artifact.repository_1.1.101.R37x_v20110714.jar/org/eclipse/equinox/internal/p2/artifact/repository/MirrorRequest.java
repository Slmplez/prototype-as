/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.repository.Transport
 *  org.eclipse.equinox.internal.provisional.p2.repository.IStateful
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.ArtifactRequest;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactDescriptor;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStepHandler;
import org.eclipse.equinox.internal.provisional.p2.repository.IStateful;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MirrorRequest
extends ArtifactRequest {
    private static final int MAX_RETRY_REQUEST = 200;
    private static final String PROP_STATS_URI = "p2.statsURI";
    private static final String PROP_DOWNLOAD_STATS = "download.stats";
    protected final IArtifactRepository target;
    private final Map<String, String> targetDescriptorProperties;
    private final Map<String, String> targetRepositoryProperties;
    protected IArtifactDescriptor descriptor;
    static /* synthetic */ Class class$0;

    public MirrorRequest(IArtifactKey key, IArtifactRepository targetRepository, Map<String, String> targetDescriptorProperties, Map<String, String> targetRepositoryProperties, Transport transport) {
        super(key, transport);
        this.target = targetRepository;
        if (targetDescriptorProperties == null || targetDescriptorProperties.isEmpty()) {
            this.targetDescriptorProperties = null;
        } else {
            this.targetDescriptorProperties = new HashMap<String, String>();
            this.targetDescriptorProperties.putAll(targetDescriptorProperties);
        }
        if (targetRepositoryProperties == null || targetRepositoryProperties.isEmpty()) {
            this.targetRepositoryProperties = null;
        } else {
            this.targetRepositoryProperties = new HashMap<String, String>();
            this.targetRepositoryProperties.putAll(targetRepositoryProperties);
        }
    }

    @Override
    public void perform(IArtifactRepository sourceRepository, IProgressMonitor monitor) {
        IArtifactDescriptor[] descriptors;
        monitor.subTask(NLS.bind((String)Messages.downloading, (Object)this.getArtifactKey().getId()));
        this.setSourceRepository(sourceRepository);
        if (this.target.contains(this.getArtifactKey())) {
            this.setResult((IStatus)new Status(0, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.available_already_in, (Object)this.getArtifactKey())));
            return;
        }
        IArtifactDescriptor optimized = null;
        IArtifactDescriptor canonical = null;
        if (this.descriptor == null && (descriptors = this.source.getArtifactDescriptors(this.getArtifactKey())).length > 0) {
            int i = 0;
            while (i < descriptors.length) {
                if (descriptors[i].getProperty("format") == null) {
                    canonical = descriptors[i];
                } else if (ProcessingStepHandler.canProcess(descriptors[i])) {
                    optimized = descriptors[i];
                }
                ++i;
            }
            boolean chooseCanonical = this.source.getLocation().getScheme().equals("file");
            IArtifactDescriptor iArtifactDescriptor = this.descriptor = chooseCanonical ? canonical : optimized;
            if (this.descriptor == null) {
                IArtifactDescriptor iArtifactDescriptor2 = this.descriptor = !chooseCanonical ? canonical : optimized;
            }
        }
        if (this.descriptor == null) {
            this.setResult((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.artifact_not_found, (Object)this.getArtifactKey())));
            return;
        }
        IArtifactDescriptor destinationDescriptor = this.getDestinationDescriptor(this.descriptor);
        IStatus status = this.transfer(destinationDescriptor, this.descriptor, monitor);
        if (status.getSeverity() == 8) {
            this.setResult(status);
            return;
        }
        if (monitor.isCanceled()) {
            this.setResult(Status.CANCEL_STATUS);
            return;
        }
        if (status.isOK()) {
            this.setResult(status);
            return;
        }
        if (this.target.contains(destinationDescriptor)) {
            this.target.removeDescriptor(destinationDescriptor);
        }
        if (this.descriptor == canonical || canonical == null) {
            this.setResult(status);
            return;
        }
        IStatus canonicalStatus = this.transfer(this.getDestinationDescriptor(canonical), canonical, monitor);
        if (canonicalStatus.getSeverity() < status.getSeverity()) {
            this.setResult(canonicalStatus);
        } else {
            this.setResult((IStatus)new MultiStatus("org.eclipse.equinox.p2.artifact.repository", canonicalStatus.getCode() != 0 ? canonicalStatus.getCode() : status.getCode(), new IStatus[]{status, canonicalStatus}, Messages.MirrorRequest_multipleDownloadProblems, null));
        }
    }

    private IArtifactDescriptor getDestinationDescriptor(IArtifactDescriptor sourceDescriptor) {
        IArtifactDescriptor destinationDescriptor = this.target.createArtifactDescriptor(sourceDescriptor.getArtifactKey());
        if (this.targetDescriptorProperties != null && destinationDescriptor instanceof ArtifactDescriptor) {
            ((ArtifactDescriptor)destinationDescriptor).addProperties(this.targetDescriptorProperties);
        }
        if (this.targetRepositoryProperties != null && destinationDescriptor instanceof SimpleArtifactDescriptor) {
            ((SimpleArtifactDescriptor)destinationDescriptor).addRepositoryProperties(this.targetRepositoryProperties);
        }
        return destinationDescriptor;
    }

    protected IStatus transfer(IArtifactDescriptor destinationDescriptor, IArtifactDescriptor sourceDescriptor, IProgressMonitor monitor) {
        IStatus status = Status.OK_STATUS;
        int counter = 0;
        while ((status = this.transferSingle(destinationDescriptor, sourceDescriptor, monitor)).getSeverity() == 4 && status.getCode() == 13 && counter++ < 200) {
        }
        if (status.isOK()) {
            this.collectStats(sourceDescriptor, monitor);
        }
        return status;
    }

    private void collectStats(IArtifactDescriptor sourceDescriptor, IProgressMonitor monitor) {
        URI statsURI;
        String statsProperty = sourceDescriptor.getProperty(PROP_DOWNLOAD_STATS);
        if (statsProperty == null) {
            return;
        }
        String statsRoot = (String)sourceDescriptor.getRepository().getProperties().get(PROP_STATS_URI);
        if (statsRoot == null) {
            return;
        }
        try {
            statsURI = URIUtil.append((URI)new URI(statsRoot), (String)statsProperty);
        }
        catch (URISyntaxException uRISyntaxException) {
            LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.artifact.repository", new StringBuffer("Unable to report download statistics due to invalid URL: ").append(statsRoot).append(" suffix: ").append(statsProperty).toString()));
            return;
        }
        try {
            this.transport.getLastModified(statsURI, monitor);
        }
        catch (FileNotFoundException fileNotFoundException) {
        }
        catch (Exception e) {
            LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.artifact.repository", new StringBuffer("Failure reporting download statistics to URL: ").append(statsURI).toString(), (Throwable)e));
        }
    }

    private IStatus transferSingle(IArtifactDescriptor destinationDescriptor, IArtifactDescriptor sourceDescriptor, IProgressMonitor monitor) {
        IStatus root;
        OutputStream destination;
        try {
            destination = this.target.getOutputStream(destinationDescriptor);
        }
        catch (ProvisionException e) {
            return e.getStatus();
        }
        IStatus status = null;
        try {
            status = this.getArtifact(sourceDescriptor, destination, monitor);
            if (destination instanceof IStateful && status != null && !status.isOK()) {
                IStatus destStatus = ((IStateful)destination).getStatus();
                IStatus root2 = MirrorRequest.extractRootCause(status);
                Throwable e = root2 != null ? root2.getException() : null;
                ((IStateful)destination).setStatus((IStatus)new MultiStatus("org.eclipse.equinox.p2.artifact.repository", status.getCode(), new IStatus[]{status, destStatus}, status.getMessage(), e));
            }
        }
        catch (Throwable throwable) {
            IStatus root3;
            try {
                destination.close();
            }
            catch (IOException e) {
                if (status != null && status.getSeverity() == 4 && status.getCode() == 13) {
                    return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", status.getCode(), new IStatus[]{status}, NLS.bind((String)Messages.error_closing_stream, (Object)this.getArtifactKey(), (Object)this.target.getLocation()), (Throwable)e);
                }
                return new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.error_closing_stream, (Object)this.getArtifactKey(), (Object)this.target.getLocation()), (Throwable)e);
            }
            if (status != null && status.getSeverity() == 4 && (root3 = MirrorRequest.extractRootCause(status)) != null) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.io.FileNotFoundException");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (clazz == root3.getException().getClass()) {
                    return new Status(4, "org.eclipse.equinox.p2.artifact.repository", status.getCode(), NLS.bind((String)Messages.artifact_not_found, (Object)this.getArtifactKey()), root3.getException());
                }
            }
            throw throwable;
        }
        try {
            destination.close();
        }
        catch (IOException e) {
            if (status != null && status.getSeverity() == 4 && status.getCode() == 13) {
                return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", status.getCode(), new IStatus[]{status}, NLS.bind((String)Messages.error_closing_stream, (Object)this.getArtifactKey(), (Object)this.target.getLocation()), (Throwable)e);
            }
            return new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.error_closing_stream, (Object)this.getArtifactKey(), (Object)this.target.getLocation()), (Throwable)e);
        }
        if (status != null && status.getSeverity() == 4 && (root = MirrorRequest.extractRootCause(status)) != null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.io.FileNotFoundException");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz == root.getException().getClass()) {
                return new Status(4, "org.eclipse.equinox.p2.artifact.repository", status.getCode(), NLS.bind((String)Messages.artifact_not_found, (Object)this.getArtifactKey()), root.getException());
            }
        }
        return status;
    }

    protected IStatus getArtifact(IArtifactDescriptor sourceDescriptor, OutputStream destination, IProgressMonitor monitor) {
        return this.getSourceRepository().getArtifact(sourceDescriptor, destination, monitor);
    }

    private static IStatus extractRootCause(IStatus status) {
        if (status == null) {
            return null;
        }
        if (!status.isMultiStatus()) {
            return MirrorRequest.constraintStatus(status);
        }
        IStatus[] children = ((MultiStatus)status).getChildren();
        if (children == null) {
            return MirrorRequest.constraintStatus(status);
        }
        int i = 0;
        while (i < children.length) {
            IStatus deeper = MirrorRequest.extractRootCause(children[i]);
            if (deeper != null) {
                return deeper;
            }
            ++i;
        }
        return MirrorRequest.constraintStatus(status);
    }

    private static IStatus constraintStatus(IStatus status) {
        return status.getSeverity() == 4 && status.getException() != null ? status : null;
    }

    public String toString() {
        return new StringBuffer(String.valueOf(Messages.mirroring)).append(this.getArtifactKey()).append(" into ").append(this.target).toString();
    }
}

