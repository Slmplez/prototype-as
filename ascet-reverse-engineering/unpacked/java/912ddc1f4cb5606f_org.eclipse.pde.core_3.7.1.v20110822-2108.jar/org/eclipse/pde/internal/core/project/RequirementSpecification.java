/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.VersionRange
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.osgi.service.resolver.VersionRange;

public abstract class RequirementSpecification {
    private String fName;
    private VersionRange fRange;
    private boolean fExport;
    private boolean fOptional;

    RequirementSpecification(String name, VersionRange range, boolean export, boolean optional) {
        this.fName = name;
        this.fRange = range;
        this.fExport = export;
        this.fOptional = optional;
    }

    public String getName() {
        return this.fName;
    }

    public VersionRange getVersionRange() {
        return this.fRange;
    }

    public boolean isExported() {
        return this.fExport;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RequirementSpecification) {
            RequirementSpecification spec = (RequirementSpecification)obj;
            return this.getName().equals(spec.getName()) && this.isExported() == spec.isExported() && this.isOptional() == spec.isOptional() && this.equalOrNull(this.getVersionRange(), spec.getVersionRange());
        }
        return false;
    }

    public int hashCode() {
        int code = this.getClass().hashCode() + this.fName.hashCode();
        if (this.fRange != null) {
            code += this.fRange.hashCode();
        }
        if (this.fExport) {
            ++code;
        }
        if (this.fOptional) {
            code += 2;
        }
        return code;
    }

    private boolean equalOrNull(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        if (o2 == null) {
            return o1 == null;
        }
        return o1.equals(o2);
    }

    public boolean isOptional() {
        return this.fOptional;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append(this.fName);
        buf.append(' ');
        if (this.fRange != null) {
            buf.append(this.fRange);
        }
        if (this.fOptional) {
            buf.append(" optional");
        }
        if (this.fExport) {
            buf.append(" re-export");
        }
        return buf.toString();
    }
}

