/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.URIHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class URIHandlerImpl
implements URIHandler {
    @Override
    public boolean canHandle(URI uri) {
        return true;
    }

    protected URIConverter getURIConverter(Map<?, ?> options) {
        return (URIConverter)options.get("URI_CONVERTER");
    }

    protected Map<Object, Object> getResponse(Map<?, ?> options) {
        return (Map)options.get("RESPONSE");
    }

    protected Set<String> getRequestedAttributes(Map<?, ?> options) {
        return (Set)options.get("requestedAttributes");
    }

    @Override
    public OutputStream createOutputStream(URI uri, Map<?, ?> options) throws IOException {
        try {
            URL url = new URL(uri.toString());
            final URLConnection urlConnection = url.openConnection();
            urlConnection.setDoOutput(true);
            if (urlConnection instanceof HttpURLConnection) {
                final HttpURLConnection httpURLConnection = (HttpURLConnection)urlConnection;
                httpURLConnection.setRequestMethod("PUT");
                return new FilterOutputStream(urlConnection.getOutputStream()){

                    public void close() throws IOException {
                        super.close();
                        int responseCode = httpURLConnection.getResponseCode();
                        switch (responseCode) {
                            case 200: 
                            case 201: 
                            case 204: {
                                break;
                            }
                            default: {
                                throw new IOException("PUT failed with HTTP response code " + responseCode);
                            }
                        }
                    }
                };
            }
            OutputStream result = urlConnection.getOutputStream();
            final Map<Object, Object> response = this.getResponse(options);
            if (response != null) {
                result = new FilterOutputStream(result){

                    public void close() throws IOException {
                        try {
                            super.close();
                        }
                        finally {
                            response.put("TIME_STAMP", urlConnection.getLastModified());
                        }
                    }
                };
            }
            return result;
        }
        catch (RuntimeException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        try {
            URL url = new URL(uri.toString());
            URLConnection urlConnection = url.openConnection();
            InputStream result = urlConnection.getInputStream();
            Map<Object, Object> response = this.getResponse(options);
            if (response != null) {
                response.put("TIME_STAMP", urlConnection.getLastModified());
            }
            return result;
        }
        catch (RuntimeException exception) {
            throw new Resource.IOWrappedException(exception);
        }
    }

    @Override
    public void delete(URI uri, Map<?, ?> options) throws IOException {
        block6: {
            try {
                URL url = new URL(uri.toString());
                URLConnection urlConnection = url.openConnection();
                urlConnection.setDoOutput(true);
                if (urlConnection instanceof HttpURLConnection) {
                    HttpURLConnection httpURLConnection = (HttpURLConnection)urlConnection;
                    httpURLConnection.setRequestMethod("DELETE");
                    int responseCode = httpURLConnection.getResponseCode();
                    switch (responseCode) {
                        case 200: 
                        case 202: 
                        case 204: {
                            break block6;
                        }
                        default: {
                            throw new IOException("DELETE failed with HTTP response code " + responseCode);
                        }
                    }
                }
                throw new IOException("Delete is not supported for " + uri);
            }
            catch (RuntimeException exception) {
                throw new Resource.IOWrappedException(exception);
            }
        }
    }

    @Override
    public Map<String, ?> contentDescription(URI uri, Map<?, ?> options) throws IOException {
        URIConverter uriConverter = (URIConverter)options.get("URI_CONVERTER");
        InputStream inputStream = null;
        Map<String, ?> result = null;
        HashMap<Object, Object> context = new HashMap<Object, Object>();
        try {
            for (ContentHandler contentHandler : uriConverter.getContentHandlers()) {
                if (!contentHandler.canHandle(uri)) continue;
                if (inputStream == null) {
                    try {
                        inputStream = this.createInputStream(uri, options);
                    }
                    catch (IOException exception) {
                        inputStream = new ByteArrayInputStream(new byte[0]);
                    }
                    if (!inputStream.markSupported()) {
                        inputStream = new BufferedInputStream(inputStream);
                    }
                    inputStream.mark(Integer.MAX_VALUE);
                } else {
                    inputStream.reset();
                }
                Map<String, ?> contentDescription = contentHandler.contentDescription(uri, inputStream, options, context);
                switch ((ContentHandler.Validity)((Object)contentDescription.get("org.eclipse.emf.ecore:validity"))) {
                    case VALID: {
                        Map<String, ?> map = contentDescription;
                        return map;
                    }
                    case INDETERMINATE: {
                        if (result != null) break;
                        result = contentDescription;
                        break;
                    }
                }
            }
        }
        finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
        return result == null ? ContentHandler.INVALID_CONTENT_DESCRIPTION : result;
    }

    @Override
    public boolean exists(URI uri, Map<?, ?> options) {
        try {
            URL url = new URL(uri.toString());
            URLConnection urlConnection = url.openConnection();
            if (urlConnection instanceof HttpURLConnection) {
                HttpURLConnection httpURLConnection = (HttpURLConnection)urlConnection;
                httpURLConnection.setRequestMethod("HEAD");
                int responseCode = httpURLConnection.getResponseCode();
                return responseCode == 200;
            }
            InputStream inputStream = urlConnection.getInputStream();
            inputStream.close();
            return true;
        }
        catch (Throwable exception) {
            return false;
        }
    }

    @Override
    public Map<String, ?> getAttributes(URI uri, Map<?, ?> options) {
        HashMap<String, Comparable<Boolean>> result = new HashMap<String, Comparable<Boolean>>();
        Set<String> requestedAttributes = this.getRequestedAttributes(options);
        try {
            HttpURLConnection httpURLConnection;
            URL url = new URL(uri.toString());
            URLConnection urlConnection = null;
            if (requestedAttributes == null || requestedAttributes.contains("readOnly")) {
                urlConnection = url.openConnection();
                if (urlConnection instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection)urlConnection;
                    httpURLConnection.setRequestMethod("OPTIONS");
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200) {
                        String allow = httpURLConnection.getHeaderField("Allow");
                        result.put("readOnly", Boolean.valueOf(allow == null || !allow.contains("PUT")));
                    }
                    urlConnection = null;
                } else {
                    result.put("readOnly", Boolean.valueOf(true));
                }
            }
            if (requestedAttributes == null || requestedAttributes.contains("timeStamp")) {
                if (urlConnection == null && (urlConnection = url.openConnection()) instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection)urlConnection;
                    httpURLConnection.setRequestMethod("HEAD");
                    httpURLConnection.getResponseCode();
                }
                if (urlConnection.getHeaderField("last-modified") != null) {
                    result.put("timeStamp", Long.valueOf(urlConnection.getLastModified()));
                }
            }
            if (requestedAttributes == null || requestedAttributes.contains("length")) {
                if (urlConnection == null && (urlConnection = url.openConnection()) instanceof HttpURLConnection) {
                    httpURLConnection = (HttpURLConnection)urlConnection;
                    httpURLConnection.setRequestMethod("HEAD");
                    httpURLConnection.getResponseCode();
                }
                if (urlConnection.getHeaderField("content-length") != null) {
                    result.put("length", Integer.valueOf(urlConnection.getContentLength()));
                }
            }
        }
        catch (IOException iOException) {
            // empty catch block
        }
        return result;
    }

    @Override
    public void setAttributes(URI uri, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
    }
}

