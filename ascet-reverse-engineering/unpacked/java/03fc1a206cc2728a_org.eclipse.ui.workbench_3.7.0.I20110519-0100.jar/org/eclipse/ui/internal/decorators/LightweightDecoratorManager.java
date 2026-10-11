/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.decorators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.internal.ObjectContributorManager;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.DecorationBuilder;
import org.eclipse.ui.internal.decorators.DecorationResult;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;
import org.eclipse.ui.internal.decorators.DecoratorManager;
import org.eclipse.ui.internal.decorators.LightweightDecoratorDefinition;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.Util;

public class LightweightDecoratorManager
extends ObjectContributorManager {
    private LightweightRunnable runnable = new LightweightRunnable();
    private LightweightDecoratorDefinition[] lightweightDefinitions;
    private static final LightweightDecoratorDefinition[] EMPTY_LIGHTWEIGHT_DEF = new LightweightDecoratorDefinition[0];

    LightweightDecoratorManager(LightweightDecoratorDefinition[] definitions) {
        this.lightweightDefinitions = definitions;
        this.buildContributors();
    }

    LightweightDecoratorDefinition[] getDefinitions() {
        return this.lightweightDefinitions;
    }

    private void buildContributors() {
        int i = 0;
        while (i < this.lightweightDefinitions.length) {
            LightweightDecoratorDefinition decorator = this.lightweightDefinitions[i];
            String[] types = this.getTargetTypes(decorator);
            int j = 0;
            while (j < types.length) {
                this.registerContributor(decorator, types[j]);
                ++j;
            }
            ++i;
        }
    }

    public boolean addDecorator(LightweightDecoratorDefinition decorator) {
        if (this.getLightweightDecoratorDefinition(decorator.getId()) == null) {
            LightweightDecoratorDefinition[] oldDefs = this.lightweightDefinitions;
            this.lightweightDefinitions = new LightweightDecoratorDefinition[this.lightweightDefinitions.length + 1];
            System.arraycopy(oldDefs, 0, this.lightweightDefinitions, 0, oldDefs.length);
            this.lightweightDefinitions[oldDefs.length] = decorator;
            String[] types = this.getTargetTypes(decorator);
            int i = 0;
            while (i < types.length) {
                this.registerContributor(decorator, types[i]);
                ++i;
            }
            return true;
        }
        return false;
    }

    private String[] getTargetTypes(LightweightDecoratorDefinition decorator) {
        return decorator.getObjectClasses();
    }

    public boolean removeDecorator(LightweightDecoratorDefinition decorator) {
        int idx = this.getLightweightDecoratorDefinitionIdx(decorator.getId());
        if (idx != -1) {
            Object[] oldDefs = this.lightweightDefinitions;
            this.lightweightDefinitions = new LightweightDecoratorDefinition[this.lightweightDefinitions.length - 1];
            Util.arrayCopyWithRemoval(oldDefs, this.lightweightDefinitions, idx);
            String[] types = this.getTargetTypes(decorator);
            int i = 0;
            while (i < types.length) {
                this.unregisterContributor(decorator, types[i]);
                ++i;
            }
            return true;
        }
        return false;
    }

    private LightweightDecoratorDefinition getLightweightDecoratorDefinition(String decoratorId) {
        int idx = this.getLightweightDecoratorDefinitionIdx(decoratorId);
        if (idx != -1) {
            return this.lightweightDefinitions[idx];
        }
        return null;
    }

    private int getLightweightDecoratorDefinitionIdx(String decoratorId) {
        int i = 0;
        while (i < this.lightweightDefinitions.length) {
            if (this.lightweightDefinitions[i].getId().equals(decoratorId)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    LightweightDecoratorDefinition[] enabledDefinitions() {
        ArrayList<LightweightDecoratorDefinition> result = new ArrayList<LightweightDecoratorDefinition>();
        int i = 0;
        while (i < this.lightweightDefinitions.length) {
            if (this.lightweightDefinitions[i].isEnabled()) {
                result.add(this.lightweightDefinitions[i]);
            }
            ++i;
        }
        LightweightDecoratorDefinition[] returnArray = new LightweightDecoratorDefinition[result.size()];
        result.toArray(returnArray);
        return returnArray;
    }

    boolean hasEnabledDefinitions() {
        int i = 0;
        while (i < this.lightweightDefinitions.length) {
            if (this.lightweightDefinitions[i].isEnabled()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    void reset() {
        this.runnable.clearReferences();
    }

    void shutdown() {
        int i = 0;
        while (i < this.lightweightDefinitions.length) {
            if (this.lightweightDefinitions[i].isEnabled()) {
                this.lightweightDefinitions[i].setEnabled(false);
            }
            ++i;
        }
    }

    LightweightDecoratorDefinition getDecoratorDefinition(String decoratorId) {
        int i = 0;
        while (i < this.lightweightDefinitions.length) {
            if (this.lightweightDefinitions[i].getId().equals(decoratorId)) {
                return this.lightweightDefinitions[i];
            }
            ++i;
        }
        return null;
    }

    LightweightDecoratorDefinition[] getDecoratorsFor(Object element) {
        Collection decorators;
        if (element == null) {
            return EMPTY_LIGHTWEIGHT_DEF;
        }
        ArrayList<Object> elements = new ArrayList<Object>(1);
        elements.add(element);
        LightweightDecoratorDefinition[] decoratorArray = EMPTY_LIGHTWEIGHT_DEF;
        List contributors = this.getContributors(elements);
        if (!contributors.isEmpty() && (decorators = DecoratorManager.getDecoratorsFor(element, contributors.toArray(new DecoratorDefinition[contributors.size()]))).size() > 0) {
            decoratorArray = new LightweightDecoratorDefinition[decorators.size()];
            decorators.toArray(decoratorArray);
        }
        return decoratorArray;
    }

    public void getDecorations(Object element, DecorationBuilder decoration) {
        LightweightDecoratorDefinition[] decorators = this.getDecoratorsFor(element);
        int i = 0;
        while (i < decorators.length) {
            LightweightDecoratorDefinition dd = decorators[i];
            decoration.setCurrentDefinition(dd);
            this.decorate(element, decoration, dd);
            ++i;
        }
    }

    private void decorate(Object element, DecorationBuilder decoration, LightweightDecoratorDefinition decorator) {
        this.runnable.setValues(element, decoration, decorator);
        SafeRunner.run((ISafeRunnable)this.runnable);
    }

    public DecorationResult getDecorationResult(Object object) {
        DecorationBuilder builder = new DecorationBuilder();
        this.getDecorations(object, builder);
        return builder.createResult();
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
    }

    private class LightweightRunnable
    implements ISafeRunnable {
        private Object element;
        private DecorationBuilder decoration;
        private LightweightDecoratorDefinition decorator;

        private LightweightRunnable() {
        }

        void setValues(Object object, DecorationBuilder builder, LightweightDecoratorDefinition definition) {
            this.element = object;
            this.decoration = builder;
            this.decorator = definition;
        }

        public void handleException(Throwable exception) {
            IStatus status = StatusUtil.newStatus(4, exception.getMessage(), exception);
            String message = this.decorator == null ? WorkbenchMessages.DecoratorError : NLS.bind((String)WorkbenchMessages.DecoratorWillBeDisabled, (Object)this.decorator.getName());
            WorkbenchPlugin.log(message, status);
            if (this.decorator != null) {
                this.decorator.crashDisable();
            }
            this.clearReferences();
        }

        public void run() throws Exception {
            this.decorator.decorate(this.element, this.decoration);
            this.clearReferences();
        }

        void clearReferences() {
            this.decorator = null;
            this.element = null;
            this.decoration = null;
        }
    }
}

