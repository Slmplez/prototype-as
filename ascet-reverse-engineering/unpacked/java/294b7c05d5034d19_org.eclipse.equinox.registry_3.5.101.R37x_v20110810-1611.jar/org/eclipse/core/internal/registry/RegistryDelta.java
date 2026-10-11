/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import org.eclipse.core.internal.registry.ExtensionDelta;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;

public class RegistryDelta {
    private Set extensionDeltas = new HashSet();
    private IObjectManager objectManager;

    RegistryDelta() {
    }

    public int getExtensionDeltasCount() {
        return this.extensionDeltas.size();
    }

    public IExtensionDelta[] getExtensionDeltas() {
        return this.extensionDeltas.toArray(new ExtensionDelta[this.extensionDeltas.size()]);
    }

    public IExtensionDelta[] getExtensionDeltas(String extensionPoint) {
        LinkedList<IExtensionDelta> selectedExtDeltas = new LinkedList<IExtensionDelta>();
        Iterator extDeltasIter = this.extensionDeltas.iterator();
        while (extDeltasIter.hasNext()) {
            IExtensionDelta extensionDelta = (IExtensionDelta)extDeltasIter.next();
            if (!extensionDelta.getExtension().getExtensionPointUniqueIdentifier().equals(extensionPoint)) continue;
            selectedExtDeltas.add(extensionDelta);
        }
        return selectedExtDeltas.toArray(new IExtensionDelta[selectedExtDeltas.size()]);
    }

    public IExtensionDelta getExtensionDelta(String extensionPointId, String extensionId) {
        Iterator extDeltasIter = this.extensionDeltas.iterator();
        while (extDeltasIter.hasNext()) {
            IExtensionDelta extensionDelta = (IExtensionDelta)extDeltasIter.next();
            IExtension extension = extensionDelta.getExtension();
            if (!extension.getExtensionPointUniqueIdentifier().equals(extensionPointId) || extension.getUniqueIdentifier() == null || !extension.getUniqueIdentifier().equals(extensionId)) continue;
            return extensionDelta;
        }
        return null;
    }

    void addExtensionDelta(IExtensionDelta extensionDelta) {
        this.extensionDeltas.add(extensionDelta);
        ((ExtensionDelta)extensionDelta).setContainingDelta(this);
    }

    public String toString() {
        return "\n\tHost : " + this.extensionDeltas;
    }

    void setObjectManager(IObjectManager objectManager) {
        this.objectManager = objectManager;
    }

    public IObjectManager getObjectManager() {
        return this.objectManager;
    }
}

