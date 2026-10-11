/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ILabelProviderListener
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.RegistryReader;

public abstract class DecoratorDefinition
implements IPluginContribution {
    private static final String ATT_LABEL = "label";
    private static final String ATT_OBJECT_CLASS = "objectClass";
    static final String CHILD_ENABLEMENT = "enablement";
    private static final String ATT_ADAPTABLE = "adaptable";
    private static final String ATT_ENABLED = "state";
    private ActionExpression enablement;
    protected boolean enabled;
    private boolean defaultEnabled;
    private String id;
    protected IConfigurationElement definingElement;
    protected boolean labelProviderCreationFailed = false;
    private boolean hasReadEnablement;
    static final String ATT_CLASS = "class";

    DecoratorDefinition(String identifier, IConfigurationElement element) {
        this.id = identifier;
        this.definingElement = element;
        this.enabled = this.defaultEnabled = Boolean.valueOf(element.getAttribute(ATT_ENABLED)).booleanValue();
    }

    public String getName() {
        return this.definingElement.getAttribute(ATT_LABEL);
    }

    public String getDescription() {
        return RegistryReader.getDescription(this.definingElement);
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setEnabled(boolean newState) {
        if (this.enabled != newState) {
            this.enabled = newState;
            try {
                this.refreshDecorator();
            }
            catch (CoreException exception) {
                this.handleCoreException(exception);
            }
        }
    }

    protected abstract void refreshDecorator() throws CoreException;

    protected void disposeCachedDecorator(IBaseLabelProvider disposedDecorator) {
        disposedDecorator.removeListener((ILabelProviderListener)WorkbenchPlugin.getDefault().getDecoratorManager());
        disposedDecorator.dispose();
    }

    public boolean isAdaptable() {
        return Boolean.valueOf(this.definingElement.getAttribute(ATT_ADAPTABLE));
    }

    public String getId() {
        return this.id;
    }

    public boolean getDefaultValue() {
        return this.defaultEnabled;
    }

    protected ActionExpression getEnablement() {
        if (!this.hasReadEnablement) {
            this.hasReadEnablement = true;
            this.initializeEnablement();
        }
        return this.enablement;
    }

    protected void initializeEnablement() {
        IConfigurationElement[] elements = this.definingElement.getChildren(CHILD_ENABLEMENT);
        if (elements.length == 0) {
            String className = this.definingElement.getAttribute(ATT_OBJECT_CLASS);
            if (className != null) {
                this.enablement = new ActionExpression(ATT_OBJECT_CLASS, className);
            }
        } else {
            this.enablement = new ActionExpression(elements[0]);
        }
    }

    void addListener(ILabelProviderListener listener) {
        try {
            IBaseLabelProvider currentDecorator = this.internalGetLabelProvider();
            if (currentDecorator != null) {
                currentDecorator.addListener(listener);
            }
        }
        catch (CoreException exception) {
            this.handleCoreException(exception);
        }
    }

    boolean isLabelProperty(Object element, String property) {
        try {
            IBaseLabelProvider currentDecorator = this.internalGetLabelProvider();
            if (currentDecorator != null) {
                return currentDecorator.isLabelProperty(element, property);
            }
        }
        catch (CoreException exception) {
            this.handleCoreException(exception);
            return false;
        }
        return false;
    }

    protected abstract IBaseLabelProvider internalGetLabelProvider() throws CoreException;

    protected void handleCoreException(CoreException exception) {
        WorkbenchPlugin.log(exception);
        this.crashDisable();
    }

    public void crashDisable() {
        this.enabled = false;
    }

    public abstract boolean isFull();

    public IConfigurationElement getConfigurationElement() {
        return this.definingElement;
    }

    public boolean isEnabledFor(Object element) {
        if (this.isEnabled()) {
            ActionExpression expression = this.getEnablement();
            if (expression != null) {
                return expression.isEnabledFor(element);
            }
            return true;
        }
        return false;
    }

    public String getPluginId() {
        return this.getConfigurationElement().getContributor().getName();
    }

    public String getLocalId() {
        return this.getId();
    }
}

