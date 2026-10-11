/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.util.Map;
import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ConfigurationElementHandle;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionPointHandle;
import org.eclipse.core.internal.registry.Handle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.internal.registry.ThirdLevelConfigurationElementHandle;
import org.eclipse.core.runtime.InvalidRegistryObjectException;

public class TemporaryObjectManager
implements IObjectManager {
    private Map actualObjects;
    private RegistryObjectManager parent;

    public TemporaryObjectManager(Map actualObjects, RegistryObjectManager parent) {
        this.actualObjects = actualObjects;
        this.parent = parent;
    }

    public Handle getHandle(int id, byte type) {
        switch (type) {
            case 3: {
                return new ExtensionPointHandle(this, id);
            }
            case 2: {
                return new ExtensionHandle(this, id);
            }
            case 1: {
                return new ConfigurationElementHandle(this, id);
            }
        }
        return new ThirdLevelConfigurationElementHandle(this, id);
    }

    public Handle[] getHandles(int[] ids, byte type) {
        Handle[] results = null;
        int nbrId = ids.length;
        switch (type) {
            case 3: {
                if (nbrId == 0) {
                    return ExtensionPointHandle.EMPTY_ARRAY;
                }
                results = new ExtensionPointHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ExtensionPointHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
            case 2: {
                if (nbrId == 0) {
                    return ExtensionHandle.EMPTY_ARRAY;
                }
                results = new ExtensionHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ExtensionHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
            case 1: {
                if (nbrId == 0) {
                    return ConfigurationElementHandle.EMPTY_ARRAY;
                }
                results = new ConfigurationElementHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ConfigurationElementHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
            case 4: {
                if (nbrId == 0) {
                    return ConfigurationElementHandle.EMPTY_ARRAY;
                }
                results = new ThirdLevelConfigurationElementHandle[nbrId];
                int i = 0;
                while (i < nbrId) {
                    results[i] = new ThirdLevelConfigurationElementHandle(this, ids[i]);
                    ++i;
                }
                break;
            }
        }
        return results;
    }

    public synchronized Object getObject(int id, byte type) {
        Object result;
        block3: {
            result = null;
            try {
                result = this.parent.getObject(id, type);
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {
                if (this.actualObjects == null) break block3;
                result = this.actualObjects.get(new Integer(id));
            }
        }
        if (result == null) {
            throw new InvalidRegistryObjectException();
        }
        return result;
    }

    public synchronized RegistryObject[] getObjects(int[] values, byte type) {
        if (values.length == 0) {
            switch (type) {
                case 3: {
                    return ExtensionPoint.EMPTY_ARRAY;
                }
                case 2: {
                    return Extension.EMPTY_ARRAY;
                }
                case 1: 
                case 4: {
                    return ConfigurationElement.EMPTY_ARRAY;
                }
            }
        }
        RegistryObject[] results = null;
        switch (type) {
            case 3: {
                results = new ExtensionPoint[values.length];
                break;
            }
            case 2: {
                results = new Extension[values.length];
                break;
            }
            case 1: 
            case 4: {
                results = new ConfigurationElement[values.length];
            }
        }
        int i = 0;
        while (i < values.length) {
            results[i] = (RegistryObject)this.getObject(values[i], type);
            ++i;
        }
        return results;
    }

    public synchronized void close() {
        this.actualObjects = null;
    }
}

