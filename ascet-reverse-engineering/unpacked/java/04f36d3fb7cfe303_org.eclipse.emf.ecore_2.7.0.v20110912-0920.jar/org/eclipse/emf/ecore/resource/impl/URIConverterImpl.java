/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.archive.ArchiveURLConnection
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.archive.ArchiveURLConnection;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.resource.impl.PlatformResourceURIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Deprecated
public class URIConverterImpl
extends ExtensibleURIConverterImpl {
    @Deprecated
    protected static IWorkspaceRoot workspaceRoot = EcorePlugin.getWorkspaceRoot();
    private static Map<String, Boolean> efsScheme;
    private static final Method EFS_GET_FILE_SYSTEM_METHOD;
    private static final Method EFS_GET_STORE_METHOD;
    private static final Method FILE_STORE_OPEN_INPUT_STREAM_METHOD;
    private static final Method FILE_STORE_OPEN_OUTPUT_STREAM_METHOD;

    static {
        Method efsGetStoreMethod = null;
        Method efsGetFileSystemMethod = null;
        Method fileStoreOpenInputStreamMethod = null;
        Method fileStoreOpenOutputStreamMethod = null;
        try {
            Class efsClass = CommonPlugin.loadClass((String)"org.eclipse.core.filesystem", (String)"org.eclipse.core.filesystem.EFS");
            efsGetStoreMethod = efsClass.getMethod("getStore", java.net.URI.class);
            efsGetFileSystemMethod = efsClass.getMethod("getFileSystem", String.class);
            Class<?> fileStoreClass = efsGetStoreMethod.getReturnType();
            fileStoreOpenInputStreamMethod = fileStoreClass.getMethod("openInputStream", Integer.TYPE, IProgressMonitor.class);
            fileStoreOpenOutputStreamMethod = fileStoreClass.getMethod("openOutputStream", Integer.TYPE, IProgressMonitor.class);
        }
        catch (Throwable throwable) {
            // empty catch block
        }
        EFS_GET_STORE_METHOD = efsGetStoreMethod;
        EFS_GET_FILE_SYSTEM_METHOD = efsGetFileSystemMethod;
        FILE_STORE_OPEN_INPUT_STREAM_METHOD = fileStoreOpenInputStreamMethod;
        FILE_STORE_OPEN_OUTPUT_STREAM_METHOD = fileStoreOpenOutputStreamMethod;
    }

    @Deprecated
    public URIConverterImpl() {
    }

    protected boolean isArchiveScheme(String scheme) {
        return "archive".equals(scheme);
    }

    protected boolean isEFSScheme(String scheme) {
        Boolean result;
        if (EFS_GET_FILE_SYSTEM_METHOD == null) {
            return false;
        }
        Boolean bl = result = efsScheme == null ? null : efsScheme.get(scheme);
        if (result == null) {
            try {
                result = EFS_GET_FILE_SYSTEM_METHOD.invoke(null, scheme) != null;
            }
            catch (Throwable exception) {
                result = Boolean.FALSE;
            }
            HashMap<String, Boolean> map = new HashMap<String, Boolean>();
            if (efsScheme != null) {
                map.putAll(efsScheme);
            }
            map.put(scheme, result);
            efsScheme = map;
        }
        return result == Boolean.TRUE;
    }

    @Override
    public OutputStream createOutputStream(URI uri) throws IOException {
        URI converted = this.normalize(uri);
        if (converted.isFile()) {
            String filePath = converted.toFileString();
            return this.createFileOutputStream(filePath);
        }
        String scheme = converted.scheme();
        if (this.isArchiveScheme(scheme)) {
            return this.createArchiveOutputStream(converted);
        }
        if (converted.isPlatformResource()) {
            return this.createPlatformResourceOutputStream(converted.toPlatformString(true));
        }
        if (this.isEFSScheme(scheme)) {
            return this.createEFSOutputStream(converted);
        }
        return this.createURLOutputStream(converted);
    }

    @Override
    public OutputStream createOutputStream(URI uri, Map<?, ?> options) throws IOException {
        return this.createOutputStream(uri);
    }

    protected OutputStream createFileOutputStream(String filePath) throws IOException {
        File file = new File(filePath);
        String parent = file.getParent();
        if (parent != null) {
            new File(parent).mkdirs();
        }
        FileOutputStream outputStream = new FileOutputStream(file);
        return outputStream;
    }

    protected OutputStream createArchiveOutputStream(URI archiveURI) throws IOException {
        return this.createArchive(archiveURI).getOutputStream();
    }

    protected OutputStream createPlatformResourceOutputStream(String platformResourcePath) throws IOException {
        if (workspaceRoot != null) {
            return WorkbenchHelper.createPlatformResourceOutputStream(platformResourcePath);
        }
        URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
        if (resolvedLocation != null) {
            return this.createOutputStream(resolvedLocation);
        }
        throw new IOException("The path '" + platformResourcePath + "' is unmapped");
    }

    protected OutputStream createEFSOutputStream(URI uri) throws IOException {
        if (EFS_GET_STORE_METHOD != null) {
            try {
                Object store = EFS_GET_STORE_METHOD.invoke(null, new java.net.URI(uri.toString()));
                if (store != null) {
                    return (OutputStream)FILE_STORE_OPEN_OUTPUT_STREAM_METHOD.invoke(store, 0, null);
                }
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        throw new IOException("EFS unavailable");
    }

    protected OutputStream createURLOutputStream(URI uri) throws IOException {
        try {
            URL url = new URL(uri.toString());
            URLConnection urlConnection = url.openConnection();
            urlConnection.setDoOutput(true);
            return urlConnection.getOutputStream();
        }
        catch (RuntimeException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    public InputStream createInputStream(URI uri) throws IOException {
        URI converted = this.normalize(uri);
        if (converted.isFile()) {
            String filePath = converted.toFileString();
            return this.createFileInputStream(filePath);
        }
        String scheme = converted.scheme();
        if (this.isArchiveScheme(scheme)) {
            return this.createArchiveInputStream(converted);
        }
        if (converted.isPlatformResource()) {
            return this.createPlatformResourceInputStream(converted.toPlatformString(true));
        }
        if (this.isEFSScheme(scheme)) {
            return this.createEFSInputStream(converted);
        }
        return this.createURLInputStream(converted);
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        return this.createInputStream(uri);
    }

    protected InputStream createFileInputStream(String filePath) throws IOException {
        File file = new File(filePath);
        FileInputStream inputStream = new FileInputStream(file);
        return inputStream;
    }

    protected Archive createArchive(URI uri) {
        return new Archive(uri);
    }

    protected InputStream createArchiveInputStream(URI archiveURI) throws IOException {
        return this.createArchive(archiveURI).getInputStream();
    }

    protected InputStream createPlatformResourceInputStream(String platformResourcePath) throws IOException {
        if (workspaceRoot != null) {
            return WorkbenchHelper.createPlatformResourceInputStream(platformResourcePath);
        }
        URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
        if (resolvedLocation != null) {
            return this.createInputStream(resolvedLocation);
        }
        throw new IOException("The path '" + platformResourcePath + "' is unmapped");
    }

    protected InputStream createEFSInputStream(URI uri) throws IOException {
        if (EFS_GET_STORE_METHOD != null) {
            try {
                Object store = EFS_GET_STORE_METHOD.invoke(null, new java.net.URI(uri.toString()));
                if (store != null) {
                    return (InputStream)FILE_STORE_OPEN_INPUT_STREAM_METHOD.invoke(store, 0, null);
                }
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        throw new IOException("EFS unavailable");
    }

    protected InputStream createURLInputStream(URI uri) throws IOException {
        try {
            URL url = new URL(uri.toString());
            URLConnection urlConnection = url.openConnection();
            return urlConnection.getInputStream();
        }
        catch (RuntimeException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    @Deprecated
    protected URIMap getInternalURIMap() {
        return (URIMap)super.getInternalURIMap();
    }

    protected class Archive
    extends ArchiveURLConnection {
        public Archive(URI uri) {
            super(uri.toString());
        }

        protected boolean emulateArchiveScheme() {
            return false;
        }

        protected boolean useZipFile() {
            return true;
        }

        protected InputStream createInputStream(String nestedURL) throws IOException {
            return URIConverterImpl.this.createInputStream(URI.createURI((String)nestedURL));
        }

        protected OutputStream createOutputStream(String nestedURL) throws IOException {
            return URIConverterImpl.this.createOutputStream(URI.createURI((String)nestedURL));
        }
    }

    @Deprecated
    public static class PlatformResourceOutputStream
    extends PlatformResourceURIHandlerImpl.PlatformResourceOutputStream {
        @Deprecated
        public PlatformResourceOutputStream(IFile file, boolean force, boolean keepHistory, IProgressMonitor progressMonitor) {
            super(file, force, keepHistory, progressMonitor);
        }
    }

    @Deprecated
    public static interface URIMap
    extends ExtensibleURIConverterImpl.URIMap {
    }

    @Deprecated
    public static class WorkbenchHelper
    extends PlatformResourceURIHandlerImpl.WorkbenchHelper {
        @Deprecated
        public static OutputStream createPlatformResourceOutputStream(String platformResourcePath) throws IOException {
            return PlatformResourceURIHandlerImpl.WorkbenchHelper.createPlatformResourceOutputStream(platformResourcePath, null);
        }

        @Deprecated
        public static InputStream createPlatformResourceInputStream(String platformResourcePath) throws IOException {
            return PlatformResourceURIHandlerImpl.WorkbenchHelper.createPlatformResourceInputStream(platformResourcePath, null);
        }
    }
}

