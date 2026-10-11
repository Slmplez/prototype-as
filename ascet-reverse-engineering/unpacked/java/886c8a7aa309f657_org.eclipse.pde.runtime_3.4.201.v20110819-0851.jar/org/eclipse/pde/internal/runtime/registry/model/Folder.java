/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;
import org.eclipse.pde.internal.runtime.registry.model.ServiceRegistration;

public class Folder {
    public static final int F_EXTENSIONS = 1;
    public static final int F_EXTENSION_POINTS = 2;
    public static final int F_IMPORTS = 3;
    public static final int F_LIBRARIES = 4;
    public static final int F_REGISTERED_SERVICES = 5;
    public static final int F_SERVICES_IN_USE = 6;
    public static final int F_PROPERTIES = 7;
    public static final int F_USING_BUNDLES = 8;
    public static final int F_FRAGMENTS = 9;
    public static final int F_IMPORTED_PACKAGES = 10;
    public static final int F_EXPORTED_PACKAGES = 11;
    private int id;
    private Object parent;

    public Folder(int id, Object parent) {
        this.id = id;
        this.parent = parent;
    }

    public int getId() {
        return this.id;
    }

    public Object getParent() {
        return this.parent;
    }

    public ModelObject[] getChildren() {
        switch (this.id) {
            case 2: {
                return ((Bundle)this.parent).getExtensionPoints();
            }
            case 1: {
                return ((Bundle)this.parent).getExtensions();
            }
            case 3: {
                return ((Bundle)this.parent).getImports();
            }
            case 4: {
                return ((Bundle)this.parent).getLibraries();
            }
            case 5: {
                return ((Bundle)this.parent).getRegisteredServices();
            }
            case 6: {
                return ((Bundle)this.parent).getServicesInUse();
            }
            case 7: {
                return ((ServiceRegistration)this.parent).getProperties();
            }
            case 8: {
                return ((ServiceRegistration)this.parent).getUsingBundles();
            }
            case 9: {
                return ((Bundle)this.parent).getFragments();
            }
            case 10: {
                return ((Bundle)this.parent).getImportedPackages();
            }
            case 11: {
                return ((Bundle)this.parent).getExportedPackages();
            }
        }
        return null;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + this.id;
        result = 31 * result + (this.parent == null ? 0 : this.parent.hashCode());
        return result;
    }

    public boolean equals(Object obj) {
        return obj instanceof Folder && ((Folder)obj).id == this.id && ((Folder)obj).parent.equals(this.parent);
    }
}

