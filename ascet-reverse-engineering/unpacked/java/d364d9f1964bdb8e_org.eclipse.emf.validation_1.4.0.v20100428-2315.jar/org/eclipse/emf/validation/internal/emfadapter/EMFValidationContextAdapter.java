/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.emfadapter;

import java.util.List;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.IValidationContext;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;

public class EMFValidationContextAdapter
extends BasicDiagnostic {
    private IValidationContext adaptedContext;
    private Diagnostic lastStatus;

    public EMFValidationContextAdapter() {
        super(EMFModelValidationPlugin.getPluginId(), 0, ValidationMessages.emfadapter_noMessage, null);
    }

    public void add(Diagnostic diagnostic) {
        List ddata;
        if (diagnostic.getSeverity() != 0 && (ddata = diagnostic.getData()) != null) {
            for (Object next : ddata) {
                if (!(next instanceof EObject)) continue;
                this.adaptedContext.addResult((EObject)next);
            }
        }
        this.lastStatus = diagnostic;
    }

    IValidationContext getAdaptedContext() {
        return this.adaptedContext;
    }

    void setAdaptedContext(IValidationContext adaptedContext) {
        this.adaptedContext = adaptedContext;
        this.lastStatus = null;
    }

    Diagnostic getLastStatus() {
        return this.lastStatus;
    }
}

