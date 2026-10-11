/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.internal;

import org.eclipse.core.expressions.Expression;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.AbstractEnabledHandler;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IEvaluationService;

public abstract class AbstractEvaluationHandler
extends AbstractEnabledHandler {
    private static final String PROP_ENABLED = "enabled";
    private IEvaluationService evaluationService;
    private IPropertyChangeListener enablementListener;
    private IEvaluationReference enablementRef;
    static /* synthetic */ Class class$0;

    protected IEvaluationService getEvaluationService() {
        if (this.evaluationService == null) {
            IWorkbench iWorkbench = PlatformUI.getWorkbench();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.evaluationService = (IEvaluationService)iWorkbench.getService(clazz);
        }
        return this.evaluationService;
    }

    protected void registerEnablement() {
        this.enablementRef = this.getEvaluationService().addEvaluationListener(this.getEnabledWhenExpression(), this.getEnablementListener(), PROP_ENABLED);
    }

    protected abstract Expression getEnabledWhenExpression();

    private IPropertyChangeListener getEnablementListener() {
        if (this.enablementListener == null) {
            this.enablementListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    if (event.getProperty() == AbstractEvaluationHandler.PROP_ENABLED) {
                        if (event.getNewValue() instanceof Boolean) {
                            AbstractEvaluationHandler.this.setEnabled((Boolean)event.getNewValue());
                        } else {
                            AbstractEvaluationHandler.this.setEnabled(false);
                        }
                    }
                }
            };
        }
        return this.enablementListener;
    }

    public void dispose() {
        if (this.enablementRef != null) {
            this.evaluationService.removeEvaluationListener(this.enablementRef);
            this.enablementRef = null;
            this.enablementListener = null;
            this.evaluationService = null;
        }
        super.dispose();
    }
}

