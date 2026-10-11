/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 */
package org.eclipse.emf.ecore.util;

import java.util.Map;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.util.EcoreSwitch;

public class EcoreAdapterFactory
extends AdapterFactoryImpl {
    protected static EcorePackage modelPackage;
    protected EcoreSwitch<Adapter> modelSwitch = new EcoreSwitch<Adapter>(){

        @Override
        public Adapter caseEAttribute(EAttribute object) {
            return EcoreAdapterFactory.this.createEAttributeAdapter();
        }

        @Override
        public Adapter caseEAnnotation(EAnnotation object) {
            return EcoreAdapterFactory.this.createEAnnotationAdapter();
        }

        @Override
        public Adapter caseEClass(EClass object) {
            return EcoreAdapterFactory.this.createEClassAdapter();
        }

        @Override
        public Adapter caseEClassifier(EClassifier object) {
            return EcoreAdapterFactory.this.createEClassifierAdapter();
        }

        @Override
        public Adapter caseEDataType(EDataType object) {
            return EcoreAdapterFactory.this.createEDataTypeAdapter();
        }

        @Override
        public Adapter caseEEnum(EEnum object) {
            return EcoreAdapterFactory.this.createEEnumAdapter();
        }

        @Override
        public Adapter caseEEnumLiteral(EEnumLiteral object) {
            return EcoreAdapterFactory.this.createEEnumLiteralAdapter();
        }

        @Override
        public Adapter caseEFactory(EFactory object) {
            return EcoreAdapterFactory.this.createEFactoryAdapter();
        }

        @Override
        public Adapter caseEModelElement(EModelElement object) {
            return EcoreAdapterFactory.this.createEModelElementAdapter();
        }

        @Override
        public Adapter caseENamedElement(ENamedElement object) {
            return EcoreAdapterFactory.this.createENamedElementAdapter();
        }

        @Override
        public Adapter caseEOperation(EOperation object) {
            return EcoreAdapterFactory.this.createEOperationAdapter();
        }

        @Override
        public Adapter caseEPackage(EPackage object) {
            return EcoreAdapterFactory.this.createEPackageAdapter();
        }

        @Override
        public Adapter caseEParameter(EParameter object) {
            return EcoreAdapterFactory.this.createEParameterAdapter();
        }

        @Override
        public Adapter caseEReference(EReference object) {
            return EcoreAdapterFactory.this.createEReferenceAdapter();
        }

        @Override
        public Adapter caseEStructuralFeature(EStructuralFeature object) {
            return EcoreAdapterFactory.this.createEStructuralFeatureAdapter();
        }

        @Override
        public Adapter caseETypedElement(ETypedElement object) {
            return EcoreAdapterFactory.this.createETypedElementAdapter();
        }

        @Override
        public Adapter caseEStringToStringMapEntry(Map.Entry<String, String> object) {
            return EcoreAdapterFactory.this.createEStringToStringMapEntryAdapter();
        }

        @Override
        public Adapter caseEGenericType(EGenericType object) {
            return EcoreAdapterFactory.this.createEGenericTypeAdapter();
        }

        @Override
        public Adapter caseETypeParameter(ETypeParameter object) {
            return EcoreAdapterFactory.this.createETypeParameterAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EcoreAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EcoreAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EcorePackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createEModelElementAdapter() {
        return null;
    }

    public Adapter createEStructuralFeatureAdapter() {
        return null;
    }

    public Adapter createEAnnotationAdapter() {
        return null;
    }

    public Adapter createEAttributeAdapter() {
        return null;
    }

    public Adapter createEClassAdapter() {
        return null;
    }

    public Adapter createEDataTypeAdapter() {
        return null;
    }

    public Adapter createEClassifierAdapter() {
        return null;
    }

    public Adapter createENamedElementAdapter() {
        return null;
    }

    public Adapter createETypedElementAdapter() {
        return null;
    }

    public Adapter createEParameterAdapter() {
        return null;
    }

    public Adapter createEOperationAdapter() {
        return null;
    }

    public Adapter createEPackageAdapter() {
        return null;
    }

    public Adapter createEFactoryAdapter() {
        return null;
    }

    public Adapter createEEnumLiteralAdapter() {
        return null;
    }

    public Adapter createEEnumAdapter() {
        return null;
    }

    public Adapter createEReferenceAdapter() {
        return null;
    }

    public Adapter createEStringToStringMapEntryAdapter() {
        return null;
    }

    public Adapter createEGenericTypeAdapter() {
        return null;
    }

    public Adapter createETypeParameterAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

