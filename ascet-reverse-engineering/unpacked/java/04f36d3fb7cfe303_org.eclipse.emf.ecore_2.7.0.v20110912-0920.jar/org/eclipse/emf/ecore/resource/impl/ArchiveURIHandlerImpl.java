/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.archive.ArchiveURLConnection
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import org.eclipse.emf.common.archive.ArchiveURLConnection;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.resource.impl.URIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArchiveURIHandlerImpl
extends URIHandlerImpl {
    @Override
    public boolean canHandle(URI uri) {
        return "archive".equals(uri.scheme());
    }

    @Override
    public OutputStream createOutputStream(URI uri, Map<?, ?> options) throws IOException {
        return this.createArchive(uri, options).getOutputStream();
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        return this.createArchive(uri, options).getInputStream();
    }

    @Override
    public void delete(URI uri, Map<?, ?> options) throws IOException {
        this.createArchive(uri, options).delete();
    }

    @Override
    public boolean exists(URI uri, Map<?, ?> options) {
        try {
            InputStream inputStream = this.createInputStream(uri, options);
            inputStream.close();
            return true;
        }
        catch (IOException exception) {
            return false;
        }
    }

    @Override
    public Map<String, ?> getAttributes(URI uri, Map<?, ?> options) {
        return this.createArchive(uri, options).getAttributes();
    }

    @Override
    public void setAttributes(URI uri, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
        this.createArchive(uri, options).setAttributes(attributes);
    }

    protected Archive createArchive(URI uri, Map<?, ?> options) {
        return new Archive(uri, options);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class Archive
    extends ArchiveURLConnection {
        protected Map<?, ?> options;
        protected ZipEntry zipEntry;

        public Archive(URI uri, Map<?, ?> options) {
            super(uri.toString());
            this.options = options;
        }

        protected boolean emulateArchiveScheme() {
            return false;
        }

        protected boolean useZipFile() {
            return true;
        }

        protected InputStream createInputStream(String nestedURL) throws IOException {
            return ArchiveURIHandlerImpl.this.getURIConverter(this.options).createInputStream(URI.createURI((String)nestedURL), this.options);
        }

        protected OutputStream createOutputStream(String nestedURL) throws IOException {
            return ArchiveURIHandlerImpl.this.getURIConverter(this.options).createOutputStream(URI.createURI((String)nestedURL), this.options);
        }

        protected InputStream yield(ZipEntry zipEntry, InputStream inputStream) throws IOException {
            this.zipEntry = zipEntry;
            Map<Object, Object> response = ArchiveURIHandlerImpl.this.getResponse(this.options);
            if (response != null) {
                response.put("TIME_STAMP", zipEntry.getTime());
            }
            return super.yield(zipEntry, inputStream);
        }

        protected OutputStream yield(ZipEntry zipEntry, OutputStream outputStream) throws IOException {
            this.zipEntry = zipEntry;
            Map<Object, Object> response = ArchiveURIHandlerImpl.this.getResponse(this.options);
            if (response != null) {
                response.put("TIME_STAMP", zipEntry.getTime());
            }
            return super.yield(zipEntry, outputStream);
        }

        public Map<String, ?> getAttributes() {
            HashMap<String, Object> result = new HashMap<String, Object>();
            try {
                Set<String> requestedAttributes = ArchiveURIHandlerImpl.this.getRequestedAttributes(this.options);
                if (requestedAttributes == null || requestedAttributes.contains("readOnly")) {
                    HashSet<String> requestedSubAttributes = new HashSet<String>();
                    requestedSubAttributes.add("readOnly");
                    ExtensibleURIConverterImpl.OptionsMap subOptions = new ExtensibleURIConverterImpl.OptionsMap("requestedAttributes", requestedSubAttributes, this.options);
                    result.putAll(ArchiveURIHandlerImpl.this.getURIConverter(subOptions).getAttributes(URI.createURI((String)this.getNestedURL()), subOptions));
                }
                InputStream inputStream = null;
                if (requestedAttributes == null || requestedAttributes.contains("directory")) {
                    inputStream = this.getInputStream();
                    inputStream.close();
                    result.put("directory", this.zipEntry.isDirectory());
                }
                if (requestedAttributes == null || requestedAttributes.contains("length")) {
                    if (inputStream == null) {
                        inputStream = this.getInputStream();
                        inputStream.close();
                    }
                    result.put("length", this.zipEntry.getSize());
                }
                if (requestedAttributes == null || requestedAttributes.contains("timeStamp")) {
                    if (inputStream == null) {
                        inputStream = this.getInputStream();
                        inputStream.close();
                    }
                    result.put("timeStamp", this.zipEntry.getTime());
                }
            }
            catch (IOException iOException) {
                // empty catch block
            }
            return result;
        }

        public void setAttributes(Map<String, ?> attributes) throws IOException {
            Long timeStamp = (Long)attributes.get("timeStamp");
            if (timeStamp != null) {
                this.setTimeStamp(timeStamp);
            }
        }
    }
}

