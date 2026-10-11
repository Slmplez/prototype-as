/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Map;
import org.eclipse.ui.commands.IHandler;
import org.eclipse.ui.internal.util.Util;

public final class HandlerEvent {
    private final boolean attributeValuesByNameChanged;
    private final IHandler handler;
    private Map previousAttributeValuesByName;
    private final Map originalPreviousAttributeValuesByName;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public HandlerEvent(IHandler handler, boolean attributeValuesByNameChanged, Map previousAttributeValuesByName) {
        if (handler == null) {
            throw new NullPointerException();
        }
        if (!attributeValuesByNameChanged && previousAttributeValuesByName != null) {
            throw new IllegalArgumentException();
        }
        this.originalPreviousAttributeValuesByName = attributeValuesByNameChanged ? previousAttributeValuesByName : null;
        this.handler = handler;
        this.attributeValuesByNameChanged = attributeValuesByNameChanged;
    }

    public IHandler getHandler() {
        return this.handler;
    }

    public Map getPreviousAttributeValuesByName() {
        if (this.originalPreviousAttributeValuesByName == null) {
            return null;
        }
        if (this.previousAttributeValuesByName == null) {
            Class<?> clazz;
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((clazz = class$1) == null) {
                try {
                    clazz = class$1 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previousAttributeValuesByName = Util.safeCopy(this.originalPreviousAttributeValuesByName, clazz2, (Class)clazz, false, true);
        }
        return this.previousAttributeValuesByName;
    }

    public boolean haveAttributeValuesByNameChanged() {
        return this.attributeValuesByNameChanged;
    }
}

