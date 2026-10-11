/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.URIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceEntityHandlerImpl
extends URIHandlerImpl
implements XMLResource.ResourceEntityHandler {
    protected String entityName;
    protected int count = 1;
    protected Map<String, String> nameToValueMap = new LinkedHashMap<String, String>();
    protected Map<String, String> valueToNameMap = new LinkedHashMap<String, String>();

    public ResourceEntityHandlerImpl(String entityName) {
        this.entityName = entityName;
    }

    @Override
    public URI deresolve(URI uri) {
        return uri;
    }

    protected URI doDeresolve(URI uri) {
        return super.deresolve(uri);
    }

    @Override
    public void setBaseURI(URI uri) {
        boolean unchanged;
        boolean bl = uri == null ? this.baseURI == null : (unchanged = uri.equals((Object)this.baseURI));
        if (!unchanged) {
            for (Map.Entry<String, String> entry : this.nameToValueMap.entrySet()) {
                entry.setValue(this.resolve(URI.createURI((String)entry.getValue())).toString());
            }
        }
        this.doSetBaseURI(uri);
        if (!unchanged) {
            this.valueToNameMap.clear();
            for (Map.Entry<String, String> entry : this.nameToValueMap.entrySet()) {
                this.valueToNameMap.put(entry.getValue(), entry.getKey());
                entry.setValue(this.doDeresolve(URI.createURI((String)entry.getValue())).toString());
            }
        }
    }

    protected void doSetBaseURI(URI uri) {
        super.setBaseURI(uri);
    }

    @Override
    public void reset() {
        this.valueToNameMap.clear();
        this.nameToValueMap.clear();
        this.count = 1;
    }

    @Override
    public String getEntityName(String entityValue) {
        String result = this.valueToNameMap.get(entityValue);
        if (result == null && (result = this.generateEntityName(entityValue)) != null) {
            this.valueToNameMap.put(entityValue, result);
            this.nameToValueMap.put(result, entityValue);
        }
        return result;
    }

    protected String generateEntityName(String entityValue) {
        String result = String.valueOf(this.entityName) + this.count;
        while (this.nameToValueMap.containsKey(result)) {
            result = String.valueOf(this.entityName) + ++this.count;
        }
        return result;
    }

    @Override
    public void handleEntity(String entityName, String entityValue) {
        this.nameToValueMap.put(entityName, entityValue);
        this.valueToNameMap.put(entityValue, entityName);
    }

    @Override
    public Map<String, String> getNameToValueMap() {
        LinkedHashMap<String, String> result = new LinkedHashMap<String, String>();
        for (Map.Entry<String, String> entry : this.nameToValueMap.entrySet()) {
            result.put(entry.getKey(), this.doDeresolve(URI.createURI((String)entry.getValue())).toString());
        }
        return result;
    }
}

