/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.SynchronousProvisioningListener
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.repository;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.util.EventObject;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.repository.AuthenticationFailedException;
import org.eclipse.equinox.internal.p2.repository.Messages;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.SynchronousProvisioningListener;
import org.eclipse.equinox.internal.provisional.p2.repository.IStateful;
import org.eclipse.equinox.internal.provisional.p2.repository.RepositoryEvent;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.util.NLS;

public class CacheManager {
    public static final String SERVICE_NAME;
    private final IAgentLocation agentLocation;
    private final Transport transport;
    private static SynchronousProvisioningListener busListener;
    private static final String DOWNLOADING = "downloading";
    private static final String JAR_EXTENSION = ".jar";
    private static final String XML_EXTENSION = ".xml";
    private final HashSet<String> knownPrefixes = new HashSet(5);
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.repository.CacheManager");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SERVICE_NAME = clazz.getName();
    }

    public CacheManager(IAgentLocation agentLocation, Transport transport) {
        this.agentLocation = agentLocation;
        this.transport = transport;
    }

    private int computeHash(URI repositoryLocation) {
        return repositoryLocation.hashCode();
    }

    public File createCache(URI repositoryLocation, String prefix, IProgressMonitor monitor) throws IOException, ProvisionException {
        SubMonitor submonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)1000);
        try {
            boolean useJar;
            long lastModifiedRemote;
            URI remoteFile;
            String useExtension;
            String name;
            long lastModified;
            boolean stale;
            int hashCode;
            URI xmlLocation;
            URI jarLocation;
            File cacheFile;
            block26: {
                this.knownPrefixes.add(prefix);
                cacheFile = this.getCache(repositoryLocation, prefix);
                jarLocation = URIUtil.append((URI)repositoryLocation, (String)(String.valueOf(prefix) + JAR_EXTENSION));
                xmlLocation = URIUtil.append((URI)repositoryLocation, (String)(String.valueOf(prefix) + XML_EXTENSION));
                hashCode = this.computeHash(repositoryLocation);
                stale = true;
                lastModified = 0L;
                name = null;
                useExtension = JAR_EXTENSION;
                remoteFile = jarLocation;
                if (cacheFile != null) {
                    lastModified = cacheFile.lastModified();
                    name = cacheFile.getName();
                }
                lastModifiedRemote = 0L;
                useJar = true;
                try {
                    lastModifiedRemote = this.transport.getLastModified(jarLocation, (IProgressMonitor)submonitor.newChild(1));
                    if (lastModifiedRemote <= 0L) {
                        LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.repository", "Server returned lastModified <= 0 for " + jarLocation));
                    }
                }
                catch (AuthenticationFailedException authenticationFailedException) {
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", 1007, NLS.bind((String)Messages.CacheManager_AuthenticationFaileFor_0, (Object)repositoryLocation), null));
                }
                catch (CoreException e) {
                    useJar = false;
                    if (e.getStatus() == null || e.getStatus().getException() == null) break block26;
                    Throwable ex = e.getStatus().getException();
                    Class<?> clazz = ex.getClass();
                    Class<?> clazz2 = class$1;
                    if (clazz2 == null) {
                        try {
                            clazz2 = class$1 = Class.forName("java.net.SocketTimeoutException");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if (clazz == clazz2) {
                        throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", 1002, NLS.bind((String)Messages.CacheManager_FailedCommunicationWithRepo_0, (Object)repositoryLocation), ex));
                    }
                }
                catch (OperationCanceledException e) {
                    throw e;
                }
                catch (Exception exception) {
                    useJar = false;
                }
            }
            if (submonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            if (useJar) {
                stale = lastModifiedRemote != lastModified || name != null && name.endsWith(XML_EXTENSION) || lastModifiedRemote <= 0L;
            } else {
                try {
                    lastModifiedRemote = this.transport.getLastModified(xmlLocation, (IProgressMonitor)submonitor.newChild(1));
                    if (lastModifiedRemote <= 0L) {
                        LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.repository", "Server returned lastModified <= 0 for " + xmlLocation));
                    }
                }
                catch (FileNotFoundException fileNotFoundException) {
                    throw new FileNotFoundException(NLS.bind((String)Messages.CacheManager_Neither_0_nor_1_found, (Object)jarLocation, (Object)xmlLocation));
                }
                catch (AuthenticationFailedException authenticationFailedException) {
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", 1007, NLS.bind((String)Messages.CacheManager_AuthenticationFaileFor_0, (Object)repositoryLocation), null));
                }
                catch (CoreException e) {
                    IStatus status = e.getStatus();
                    if (status == null) {
                        throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", 1000, NLS.bind((String)Messages.CacheManager_FailedCommunicationWithRepo_0, (Object)repositoryLocation), (Throwable)e));
                    }
                    if (status.getException() instanceof FileNotFoundException) {
                        throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", 1000, status.getMessage(), null));
                    }
                    throw new ProvisionException(status);
                }
                stale = lastModifiedRemote != lastModified || name != null && name.endsWith(JAR_EXTENSION) || lastModifiedRemote <= 0L;
                useExtension = XML_EXTENSION;
                remoteFile = xmlLocation;
            }
            if (!stale) {
                File file = cacheFile;
                return file;
            }
            cacheFile = new File(this.getCacheDirectory(), String.valueOf(prefix) + hashCode + useExtension);
            this.updateCache(cacheFile, remoteFile, lastModifiedRemote, submonitor);
            File file = cacheFile;
            return file;
        }
        finally {
            submonitor.done();
        }
    }

    void deleteCache(URI repositoryLocation) {
        Iterator<String> iterator = this.knownPrefixes.iterator();
        while (iterator.hasNext()) {
            String prefix = iterator.next();
            File[] cacheFiles = this.getCacheFiles(repositoryLocation, prefix);
            int i = 0;
            while (i < cacheFiles.length) {
                this.safeDelete(cacheFiles[i]);
                this.safeDelete(new File(new File(cacheFiles[i].getParentFile(), DOWNLOADING), cacheFiles[i].getName()));
                ++i;
            }
        }
    }

    protected File getCache(URI repositoryLocation, String prefix) {
        File[] files = this.getCacheFiles(repositoryLocation, prefix);
        if (files[0].exists()) {
            return files[0];
        }
        return files[1].exists() ? files[1] : null;
    }

    protected File getCacheDirectory() {
        return URIUtil.toFile((URI)this.agentLocation.getDataArea("org.eclipse.equinox.p2.repository/cache/"));
    }

    private File[] getCacheFiles(URI repositoryLocation, String prefix) {
        File[] files = new File[2];
        File dataAreaFile = this.getCacheDirectory();
        int hashCode = this.computeHash(repositoryLocation);
        files[0] = new File(dataAreaFile, String.valueOf(prefix) + hashCode + JAR_EXTENSION);
        files[1] = new File(dataAreaFile, String.valueOf(prefix) + hashCode + XML_EXTENSION);
        return files;
    }

    private void registerRepoEventListener(IProvisioningEventBus eventBus) {
        if (busListener == null) {
            busListener = new SynchronousProvisioningListener(){

                public void notify(EventObject o) {
                    RepositoryEvent event;
                    if (o instanceof RepositoryEvent && 1 == (event = (RepositoryEvent)o).getKind() && event.getRepositoryType() == 0) {
                        CacheManager.this.deleteCache(event.getRepositoryLocation());
                    }
                }
            };
        }
        eventBus.addListener((ProvisioningListener)busListener);
    }

    private boolean safeDelete(File file) {
        if (file.exists() && !file.delete()) {
            file.deleteOnExit();
            return true;
        }
        return false;
    }

    public void setEventBus(IProvisioningEventBus newBus) {
        this.registerRepoEventListener(newBus);
    }

    public void unsetEventBus(IProvisioningEventBus oldBus) {
        this.unregisterRepoEventListener(oldBus);
    }

    private void unregisterRepoEventListener(IProvisioningEventBus bus) {
        if (bus != null && busListener != null) {
            bus.removeListener((ProvisioningListener)busListener);
        }
    }

    protected void updateCache(File cacheFile, URI remoteFile, long lastModifiedRemote, SubMonitor submonitor) throws FileNotFoundException, IOException, ProvisionException {
        IStatus result;
        File tempFile;
        block17: {
            cacheFile.getParentFile().mkdirs();
            File downloadDir = new File(cacheFile.getParentFile(), DOWNLOADING);
            if (!downloadDir.exists()) {
                downloadDir.mkdir();
            }
            if ((tempFile = new File(downloadDir, cacheFile.getName())).exists()) {
                this.safeDelete(tempFile);
            }
            tempFile.createNewFile();
            StatefulStream stream = null;
            try {
                stream = new StatefulStream(new FileOutputStream(tempFile));
            }
            catch (Exception e) {
                throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", e.getMessage(), (Throwable)e));
            }
            result = null;
            try {
                try {
                    submonitor.setWorkRemaining(1000);
                    result = this.transport.download(remoteFile, stream, (IProgressMonitor)submonitor.newChild(1000));
                }
                catch (OperationCanceledException operationCanceledException) {
                    result = stream.getStatus();
                    stream.close();
                    if (result == null || !result.isOK()) {
                        this.safeDelete(tempFile);
                    }
                    break block17;
                }
            }
            catch (Throwable throwable) {
                stream.close();
                if (result == null || !result.isOK()) {
                    this.safeDelete(tempFile);
                }
                throw throwable;
            }
            stream.close();
            if (result == null || !result.isOK()) {
                this.safeDelete(tempFile);
            }
        }
        if (result.isOK()) {
            if (cacheFile.exists()) {
                this.safeDelete(cacheFile);
            }
            if (tempFile.renameTo(cacheFile)) {
                if (lastModifiedRemote != -1L && lastModifiedRemote != 0L) {
                    cacheFile.setLastModified(lastModifiedRemote);
                }
                return;
            }
            result = new Status(4, "org.eclipse.equinox.p2.repository", NLS.bind((String)Messages.CacheManage_ErrorRenamingCache, (Object[])new Object[]{remoteFile.toString(), tempFile.getAbsolutePath(), cacheFile.getAbsolutePath()}));
        }
        if (result.getSeverity() == 8 || submonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        throw new ProvisionException(result);
    }

    private static class StatefulStream
    extends BufferedOutputStream
    implements IStateful {
        private IStatus status;

        public StatefulStream(OutputStream stream) {
            super(stream);
        }

        public IStatus getStatus() {
            return this.status;
        }

        public void setStatus(IStatus aStatus) {
            this.status = aStatus;
        }
    }
}

