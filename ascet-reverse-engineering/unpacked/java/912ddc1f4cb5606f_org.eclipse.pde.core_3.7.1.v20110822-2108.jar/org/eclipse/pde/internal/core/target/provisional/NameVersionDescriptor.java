/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.target.provisional;

public class NameVersionDescriptor {
    public static final String TYPE_PLUGIN = "plugin";
    public static final String TYPE_FEATURE = "feature";
    public static final String TYPE_PACKAGE = "package";
    private String fId;
    private String fVersion;
    private String fType;

    public NameVersionDescriptor(String id, String version) {
        this.fId = id;
        this.fVersion = version == null || version.equals("0.0.0") ? null : version;
        this.fType = TYPE_PLUGIN;
    }

    public NameVersionDescriptor(String id, String version, String type) {
        this.fId = id;
        this.fVersion = version == null || version.equals("0.0.0") ? null : version;
        this.fType = type;
    }

    public boolean equals(Object obj) {
        if (obj instanceof NameVersionDescriptor) {
            NameVersionDescriptor iud = (NameVersionDescriptor)obj;
            if (this.fId.equals(iud.fId)) {
                return this.fVersion != null && this.fVersion.equals(iud.fVersion) || this.fVersion == null && iud.fVersion == null;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.fId.hashCode() + (this.fVersion != null ? this.fVersion.hashCode() : 0);
    }

    public String getId() {
        return this.fId;
    }

    public String getVersion() {
        return this.fVersion;
    }

    public String getType() {
        return this.fType;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append(this.fId);
        if (this.fVersion != null) {
            buf.append(' ');
            buf.append('(');
            buf.append(this.fVersion);
            buf.append(')');
        }
        buf.append(' ');
        buf.append('[');
        buf.append(this.fType);
        buf.append(']');
        return buf.toString();
    }

    public static NameVersionDescriptor fromPortableString(String portable) {
        int index = portable.indexOf(64);
        if (index > 0) {
            String name = portable.substring(0, index);
            String ver = null;
            if (++index < portable.length()) {
                ver = portable.substring(index);
            }
            return new NameVersionDescriptor(name, ver);
        }
        return new NameVersionDescriptor(portable, null);
    }

    public String toPortableString() {
        StringBuffer buf = new StringBuffer();
        buf.append(this.fId);
        buf.append('@');
        buf.append(this.fVersion);
        return buf.toString();
    }
}

