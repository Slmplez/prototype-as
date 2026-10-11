/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.actions.IVersionAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VersionAdvice
extends AbstractAdvice
implements IVersionAdvice {
    Map<String, Map<String, Version>> versions = new HashMap<String, Map<String, Version>>(11);

    public void load(String namespace, String location) {
        this.load(namespace, location, null);
    }

    public void load(String namespace, String location, String idSuffix) {
        Map properties;
        File file = new File(location);
        if (namespace == null) {
            namespace = "null";
        }
        InputStream stream = null;
        try {
            try {
                stream = new BufferedInputStream(new FileInputStream(file));
                properties = CollectionUtils.loadProperties((InputStream)stream);
            }
            catch (IOException iOException) {
                if (stream != null) {
                    try {
                        stream.close();
                    }
                    catch (IOException iOException2) {}
                }
                return;
            }
        }
        catch (Throwable throwable) {
            if (stream != null) {
                try {
                    stream.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (stream != null) {
            try {
                stream.close();
            }
            catch (IOException iOException) {}
        }
        for (Map.Entry entry : properties.entrySet()) {
            String key = (String)entry.getKey();
            if (idSuffix != null) {
                key = new StringBuffer(String.valueOf(key)).append(idSuffix).toString();
            }
            this.setVersion(namespace, key, Version.parseVersion((String)((String)entry.getValue())));
        }
    }

    @Override
    public Version getVersion(String namespace, String id) {
        Version result;
        Map<String, Version> values = this.versions.get(namespace);
        if (values != null && (result = values.get(id)) != null) {
            return result;
        }
        values = this.versions.get("null");
        if (values == null) {
            return null;
        }
        return values.get(id);
    }

    public void setVersion(String namespace, String id, Version version) {
        Map<String, Version> values = this.versions.get(namespace);
        if (values == null) {
            if (version == null) {
                return;
            }
            values = new HashMap<String, Version>();
            this.versions.put(namespace, values);
        }
        if (version == null) {
            values.remove(id);
        } else {
            values.put(id, version);
        }
    }

    public IPublisherAdvice merge(IPublisherAdvice advice) {
        if (!(advice instanceof VersionAdvice)) {
            return this;
        }
        VersionAdvice source = (VersionAdvice)advice;
        for (String namespace : source.versions.keySet()) {
            Map<String, Version> myValues = this.versions.get(namespace);
            Map<String, Version> sourceValues = source.versions.get(namespace);
            if (myValues == null) {
                this.versions.put(namespace, sourceValues);
                continue;
            }
            if (sourceValues == null) continue;
            this.versions.put(namespace, this.merge(myValues, sourceValues));
        }
        return this;
    }

    private Map<String, Version> merge(Map<String, Version> myValues, Map<String, Version> sourceValues) {
        HashMap<String, Version> result = new HashMap<String, Version>(myValues);
        for (String key : sourceValues.keySet()) {
            if (result.get(key) != null) continue;
            result.put(key, sourceValues.get(key));
        }
        return result;
    }
}

