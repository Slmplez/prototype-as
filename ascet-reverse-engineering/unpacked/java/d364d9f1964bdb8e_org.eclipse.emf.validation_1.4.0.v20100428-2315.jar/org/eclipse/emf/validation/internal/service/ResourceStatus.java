/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.service;

import java.util.Collections;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.model.ConstraintSeverity;
import org.eclipse.emf.validation.model.ConstraintStatus;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.AbstractConstraintDescriptor;
import org.eclipse.emf.validation.service.IConstraintDescriptor;

public final class ResourceStatus
extends ConstraintStatus {
    private static IModelConstraint dummy = new IModelConstraint(){
        private final IConstraintDescriptor descriptor = new AbstractConstraintDescriptor(){

            @Override
            public boolean targetsTypeOf(EObject object) {
                return false;
            }

            @Override
            public boolean targetsEvent(Notification notification) {
                return false;
            }

            @Override
            public int getStatusCode() {
                return 0;
            }

            @Override
            public ConstraintSeverity getSeverity() {
                return ConstraintSeverity.INFO;
            }

            @Override
            public String getPluginId() {
                return EMFModelValidationPlugin.getPluginId();
            }

            @Override
            public String getName() {
                return "";
            }

            @Override
            public String getMessagePattern() {
                return "";
            }

            @Override
            public String getId() {
                return String.valueOf(this.getPluginId()) + ".resourceMarker";
            }

            @Override
            public EvaluationMode<?> getEvaluationMode() {
                return EvaluationMode.BATCH;
            }

            @Override
            public String getDescription() {
                return null;
            }

            @Override
            public String getBody() {
                return null;
            }
        };

        public IStatus validate(IValidationContext ctx) {
            return ctx.createSuccessStatus();
        }

        public IConstraintDescriptor getDescriptor() {
            return this.descriptor;
        }
    };

    public ResourceStatus(EObject root) {
        super(dummy, root, 0, 0, ValidationMessages.eval_all_pass_INFO_, Collections.singleton(root));
    }
}

