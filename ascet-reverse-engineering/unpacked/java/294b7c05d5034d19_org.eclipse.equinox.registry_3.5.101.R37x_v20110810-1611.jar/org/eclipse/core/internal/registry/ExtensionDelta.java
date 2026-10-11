/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPointHandle;
import org.eclipse.core.internal.registry.RegistryDelta;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;

public class ExtensionDelta
implements IExtensionDelta {
    private int kind;
    private int extension;
    private int extensionPoint;
    private RegistryDelta containingDelta;

    void setContainingDelta(RegistryDelta containingDelta) {
        this.containingDelta = containingDelta;
    }

    int getExtensionId() {
        return this.extension;
    }

    int getExtensionPointId() {
        return this.extensionPoint;
    }

    public IExtensionPoint getExtensionPoint() {
        return new ExtensionPointHandle(this.containingDelta.getObjectManager(), this.extensionPoint);
    }

    public void setExtensionPoint(int extensionPoint) {
        this.extensionPoint = extensionPoint;
    }

    public int getKind() {
        return this.kind;
    }

    public IExtension getExtension() {
        return new ExtensionHandle(this.containingDelta.getObjectManager(), this.extension);
    }

    public void setExtension(int extension) {
        this.extension = extension;
    }

    public void setKind(int kind) {
        this.kind = kind;
    }

    public String toString() {
        return "\n\t\t" + this.getExtensionPoint().getUniqueIdentifier() + " - " + this.getExtension().getNamespaceIdentifier() + '.' + this.getExtension().getSimpleIdentifier() + " (" + ExtensionDelta.getKindString(this.getKind()) + ")";
    }

    public static String getKindString(int kind) {
        switch (kind) {
            case 1: {
                return "ADDED";
            }
            case 2: {
                return "REMOVED";
            }
        }
        return "UNKNOWN";
    }
}

