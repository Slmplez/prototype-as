/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.project;

import org.eclipse.pde.core.project.IPackageExportDescription;
import org.osgi.framework.Version;

public class PackageExportDescription
implements IPackageExportDescription {
    private String fName;
    private Version fVersion;
    private String[] fFriends;
    private boolean fApi;

    public PackageExportDescription(String name, Version version, String[] friends, boolean api) {
        this.fName = name;
        this.fVersion = version;
        this.fApi = api;
        if (friends != null && friends.length > 0) {
            this.fFriends = friends;
            this.fApi = false;
        }
    }

    public Version getVersion() {
        return this.fVersion;
    }

    public String[] getFriends() {
        return this.fFriends;
    }

    public boolean isApi() {
        return this.fApi;
    }

    public String getName() {
        return this.fName;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PackageExportDescription) {
            PackageExportDescription spec = (PackageExportDescription)obj;
            return this.getName().equals(spec.getName()) && this.isApi() == spec.isApi() && this.equalOrNull(this.getVersion(), spec.getVersion()) && this.equalOrNull(this.getFriends(), spec.getFriends());
        }
        return false;
    }

    public int hashCode() {
        int code = this.getClass().hashCode() + this.fName.hashCode();
        if (this.fVersion != null) {
            code += this.fVersion.hashCode();
        }
        if (this.fApi) {
            ++code;
        }
        if (this.fFriends != null) {
            int i = 0;
            while (i < this.fFriends.length) {
                code += this.fFriends[i].hashCode();
                ++i;
            }
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

    private boolean equalOrNull(Object[] array1, Object[] array2) {
        if (array1 == null || array1.length == 0) {
            return array2 == null || array2.length == 0;
        }
        if (array2 == null || array2.length == 0) {
            return false;
        }
        if (array1.length != array2.length) {
            return false;
        }
        int i = 0;
        while (i < array1.length) {
            if (!array1[i].equals(array2[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append(this.fName);
        if (this.fVersion != null) {
            buf.append(";version=");
            buf.append(this.fVersion.toString());
        }
        if (this.fFriends != null) {
            buf.append(";x-friends=");
            buf.append('\"');
            int i = 0;
            while (i < this.fFriends.length) {
                if (i > 0) {
                    buf.append(',');
                }
                buf.append(this.fFriends[i]);
                ++i;
            }
            buf.append('\"');
        } else if (!this.fApi) {
            buf.append(";x-internal=true");
        }
        return buf.toString();
    }
}

