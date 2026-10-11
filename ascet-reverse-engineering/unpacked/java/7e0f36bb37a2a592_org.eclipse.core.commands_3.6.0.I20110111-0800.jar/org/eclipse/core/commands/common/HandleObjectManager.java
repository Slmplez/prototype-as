/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.commands.common.HandleObject;

public abstract class HandleObjectManager
extends EventManager {
    protected final Set definedHandleObjects = new HashSet();
    protected final Map handleObjectsById = new HashMap();

    protected final void checkId(String id) {
        if (id == null) {
            throw new NullPointerException("A handle object may not have a null identifier");
        }
        if (id.length() < 1) {
            throw new IllegalArgumentException("The handle object must not have a zero-length identifier");
        }
    }

    protected final Set getDefinedHandleObjectIds() {
        HashSet<String> definedHandleObjectIds = new HashSet<String>(this.definedHandleObjects.size());
        Iterator handleObjectItr = this.definedHandleObjects.iterator();
        while (handleObjectItr.hasNext()) {
            HandleObject handleObject = (HandleObject)handleObjectItr.next();
            String id = handleObject.getId();
            definedHandleObjectIds.add(id);
        }
        return definedHandleObjectIds;
    }
}

