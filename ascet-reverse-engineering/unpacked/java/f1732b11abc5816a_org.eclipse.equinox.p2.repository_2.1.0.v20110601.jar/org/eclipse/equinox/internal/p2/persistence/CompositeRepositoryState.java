/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.persistence;

import java.net.URI;
import java.util.Map;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeRepositoryState {
    private String name;
    private String type;
    private String version;
    private String provider;
    private String description;
    private URI location;
    private Map<String, String> properties;
    private URI[] children;

    public void setName(String value) {
        this.name = value;
    }

    public String getName() {
        return this.name;
    }

    public void setType(String value) {
        this.type = value;
    }

    public String getType() {
        return this.type;
    }

    public void setVersion(String value) {
        this.version = value;
    }

    public String getVersion() {
        return this.version;
    }

    public void setProvider(String value) {
        this.provider = value;
    }

    public String getProvider() {
        return this.provider;
    }

    public void setDescription(String value) {
        this.description = value;
    }

    public String getDescription() {
        return this.description;
    }

    public void setLocation(URI value) {
        this.location = value;
    }

    public URI getLocation() {
        return this.location;
    }

    public void setProperties(Map<String, String> value) {
        this.properties = value;
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public void setChildren(URI[] value) {
        this.children = value;
    }

    public URI[] getChildren() {
        return this.children;
    }
}

