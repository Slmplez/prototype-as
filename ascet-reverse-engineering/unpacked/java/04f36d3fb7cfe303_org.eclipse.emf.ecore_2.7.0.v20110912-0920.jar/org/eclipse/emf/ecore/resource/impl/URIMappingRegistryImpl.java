/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap
 *  org.eclipse.emf.common.util.BasicEMap$DelegatingMap
 *  org.eclipse.emf.common.util.BasicEMap$Entry
 *  org.eclipse.emf.common.util.BasicEMap$EntryImpl
 *  org.eclipse.emf.common.util.BasicEMap$View
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.impl.URIConverterImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class URIMappingRegistryImpl
extends BasicEMap<URI, URI> {
    private static final long serialVersionUID = 1L;
    public static final URIMappingRegistryImpl INSTANCE = new URIMappingRegistryImpl();
    protected BasicEList<List<BasicEMap.Entry<URI, URI>>> prefixMaps = new BasicEList();

    protected BasicEMap.Entry<URI, URI> newEntry(int hash, URI key, URI value) {
        this.validateKey(key);
        this.validateValue(value);
        return new MappingEntryImpl(hash, key, value);
    }

    public URI getURI(URI uri) {
        URI result = (URI)this.get(uri);
        if (result == null) {
            if (this.prefixMaps != null) {
                int i = Math.min(this.prefixMaps.size() - 1, uri.segmentCount());
                while (i >= 0) {
                    List prefixes = (List)this.prefixMaps.get(i);
                    int j = prefixes.size() - 1;
                    while (j >= 0) {
                        BasicEMap.Entry entry = (BasicEMap.Entry)prefixes.get(j);
                        result = uri.replacePrefix((URI)entry.getKey(), (URI)entry.getValue());
                        if (result != null) {
                            return result;
                        }
                        --j;
                    }
                    --i;
                }
            }
            result = this.delegatedGetURI(uri);
        }
        return result;
    }

    protected URI delegatedGetURI(URI uri) {
        return uri;
    }

    public Map<URI, URI> map() {
        if (this.view == null) {
            this.view = new BasicEMap.View();
        }
        if (this.view.map == null) {
            this.view.map = new URIMapImpl();
        }
        return this.view.map;
    }

    protected void validateKey(URI key) {
    }

    protected void validateValue(URI value) {
    }

    protected void didAdd(BasicEMap.Entry<URI, URI> entry) {
        if (((MappingEntryImpl)entry).isPrefixMapEntry) {
            int length = ((URI)entry.getKey()).segmentCount();
            if (this.prefixMaps == null) {
                this.prefixMaps = new BasicEList();
            }
            int i = this.prefixMaps.size() - 1;
            while (i <= length) {
                this.prefixMaps.add((Object)new BasicEList());
                ++i;
            }
            ((List)this.prefixMaps.get(length)).add(entry);
        }
    }

    protected void didModify(BasicEMap.Entry<URI, URI> entry, URI oldValue) {
        this.didRemove(entry);
        ((MappingEntryImpl)entry).determineEntryType();
        this.didAdd(entry);
    }

    protected void didRemove(BasicEMap.Entry<URI, URI> entry) {
        if (((MappingEntryImpl)entry).isPrefixMapEntry) {
            int length = ((URI)entry.getKey()).segmentCount();
            ((List)this.prefixMaps.get(length)).remove(entry);
        }
    }

    protected void didClear(BasicEList<BasicEMap.Entry<URI, URI>>[] oldEntryData) {
        this.prefixMaps = null;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class MappingEntryImpl
    extends BasicEMap.EntryImpl {
        public boolean isPrefixMapEntry;

        public MappingEntryImpl(int hash, URI key, URI value) {
            super((BasicEMap)URIMappingRegistryImpl.this, hash, (Object)key, (Object)value);
            this.determineEntryType();
        }

        public void determineEntryType() {
            this.isPrefixMapEntry = ((URI)this.key).isPrefix() && ((URI)this.value).isPrefix();
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class URIMapImpl
    extends BasicEMap.DelegatingMap
    implements URIConverterImpl.URIMap {
        public URIMapImpl() {
            super((BasicEMap)URIMappingRegistryImpl.this);
        }

        @Override
        public URI getURI(URI uri) {
            return URIMappingRegistryImpl.this.getURI(uri);
        }
    }
}

