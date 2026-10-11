/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.metadata.Messages;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;
import org.eclipse.osgi.util.NLS;

public class ProvidedCapability
implements IProvidedCapability,
IMemberProvider {
    public static final String MEMBER_NAME = "name";
    public static final String MEMBER_VERSION = "version";
    public static final String MEMBER_NAMESPACE = "namespace";
    private final String name;
    private final String namespace;
    private final Version version;

    public ProvidedCapability(String namespace, String name, Version version) {
        Assert.isNotNull((Object)namespace, (String)NLS.bind((String)Messages.provided_capability_namespace_not_defined, null));
        Assert.isNotNull((Object)name, (String)NLS.bind((String)Messages.provided_capability_name_not_defined, (Object)namespace));
        this.namespace = namespace;
        this.name = name;
        this.version = version == null ? Version.emptyVersion : version;
    }

    public boolean equals(Object other) {
        if (other == null) {
            return false;
        }
        if (!(other instanceof IProvidedCapability)) {
            return false;
        }
        IProvidedCapability otherCapability = (IProvidedCapability)other;
        if (!this.namespace.equals(otherCapability.getNamespace())) {
            return false;
        }
        if (!this.name.equals(otherCapability.getName())) {
            return false;
        }
        return this.version.equals(otherCapability.getVersion());
    }

    public String getName() {
        return this.name;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public Version getVersion() {
        return this.version;
    }

    public int hashCode() {
        return this.namespace.hashCode() * this.name.hashCode() * this.version.hashCode();
    }

    public String toString() {
        return String.valueOf(this.namespace) + '/' + this.name + '/' + this.version;
    }

    public Object getMember(String memberName) {
        if (MEMBER_NAME == memberName) {
            return this.name;
        }
        if (MEMBER_VERSION == memberName) {
            return this.version;
        }
        if (MEMBER_NAMESPACE == memberName) {
            return this.namespace;
        }
        throw new IllegalArgumentException("No such member: " + memberName);
    }
}

