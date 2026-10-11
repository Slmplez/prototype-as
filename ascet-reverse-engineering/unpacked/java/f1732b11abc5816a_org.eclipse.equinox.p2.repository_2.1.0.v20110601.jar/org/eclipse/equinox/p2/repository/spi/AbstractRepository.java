/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 */
package org.eclipse.equinox.p2.repository.spi;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.repository.IRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractRepository<T>
extends PlatformObject
implements IRepository<T> {
    private final IProvisioningAgent agent;
    private String description;
    private transient URI location;
    private String name;
    private Map<String, String> properties = new OrderedProperties();
    private String provider;
    private String type;
    private String version;

    protected AbstractRepository(IProvisioningAgent agent, String name, String type, String version, URI location, String description, String provider, Map<String, String> properties) {
        this.agent = agent;
        this.name = name;
        this.type = type;
        this.version = version;
        this.location = location;
        this.description = description == null ? "" : description;
        String string = this.provider = provider == null ? "" : provider;
        if (properties != null) {
            this.properties.putAll(properties);
        }
    }

    protected void assertModifiable() {
        if (!this.isModifiable()) {
            throw new UnsupportedOperationException(new StringBuffer("Repository not modifiable: ").append(this.location).toString());
        }
    }

    @Override
    public synchronized String getDescription() {
        return this.description;
    }

    @Override
    public synchronized URI getLocation() {
        return this.location;
    }

    @Override
    public synchronized String getName() {
        return this.name;
    }

    @Override
    public synchronized Map<String, String> getProperties() {
        return OrderedProperties.unmodifiableProperties(this.properties);
    }

    @Override
    public String getProperty(String key) {
        return this.properties.get(key);
    }

    @Override
    public synchronized String getProvider() {
        return this.provider;
    }

    @Override
    public IProvisioningAgent getProvisioningAgent() {
        return this.agent;
    }

    @Override
    public synchronized String getType() {
        return this.type;
    }

    @Override
    public synchronized String getVersion() {
        return this.version;
    }

    @Override
    public boolean isModifiable() {
        return false;
    }

    public synchronized void setDescription(String description) {
        this.description = description;
    }

    public synchronized void setName(String value) {
        this.name = value;
    }

    @Override
    public synchronized String setProperty(String key, String value, IProgressMonitor monitor) {
        this.assertModifiable();
        if (key.equals("name")) {
            String oldName = this.getName();
            this.setName(value);
            return oldName;
        }
        return value == null ? this.properties.remove(key) : this.properties.put(key, value);
    }

    @Override
    public synchronized String setProperty(String key, String value) {
        return this.setProperty(key, value, (IProgressMonitor)new NullProgressMonitor());
    }

    public synchronized void setProvider(String provider) {
        this.provider = provider;
    }

    protected synchronized void setType(String type) {
        this.type = type;
    }

    protected synchronized void setLocation(URI location) {
        this.location = location;
    }

    protected synchronized void setVersion(String version) {
        this.version = version;
    }

    protected synchronized void setProperties(Map<String, String> properties) {
        this.properties = properties;
    }
}

