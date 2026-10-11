/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IDecoration
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.ILightweightLabelDecorator
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IDecoration;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ILightweightLabelDecorator;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.IObjectContributor;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.DeclarativeDecorator;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;

class LightweightDecoratorDefinition
extends DecoratorDefinition
implements IObjectContributor {
    private static final String ATT_LOCATION = "location";
    static final String ATT_ICON = "icon";
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 1;
    public static final int BOTTOM_LEFT = 2;
    public static final int BOTTOM_RIGHT = 3;
    public static final int UNDERLAY = 4;
    private static final String UNDERLAY_STRING = "UNDERLAY";
    public static final int REPLACE = 5;
    private static final String REPLACE_STRING = "REPLACE";
    private static final String ATT_QUADRANT = "quadrant";
    private static final String TOP_LEFT_STRING = "TOP_LEFT";
    private static final String TOP_RIGHT_STRING = "TOP_RIGHT";
    private static final String BOTTOM_LEFT_STRING = "BOTTOM_LEFT";
    private ILightweightLabelDecorator decorator;
    private int quadrant;
    private boolean hasReadQuadrant;
    private String[] objectClasses;
    static /* synthetic */ Class class$0;

    LightweightDecoratorDefinition(String identifier, IConfigurationElement element) {
        super(identifier, element);
    }

    protected ILightweightLabelDecorator internalGetDecorator() throws CoreException {
        if (this.labelProviderCreationFailed) {
            return null;
        }
        final CoreException[] exceptions = new CoreException[1];
        if (this.decorator == null) {
            if (this.isDeclarative()) {
                this.decorator = new DeclarativeDecorator(this.definingElement, this.getIconLocation());
            } else {
                Platform.run((ISafeRunnable)new ISafeRunnable(){

                    public void run() {
                        try {
                            LightweightDecoratorDefinition.this.decorator = (ILightweightLabelDecorator)WorkbenchPlugin.createExtension(LightweightDecoratorDefinition.this.definingElement, "class");
                            LightweightDecoratorDefinition.this.decorator.addListener((ILabelProviderListener)WorkbenchPlugin.getDefault().getDecoratorManager());
                        }
                        catch (CoreException exception) {
                            exceptions[0] = exception;
                        }
                    }

                    public void handleException(Throwable e) {
                    }
                });
            }
        } else {
            return this.decorator;
        }
        if (this.decorator == null) {
            this.labelProviderCreationFailed = true;
            this.setEnabled(false);
        }
        if (exceptions[0] != null) {
            throw exceptions[0];
        }
        return this.decorator;
    }

    private boolean isDeclarative() {
        return this.definingElement.getAttribute("class") == null;
    }

    private String getIconLocation() {
        return this.definingElement.getAttribute(ATT_ICON);
    }

    protected IBaseLabelProvider internalGetLabelProvider() throws CoreException {
        return this.internalGetDecorator();
    }

    public boolean isFull() {
        return false;
    }

    public int getQuadrant() {
        if (!this.hasReadQuadrant) {
            this.hasReadQuadrant = true;
            this.quadrant = this.getLocationConstant(this.definingElement.getAttribute(ATT_LOCATION), this.definingElement);
        }
        return this.quadrant;
    }

    private int getLocationConstant(String locationDefinition, IConfigurationElement element) {
        if (locationDefinition == null) {
            locationDefinition = element.getAttribute(ATT_QUADRANT);
        }
        if (TOP_RIGHT_STRING.equals(locationDefinition)) {
            return 1;
        }
        if (TOP_LEFT_STRING.equals(locationDefinition)) {
            return 0;
        }
        if (BOTTOM_LEFT_STRING.equals(locationDefinition)) {
            return 2;
        }
        if (UNDERLAY_STRING.equals(locationDefinition)) {
            return 4;
        }
        if (REPLACE_STRING.equals(locationDefinition)) {
            return 5;
        }
        return 3;
    }

    public void decorate(Object element, IDecoration decoration) {
        try {
            ILightweightLabelDecorator currentDecorator = this.internalGetDecorator();
            if (currentDecorator == null) {
                return;
            }
            if (this.isAdaptable()) {
                String[] classes = this.getObjectClasses();
                int i = 0;
                while (i < classes.length) {
                    String className = classes[i];
                    Object adapted = LegacyResourceSupport.getAdapter(element, className);
                    if (adapted != null) {
                        currentDecorator.decorate(adapted, decoration);
                    }
                    ++i;
                }
            } else if (currentDecorator != null && element != null) {
                currentDecorator.decorate(element, decoration);
            }
        }
        catch (CoreException exception) {
            this.handleCoreException(exception);
        }
    }

    public ILightweightLabelDecorator getDecorator() {
        return this.decorator;
    }

    protected void refreshDecorator() {
        if (!this.enabled && this.decorator != null) {
            ILightweightLabelDecorator cached = this.decorator;
            this.decorator = null;
            this.disposeCachedDecorator((IBaseLabelProvider)cached);
        }
    }

    public boolean isApplicableTo(Object object) {
        return this.isEnabledFor(object);
    }

    public boolean canAdapt() {
        return this.isAdaptable();
    }

    public String[] getObjectClasses() {
        if (this.objectClasses == null) {
            this.getEnablement();
        }
        return this.objectClasses;
    }

    protected void initializeEnablement() {
        super.initializeEnablement();
        ActionExpression expression = this.getEnablement();
        if (expression != null) {
            this.objectClasses = expression.extractObjectClasses();
        }
        if (this.objectClasses == null) {
            String[] stringArray = new String[1];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            stringArray[0] = clazz.getName();
            this.objectClasses = stringArray;
        }
    }
}

