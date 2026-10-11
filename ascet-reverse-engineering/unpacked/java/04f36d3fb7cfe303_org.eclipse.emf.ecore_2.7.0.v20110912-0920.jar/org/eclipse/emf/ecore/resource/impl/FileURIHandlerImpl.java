/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.URIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FileURIHandlerImpl
extends URIHandlerImpl {
    @Override
    public boolean canHandle(URI uri) {
        return uri.isFile();
    }

    @Override
    public OutputStream createOutputStream(URI uri, Map<?, ?> options) throws IOException {
        String filePath = uri.toFileString();
        final File file = new File(filePath);
        String parent = file.getParent();
        if (parent != null) {
            new File(parent).mkdirs();
        }
        final Map<Object, Object> response = this.getResponse(options);
        FileOutputStream outputStream = new FileOutputStream(file){

            public void close() throws IOException {
                try {
                    super.close();
                }
                finally {
                    if (response != null) {
                        response.put("TIME_STAMP", file.lastModified());
                    }
                }
            }
        };
        return outputStream;
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        String filePath = uri.toFileString();
        File file = new File(filePath);
        FileInputStream inputStream = new FileInputStream(file);
        Map<Object, Object> response = this.getResponse(options);
        if (response != null) {
            response.put("TIME_STAMP", file.lastModified());
        }
        return inputStream;
    }

    @Override
    public void delete(URI uri, Map<?, ?> options) throws IOException {
        String filePath = uri.toFileString();
        File file = new File(filePath);
        file.delete();
    }

    @Override
    public boolean exists(URI uri, Map<?, ?> options) {
        String filePath = uri.toFileString();
        File file = new File(filePath);
        return file.exists();
    }

    @Override
    public Map<String, ?> getAttributes(URI uri, Map<?, ?> options) {
        HashMap<String, Comparable<Long>> result = new HashMap<String, Comparable<Long>>();
        String filePath = uri.toFileString();
        File file = new File(filePath);
        if (file.exists()) {
            Set<String> requestedAttributes = this.getRequestedAttributes(options);
            if (requestedAttributes == null || requestedAttributes.contains("timeStamp")) {
                result.put("timeStamp", Long.valueOf(file.lastModified()));
            }
            if (requestedAttributes == null || requestedAttributes.contains("length")) {
                result.put("length", Long.valueOf(file.length()));
            }
            if (requestedAttributes == null || requestedAttributes.contains("readOnly")) {
                result.put("readOnly", Boolean.valueOf(!file.canWrite()));
            }
            if (requestedAttributes == null || requestedAttributes.contains("hidden")) {
                result.put("hidden", Boolean.valueOf(file.isHidden()));
            }
            if (requestedAttributes == null || requestedAttributes.contains("directory")) {
                result.put("directory", Boolean.valueOf(file.isDirectory()));
            }
        }
        return result;
    }

    @Override
    public void setAttributes(URI uri, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
        String filePath = uri.toFileString();
        File file = new File(filePath);
        if (file.exists()) {
            Long timeStamp = (Long)attributes.get("timeStamp");
            if (timeStamp != null && !file.setLastModified(timeStamp)) {
                throw new IOException("Could not set the timestamp for the file '" + file + "'");
            }
            Boolean isReadOnly = (Boolean)attributes.get("readOnly");
            if (Boolean.TRUE.equals(isReadOnly) && !file.setReadOnly()) {
                throw new IOException("Could not set the file '" + file + "' to be read only");
            }
        } else {
            throw new FileNotFoundException("The file '" + file + "' does not exist");
        }
    }
}

