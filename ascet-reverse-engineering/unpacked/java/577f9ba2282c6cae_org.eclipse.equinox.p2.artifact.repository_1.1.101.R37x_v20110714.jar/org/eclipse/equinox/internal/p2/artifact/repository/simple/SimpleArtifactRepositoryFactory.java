/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.p2.repository.CacheManager
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactRepositoryFactory
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepository;
import org.eclipse.equinox.internal.p2.artifact.repository.simple.SimpleArtifactRepositoryIO;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.repository.CacheManager;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactRepositoryFactory;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimpleArtifactRepositoryFactory
extends ArtifactRepositoryFactory {
    public static final String PROTOCOL_FILE = "file";
    private static final String JAR_EXTENSION = ".jar";
    private static final String XML_EXTENSION = ".xml";

    File getLocalFile(URI location, IProgressMonitor monitor) throws IOException, ProvisionException {
        File localFile = null;
        URI jarLocation = SimpleArtifactRepository.getActualLocation(location, true);
        URI xmlLocation = SimpleArtifactRepository.getActualLocation(location, false);
        if (PROTOCOL_FILE.equals(xmlLocation.getScheme())) {
            localFile = URIUtil.toFile((URI)jarLocation);
            if (localFile.exists()) {
                return localFile;
            }
            localFile = URIUtil.toFile((URI)xmlLocation);
            if (localFile.exists()) {
                return localFile;
            }
            String msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1000, msg, null));
        }
        CacheManager cache = (CacheManager)this.getAgent().getService(CacheManager.SERVICE_NAME);
        if (cache == null) {
            throw new IllegalArgumentException("Cache manager service not available");
        }
        localFile = cache.createCache(location, "artifacts", monitor);
        if (localFile == null) {
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1000, Messages.repoMan_internalError, null));
        }
        return localFile;
    }

    public IArtifactRepository load(URI location, int flags, IProgressMonitor monitor) throws ProvisionException {
        return this.load(location, flags, monitor, true);
    }

    IArtifactRepository load(URI location, int flags, IProgressMonitor monitor, boolean acquireLock) throws ProvisionException {
        long time = 0L;
        if (Tracing.DEBUG_METADATA_PARSING) {
            Tracing.debug((String)new StringBuffer("Restoring artifact repository ").append(location).toString());
            time = -System.currentTimeMillis();
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)400);
        try {
            SimpleArtifactRepository result;
            JarInputStream jarStream;
            BufferedInputStream inStream;
            block17: {
                File localFile = this.getLocalFile(location, (IProgressMonitor)sub.newChild(300));
                inStream = new BufferedInputStream(new FileInputStream(localFile));
                jarStream = null;
                try {
                    if (localFile.getAbsolutePath().endsWith(JAR_EXTENSION)) {
                        jarStream = new JarInputStream(inStream);
                        JarEntry jarEntry = jarStream.getNextJarEntry();
                        String entryName = "artifacts.xml";
                        while (jarEntry != null && !entryName.equals(jarEntry.getName())) {
                            jarEntry = jarStream.getNextJarEntry();
                        }
                        if (jarEntry == null) {
                            throw new IOException(NLS.bind((String)Messages.io_invalidLocation, (Object)location));
                        }
                    }
                    sub.setWorkRemaining(100);
                    FilterInputStream descriptorStream = jarStream != null ? jarStream : inStream;
                    SimpleArtifactRepositoryIO io = new SimpleArtifactRepositoryIO(this.getAgent());
                    result = (SimpleArtifactRepository)io.read(location, descriptorStream, (IProgressMonitor)sub.newChild(100), acquireLock);
                    result.initializeAfterLoad(location);
                    if (result == null || (flags & 1) <= 0 || result.isModifiable()) break block17;
                    this.safeClose(jarStream);
                    this.safeClose(inStream);
                    return null;
                }
                catch (Throwable throwable) {
                    String msg;
                    try {
                        this.safeClose(jarStream);
                        this.safeClose(inStream);
                        throw throwable;
                    }
                    catch (FileNotFoundException e) {
                        msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
                        throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1000, msg, (Throwable)e));
                    }
                    catch (IOException e) {
                        msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
                        throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", 1002, msg, (Throwable)e));
                    }
                }
            }
            if (Tracing.DEBUG_METADATA_PARSING) {
                Tracing.debug((String)new StringBuffer("Restoring artifact repository time (ms): ").append(time += System.currentTimeMillis()).toString());
            }
            SimpleArtifactRepository simpleArtifactRepository = result;
            this.safeClose(jarStream);
            this.safeClose(inStream);
            return simpleArtifactRepository;
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    public IArtifactRepository create(URI location, String name, String type, Map<String, String> properties) {
        return new SimpleArtifactRepository(this.getAgent(), name, location, properties);
    }

    private void safeClose(InputStream stream) {
        if (stream == null) {
            return;
        }
        try {
            stream.close();
        }
        catch (IOException iOException) {}
    }
}

