/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.core.expressions.IPropertyTester;
import org.eclipse.core.runtime.Assert;

public class Property {
    private Class fType;
    private String fNamespace;
    private String fName;
    private IPropertyTester fTester;

    Property(Class type, String namespace, String name) {
        Assert.isNotNull((Object)type);
        Assert.isNotNull((Object)namespace);
        Assert.isNotNull((Object)name);
        this.fType = type;
        this.fNamespace = namespace;
        this.fName = name;
    }

    void setPropertyTester(IPropertyTester tester) {
        Assert.isNotNull((Object)tester);
        this.fTester = tester;
    }

    public boolean isInstantiated() {
        return this.fTester.isInstantiated();
    }

    public boolean isDeclaringPluginActive() {
        return this.fTester.isDeclaringPluginActive();
    }

    public boolean isValidCacheEntry(boolean forcePluginActivation) {
        if (forcePluginActivation) {
            return this.isInstantiated() && this.isDeclaringPluginActive();
        }
        return this.isInstantiated() && this.isDeclaringPluginActive() || !this.isInstantiated() && !this.isDeclaringPluginActive();
    }

    public boolean test(Object receiver, Object[] args, Object expectedValue) {
        return this.fTester.test(receiver, this.fName, args, expectedValue);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Property)) {
            return false;
        }
        Property other = (Property)obj;
        return this.fType.equals(other.fType) && this.fNamespace.equals(other.fNamespace) && this.fName.equals(other.fName);
    }

    public int hashCode() {
        return this.fType.hashCode() << 16 | this.fNamespace.hashCode() << 8 | this.fName.hashCode();
    }
}

