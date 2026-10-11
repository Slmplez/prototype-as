/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.util.Arrays;
import java.util.Map;
import org.eclipse.core.internal.registry.RegistryDelta;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IRegistryChangeEvent;

public final class RegistryChangeEvent
implements IRegistryChangeEvent {
    private String filter;
    private Map deltas;

    public RegistryChangeEvent(Map deltas, String filter) {
        this.deltas = deltas;
        this.filter = filter;
    }

    private RegistryDelta[] getHostDeltas() {
        if (this.filter != null) {
            RegistryDelta[] registryDeltaArray;
            RegistryDelta singleDelta = this.getHostDelta(this.filter);
            if (singleDelta == null) {
                registryDeltaArray = new RegistryDelta[]{};
            } else {
                RegistryDelta[] registryDeltaArray2 = new RegistryDelta[1];
                registryDeltaArray = registryDeltaArray2;
                registryDeltaArray2[0] = singleDelta;
            }
            return registryDeltaArray;
        }
        return this.deltas.values().toArray(new RegistryDelta[this.deltas.size()]);
    }

    private RegistryDelta getHostDelta(String pluginId) {
        if (this.filter != null && !pluginId.equals(this.filter)) {
            return null;
        }
        return (RegistryDelta)this.deltas.get(pluginId);
    }

    public IExtensionDelta[] getExtensionDeltas() {
        RegistryDelta[] hostDeltas = this.getHostDeltas();
        if (hostDeltas.length == 0) {
            return new IExtensionDelta[0];
        }
        int extensionDeltasSize = 0;
        int i = 0;
        while (i < hostDeltas.length) {
            extensionDeltasSize += hostDeltas[i].getExtensionDeltasCount();
            ++i;
        }
        IExtensionDelta[] extensionDeltas = new IExtensionDelta[extensionDeltasSize];
        int i2 = 0;
        int offset = 0;
        while (i2 < hostDeltas.length) {
            IExtensionDelta[] hostExtDeltas = hostDeltas[i2].getExtensionDeltas();
            System.arraycopy(hostExtDeltas, 0, extensionDeltas, offset, hostExtDeltas.length);
            offset += hostExtDeltas.length;
            ++i2;
        }
        return extensionDeltas;
    }

    public IExtensionDelta[] getExtensionDeltas(String hostName) {
        RegistryDelta hostDelta = this.getHostDelta(hostName);
        if (hostDelta == null) {
            return new IExtensionDelta[0];
        }
        return hostDelta.getExtensionDeltas();
    }

    public IExtensionDelta[] getExtensionDeltas(String hostName, String extensionPoint) {
        RegistryDelta hostDelta = this.getHostDelta(hostName);
        if (hostDelta == null) {
            return new IExtensionDelta[0];
        }
        return hostDelta.getExtensionDeltas(String.valueOf(hostName) + '.' + extensionPoint);
    }

    public IExtensionDelta getExtensionDelta(String hostName, String extensionPoint, String extension) {
        RegistryDelta hostDelta = this.getHostDelta(hostName);
        if (hostDelta == null) {
            return null;
        }
        return hostDelta.getExtensionDelta(String.valueOf(hostName) + '.' + extensionPoint, extension);
    }

    public String toString() {
        return "RegistryChangeEvent:  " + Arrays.asList(this.getHostDeltas());
    }
}

