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
 *  org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryIO
 *  org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState
 *  org.eclipse.equinox.internal.p2.repository.CacheManager
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.equinox.p2.repository.metadata.spi.MetadataRepositoryFactory
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata.repository;

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
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.metadata.repository.CompositeMetadataRepository;
import org.eclipse.equinox.internal.p2.metadata.repository.Messages;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryIO;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState;
import org.eclipse.equinox.internal.p2.repository.CacheManager;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.p2.repository.metadata.spi.MetadataRepositoryFactory;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeMetadataRepositoryFactory
extends MetadataRepositoryFactory {
    private static final String JAR_EXTENSION = ".jar";
    private static final String XML_EXTENSION = ".xml";
    private static final String PROTOCOL_FILE = "file";
    public static final String CONTENT_FILENAME = "compositeContent";

    public IMetadataRepository create(URI location, String name, String type, Map<String, String> properties) {
        return new CompositeMetadataRepository(this.getManager(), location, name, properties);
    }

    private IMetadataRepositoryManager getManager() {
        if (this.getAgent() != null) {
            return (IMetadataRepositoryManager)this.getAgent().getService(IMetadataRepositoryManager.SERVICE_NAME);
        }
        return null;
    }

    private File getLocalFile(URI location, IProgressMonitor monitor) throws IOException, ProvisionException {
        File localFile = null;
        URI jarLocation = CompositeMetadataRepository.getActualLocationURI(location, JAR_EXTENSION);
        URI xmlLocation = CompositeMetadataRepository.getActualLocationURI(location, XML_EXTENSION);
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
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1000, msg, null));
        }
        CacheManager cache = (CacheManager)this.getAgent().getService(CacheManager.SERVICE_NAME);
        if (cache == null) {
            throw new IllegalArgumentException("Cache manager service not available");
        }
        localFile = cache.createCache(location, CONTENT_FILENAME, monitor);
        if (localFile == null) {
            String msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
            throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1000, msg, null));
        }
        return localFile;
    }

    public IMetadataRepository load(URI location, int flags, IProgressMonitor monitor) throws ProvisionException {
        long time = 0L;
        if (Tracing.DEBUG_METADATA_PARSING) {
            Tracing.debug((String)new StringBuffer("Validating and loading metadata repository ").append(location).toString());
            time = -System.currentTimeMillis();
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (int)400);
        try {
            if (!PROTOCOL_FILE.equals(location.getScheme()) && (flags & 1) > 0) {
                return null;
            }
            File localFile = this.getLocalFile(location, (IProgressMonitor)sub.newChild(100));
            BufferedInputStream inStream = new BufferedInputStream(new FileInputStream(localFile));
            JarInputStream jarStream = null;
            try {
                if (localFile.getAbsolutePath().endsWith(JAR_EXTENSION)) {
                    jarStream = new JarInputStream(inStream);
                    JarEntry jarEntry = jarStream.getNextJarEntry();
                    String entryName = "compositeContent.xml";
                    while (jarEntry != null && !entryName.equals(jarEntry.getName())) {
                        jarEntry = jarStream.getNextJarEntry();
                    }
                    if (jarEntry == null) {
                        throw new IOException(NLS.bind((String)Messages.repoMan_invalidLocation, (Object)location));
                    }
                }
                sub.setWorkRemaining(300);
                FilterInputStream descriptorStream = jarStream != null ? jarStream : inStream;
                CompositeRepositoryIO io = new CompositeRepositoryIO();
                CompositeRepositoryState resultState = io.read(localFile.toURL(), (InputStream)descriptorStream, "compositeMetadataRepository", (IProgressMonitor)sub.newChild(100));
                if (resultState.getLocation() == null) {
                    resultState.setLocation(location);
                }
                CompositeMetadataRepository result = new CompositeMetadataRepository(this.getManager(), resultState, (IProgressMonitor)sub.newChild(200));
                if (Tracing.DEBUG_METADATA_PARSING) {
                    Tracing.debug((String)new StringBuffer("Validating and loading metadata repository time (ms): ").append(time += System.currentTimeMillis()).toString());
                }
                CompositeMetadataRepository compositeMetadataRepository = result;
                this.safeClose(jarStream);
                this.safeClose(inStream);
                return compositeMetadataRepository;
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
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1000, msg, (Throwable)e));
                }
                catch (IOException e) {
                    msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.metadata.repository", 1002, msg, (Throwable)e));
                }
            }
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
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

