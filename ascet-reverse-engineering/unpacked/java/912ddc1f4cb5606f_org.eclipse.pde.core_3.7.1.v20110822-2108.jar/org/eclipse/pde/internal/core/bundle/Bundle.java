/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.bundle;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.pde.internal.core.bundle.BundleObject;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.util.HeaderMap;

public class Bundle
extends BundleObject
implements IBundle {
    private static final long serialVersionUID = 1L;
    private Map fProperties;

    public void setHeader(String key, String value) {
        if (this.fProperties == null) {
            this.fProperties = new HeaderMap();
        }
        Object oldValue = this.fProperties.get(key);
        if (value == null || value.length() == 0) {
            this.fProperties.remove(key);
        } else {
            this.fProperties.put(key, value);
        }
        this.getModel().fireModelObjectChanged(this, key, oldValue, value);
    }

    public String getHeader(String key) {
        if (this.fProperties == null) {
            return null;
        }
        return (String)this.fProperties.get(key);
    }

    public void load(Map properties) {
        this.fProperties = new HeaderMap();
        Iterator it = properties.keySet().iterator();
        while (it.hasNext()) {
            Object o = it.next();
            this.fProperties.put(o, properties.get(o));
        }
    }

    public String getLocalization() {
        String localization = this.getHeader("Bundle-Localization");
        return localization != null ? localization : "OSGI-INF/l10n/bundle";
    }

    public void setLocalization(String localization) {
        this.setHeader("Bundle-Localization", localization);
    }

    public void renameHeader(String key, String newKey) {
        if (this.fProperties == null) {
            this.fProperties = new HeaderMap();
        }
        if (this.fProperties.get(key) != null) {
            this.fProperties.put(newKey, this.fProperties.remove(key));
        }
    }

    public IManifestHeader getManifestHeader(String key) {
        return new ManifestHeader(key, this.getHeader(key), this, System.getProperty("line.separator"));
    }

    protected Map getHeaders() {
        return this.fProperties;
    }
}

