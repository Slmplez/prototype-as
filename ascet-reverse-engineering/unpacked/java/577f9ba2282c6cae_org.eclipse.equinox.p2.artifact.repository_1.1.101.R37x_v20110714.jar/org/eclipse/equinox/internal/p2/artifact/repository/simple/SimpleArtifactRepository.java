/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 *  org.eclipse.equinox.internal.p2.metadata.expression.CompoundIterator
 *  org.eclipse.equinox.internal.p2.metadata.index.IndexProvider
 *  org.eclipse.equinox.internal.p2.repository.Transport
 *  org.eclipse.equinox.internal.provisional.p2.repository.IStateful
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.index.IIndex
 *  org.eclipse.equinox.p2.metadata.index.IIndexProvider
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 *  org.eclipse.equinox.p2.repository.IRepository
 *  org.eclipse.equinox.p2.repository.IRunnableWithProgress
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.spi.AbstractArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.equinox.internal.p2.artifact.processors.md5.MD5Verifier;
import org.eclipse.equinox.internal.p2.artifact.repository.Activator;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.artifact.repository.MirrorSelector;
import org.eclipse.equinox.internal.p2.artifact.repository.SignatureVerifier;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.BlobStore;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.DownloadJob;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.KeyIndex;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.Mapper;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactDescriptor;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepositoryFactory;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepositoryIO;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.UniversalUniqueIdentifier;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.metadata.expression.CompoundIterator;
import org.eclipse.equinox.internal.p2.metadata.index.IndexProvider;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStepHandler;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ZipVerifierStep;
import org.eclipse.equinox.internal.provisional.p2.repository.IStateful;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.index.IIndex;
import org.eclipse.equinox.p2.metadata.index.IIndexProvider;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.spi.AbstractArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimpleArtifactRepository
extends AbstractArtifactRepository
implements IFileArtifactRepository,
IIndexProvider<IArtifactKey> {
    public static final boolean MIRRORS_ENABLED = !"false".equals(Activator.getContext().getProperty("eclipse.p2.mirrors"));
    public static final boolean MD5_CHECK_ENABLED = !"false".equals(Activator.getContext().getProperty("eclipse.p2.MD5Check"));
    public static final String CONTENT_FILENAME = "artifacts";
    public static final String PROP_MAX_THREADS = "eclipse.p2.max.threads";
    public static final String PROP_FORCE_THREADING = "eclipse.p2.force.threading";
    private Location lockLocation = null;
    public static final String PROP_BLOBSTORE_NAME = "p2.blobstore.name";
    private boolean holdsLock = false;
    private long cacheTimestamp = 0L;
    private static final String ARTIFACT_FOLDER = "artifact.folder";
    private static final String ARTIFACT_UUID = "artifact.uuid";
    private static final String BLOBSTORE = ".blobstore/";
    private static final String[][] PACKED_MAPPING_RULES = new String[][]{{"(& (classifier=osgi.bundle) (format=packed))", "${repoUrl}/plugins/${id}_${version}.jar.pack.gz"}, {"(& (classifier=osgi.bundle))", "${repoUrl}/plugins/${id}_${version}.jar"}, {"(& (classifier=binary))", "${repoUrl}/binary/${id}_${version}"}, {"(& (classifier=org.eclipse.update.feature) (format=packed))", "${repoUrl}/features/${id}_${version}.jar.pack.gz"}, {"(& (classifier=org.eclipse.update.feature))", "${repoUrl}/features/${id}_${version}.jar"}};
    private static final String[][] DEFAULT_MAPPING_RULES = new String[][]{{"(& (classifier=osgi.bundle))", "${repoUrl}/plugins/${id}_${version}.jar"}, {"(& (classifier=binary))", "${repoUrl}/binary/${id}_${version}"}, {"(& (classifier=org.eclipse.update.feature))", "${repoUrl}/features/${id}_${version}.jar"}};
    private static final String JAR_EXTENSION = ".jar";
    private static final String REPOSITORY_TYPE = "org.eclipse.equinox.p2.artifact.repository.simpleRepository";
    private static final Integer REPOSITORY_VERSION = new Integer(1);
    private static final String XML_EXTENSION = ".xml";
    protected Set<SimpleArtifactDescriptor> artifactDescriptors = new HashSet<SimpleArtifactDescriptor>();
    private Map<IArtifactKey, List<IArtifactDescriptor>> artifactMap = new HashMap<IArtifactKey, List<IArtifactDescriptor>>();
    private transient BlobStore blobStore;
    private transient Mapper mapper = new Mapper();
    private KeyIndex keyIndex;
    private boolean snapshotNeeded = false;
    private static final String PUBLISH_PACK_FILES_AS_SIBLINGS = "publishPackFilesAsSiblings";
    private static final int DEFAULT_MAX_THREADS = 4;
    protected String[][] mappingRules = DEFAULT_MAPPING_RULES;
    private MirrorSelector mirrors;
    private boolean disableSave = false;
    static /* synthetic */ Class class$0;

    static void delete(File toDelete) {
        File[] children;
        if (toDelete.isDirectory() && (children = toDelete.listFiles()) != null) {
            int i = 0;
            while (i < children.length) {
                SimpleArtifactRepository.delete(children[i]);
                ++i;
            }
        }
        toDelete.delete();
    }

    public static URI getActualLocation(URI base, boolean compress) {
        return SimpleArtifactRepository.getActualLocation(base, compress ? JAR_EXTENSION : XML_EXTENSION);
    }

    private static URI getActualLocation(URI base, String extension) {
        return URIUtil.append((URI)base, (String)new StringBuffer(CONTENT_FILENAME).append(extension).toString());
    }

    public static URI getBlobStoreLocation(URI base, String suffix) {
        return URIUtil.append((URI)base, (String)suffix);
    }

    SimpleArtifactRepository(IProvisioningAgent agent, String name, String type, String version, String description, String provider, Set<SimpleArtifactDescriptor> artifacts, String[][] mappingRules, Map<String, String> properties) {
        super(agent, name, type, version, null, description, provider, properties);
        this.artifactDescriptors.addAll(artifacts);
        this.mappingRules = mappingRules;
        for (SimpleArtifactDescriptor desc : this.artifactDescriptors) {
            this.mapDescriptor((IArtifactDescriptor)desc);
        }
    }

    private synchronized void mapDescriptor(IArtifactDescriptor descriptor) {
        List<IArtifactDescriptor> descriptors;
        IArtifactKey key = descriptor.getArtifactKey();
        if (this.snapshotNeeded) {
            this.cloneAritfactMap();
            this.snapshotNeeded = false;
        }
        if ((descriptors = this.artifactMap.get(key)) == null) {
            descriptors = new ArrayList<IArtifactDescriptor>();
            this.artifactMap.put(key, descriptors);
        }
        descriptors.add(descriptor);
        this.keyIndex = null;
    }

    private synchronized void unmapDescriptor(IArtifactDescriptor descriptor) {
        IArtifactKey key = descriptor.getArtifactKey();
        List<IArtifactDescriptor> descriptors = this.artifactMap.get(key);
        if (descriptors == null) {
            return;
        }
        if (this.snapshotNeeded) {
            this.cloneAritfactMap();
            this.snapshotNeeded = false;
            descriptors = this.artifactMap.get(key);
        }
        descriptors.remove(descriptor);
        if (descriptors.isEmpty()) {
            this.artifactMap.remove(key);
        }
        this.keyIndex = null;
    }

    private void cloneAritfactMap() {
        HashMap<IArtifactKey, List<IArtifactDescriptor>> clone = new HashMap<IArtifactKey, List<IArtifactDescriptor>>(this.artifactMap.size());
        for (Map.Entry<IArtifactKey, List<IArtifactDescriptor>> entry : this.artifactMap.entrySet()) {
            clone.put(entry.getKey(), new ArrayList(entry.getValue()));
        }
        this.artifactMap = clone;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public SimpleArtifactRepository(IProvisioningAgent agent, String repositoryName, URI location, Map<String, String> properties) {
        super(agent, repositoryName, REPOSITORY_TYPE, REPOSITORY_VERSION.toString(), location, null, null, properties);
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(true, (IProgressMonitor)new NullProgressMonitor()))) {
                throw new IllegalStateException(new StringBuffer("Cannot acquire the lock for ").append(location).toString());
            }
            this.initializeAfterLoad(location, false);
            if (properties != null && properties.containsKey(PUBLISH_PACK_FILES_AS_SIBLINGS)) {
                SimpleArtifactRepository simpleArtifactRepository = this;
                synchronized (simpleArtifactRepository) {
                    String newValue = properties.get(PUBLISH_PACK_FILES_AS_SIBLINGS);
                    this.mappingRules = Boolean.TRUE.toString().equals(newValue) ? PACKED_MAPPING_RULES : DEFAULT_MAPPING_RULES;
                    this.initializeMapper();
                }
            }
            this.save();
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public synchronized void addDescriptor(IArtifactDescriptor toAdd, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            if (this.artifactDescriptors.contains(toAdd)) {
                return;
            }
            SimpleArtifactDescriptor internalDescriptor = this.createInternalDescriptor(toAdd);
            this.artifactDescriptors.add(internalDescriptor);
            this.mapDescriptor((IArtifactDescriptor)internalDescriptor);
            this.save();
            return;
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    public IArtifactDescriptor createArtifactDescriptor(IArtifactKey key) {
        return new SimpleArtifactDescriptor(key);
    }

    private SimpleArtifactDescriptor createInternalDescriptor(IArtifactDescriptor descriptor) {
        SimpleArtifactDescriptor internal = new SimpleArtifactDescriptor(descriptor);
        internal.setRepository((IArtifactRepository)this);
        if (this.isFolderBased(descriptor)) {
            internal.setRepositoryProperty(ARTIFACT_FOLDER, Boolean.TRUE.toString());
        }
        if (this.flatButPackedEnabled(descriptor) && internal.getProperty(ARTIFACT_UUID) != null) {
            internal.setProperty(ARTIFACT_UUID, null);
        }
        if (descriptor instanceof SimpleArtifactDescriptor) {
            Map<String, String> repoProperties = ((SimpleArtifactDescriptor)descriptor).getRepositoryProperties();
            for (Map.Entry<String, String> entry : repoProperties.entrySet()) {
                internal.setRepositoryProperty(entry.getKey(), entry.getValue());
            }
        }
        return internal;
    }

    public synchronized void addDescriptors(IArtifactDescriptor[] descriptors, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            int i = 0;
            while (i < descriptors.length) {
                if (!this.artifactDescriptors.contains(descriptors[i])) {
                    SimpleArtifactDescriptor internalDescriptor = this.createInternalDescriptor(descriptors[i]);
                    this.artifactDescriptors.add(internalDescriptor);
                    this.mapDescriptor((IArtifactDescriptor)internalDescriptor);
                }
                ++i;
            }
            this.save();
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    private synchronized OutputStream addPostSteps(ProcessingStepHandler handler, IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        ArrayList<SignatureVerifier> steps = new ArrayList<SignatureVerifier>();
        steps.add(new SignatureVerifier());
        if (steps.isEmpty()) {
            return destination;
        }
        ProcessingStep[] stepArray = steps.toArray(new ProcessingStep[steps.size()]);
        return handler.link(stepArray, destination, monitor);
    }

    private OutputStream addPreSteps(ProcessingStepHandler handler, IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        ArrayList<ProcessingStep> steps = new ArrayList<ProcessingStep>();
        if ("application/zip".equals(descriptor.getProperty("download.contentType"))) {
            steps.add(new ZipVerifierStep());
        }
        if (MD5_CHECK_ENABLED && descriptor.getProperty("download.md5") != null) {
            steps.add(new MD5Verifier(descriptor.getProperty("download.md5")));
        }
        if (steps.isEmpty()) {
            return destination;
        }
        ProcessingStep[] stepArray = steps.toArray(new ProcessingStep[steps.size()]);
        return handler.link(stepArray, destination, monitor);
    }

    private byte[] bytesFromHexString(String string) {
        byte[] bytes = new byte[16];
        int i = 0;
        while (i < string.length()) {
            String byteString = string.substring(i, i + 2);
            bytes[i / 2] = (byte)Integer.parseInt(byteString, 16);
            i += 2;
        }
        return bytes;
    }

    private String bytesToHexString(byte[] bytes) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < bytes.length) {
            String hexString = bytes[i] < 0 ? Integer.toHexString(256 + bytes[i]) : Integer.toHexString(bytes[i]);
            if (hexString.length() == 1) {
                buffer.append("0");
            }
            buffer.append(hexString);
            ++i;
        }
        return buffer.toString();
    }

    public synchronized boolean contains(IArtifactDescriptor descriptor) {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        SimpleArtifactDescriptor simpleDescriptor = this.createInternalDescriptor(descriptor);
        return this.artifactDescriptors.contains((Object)simpleDescriptor);
    }

    public synchronized boolean contains(IArtifactKey key) {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        return this.artifactMap.containsKey(key);
    }

    public synchronized URI createLocation(ArtifactDescriptor descriptor) {
        if (this.flatButPackedEnabled((IArtifactDescriptor)descriptor)) {
            return this.getLocationForPackedButFlatArtifacts((IArtifactDescriptor)descriptor);
        }
        if (descriptor.getProcessingSteps().length == 0) {
            descriptor.setProperty(ARTIFACT_UUID, null);
            IArtifactKey key = descriptor.getArtifactKey();
            URI result = this.mapper.map(this.getLocation(), key.getClassifier(), key.getId(), key.getVersion().toString(), descriptor.getProperty("format"));
            if (result != null) {
                if (this.isFolderBased((IArtifactDescriptor)descriptor) && URIUtil.lastSegment((URI)result).endsWith(JAR_EXTENSION)) {
                    return URIUtil.removeFileExtension((URI)result);
                }
                return result;
            }
        }
        byte[] bytes = new UniversalUniqueIdentifier().toBytes();
        descriptor.setProperty(ARTIFACT_UUID, this.bytesToHexString(bytes));
        return this.blobStore.fileFor(bytes);
    }

    private boolean doRemoveArtifact(IArtifactDescriptor descriptor) {
        boolean result;
        File file;
        SimpleArtifactDescriptor simple = null;
        simple = descriptor instanceof SimpleArtifactDescriptor ? (SimpleArtifactDescriptor)descriptor : this.createInternalDescriptor(descriptor);
        if (simple.getRepositoryProperty("artifact.reference") == null && (file = this.getArtifactFile(descriptor)) != null) {
            SimpleArtifactRepository.delete(file);
            if (file.exists()) {
                return false;
            }
        }
        if (result = this.artifactDescriptors.remove(descriptor)) {
            this.unmapDescriptor(descriptor);
        }
        return result;
    }

    protected IStatus downloadArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        if (this.isFolderBased(descriptor)) {
            File artifactFolder = this.getArtifactFile(descriptor);
            if (artifactFolder == null) {
                if (this.getLocation(descriptor) != null && !URIUtil.isFileURI((URI)this.getLocation(descriptor))) {
                    return this.reportStatus(descriptor, destination, (IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.folder_artifact_not_file_repo, (Object)descriptor.getArtifactKey())));
                }
                return this.reportStatus(descriptor, destination, (IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.artifact_not_found, (Object)descriptor.getArtifactKey())));
            }
            File zipFile = null;
            try {
                try {
                    zipFile = File.createTempFile(artifactFolder.getName(), JAR_EXTENSION, null);
                    FileUtils.zip((File[])artifactFolder.listFiles(), null, (File)zipFile, (FileUtils.IPathComputer)FileUtils.createRootPathComputer((File)artifactFolder));
                    FileInputStream fis = new FileInputStream(zipFile);
                    FileUtils.copyStream((InputStream)fis, (boolean)true, (OutputStream)destination, (boolean)false);
                }
                catch (IOException e) {
                    IStatus iStatus = this.reportStatus(descriptor, destination, (IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage()));
                    if (zipFile != null) {
                        zipFile.delete();
                    }
                    return iStatus;
                }
            }
            finally {
                if (zipFile != null) {
                    zipFile.delete();
                }
            }
            return this.reportStatus(descriptor, destination, Status.OK_STATUS);
        }
        URI baseLocation = this.getLocation(descriptor);
        if (baseLocation == null) {
            return new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.no_location, (Object)descriptor));
        }
        URI mirrorLocation = this.getMirror(baseLocation, monitor);
        IStatus status = this.downloadArtifact(descriptor, mirrorLocation, destination, monitor);
        IStatus result = this.reportStatus(descriptor, destination, status);
        if ((status.isOK() || status.matches(3)) && result.getSeverity() == 4 && this.mirrors != null) {
            this.mirrors.reportResult(mirrorLocation.toString(), result);
            if (this.mirrors.hasValidMirror()) {
                return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 13, new IStatus[]{result}, "Retry another mirror", null);
            }
        }
        return status.getCode() == 13 ? status : result;
    }

    private IStatus copyFileToStream(File in, OutputStream out, IProgressMonitor monitor) {
        int bufferSize = 16384;
        byte[] buffer = new byte[bufferSize];
        int expected_loops = new Double(in.length() / (long)bufferSize).intValue() + 1;
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (String)new StringBuffer(String.valueOf(Messages.downloading)).append(in.getName()).toString(), (int)expected_loops);
        IStatus status = Status.OK_STATUS;
        try {
            FileInputStream stream = new FileInputStream(in);
            try {
                int len;
                while ((len = stream.read(buffer)) != -1) {
                    out.write(buffer, 0, len);
                    sub.worked(1);
                }
            }
            finally {
                stream.close();
            }
        }
        catch (IOException ioe) {
            status = new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.error_copying_local_file, (Object)in.getAbsolutePath()), (Throwable)ioe);
        }
        sub.done();
        return status;
    }

    private IStatus downloadArtifact(IArtifactDescriptor descriptor, URI mirrorLocation, OutputStream destination, IProgressMonitor monitor) {
        IStatus result = Status.OK_STATUS;
        result = mirrorLocation.getScheme().equals("file") ? this.copyFileToStream(new File(mirrorLocation), destination, monitor) : this.getTransport().download(mirrorLocation, destination, monitor);
        if (this.mirrors != null) {
            this.mirrors.reportResult(mirrorLocation.toString(), result);
        }
        if (result.isOK() || result.getSeverity() == 8) {
            return result;
        }
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        if (this.mirrors != null && this.mirrors.hasValidMirror()) {
            return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 13, new IStatus[]{result}, "Retry another mirror", null);
        }
        return result;
    }

    private synchronized URI getMirror(URI baseLocation, IProgressMonitor monitor) {
        if (!MIRRORS_ENABLED || !this.isForceThreading() && this.isLocal()) {
            return baseLocation;
        }
        if (this.mirrors == null) {
            this.mirrors = new MirrorSelector((IRepository<?>)this, this.getTransport());
        }
        return this.mirrors.getMirrorLocation(baseLocation, monitor);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz && !this.isLocal()) {
            return null;
        }
        return super.getAdapter(adapter);
    }

    IStatus getArtifact(IArtifactRequest request, IProgressMonitor monitor) {
        request.perform((IArtifactRepository)this, monitor);
        return request.getResult();
    }

    public IStatus getArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        ProcessingStepHandler handler = new ProcessingStepHandler();
        IStatus status = ProcessingStepHandler.checkStatus(destination = this.processDestination(handler, descriptor, destination, monitor));
        if (!status.isOK() && status.getSeverity() != 1) {
            return status;
        }
        return this.downloadArtifact(descriptor, destination, monitor);
    }

    public IStatus getRawArtifact(IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        return this.downloadArtifact(descriptor, destination, monitor);
    }

    public synchronized IArtifactDescriptor[] getArtifactDescriptors(IArtifactKey key) {
        List<IArtifactDescriptor> result;
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        if ((result = this.artifactMap.get(key)) == null) {
            return new IArtifactDescriptor[0];
        }
        return result.toArray(new IArtifactDescriptor[result.size()]);
    }

    public File getArtifactFile(IArtifactDescriptor descriptor) {
        URI result = this.getLocation(descriptor);
        if (result == null || !URIUtil.isFileURI((URI)result)) {
            return null;
        }
        return URIUtil.toFile((URI)result);
    }

    public File getArtifactFile(IArtifactKey key) {
        IArtifactDescriptor descriptor = this.getCompleteArtifactDescriptor(key);
        if (descriptor == null) {
            return null;
        }
        return this.getArtifactFile(descriptor);
    }

    public IStatus getArtifacts(IArtifactRequest[] requests, IProgressMonitor monitor) {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        if (monitor.isCanceled()) {
            return Status.CANCEL_STATUS;
        }
        MultiStatus overallStatus = new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 0, null, null);
        LinkedList<IArtifactRequest> requestsPending = new LinkedList<IArtifactRequest>(Arrays.asList(requests));
        int numberOfJobs = Math.min(requests.length, this.getMaximumThreads());
        if (numberOfJobs <= 1 || !this.isForceThreading() && this.isLocal()) {
            SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)requests.length);
            try {
                int i = 0;
                while (i < requests.length) {
                    if (monitor.isCanceled()) {
                        IStatus iStatus = Status.CANCEL_STATUS;
                        return iStatus;
                    }
                    IStatus result = this.getArtifact(requests[i], (IProgressMonitor)subMonitor.newChild(1));
                    if (!result.isOK()) {
                        overallStatus.add(result);
                    }
                    ++i;
                }
            }
            finally {
                subMonitor.done();
            }
        }
        monitor.beginTask(NLS.bind((String)Messages.sar_downloading, (Object)Integer.toString(requests.length)), requests.length);
        try {
            DownloadJob[] jobs = new DownloadJob[numberOfJobs];
            int i = 0;
            while (i < numberOfJobs) {
                jobs[i] = new DownloadJob(new StringBuffer(String.valueOf(Messages.sar_downloadJobName)).append(i).toString());
                jobs[i].initialize(this, requestsPending, monitor, overallStatus);
                jobs[i].schedule();
                ++i;
            }
            try {
                Job.getJobManager().join(DownloadJob.FAMILY, null);
            }
            catch (InterruptedException interruptedException) {}
        }
        finally {
            monitor.done();
        }
        return monitor.isCanceled() ? Status.CANCEL_STATUS : overallStatus;
    }

    public synchronized IArtifactDescriptor getCompleteArtifactDescriptor(IArtifactKey key) {
        List<IArtifactDescriptor> descriptors;
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        if ((descriptors = this.artifactMap.get(key)) == null) {
            return null;
        }
        for (IArtifactDescriptor desc : descriptors) {
            if (!desc.getArtifactKey().equals(key) || desc.getProcessingSteps().length != 0) continue;
            return desc;
        }
        return null;
    }

    public synchronized Set<SimpleArtifactDescriptor> getDescriptors() {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        return this.artifactDescriptors;
    }

    private boolean flatButPackedEnabled(IArtifactDescriptor descriptor) {
        return Boolean.TRUE.toString().equals(this.getProperties().get(PUBLISH_PACK_FILES_AS_SIBLINGS)) && "packed".equals(descriptor.getProperty("format"));
    }

    private URI getLocationForPackedButFlatArtifacts(IArtifactDescriptor descriptor) {
        IArtifactKey key = descriptor.getArtifactKey();
        return this.mapper.map(this.getLocation(), key.getClassifier(), key.getId(), key.getVersion().toString(), descriptor.getProperty("format"));
    }

    public synchronized URI getLocation(IArtifactDescriptor descriptor) {
        String uuid = descriptor.getProperty(ARTIFACT_UUID);
        if (uuid != null) {
            return this.blobStore.fileFor(this.bytesFromHexString(uuid));
        }
        if (this.flatButPackedEnabled(descriptor)) {
            return this.getLocationForPackedButFlatArtifacts(descriptor);
        }
        try {
            String artifactReference;
            if (descriptor instanceof SimpleArtifactDescriptor && (artifactReference = ((SimpleArtifactDescriptor)descriptor).getRepositoryProperty("artifact.reference")) != null) {
                try {
                    return new URI(artifactReference);
                }
                catch (URISyntaxException uRISyntaxException) {
                    return URIUtil.fromString((String)artifactReference);
                }
            }
            if (descriptor.getProcessingSteps().length == 0) {
                IArtifactKey key = descriptor.getArtifactKey();
                URI result = this.mapper.map(this.getLocation(), key.getClassifier(), key.getId(), key.getVersion().toString(), descriptor.getProperty("format"));
                if (result != null) {
                    if (this.isFolderBased(descriptor) && URIUtil.lastSegment((URI)result).endsWith(JAR_EXTENSION)) {
                        return URIUtil.removeFileExtension((URI)result);
                    }
                    if (result.getScheme() == null && "file".equals(this.getLocation().getScheme())) {
                        return URIUtil.makeAbsolute((URI)result, (URI)new File(System.getProperty("user.dir")).toURI());
                    }
                    return result;
                }
            }
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
        return null;
    }

    private int getMaximumThreads() {
        String maxThreadString;
        int repoMaxThreads = 4;
        int userMaxThreads = 4;
        try {
            maxThreadString = (String)this.getProperties().get(PROP_MAX_THREADS);
            if (maxThreadString != null) {
                repoMaxThreads = Math.max(1, Integer.parseInt(maxThreadString));
            }
        }
        catch (NumberFormatException numberFormatException) {}
        try {
            maxThreadString = Activator.getContext().getProperty(PROP_MAX_THREADS);
            if (maxThreadString != null) {
                userMaxThreads = Math.max(1, Integer.parseInt(maxThreadString));
            }
        }
        catch (NumberFormatException numberFormatException) {}
        return Math.min(repoMaxThreads, userMaxThreads);
    }

    public OutputStream getOutputStream(IArtifactDescriptor descriptor) throws ProvisionException {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        this.assertModifiable();
        SimpleArtifactDescriptor newDescriptor = this.createInternalDescriptor(descriptor);
        if (this.contains((IArtifactDescriptor)newDescriptor)) {
            String msg = NLS.bind((String)Messages.available_already_in, (Object)this.getLocation().toString());
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1201, msg, null));
        }
        URI newLocation = this.createLocation(newDescriptor);
        if (newLocation == null) {
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.no_location, (Object)((Object)newDescriptor))));
        }
        String file = URIUtil.toFile((URI)newLocation).getAbsolutePath();
        File outputFile = new File(file);
        if (outputFile.exists()) {
            System.err.println(new StringBuffer("Artifact repository out of sync. Overwriting ").append(outputFile.getAbsoluteFile()).toString());
            SimpleArtifactRepository.delete(outputFile);
        }
        OutputStream target = null;
        try {
            if (this.isFolderBased((IArtifactDescriptor)newDescriptor)) {
                this.mkdirs(outputFile);
                if (!outputFile.isDirectory()) {
                    throw this.failedWrite(new IOException(NLS.bind((String)Messages.sar_failedMkdir, (Object)outputFile.toString())));
                }
                target = new ZippedFolderOutputStream(outputFile);
            } else {
                File parent = outputFile.getParentFile();
                this.mkdirs(parent);
                if (!parent.isDirectory()) {
                    throw this.failedWrite(new IOException(NLS.bind((String)Messages.sar_failedMkdir, (Object)parent.toString())));
                }
                target = new FileOutputStream(file);
            }
            return new ArtifactOutputStream(new BufferedOutputStream(target), (IArtifactDescriptor)newDescriptor, outputFile);
        }
        catch (IOException e) {
            throw this.failedWrite(e);
        }
    }

    private void mkdirs(File dir) {
        if (dir == null || dir.exists()) {
            return;
        }
        if (dir.mkdir()) {
            return;
        }
        this.mkdirs(dir.getParentFile());
        dir.mkdir();
    }

    private ProvisionException failedWrite(Exception e) throws ProvisionException {
        String msg = NLS.bind((String)Messages.repoFailedWrite, (Object)this.getLocation());
        throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1003, msg, (Throwable)e));
    }

    public synchronized String[][] getRules() {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        return this.mappingRules;
    }

    private Transport getTransport() {
        return (Transport)this.getProvisioningAgent().getService(Transport.SERVICE_NAME);
    }

    public synchronized void initializeAfterLoad(URI repoLocation) {
        this.initializeAfterLoad(repoLocation, true);
    }

    private synchronized void initializeAfterLoad(URI repoLocation, boolean updateTimestamp) {
        this.setLocation(repoLocation);
        String suffix = this.getBlobStoreName(BLOBSTORE);
        this.blobStore = new BlobStore(SimpleArtifactRepository.getBlobStoreLocation(repoLocation, suffix), 128);
        this.initializeMapper();
        for (SimpleArtifactDescriptor desc : this.artifactDescriptors) {
            desc.setRepository((IArtifactRepository)this);
        }
        if (updateTimestamp) {
            this.updateTimestamp();
        }
    }

    private String getBlobStoreName(String defaultValue) {
        String value = this.getProperty(PROP_BLOBSTORE_NAME);
        if (value == null || value.length() == 0) {
            return defaultValue;
        }
        return value;
    }

    private synchronized void initializeMapper() {
        this.mapper = new Mapper();
        this.mapper.initialize(Activator.getContext(), this.mappingRules);
    }

    private boolean isFolderBased(IArtifactDescriptor descriptor) {
        String useArtifactFolder;
        SimpleArtifactDescriptor internalDescriptor = null;
        if (descriptor instanceof SimpleArtifactDescriptor) {
            internalDescriptor = (SimpleArtifactDescriptor)descriptor;
        }
        if (internalDescriptor != null && (useArtifactFolder = internalDescriptor.getRepositoryProperty(ARTIFACT_FOLDER)) != null) {
            return Boolean.valueOf(useArtifactFolder);
        }
        return Boolean.valueOf(descriptor.getProperty(ARTIFACT_FOLDER));
    }

    private boolean isForceThreading() {
        return "true".equals(this.getProperties().get(PROP_FORCE_THREADING));
    }

    private boolean isLocal() {
        return "file".equalsIgnoreCase(this.getLocation().getScheme());
    }

    public boolean isModifiable() {
        return this.isLocal();
    }

    public OutputStream processDestination(ProcessingStepHandler handler, IArtifactDescriptor descriptor, OutputStream destination, IProgressMonitor monitor) {
        destination = this.addPostSteps(handler, descriptor, destination, monitor);
        destination = handler.createAndLink(this.getProvisioningAgent(), descriptor.getProcessingSteps(), descriptor, destination, monitor);
        destination = this.addPreSteps(handler, descriptor, destination, monitor);
        return destination;
    }

    public synchronized void removeAll(IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            IArtifactDescriptor[] toRemove = this.artifactDescriptors.toArray(new IArtifactDescriptor[this.artifactDescriptors.size()]);
            boolean changed = false;
            int i = 0;
            while (i < toRemove.length) {
                changed |= this.doRemoveArtifact(toRemove[i]);
                ++i;
            }
            if (changed) {
                this.save();
            }
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    public synchronized void removeDescriptor(IArtifactDescriptor descriptor, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            if (this.doRemoveArtifact(descriptor)) {
                this.save();
            }
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    public synchronized void removeDescriptors(IArtifactDescriptor[] descriptors, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            boolean changed = false;
            IArtifactDescriptor[] iArtifactDescriptorArray = descriptors;
            int n = descriptors.length;
            int n2 = 0;
            while (n2 < n) {
                IArtifactDescriptor descriptor = iArtifactDescriptorArray[n2];
                changed |= this.doRemoveArtifact(descriptor);
                ++n2;
            }
            if (changed) {
                this.save();
            }
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    public synchronized void removeDescriptors(IArtifactKey[] keys, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            boolean changed = false;
            IArtifactKey[] iArtifactKeyArray = keys;
            int n = keys.length;
            int n2 = 0;
            while (n2 < n) {
                IArtifactDescriptor[] descriptors;
                IArtifactKey key = iArtifactKeyArray[n2];
                IArtifactDescriptor[] iArtifactDescriptorArray = descriptors = this.getArtifactDescriptors(key);
                int n3 = descriptors.length;
                int n4 = 0;
                while (n4 < n3) {
                    IArtifactDescriptor descriptor = iArtifactDescriptorArray[n4];
                    changed |= this.doRemoveArtifact(descriptor);
                    ++n4;
                }
                ++n2;
            }
            if (changed) {
                this.save();
            }
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    public synchronized void removeDescriptor(IArtifactKey key, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                return;
            }
            IArtifactDescriptor[] toRemove = this.getArtifactDescriptors(key);
            boolean changed = false;
            int i = 0;
            while (i < toRemove.length) {
                changed |= this.doRemoveArtifact(toRemove[i]);
                ++i;
            }
            if (changed) {
                this.save();
            }
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    private IStatus reportStatus(IArtifactDescriptor descriptor, OutputStream destination, IStatus status) {
        if (!(destination instanceof ProcessingStep)) {
            return status;
        }
        try {
            destination.close();
        }
        catch (IOException e) {
            return new Status(4, "org.eclipse.equinox.p2.artifact.repository", NLS.bind((String)Messages.sar_reportStatus, (Object)descriptor.getArtifactKey().toExternalForm()), (Throwable)e);
        }
        if (status.matches(4)) {
            return status;
        }
        IStatus stepStatus = ProcessingStepHandler.getErrorStatus(destination);
        if (!stepStatus.isMultiStatus() && stepStatus.isOK()) {
            return status;
        }
        MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 0, new IStatus[0], NLS.bind((String)Messages.sar_reportStatus, (Object)descriptor.getArtifactKey().toExternalForm()), null);
        if (!status.isOK()) {
            boolean found = false;
            IStatus[] stepStatusChildren = stepStatus.getChildren();
            int i = 0;
            while (i < stepStatusChildren.length && !found) {
                if (stepStatusChildren[i] == status) {
                    found = true;
                }
                ++i;
            }
            if (!found) {
                result.merge(status);
            }
        }
        result.merge(stepStatus);
        return result;
    }

    public void save() {
        if (this.disableSave) {
            return;
        }
        boolean compress = "true".equalsIgnoreCase(this.getProperty("p2.compressed"));
        this.save(compress);
    }

    private void save(boolean compress) {
        this.assertModifiable();
        OutputStream os = null;
        try {
            try {
                try {
                    URI actualLocation = SimpleArtifactRepository.getActualLocation(this.getLocation(), false);
                    File artifactsFile = URIUtil.toFile((URI)actualLocation);
                    File jarFile = URIUtil.toFile((URI)SimpleArtifactRepository.getActualLocation(this.getLocation(), true));
                    if (!compress) {
                        if (jarFile.exists()) {
                            jarFile.delete();
                        }
                        if (!artifactsFile.exists()) {
                            this.mkdirs(artifactsFile.getParentFile());
                        }
                        os = new FileOutputStream(artifactsFile);
                    } else {
                        if (artifactsFile.exists()) {
                            artifactsFile.delete();
                        }
                        if (!jarFile.exists()) {
                            this.mkdirs(jarFile.getParentFile());
                            jarFile.createNewFile();
                        }
                        JarOutputStream jOs = new JarOutputStream(new FileOutputStream(jarFile));
                        jOs.putNextEntry(new JarEntry(new Path(artifactsFile.getAbsolutePath()).lastSegment()));
                        os = jOs;
                    }
                    super.setProperty("p2.timestamp", Long.toString(System.currentTimeMillis()), (IProgressMonitor)new NullProgressMonitor());
                    new SimpleArtifactRepositoryIO(this.getProvisioningAgent()).write(this, os);
                }
                catch (IOException e) {
                    e.printStackTrace();
                    if (os != null) {
                        os.close();
                    }
                    this.updateTimestamp();
                }
            }
            finally {
                if (os != null) {
                    os.close();
                }
                this.updateTimestamp();
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private String doSetProperty(String key, String newValue, IProgressMonitor monitor, boolean save) {
        String oldValue = super.setProperty(key, newValue, (IProgressMonitor)new NullProgressMonitor());
        if (oldValue == newValue || oldValue != null && oldValue.equals(newValue)) {
            return oldValue;
        }
        if (PUBLISH_PACK_FILES_AS_SIBLINGS.equals(key)) {
            SimpleArtifactRepository simpleArtifactRepository = this;
            synchronized (simpleArtifactRepository) {
                this.mappingRules = Boolean.TRUE.toString().equals(newValue) ? PACKED_MAPPING_RULES : DEFAULT_MAPPING_RULES;
                this.initializeMapper();
            }
        }
        if (save) {
            this.save();
        }
        return oldValue;
    }

    public String setProperty(String key, String newValue, IProgressMonitor monitor) {
        boolean lockAcquired = false;
        try {
            if (this.canLock() && !(lockAcquired = this.lockAndLoad(false, monitor))) {
                String string = super.getProperty(key);
                return string;
            }
            String string = this.doSetProperty(key, newValue, monitor, true);
            return string;
        }
        finally {
            if (lockAcquired) {
                this.unlock();
            }
        }
    }

    public synchronized void setRules(String[][] rules) {
        this.mappingRules = rules;
    }

    public String toString() {
        return this.getLocation().toString();
    }

    public IQueryable<IArtifactDescriptor> descriptorQueryable() {
        return new IQueryable<IArtifactDescriptor>(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public IQueryResult<IArtifactDescriptor> query(IQuery<IArtifactDescriptor> query, IProgressMonitor monitor) {
                SimpleArtifactRepository simpleArtifactRepository = SimpleArtifactRepository.this;
                synchronized (simpleArtifactRepository) {
                    SimpleArtifactRepository.this.snapshotNeeded = true;
                    Collection descs = SimpleArtifactRepository.this.artifactMap.values();
                    return query.perform((Iterator)new CompoundIterator(descs.iterator()));
                }
            }
        };
    }

    public IQueryResult<IArtifactKey> query(IQuery<IArtifactKey> query, IProgressMonitor monitor) {
        return IndexProvider.query((IIndexProvider)this, query, (IProgressMonitor)monitor);
    }

    public synchronized Iterator<IArtifactKey> everything() {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        this.snapshotNeeded = true;
        return this.artifactMap.keySet().iterator();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive exception aggregation
     */
    public IStatus executeBatch(IRunnableWithProgress runnable, IProgressMonitor monitor) {
        Object result = null;
        boolean lockAcquired = false;
        SimpleArtifactRepository simpleArtifactRepository = this;
        synchronized (simpleArtifactRepository) {
            block52: {
                block46: {
                    Status status;
                    block48: {
                        if (!this.canLock() || (lockAcquired = this.lockAndLoad(false, monitor))) break block46;
                        status = new Status(4, "org.eclipse.equinox.p2.artifact.repository", "Could not lock artifact repository for writing", null);
                        this.disableSave = false;
                        try {
                            try {
                                this.save();
                            }
                            catch (Exception e) {
                                result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), (Throwable)e);
                                if (lockAcquired) {
                                    this.unlock();
                                }
                                break block48;
                            }
                        }
                        catch (Throwable throwable) {
                            if (lockAcquired) {
                                this.unlock();
                            }
                            throw throwable;
                        }
                        if (lockAcquired) {
                            this.unlock();
                        }
                    }
                    return status;
                }
                try {
                    this.disableSave = true;
                    runnable.run(monitor);
                }
                catch (OperationCanceledException oce) {
                    Status status;
                    block50: {
                        status = new Status(8, "org.eclipse.equinox.p2.artifact.repository", oce.getMessage(), (Throwable)oce);
                        this.disableSave = false;
                        try {
                            try {
                                this.save();
                            }
                            catch (Exception e) {
                                result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), (Throwable)e);
                                if (lockAcquired) {
                                    this.unlock();
                                }
                                break block50;
                            }
                        }
                        catch (Throwable throwable) {
                            if (lockAcquired) {
                                this.unlock();
                            }
                            throw throwable;
                        }
                        if (lockAcquired) {
                            this.unlock();
                        }
                    }
                    return status;
                }
                catch (Throwable e) {
                    try {
                        result = new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), e);
                        this.disableSave = false;
                    }
                    catch (Throwable throwable) {
                        block54: {
                            this.disableSave = false;
                            try {
                                try {
                                    this.save();
                                }
                                catch (Exception e2) {
                                    result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e2.getMessage(), (Throwable)e2) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e2.getMessage(), (Throwable)e2);
                                    if (lockAcquired) {
                                        this.unlock();
                                    }
                                    break block54;
                                }
                            }
                            catch (Throwable throwable2) {
                                if (lockAcquired) {
                                    this.unlock();
                                }
                                throw throwable2;
                            }
                            if (lockAcquired) {
                                this.unlock();
                            }
                        }
                        throw throwable;
                    }
                    try {
                        try {
                            this.save();
                        }
                        catch (Exception e3) {
                            result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e3.getMessage(), (Throwable)e3) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e3.getMessage(), (Throwable)e3);
                            if (lockAcquired) {
                                this.unlock();
                            }
                            break block52;
                        }
                    }
                    catch (Throwable throwable) {
                        if (lockAcquired) {
                            this.unlock();
                        }
                        throw throwable;
                    }
                    if (lockAcquired) {
                        this.unlock();
                    }
                    break block52;
                }
                this.disableSave = false;
                try {
                    try {
                        this.save();
                    }
                    catch (Exception e) {
                        result = result != null ? new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, new IStatus[]{result}, e.getMessage(), (Throwable)e) : new Status(4, "org.eclipse.equinox.p2.artifact.repository", e.getMessage(), (Throwable)e);
                        if (lockAcquired) {
                            this.unlock();
                        }
                        break block52;
                    }
                }
                catch (Throwable throwable) {
                    if (lockAcquired) {
                        this.unlock();
                    }
                    throw throwable;
                }
                if (lockAcquired) {
                    this.unlock();
                }
            }
        }
        if (result == null) {
            result = Status.OK_STATUS;
        }
        return result;
    }

    public synchronized IIndex<IArtifactKey> getIndex(String memberName) {
        if (!this.holdsLock() && URIUtil.isFileURI((URI)this.getLocation())) {
            this.load((IProgressMonitor)new NullProgressMonitor());
        }
        if ("id".equals(memberName)) {
            this.snapshotNeeded = true;
            if (this.keyIndex == null) {
                this.keyIndex = new KeyIndex(this.artifactMap.keySet());
            }
            return this.keyIndex;
        }
        return null;
    }

    public Object getManagedProperty(Object client, String memberName, Object key) {
        return null;
    }

    private synchronized boolean lockAndLoad(boolean ignoreLoad, IProgressMonitor monitor) {
        if (this.holdsLock) {
            throw new IllegalStateException("Locking is not reentrant");
        }
        this.holdsLock = false;
        boolean success = true;
        try {
            try {
                this.holdsLock = this.lock(true, monitor);
            }
            catch (Exception e) {
                e.printStackTrace();
                if (!success) {
                    this.unlock();
                }
                return false;
            }
            if (this.holdsLock) {
                if (!ignoreLoad) {
                    success = false;
                    this.doLoad((IProgressMonitor)new NullProgressMonitor());
                    success = true;
                }
                return true;
            }
            return false;
        }
        finally {
            if (!success) {
                this.unlock();
            }
        }
    }

    private synchronized boolean canLock() {
        if (this.holdsLock()) {
            return false;
        }
        if (!URIUtil.isFileURI((URI)this.getLocation())) {
            return false;
        }
        try {
            this.lockLocation = this.getLockLocation();
        }
        catch (IOException iOException) {
            return false;
        }
        return !this.lockLocation.isReadOnly();
    }

    private synchronized boolean lock(boolean wait, IProgressMonitor monitor) throws IOException {
        if (!Activator.getInstance().enableArtifactLocking()) {
            return true;
        }
        if (this.holdsLock()) {
            throw new IllegalStateException("Locking is not reentrant");
        }
        this.lockLocation = this.getLockLocation();
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

    private boolean holdsLock() {
        return this.holdsLock;
    }

    private Location getLockLocation() throws IOException {
        if (this.lockLocation != null) {
            return this.lockLocation;
        }
        URI repositoryLocation = this.getLocation();
        if (!URIUtil.isFileURI((URI)repositoryLocation)) {
            throw new IOException("Cannot lock a non file based repository");
        }
        return Activator.getInstance().getLockLocation(repositoryLocation);
    }

    private void load(IProgressMonitor monitor) {
        if (!this.holdsLock()) {
            this.doLoad(monitor);
        } else {
            monitor.done();
        }
    }

    private void updateTimestamp() {
        if (!this.isModifiable()) {
            return;
        }
        try {
            SimpleArtifactRepositoryFactory repositoryFactory = new SimpleArtifactRepositoryFactory();
            File localFile = repositoryFactory.getLocalFile(this.getLocation(), (IProgressMonitor)new NullProgressMonitor());
            long lastModified = localFile.lastModified();
            if (lastModified > 0L) {
                this.cacheTimestamp = lastModified;
            }
        }
        catch (Exception exception) {}
    }

    private void doLoad(IProgressMonitor monitor) {
        SimpleArtifactRepositoryFactory repositoryFactory = new SimpleArtifactRepositoryFactory();
        IArtifactRepository repositoryOnDisk = null;
        try {
            long lastModified;
            SubMonitor subMonitor;
            block13: {
                subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)4);
                try {
                    File localFile = repositoryFactory.getLocalFile(this.getLocation(), (IProgressMonitor)subMonitor.newChild(1));
                    lastModified = localFile.lastModified();
                    if (lastModified > this.cacheTimestamp) break block13;
                    return;
                }
                catch (Exception exception) {
                    monitor.done();
                    return;
                }
            }
            this.cacheTimestamp = lastModified;
            try {
                repositoryOnDisk = repositoryFactory.load(this.getLocation(), 1, (IProgressMonitor)subMonitor.newChild(3), false);
            }
            catch (Exception exception) {
                monitor.done();
                return;
            }
            if (repositoryOnDisk != null && repositoryOnDisk instanceof SimpleArtifactRepository) {
                this.setName(repositoryOnDisk.getName());
                this.setType(repositoryOnDisk.getType());
                this.setVersion(repositoryOnDisk.getVersion());
                this.setLocation(repositoryOnDisk.getLocation());
                this.setDescription(repositoryOnDisk.getDescription());
                this.setProvider(repositoryOnDisk.getProvider());
                this.mappingRules = ((SimpleArtifactRepository)repositoryOnDisk).mappingRules;
                Map prop = repositoryOnDisk.getProperties();
                Set entrySet = prop.entrySet();
                for (Map.Entry entry : entrySet) {
                    this.doSetProperty((String)entry.getKey(), (String)entry.getValue(), (IProgressMonitor)new NullProgressMonitor(), false);
                }
                this.artifactDescriptors = ((SimpleArtifactRepository)repositoryOnDisk).artifactDescriptors;
                this.artifactMap = ((SimpleArtifactRepository)repositoryOnDisk).artifactMap;
            }
        }
        finally {
            monitor.done();
        }
    }

    private void unlock() {
        if (!Activator.getInstance().enableArtifactLocking()) {
            this.holdsLock = false;
            return;
        }
        if (this.lockLocation != null) {
            this.holdsLock = false;
            this.lockLocation.release();
        }
        this.lockLocation = null;
    }

    public class ArtifactOutputStream
    extends OutputStream
    implements IStateful {
        private boolean closed;
        private long count = 0L;
        private IArtifactDescriptor descriptor;
        private OutputStream destination;
        private File file;
        private IStatus status = Status.OK_STATUS;
        private OutputStream firstLink;

        public ArtifactOutputStream(OutputStream os, IArtifactDescriptor descriptor) {
            this(os, descriptor, null);
        }

        public ArtifactOutputStream(OutputStream os, IArtifactDescriptor descriptor, File file) {
            this.destination = os;
            this.descriptor = descriptor;
            this.file = file;
        }

        public void close() throws IOException {
            OutputStream testStream;
            if (this.closed) {
                return;
            }
            this.closed = true;
            try {
                this.destination.close();
            }
            catch (IOException e) {
                if (this.file != null) {
                    SimpleArtifactRepository.delete(this.file);
                }
                if (this.getStatus().isOK()) {
                    throw e;
                }
                return;
            }
            OutputStream outputStream = testStream = this.firstLink == null ? this : this.firstLink;
            if (ProcessingStepHandler.checkStatus(testStream).isOK() && this.count > 0L) {
                ((ArtifactDescriptor)this.descriptor).setProperty("download.size", Long.toString(this.count));
                SimpleArtifactRepository.this.addDescriptor(this.descriptor);
            } else if (this.file != null) {
                SimpleArtifactRepository.delete(this.file);
            }
        }

        public IStatus getStatus() {
            return this.status;
        }

        public OutputStream getDestination() {
            return this.destination;
        }

        public void setStatus(IStatus status) {
            this.status = status == null ? Status.OK_STATUS : status;
        }

        public void write(byte[] b) throws IOException {
            this.destination.write(b);
            this.count += (long)b.length;
        }

        public void write(byte[] b, int off, int len) throws IOException {
            this.destination.write(b, off, len);
            this.count += (long)len;
        }

        public void write(int b) throws IOException {
            this.destination.write(b);
            ++this.count;
        }

        public void setFirstLink(OutputStream value) {
            this.firstLink = value;
        }
    }

    public static class ZippedFolderOutputStream
    extends OutputStream {
        private final File folder;
        private final FileOutputStream fos;
        private final File zipFile;

        public ZippedFolderOutputStream(File folder) throws IOException {
            this.folder = folder;
            this.zipFile = File.createTempFile(folder.getName(), SimpleArtifactRepository.JAR_EXTENSION, null);
            this.fos = new FileOutputStream(this.zipFile);
        }

        public void close() throws IOException {
            this.fos.close();
            try {
                FileUtils.unzipFile((File)this.zipFile, (File)this.folder);
            }
            finally {
                this.zipFile.delete();
            }
        }

        public void flush() throws IOException {
            this.fos.flush();
        }

        public String toString() {
            return this.fos.toString();
        }

        public void write(byte[] b) throws IOException {
            this.fos.write(b);
        }

        public void write(byte[] b, int off, int len) throws IOException {
            this.fos.write(b, off, len);
        }

        public void write(int b) throws IOException {
            this.fos.write(b);
        }
    }
}

