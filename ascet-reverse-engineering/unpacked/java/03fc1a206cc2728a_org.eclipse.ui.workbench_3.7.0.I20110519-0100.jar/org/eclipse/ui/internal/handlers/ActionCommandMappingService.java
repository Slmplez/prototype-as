/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.handlers;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.ui.internal.handlers.IActionCommandMappingService;

public final class ActionCommandMappingService
implements IActionCommandMappingService {
    private final Map mapping = new HashMap();

    public final String getCommandId(String actionId) {
        if (actionId == null) {
            throw new NullPointerException("Cannot get the command identifier for a null action id");
        }
        return (String)this.mapping.get(actionId);
    }

    public final void map(String actionId, String commandId) {
        if (actionId == null) {
            throw new NullPointerException("The action id cannot be null");
        }
        if (commandId == null) {
            throw new NullPointerException("The command id cannot be null");
        }
        this.mapping.put(actionId, commandId);
    }

    public final String getGeneratedCommandId(String targetId, String actionId) {
        return "AUTOGEN:::" + targetId + '/' + actionId;
    }
}

