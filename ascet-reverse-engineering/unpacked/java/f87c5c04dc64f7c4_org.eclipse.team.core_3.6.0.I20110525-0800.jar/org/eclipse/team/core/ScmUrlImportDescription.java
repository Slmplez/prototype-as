/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.core;

import java.net.URI;
import java.util.HashMap;

public class ScmUrlImportDescription {
    private String url;
    private String project;
    private HashMap properties;

    public ScmUrlImportDescription(String url, String project) {
        this.url = url;
        this.project = project;
    }

    public String getProject() {
        return this.project;
    }

    public String getUrl() {
        return this.url;
    }

    public URI getUri() {
        return URI.create(this.url.replaceAll("\"", ""));
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public synchronized void setProperty(String key, Object value) {
        if (this.properties == null) {
            this.properties = new HashMap();
        }
        if (value == null) {
            this.properties.remove(key);
        } else {
            this.properties.put(key, value);
        }
    }

    public synchronized Object getProperty(String key) {
        if (this.properties == null) {
            return null;
        }
        return this.properties.get(key);
    }
}

