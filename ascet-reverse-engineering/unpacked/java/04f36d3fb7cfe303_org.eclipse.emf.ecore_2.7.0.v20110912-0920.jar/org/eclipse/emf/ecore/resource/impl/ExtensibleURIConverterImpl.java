/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.URIHandler;
import org.eclipse.emf.ecore.resource.impl.URIMappingRegistryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtensibleURIConverterImpl
implements URIConverter {
    protected URIHandlerList uriHandlers;
    protected ContentHandlerList contentHandlers;
    protected URIMap uriMap;
    private static IWorkspaceRoot workspaceRoot = EcorePlugin.getWorkspaceRoot();

    public ExtensibleURIConverterImpl() {
        this(URIHandler.DEFAULT_HANDLERS, ContentHandler.Registry.INSTANCE.contentHandlers());
    }

    public ExtensibleURIConverterImpl(Collection<URIHandler> uriHandlers, Collection<ContentHandler> contentHandlers) {
        this.getURIHandlers().addAll(uriHandlers);
        this.getContentHandlers().addAll(contentHandlers);
    }

    @Override
    public EList<URIHandler> getURIHandlers() {
        if (this.uriHandlers == null) {
            this.uriHandlers = new URIHandlerList();
        }
        return this.uriHandlers;
    }

    @Override
    public URIHandler getURIHandler(URI uri) {
        int size = this.uriHandlers.size();
        if (size > 0) {
            URIHandler[] data = this.uriHandlers.data();
            int i = 0;
            while (i < size) {
                URIHandler uriHandler = data[i];
                if (uriHandler.canHandle(uri)) {
                    return uriHandler;
                }
                ++i;
            }
        }
        throw new RuntimeException("There is no URIHandler to handle " + uri);
    }

    @Override
    public EList<ContentHandler> getContentHandlers() {
        if (this.contentHandlers == null) {
            this.contentHandlers = new ContentHandlerList();
        }
        return this.contentHandlers;
    }

    @Override
    public OutputStream createOutputStream(URI uri) throws IOException {
        return this.createOutputStream(uri, null);
    }

    @Override
    public OutputStream createOutputStream(URI uri, Map<?, ?> options) throws IOException {
        URI normalizedURI = this.normalize(uri);
        return this.getURIHandler(normalizedURI).createOutputStream(normalizedURI, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public InputStream createInputStream(URI uri) throws IOException {
        return this.createInputStream(uri, null);
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        URI normalizedURI = this.normalize(uri);
        return this.getURIHandler(normalizedURI).createInputStream(normalizedURI, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public void delete(URI uri, Map<?, ?> options) throws IOException {
        URI normalizedURI = this.normalize(uri);
        this.getURIHandler(normalizedURI).delete(normalizedURI, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public Map<String, ?> contentDescription(URI uri, Map<?, ?> options) throws IOException {
        URI normalizedURI = this.normalize(uri);
        return this.getURIHandler(normalizedURI).contentDescription(normalizedURI, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public boolean exists(URI uri, Map<?, ?> options) {
        URI normalizedURI = this.normalize(uri);
        return this.getURIHandler(normalizedURI).exists(normalizedURI, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public Map<String, ?> getAttributes(URI uri, Map<?, ?> options) {
        URI normalizedURI = this.normalize(uri);
        return this.getURIHandler(normalizedURI).getAttributes(normalizedURI, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public void setAttributes(URI uri, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
        URI normalizedURI = this.normalize(uri);
        this.getURIHandler(normalizedURI).setAttributes(normalizedURI, attributes, new OptionsMap("URI_CONVERTER", this, options));
    }

    @Override
    public URI normalize(URI uri) {
        String fragment = uri.fragment();
        URI result = fragment == null ? this.getInternalURIMap().getURI(uri) : this.getInternalURIMap().getURI(uri.trimFragment()).appendFragment(fragment);
        String scheme = result.scheme();
        if (scheme == null) {
            if (workspaceRoot != null) {
                if (result.hasAbsolutePath()) {
                    result = URI.createPlatformResourceURI((String)result.trimFragment().toString(), (boolean)false);
                    if (fragment != null) {
                        result = result.appendFragment(fragment);
                    }
                }
            } else if (result.hasAbsolutePath()) {
                result = URI.createURI((String)("file:" + result));
            } else {
                result = URI.createFileURI((String)new File(result.trimFragment().toString()).getAbsolutePath());
                if (fragment != null) {
                    result = result.appendFragment(fragment);
                }
            }
        }
        if (result.equals((Object)uri)) {
            return uri;
        }
        return this.normalize(result);
    }

    @Override
    public Map<URI, URI> getURIMap() {
        return this.getInternalURIMap();
    }

    protected URIMap getInternalURIMap() {
        if (this.uriMap == null) {
            URIMappingRegistryImpl mappingRegistryImpl = new URIMappingRegistryImpl(){
                private static final long serialVersionUID = 1L;

                protected URI delegatedGetURI(URI uri) {
                    return URIMappingRegistryImpl.INSTANCE.getURI(uri);
                }
            };
            this.uriMap = (URIMap)mappingRegistryImpl.map();
        }
        return this.uriMap;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class ContentHandlerList
    extends BasicEList<ContentHandler> {
        private static final long serialVersionUID = 1L;

        protected boolean canContainNull() {
            return false;
        }

        protected Object[] newData(int capacity) {
            return new ContentHandler[capacity];
        }

        public ContentHandler[] data() {
            return (ContentHandler[])this.data;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class OptionsMap
    implements Map<Object, Object> {
        private static final Object NO_KEY = new Object();
        protected Object key;
        protected Object value;
        protected Map<?, ?> options;
        protected Map<?, ?> defaultOptions;
        protected Map<Object, Object> mergedMap;

        public OptionsMap(Object key, Object value, Map<?, ?> options) {
            this(key, value, options, null);
        }

        public OptionsMap(Map<?, ?> options, Map<?, ?> defaultOptions) {
            this(NO_KEY, null, options, defaultOptions);
        }

        public OptionsMap(Object key, Object value, Map<?, ?> options, Map<?, ?> defaultOptions) {
            this.options = options;
            this.defaultOptions = defaultOptions;
            this.key = key;
            this.value = value;
        }

        protected Map<Object, Object> mergedMap() {
            if (this.mergedMap == null) {
                this.mergedMap = new LinkedHashMap<Object, Object>((this.options == null ? 0 : this.options.size()) + (this.defaultOptions == null ? 0 : this.defaultOptions.size()) + (this.key == NO_KEY ? 0 : 1));
                if (this.defaultOptions != null) {
                    this.mergedMap.putAll(this.defaultOptions);
                }
                if (this.options != null) {
                    this.mergedMap.putAll(this.options);
                }
                if (this.key != NO_KEY) {
                    this.mergedMap.put(this.key, this.value);
                }
            }
            return this.mergedMap;
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public boolean containsKey(Object key) {
            return this.mergedMap != null ? this.mergedMap.containsKey(key) : this.key == key || this.key.equals(key) || this.options != null && this.options.containsKey(key) || this.defaultOptions != null && this.defaultOptions.containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            return this.mergedMap().containsValue(value);
        }

        @Override
        public Set<Map.Entry<Object, Object>> entrySet() {
            return this.mergedMap().entrySet();
        }

        @Override
        public Object get(Object key) {
            return this.mergedMap != null ? this.mergedMap.get(key) : (this.key == key || this.key.equals(key) ? this.value : (this.options != null && this.options.containsKey(key) ? this.options.get(key) : (this.defaultOptions == null ? null : this.defaultOptions.get(key))));
        }

        @Override
        public boolean isEmpty() {
            return this.mergedMap != null ? this.mergedMap.isEmpty() : this.key != NO_KEY || this.options != null && !this.options.isEmpty() || this.defaultOptions != null && !this.defaultOptions.isEmpty();
        }

        @Override
        public Set<Object> keySet() {
            return this.mergedMap().keySet();
        }

        @Override
        public Object put(Object key, Object value) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void putAll(Map<? extends Object, ? extends Object> t) {
            throw new UnsupportedOperationException();
        }

        @Override
        public Object remove(Object key) {
            throw new UnsupportedOperationException();
        }

        @Override
        public int size() {
            return this.mergedMap().size();
        }

        @Override
        public Collection<Object> values() {
            return this.mergedMap().values();
        }

        @Override
        public int hashCode() {
            return this.mergedMap().hashCode();
        }

        @Override
        public boolean equals(Object o) {
            return this.mergedMap().equals(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class URIHandlerList
    extends BasicEList<URIHandler> {
        private static final long serialVersionUID = 1L;

        protected boolean canContainNull() {
            return false;
        }

        protected Object[] newData(int capacity) {
            return new URIHandler[capacity];
        }

        public URIHandler[] data() {
            return (URIHandler[])this.data;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface URIMap
    extends Map<URI, URI> {
        public URI getURI(URI var1);
    }
}

