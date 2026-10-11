/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.filesystem.provider.FileInfo
 *  org.eclipse.core.filesystem.provider.FileStore
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.sphinx.platform.messages.PlatformMessages
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.StatusUtil
 *  org.osgi.framework.Bundle
 */
package org.eclipse.sphinx.emf.internal.filesystem;

import java.io.File;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.filesystem.provider.FileInfo;
import org.eclipse.core.filesystem.provider.FileStore;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.util.URI;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.messages.PlatformMessages;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.StatusUtil;
import org.osgi.framework.Bundle;

public class PlatformURIFileStore
extends FileStore {
    protected java.net.URI uri;

    public static URI toEMFURI(java.net.URI uri) {
        Assert.isNotNull((Object)uri);
        return URI.createURI((String)uri.toString(), (boolean)true);
    }

    public PlatformURIFileStore(java.net.URI uri) {
        this.uri = uri;
    }

    protected boolean existsPlatformPluginURI() {
        String pluginId;
        Bundle bundle;
        URI eURI = PlatformURIFileStore.toEMFURI(this.uri);
        if (eURI.isPlatformPlugin() && (bundle = ExtendedPlatform.loadBundle((String)(pluginId = eURI.segment(1)))) != null) {
            String pluginPath;
            String pluginBasedPath = eURI.toPlatformString(true);
            String pluginRelativePath = pluginBasedPath.replaceFirst(pluginPath = "/" + pluginId + "/", "");
            return FileLocator.find((Bundle)bundle, (IPath)new Path(pluginRelativePath), null) != null;
        }
        return false;
    }

    public IFileInfo fetchInfo(int options, IProgressMonitor monitor) throws CoreException {
        FileInfo info = new FileInfo(this.getName());
        URI eURI = PlatformURIFileStore.toEMFURI(this.uri);
        if (eURI.isPlatformPlugin()) {
            info.setExists(this.existsPlatformPluginURI());
            info.setDirectory(false);
            info.setAttribute(2, true);
            info.setAttribute(16, false);
        } else {
            URI convertedURI = EcoreResourceUtil.convertToAbsoluteFileURI(eURI);
            if (convertedURI.isFile()) {
                File file = new File(convertedURI.toFileString());
                info.setExists(file.exists());
                info.setDirectory(file.isDirectory());
                info.setAttribute(2, !file.canWrite());
                info.setAttribute(16, file.isHidden());
            } else {
                info.setExists(false);
                info.setDirectory(false);
                info.setAttribute(2, true);
                info.setAttribute(16, false);
            }
        }
        return info;
    }

    public String[] childNames(int options, IProgressMonitor monitor) throws CoreException {
        return new String[0];
    }

    public IFileStore getChild(String name) {
        return null;
    }

    public String getName() {
        String path = this.uri.getPath();
        int lastIndexOf = path.lastIndexOf("/");
        if (lastIndexOf >= 0 && lastIndexOf < path.length() - 1) {
            return path.substring(lastIndexOf + 1, path.length());
        }
        return path;
    }

    public IFileStore getParent() {
        return null;
    }

    public InputStream openInputStream(int options, IProgressMonitor monitor) throws CoreException {
        try {
            return this.uri.toURL().openStream();
        }
        catch (IOException ex) {
            throw new CoreException((IStatus)new Status(4, Activator.getDefault().getBundle().getSymbolicName(), PlatformMessages.error_openingStream, (Throwable)ex));
        }
    }

    public OutputStream openOutputStream(int options, IProgressMonitor monitor) throws CoreException {
        if (PlatformURIFileStore.toEMFURI(this.uri).isPlatformPlugin()) {
            return super.openOutputStream(options, monitor);
        }
        try {
            URL url = new URL(this.uri.toString());
            URLConnection urlConnection = url.openConnection();
            urlConnection.setDoOutput(true);
            OutputStream stream = urlConnection.getOutputStream();
            if (stream == null) {
                stream = new FilterOutputStream(stream){

                    public void close() throws IOException {
                        try {
                            super.close();
                        }
                        catch (Exception exception) {}
                    }
                };
            }
            return stream;
        }
        catch (Exception ex) {
            IStatus status = StatusUtil.createErrorStatus((Plugin)Activator.getPlugin(), (Object)ex);
            throw new CoreException(status);
        }
    }

    public java.net.URI toURI() {
        return this.uri;
    }
}

