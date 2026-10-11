/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EClass
extends EClassifier {
    public boolean isAbstract();

    public void setAbstract(boolean var1);

    public boolean isInterface();

    public void setInterface(boolean var1);

    public EList<EClass> getESuperTypes();

    public EList<EClass> getEAllSuperTypes();

    public EAttribute getEIDAttribute();

    public EList<EStructuralFeature> getEStructuralFeatures();

    public EList<EGenericType> getEGenericSuperTypes();

    public EList<EGenericType> getEAllGenericSuperTypes();

    public EList<EAttribute> getEAttributes();

    public EList<EAttribute> getEAllAttributes();

    public EList<EReference> getEReferences();

    public EList<EReference> getEAllReferences();

    public EList<EReference> getEAllContainments();

    public EList<EStructuralFeature> getEAllStructuralFeatures();

    public EList<EOperation> getEOperations();

    public EList<EOperation> getEAllOperations();

    public boolean isSuperTypeOf(EClass var1);

    public int getFeatureCount();

    public EStructuralFeature getEStructuralFeature(int var1);

    public EStructuralFeature getEStructuralFeature(String var1);

    public int getOperationCount();

    public EOperation getEOperation(int var1);

    public int getOperationID(EOperation var1);

    public EOperation getOverride(EOperation var1);

    public int getFeatureID(EStructuralFeature var1);
}

