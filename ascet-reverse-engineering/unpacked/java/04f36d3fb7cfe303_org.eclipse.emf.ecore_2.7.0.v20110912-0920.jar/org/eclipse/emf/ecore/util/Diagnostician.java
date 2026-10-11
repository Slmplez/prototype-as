/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Diagnostician
implements EValidator.SubstitutionLabelProvider,
EValidator {
    public static final Diagnostician INSTANCE = new Diagnostician();
    protected EValidator.Registry eValidatorRegistry;

    public Diagnostician(EValidator.Registry eValidatorRegistry) {
        this.eValidatorRegistry = eValidatorRegistry;
    }

    public Diagnostician() {
        this(EValidator.Registry.INSTANCE);
    }

    @Override
    public String getObjectLabel(EObject eObject) {
        return EcoreUtil.getIdentification(eObject);
    }

    @Override
    public String getFeatureLabel(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature.getName();
    }

    @Override
    public String getValueLabel(EDataType eDataType, Object value) {
        return EcoreUtil.convertToString(eDataType, value);
    }

    public Map<Object, Object> createDefaultContext() {
        HashMap<Object, Object> context = new HashMap<Object, Object>();
        context.put(EValidator.SubstitutionLabelProvider.class, this);
        context.put(EValidator.class, this);
        return context;
    }

    public BasicDiagnostic createDefaultDiagnostic(EObject eObject) {
        return new BasicDiagnostic("org.eclipse.emf.ecore", 0, EcorePlugin.INSTANCE.getString("_UI_DiagnosticRoot_diagnostic", new Object[]{this.getObjectLabel(eObject)}), new Object[]{eObject});
    }

    public BasicDiagnostic createDefaultDiagnostic(EDataType eDataType, Object value) {
        return new BasicDiagnostic("org.eclipse.emf.ecore", 0, EcorePlugin.INSTANCE.getString("_UI_DiagnosticRoot_diagnostic", new Object[]{this.getValueLabel(eDataType, value)}), new Object[]{value, eDataType});
    }

    public Diagnostic validate(EObject eObject) {
        BasicDiagnostic diagnostics = this.createDefaultDiagnostic(eObject);
        this.validate(eObject, (DiagnosticChain)diagnostics, this.createDefaultContext());
        return diagnostics;
    }

    public Diagnostic validate(EObject eObject, Map<?, ?> contextEntries) {
        BasicDiagnostic diagnostics = this.createDefaultDiagnostic(eObject);
        Map<Object, Object> context = this.createDefaultContext();
        context.putAll(contextEntries);
        this.validate(eObject, (DiagnosticChain)diagnostics, context);
        return diagnostics;
    }

    public boolean validate(EObject eObject, DiagnosticChain diagnostics) {
        return this.validate(eObject, diagnostics, this.createDefaultContext());
    }

    @Override
    public boolean validate(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        return this.validate(eObject.eClass(), eObject, diagnostics, context);
    }

    @Override
    public boolean validate(EClass eClass, EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        Object eValidator;
        EClass eType = eClass;
        while ((eValidator = this.eValidatorRegistry.get(eType.eContainer())) == null) {
            EList<EClass> eSuperTypes = eType.getESuperTypes();
            if (eSuperTypes.isEmpty()) {
                eValidator = this.eValidatorRegistry.get(null);
                break;
            }
            eType = (EClass)eSuperTypes.get(0);
        }
        boolean circular = context.get("org.eclipse.emf.ecore.EObject_NoCircularContainment") == eObject;
        boolean result = ((EValidator)eValidator).validate(eClass, eObject, diagnostics, context);
        if ((result || diagnostics != null) && !circular) {
            result &= this.doValidateContents(eObject, diagnostics, context);
        }
        return result;
    }

    protected boolean doValidateContents(EObject eObject, DiagnosticChain diagnostics, Map<Object, Object> context) {
        EList<EObject> eContents = eObject.eContents();
        if (!eContents.isEmpty()) {
            Iterator i = eContents.iterator();
            EObject child = (EObject)i.next();
            boolean result = this.validate(child, diagnostics, context);
            while (i.hasNext() && (result || diagnostics != null)) {
                child = (EObject)i.next();
                result &= this.validate(child, diagnostics, context);
            }
            return result;
        }
        return true;
    }

    public Diagnostic validate(EDataType eDataType, Object value) {
        BasicDiagnostic diagnostics = this.createDefaultDiagnostic(eDataType, value);
        this.validate(eDataType, value, (DiagnosticChain)diagnostics, this.createDefaultContext());
        return diagnostics;
    }

    @Override
    public boolean validate(EDataType eDataType, Object value, DiagnosticChain diagnostics, Map<Object, Object> context) {
        Object eValidator = this.eValidatorRegistry.get(eDataType.eContainer());
        if (eValidator == null) {
            eValidator = this.eValidatorRegistry.get(null);
        }
        return ((EValidator)eValidator).validate(eDataType, value, diagnostics, context);
    }
}

