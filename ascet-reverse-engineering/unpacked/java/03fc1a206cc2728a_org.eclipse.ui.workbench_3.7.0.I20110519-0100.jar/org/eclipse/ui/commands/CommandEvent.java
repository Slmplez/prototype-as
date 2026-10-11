/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Collections;
import java.util.Map;
import org.eclipse.ui.commands.ICommand;
import org.eclipse.ui.internal.util.Util;

public final class CommandEvent {
    private final boolean attributeValuesByNameChanged;
    private final boolean categoryIdChanged;
    private final ICommand command;
    private final boolean definedChanged;
    private final boolean descriptionChanged;
    private final boolean handledChanged;
    private final boolean keySequenceBindingsChanged;
    private final boolean nameChanged;
    private Map previousAttributeValuesByName;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public CommandEvent(ICommand command, boolean attributeValuesByNameChanged, boolean categoryIdChanged, boolean definedChanged, boolean descriptionChanged, boolean handledChanged, boolean keySequenceBindingsChanged, boolean nameChanged, Map previousAttributeValuesByName) {
        if (command == null) {
            throw new NullPointerException();
        }
        if (!attributeValuesByNameChanged && previousAttributeValuesByName != null) {
            throw new IllegalArgumentException();
        }
        if (attributeValuesByNameChanged) {
            if (previousAttributeValuesByName == null) {
                this.previousAttributeValuesByName = Collections.EMPTY_MAP;
            } else {
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
                this.previousAttributeValuesByName = Util.safeCopy(previousAttributeValuesByName, clazz2, (Class)clazz, false, true);
            }
        }
        this.command = command;
        this.attributeValuesByNameChanged = attributeValuesByNameChanged;
        this.categoryIdChanged = categoryIdChanged;
        this.definedChanged = definedChanged;
        this.descriptionChanged = descriptionChanged;
        this.handledChanged = handledChanged;
        this.keySequenceBindingsChanged = keySequenceBindingsChanged;
        this.nameChanged = nameChanged;
    }

    public ICommand getCommand() {
        return this.command;
    }

    public Map getPreviousAttributeValuesByName() {
        return this.previousAttributeValuesByName;
    }

    public boolean hasCategoryIdChanged() {
        return this.categoryIdChanged;
    }

    public boolean hasDefinedChanged() {
        return this.definedChanged;
    }

    public boolean hasDescriptionChanged() {
        return this.descriptionChanged;
    }

    public boolean hasHandledChanged() {
        return this.handledChanged;
    }

    public boolean hasNameChanged() {
        return this.nameChanged;
    }

    public boolean haveAttributeValuesByNameChanged() {
        return this.attributeValuesByNameChanged;
    }

    public boolean haveKeySequenceBindingsChanged() {
        return this.keySequenceBindingsChanged;
    }
}

