/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.KeyedElement;
import org.eclipse.core.internal.registry.RegistryIndexChildren;

public class RegistryIndexElement
implements KeyedElement {
    protected final String key;
    private RegistryIndexChildren extensionPoints;
    private RegistryIndexChildren extensions;

    public RegistryIndexElement(String key) {
        this.key = key;
    }

    public RegistryIndexElement(String key, int[] extensionPoints, int[] extensions) {
        this.key = key;
        this.extensionPoints = new RegistryIndexChildren(extensionPoints);
        this.extensions = new RegistryIndexChildren(extensions);
    }

    protected int[] getExtensions() {
        if (this.extensions == null) {
            return RegistryIndexChildren.EMPTY_ARRAY;
        }
        return this.extensions.getChildren();
    }

    protected int[] getExtensionPoints() {
        if (this.extensionPoints == null) {
            return RegistryIndexChildren.EMPTY_ARRAY;
        }
        return this.extensionPoints.getChildren();
    }

    public boolean updateExtension(int id, boolean add) {
        if (this.extensions == null) {
            this.extensions = new RegistryIndexChildren();
        }
        if (add) {
            return this.extensions.linkChild(id);
        }
        return this.extensions.unlinkChild(id);
    }

    public boolean updateExtensions(int[] IDs, boolean add) {
        if (this.extensions == null) {
            this.extensions = new RegistryIndexChildren();
        }
        if (add) {
            return this.extensions.linkChildren(IDs);
        }
        return this.extensions.unlinkChildren(IDs);
    }

    public boolean updateExtensionPoint(int id, boolean add) {
        if (this.extensionPoints == null) {
            this.extensionPoints = new RegistryIndexChildren();
        }
        if (add) {
            return this.extensionPoints.linkChild(id);
        }
        return this.extensionPoints.unlinkChild(id);
    }

    public boolean updateExtensionPoints(int[] IDs, boolean add) {
        if (this.extensionPoints == null) {
            this.extensionPoints = new RegistryIndexChildren();
        }
        if (add) {
            return this.extensionPoints.linkChildren(IDs);
        }
        return this.extensionPoints.unlinkChildren(IDs);
    }

    public int getKeyHashCode() {
        return this.getKey().hashCode();
    }

    public Object getKey() {
        return this.key;
    }

    public boolean compare(KeyedElement other) {
        return this.key.equals(((RegistryIndexElement)other).key);
    }
}

