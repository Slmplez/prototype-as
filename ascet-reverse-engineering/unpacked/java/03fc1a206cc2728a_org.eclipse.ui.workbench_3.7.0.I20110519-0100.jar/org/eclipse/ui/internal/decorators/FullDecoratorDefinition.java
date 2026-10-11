/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.decorators;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.DecoratorDefinition;

class FullDecoratorDefinition
extends DecoratorDefinition {
    ILabelDecorator decorator;

    FullDecoratorDefinition(String identifier, IConfigurationElement element) {
        super(identifier, element);
    }

    protected ILabelDecorator internalGetDecorator() throws CoreException {
        if (this.labelProviderCreationFailed) {
            return null;
        }
        final CoreException[] exceptions = new CoreException[1];
        if (this.decorator != null) {
            return this.decorator;
        }
        Platform.run((ISafeRunnable)new SafeRunnable(NLS.bind((String)WorkbenchMessages.DecoratorManager_ErrorActivatingDecorator, (Object)this.getName())){

            public void run() {
                try {
                    FullDecoratorDefinition.this.decorator = (ILabelDecorator)WorkbenchPlugin.createExtension(FullDecoratorDefinition.this.definingElement, "class");
                    FullDecoratorDefinition.this.decorator.addListener((ILabelProviderListener)WorkbenchPlugin.getDefault().getDecoratorManager());
                }
                catch (CoreException exception) {
                    exceptions[0] = exception;
                }
            }
        });
        if (this.decorator == null) {
            this.labelProviderCreationFailed = true;
            this.setEnabled(false);
        }
        if (exceptions[0] != null) {
            throw exceptions[0];
        }
        return this.decorator;
    }

    protected void refreshDecorator() {
        if (!this.enabled && this.decorator != null) {
            ILabelDecorator cached = this.decorator;
            this.decorator = null;
            this.disposeCachedDecorator((IBaseLabelProvider)cached);
        }
    }

    Image decorateImage(Image image, Object element) {
        try {
            ILabelDecorator currentDecorator = this.internalGetDecorator();
            if (currentDecorator != null) {
                return currentDecorator.decorateImage(image, element);
            }
        }
        catch (CoreException exception) {
            this.handleCoreException(exception);
        }
        return null;
    }

    String decorateText(String text, Object element) {
        try {
            ILabelDecorator currentDecorator = this.internalGetDecorator();
            if (currentDecorator != null) {
                return currentDecorator.decorateText(text, element);
            }
        }
        catch (CoreException exception) {
            this.handleCoreException(exception);
        }
        return null;
    }

    public ILabelDecorator getDecorator() {
        return this.decorator;
    }

    protected IBaseLabelProvider internalGetLabelProvider() throws CoreException {
        return this.internalGetDecorator();
    }

    public boolean isFull() {
        return true;
    }
}

