/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.module;

import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.internal.module.ResolverConstraint;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;

public class ResolverImport
extends ResolverConstraint {
    private String name;

    ResolverImport(ResolverBundle bundle, ImportPackageSpecification ips) {
        super(bundle, ips);
    }

    boolean isOptional() {
        return "optional".equals(((ImportPackageSpecification)this.constraint).getDirective("resolution"));
    }

    boolean isDynamic() {
        return "dynamic".equals(((ImportPackageSpecification)this.constraint).getDirective("resolution"));
    }

    public String getName() {
        if (this.name != null) {
            return this.name;
        }
        return super.getName();
    }

    void setName(String requestedPackage) {
        this.name = requestedPackage;
    }
}

