/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.impl.URIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EFSURIHandlerImpl
extends URIHandlerImpl {
    private static Map<String, Boolean> efsScheme;
    private static final Method EFS_GET_FILE_SYSTEM_METHOD;
    private static final Method EFS_GET_STORE_METHOD;
    private static final Method FILE_STORE_OPEN_INPUT_STREAM_METHOD;
    private static final Method FILE_STORE_OPEN_OUTPUT_STREAM_METHOD;
    private static final Method FILE_STORE_DELETE_METHOD;
    private static final Method FILE_STORE_FETCH_INFO_METHOD;
    private static final Method FILE_STORE_PUT_INFO_METHOD;
    private static final Method FILE_INFO_EXISTS_METHOD;
    private static final Method FILE_INFO_GET_LENGTH_METHOD;
    private static final Method FILE_INFO_IS_DIRECOTRY_METHOD;
    private static final Method FILE_INFO_GET_ATTRIBUTE_METHOD;
    private static final Method FILE_INFO_SET_ATTRIBUTE_METHOD;
    private static final Method FILE_INFO_GET_LAST_MODIFIED;
    private static final Method FILE_INFO_SET_LAST_MODIFIED;
    private static final Integer ATTRIBUTE_READ_ONLY;
    private static final Integer ATTRIBUTE_EXECUTABLE;
    private static final Integer ATTRIBUTE_ARCHIVE;
    private static final Integer ATTRIBUTE_HIDDEN;
    private static final int SET_ATTRIBUTES = 1024;
    private static final int SET_LAST_MODIFIED = 2048;

    static {
        Method efsGetStoreMethod = null;
        Method efsGetFileSystemMethod = null;
        Method fileStoreOpenInputStreamMethod = null;
        Method fileStoreOpenOutputStreamMethod = null;
        Method fileStoreDeleteMethod = null;
        Method fileStoreFetchInfoMethod = null;
        Method fileStorePutInfoMethod = null;
        Method fileInfoExistsMethod = null;
        Method fileInfoIsDirectoryMethod = null;
        Method fileInfoGetLengthMethod = null;
        Method fileInfoGetAttributeMethod = null;
        Method fileInfoSetAttributeMethod = null;
        Method fileInfoGetLastModifiedMethod = null;
        Method fileInfoSetLastModifiedMethod = null;
        try {
            Class efsClass = CommonPlugin.loadClass((String)"org.eclipse.core.filesystem", (String)"org.eclipse.core.filesystem.EFS");
            efsGetStoreMethod = efsClass.getMethod("getStore", java.net.URI.class);
            efsGetFileSystemMethod = efsClass.getMethod("getFileSystem", String.class);
            Class<?> fileStoreClass = efsGetStoreMethod.getReturnType();
            fileStoreOpenInputStreamMethod = fileStoreClass.getMethod("openInputStream", Integer.TYPE, IProgressMonitor.class);
            fileStoreOpenOutputStreamMethod = fileStoreClass.getMethod("openOutputStream", Integer.TYPE, IProgressMonitor.class);
            fileStoreDeleteMethod = fileStoreClass.getMethod("delete", Integer.TYPE, IProgressMonitor.class);
            fileStoreFetchInfoMethod = fileStoreClass.getMethod("fetchInfo", new Class[0]);
            Class<?> fileInfoClass = fileStoreFetchInfoMethod.getReturnType();
            fileStorePutInfoMethod = fileStoreClass.getMethod("putInfo", fileInfoClass, Integer.TYPE, IProgressMonitor.class);
            fileInfoExistsMethod = fileInfoClass.getMethod("exists", new Class[0]);
            fileInfoIsDirectoryMethod = fileInfoClass.getMethod("isDirectory", new Class[0]);
            fileInfoGetLengthMethod = fileInfoClass.getMethod("getLength", new Class[0]);
            fileInfoGetAttributeMethod = fileInfoClass.getMethod("getAttribute", Integer.TYPE);
            fileInfoSetAttributeMethod = fileInfoClass.getMethod("setAttribute", Integer.TYPE, Boolean.TYPE);
            fileInfoGetLastModifiedMethod = fileInfoClass.getMethod("getLastModified", new Class[0]);
            fileInfoSetLastModifiedMethod = fileInfoClass.getMethod("setLastModified", Long.TYPE);
        }
        catch (Throwable throwable) {
            // empty catch block
        }
        EFS_GET_STORE_METHOD = efsGetStoreMethod;
        EFS_GET_FILE_SYSTEM_METHOD = efsGetFileSystemMethod;
        FILE_STORE_OPEN_INPUT_STREAM_METHOD = fileStoreOpenInputStreamMethod;
        FILE_STORE_OPEN_OUTPUT_STREAM_METHOD = fileStoreOpenOutputStreamMethod;
        FILE_STORE_DELETE_METHOD = fileStoreDeleteMethod;
        FILE_STORE_FETCH_INFO_METHOD = fileStoreFetchInfoMethod;
        FILE_STORE_PUT_INFO_METHOD = fileStorePutInfoMethod;
        FILE_INFO_EXISTS_METHOD = fileInfoExistsMethod;
        FILE_INFO_IS_DIRECOTRY_METHOD = fileInfoIsDirectoryMethod;
        FILE_INFO_GET_ATTRIBUTE_METHOD = fileInfoGetAttributeMethod;
        FILE_INFO_SET_ATTRIBUTE_METHOD = fileInfoSetAttributeMethod;
        FILE_INFO_GET_LENGTH_METHOD = fileInfoGetLengthMethod;
        FILE_INFO_GET_LAST_MODIFIED = fileInfoGetLastModifiedMethod;
        FILE_INFO_SET_LAST_MODIFIED = fileInfoSetLastModifiedMethod;
        ATTRIBUTE_READ_ONLY = 2;
        ATTRIBUTE_EXECUTABLE = 4;
        ATTRIBUTE_ARCHIVE = 8;
        ATTRIBUTE_HIDDEN = 16;
    }

    @Override
    public boolean canHandle(URI uri) {
        Boolean result;
        String scheme = uri.scheme();
        if (scheme == null || EFS_GET_FILE_SYSTEM_METHOD == null) {
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

    protected Object getStore(URI uri, Map<?, ?> options) throws IOException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, URISyntaxException {
        Object store;
        if (EFS_GET_STORE_METHOD != null && (store = EFS_GET_STORE_METHOD.invoke(null, new java.net.URI(uri.toString()))) != null) {
            return store;
        }
        throw new IOException("EFS unavailable");
    }

    protected Object getInfo(URI uri, Object store, Map<?, ?> options) throws IOException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, URISyntaxException {
        return FILE_STORE_FETCH_INFO_METHOD.invoke(store, new Object[0]);
    }

    protected Object getInfo(URI uri, Map<?, ?> options) throws IOException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, URISyntaxException {
        return this.getInfo(uri, this.getStore(uri, options), options);
    }

    protected void setInfo(URI uri, Object store, Object info, int set, Map<?, ?> options) throws IOException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, URISyntaxException {
        FILE_STORE_PUT_INFO_METHOD.invoke(store, info, set, null);
    }

    @Override
    public OutputStream createOutputStream(final URI uri, final Map<?, ?> options) throws IOException {
        try {
            OutputStream result = (OutputStream)FILE_STORE_OPEN_OUTPUT_STREAM_METHOD.invoke(this.getStore(uri, options), 0, null);
            final Map<Object, Object> response = this.getResponse(options);
            if (response != null) {
                result = new BufferedOutputStream(result){

                    public void close() throws IOException {
                        try {
                            super.close();
                        }
                        finally {
                            response.put("TIME_STAMP", EFSURIHandlerImpl.this.getAttributes(uri, options).get("timeStamp"));
                        }
                    }
                };
            }
            return result;
        }
        catch (IllegalArgumentException exception) {
            throw new Resource.IOWrappedException(exception);
        }
        catch (IllegalAccessException exception) {
            throw new Resource.IOWrappedException(exception);
        }
        catch (InvocationTargetException exception) {
            throw new Resource.IOWrappedException(exception.getCause());
        }
        catch (URISyntaxException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        try {
            InputStream result = (InputStream)FILE_STORE_OPEN_INPUT_STREAM_METHOD.invoke(this.getStore(uri, options), 0, null);
            Map<Object, Object> response = this.getResponse(options);
            if (response != null) {
                response.put("TIME_STAMP", this.getAttributes(uri, options).get("timeStamp"));
            }
            return result;
        }
        catch (IllegalArgumentException exception) {
            throw new Resource.IOWrappedException(exception);
        }
        catch (IllegalAccessException exception) {
            throw new Resource.IOWrappedException(exception);
        }
        catch (InvocationTargetException exception) {
            throw new Resource.IOWrappedException(exception.getCause());
        }
        catch (URISyntaxException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    public void delete(URI uri, Map<?, ?> options) throws IOException {
        try {
            FILE_STORE_DELETE_METHOD.invoke(this.getStore(uri, options), 0, null);
        }
        catch (IllegalArgumentException exception) {
            throw new Resource.IOWrappedException(exception);
        }
        catch (IllegalAccessException exception) {
            throw new Resource.IOWrappedException(exception);
        }
        catch (InvocationTargetException exception) {
            throw new Resource.IOWrappedException(exception.getCause());
        }
        catch (URISyntaxException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    public boolean exists(URI uri, Map<?, ?> options) {
        try {
            return Boolean.TRUE.equals(FILE_INFO_EXISTS_METHOD.invoke(this.getInfo(uri, options), new Object[0]));
        }
        catch (Exception exception) {
            return false;
        }
    }

    @Override
    public Map<String, ?> getAttributes(URI uri, Map<?, ?> options) {
        Object info;
        HashMap<String, Object> result = new HashMap<String, Object>();
        Set<String> requestedAttributes = this.getRequestedAttributes(options);
        try {
            info = this.getInfo(uri, options);
        }
        catch (Exception exception) {
            return result;
        }
        if (requestedAttributes == null || requestedAttributes.contains("timeStamp")) {
            try {
                Object timeStamp = FILE_INFO_GET_LAST_MODIFIED.invoke(info, new Object[0]);
                result.put("timeStamp", timeStamp);
            }
            catch (Exception timeStamp) {
                // empty catch block
            }
        }
        if (requestedAttributes == null || requestedAttributes.contains("readOnly")) {
            try {
                Object isReadOnly = FILE_INFO_GET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_READ_ONLY);
                result.put("readOnly", isReadOnly);
            }
            catch (Exception isReadOnly) {
                // empty catch block
            }
        }
        if (requestedAttributes == null || requestedAttributes.contains("archive")) {
            try {
                Object isArchive = FILE_INFO_GET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_ARCHIVE);
                result.put("archive", isArchive);
            }
            catch (Exception isArchive) {
                // empty catch block
            }
        }
        if (requestedAttributes == null || requestedAttributes.contains("executable")) {
            try {
                Object isExecutable = FILE_INFO_GET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_EXECUTABLE);
                result.put("executable", isExecutable);
            }
            catch (Exception isExecutable) {
                // empty catch block
            }
        }
        if (requestedAttributes == null || requestedAttributes.contains("hidden")) {
            try {
                Object isHidden = FILE_INFO_GET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_HIDDEN);
                result.put("hidden", isHidden);
            }
            catch (Exception isHidden) {
                // empty catch block
            }
        }
        if (requestedAttributes == null || requestedAttributes.contains("directory")) {
            try {
                Object isDirectory = FILE_INFO_IS_DIRECOTRY_METHOD.invoke(info, new Object[0]);
                result.put("directory", isDirectory);
            }
            catch (Exception isDirectory) {
                // empty catch block
            }
        }
        if (requestedAttributes == null || requestedAttributes.contains("length")) {
            try {
                Object length = FILE_INFO_GET_LENGTH_METHOD.invoke(info, new Object[0]);
                result.put("length", length);
            }
            catch (Exception exception) {
                // empty catch block
            }
        }
        return result;
    }

    @Override
    public void setAttributes(URI uri, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
        Object isHidden;
        Object isExecutable;
        Object isArchive;
        Object isReadOnly;
        Object info;
        Object store;
        int set = 0;
        try {
            store = this.getStore(uri, options);
            info = this.getInfo(uri, store, options);
        }
        catch (Exception exception) {
            throw new Resource.IOWrappedException(exception);
        }
        Object timeStamp = attributes.get("timeStamp");
        if (timeStamp != null) {
            try {
                FILE_INFO_SET_LAST_MODIFIED.invoke(info, timeStamp);
                set = 2048;
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        if ((isReadOnly = attributes.get("readOnly")) != null) {
            try {
                FILE_INFO_SET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_READ_ONLY, isReadOnly);
                set |= 0x400;
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        if ((isArchive = attributes.get("archive")) != null) {
            try {
                FILE_INFO_SET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_ARCHIVE, isArchive);
                set |= 0x400;
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        if ((isExecutable = attributes.get("archive")) != null) {
            try {
                FILE_INFO_SET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_EXECUTABLE, isExecutable);
                set |= 0x400;
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        if ((isHidden = attributes.get("hidden")) != null) {
            try {
                FILE_INFO_SET_ATTRIBUTE_METHOD.invoke(info, ATTRIBUTE_HIDDEN, isHidden);
                set |= 0x400;
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
        if (set != 0) {
            try {
                this.setInfo(uri, store, info, set, options);
            }
            catch (Exception exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
    }
}

