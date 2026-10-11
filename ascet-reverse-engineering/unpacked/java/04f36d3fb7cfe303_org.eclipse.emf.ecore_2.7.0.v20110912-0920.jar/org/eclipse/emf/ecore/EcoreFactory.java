/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EcoreFactoryImpl;

public interface EcoreFactory
extends EFactory {
    public static final EcoreFactory eINSTANCE = EcoreFactoryImpl.init();

    public EObject createEObject();

    public EAttribute createEAttribute();

    public EAnnotation createEAnnotation();

    public EClass createEClass();

    public EDataType createEDataType();

    public EParameter createEParameter();

    public EOperation createEOperation();

    public EPackage createEPackage();

    public EFactory createEFactory();

    public EEnumLiteral createEEnumLiteral();

    public EEnum createEEnum();

    public EReference createEReference();

    public EGenericType createEGenericType();

    public ETypeParameter createETypeParameter();

    public EcorePackage getEcorePackage();
}

