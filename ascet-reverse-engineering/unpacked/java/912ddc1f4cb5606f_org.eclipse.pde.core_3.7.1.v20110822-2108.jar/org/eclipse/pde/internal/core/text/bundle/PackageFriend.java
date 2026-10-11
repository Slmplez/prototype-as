/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.io.PrintWriter;
import org.eclipse.pde.internal.core.bundle.BundleObject;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.PackageObject;

public class PackageFriend
extends BundleObject {
    private static final long serialVersionUID = 1L;
    private String fName;
    private transient PackageObject fPackageObject;

    public PackageFriend(PackageObject object, String name) {
        this.fName = name;
        this.fPackageObject = object;
    }

    public String getName() {
        return this.fName;
    }

    public String toString() {
        return this.fName;
    }

    public ManifestHeader getHeader() {
        return this.fPackageObject.getHeader();
    }

    public void reconnect(PackageObject object) {
        this.fPackageObject = object;
    }

    public void writeDelimeter(PrintWriter writer) {
        writer.print(',');
    }
}

