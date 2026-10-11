/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.xml.type.XMLTypePackage$Literals
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ElementHandlerImpl
implements XMLResource.ElementHandler {
    protected boolean considerSubtypes;
    protected Collection<? extends EPackage> ePackages;

    public ElementHandlerImpl(boolean considerSubtypes) {
        this.considerSubtypes = considerSubtypes;
    }

    public ElementHandlerImpl(boolean considerSubtypes, Collection<? extends EPackage> ePackages) {
        this.considerSubtypes = considerSubtypes;
        this.ePackages = ePackages;
    }

    /*
     * Could not resolve type clashes
     * Unable to fully structure code
     */
    @Override
    public EStructuralFeature getRoot(ExtendedMetaData extendedMetaData, EClassifier eClassifier) {
        if (extendedMetaData != null) ** GOTO lbl17
        return null;
lbl-1000:
        // 1 sources

        {
            eClass = extendedMetaData.getDocumentRoot(eClassifier.getEPackage());
            if (eClass != null && eClass != XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT) {
                for (EStructuralFeature element : extendedMetaData.getElements(eClass)) {
                    if (element.getEType() != eClassifier || !element.isChangeable()) continue;
                    return element;
                }
            }
            if (this.ePackages != null) {
                for (EPackage ePackage : this.ePackages) {
                    eClass = extendedMetaData.getDocumentRoot(ePackage);
                    if (eClass == null) continue;
                    for (EStructuralFeature element : extendedMetaData.getElements(eClass)) {
                        if (element.getEType() != eClassifier || !element.isChangeable()) continue;
                        return element;
                    }
                }
            }
            eClassifier = this.getSuperType(extendedMetaData, eClassifier);
lbl17:
            // 2 sources

            ** while (eClassifier != null)
        }
lbl18:
        // 1 sources

        return null;
    }

    protected EClassifier getSuperType(ExtendedMetaData extendedMetaData, EClassifier eClassifier) {
        if (eClassifier instanceof EDataType) {
            return extendedMetaData.getBaseType((EDataType)eClassifier);
        }
        EList eSuperTypes = ((EClass)eClassifier).getESuperTypes();
        if (eSuperTypes.isEmpty()) {
            return null;
        }
        return (EClassifier)eSuperTypes.get(0);
    }

    @Override
    public EStructuralFeature getSubstitutionGroup(ExtendedMetaData extendedMetaData, EStructuralFeature eStructuralFeature, EClassifier eClassifier) {
        if (extendedMetaData == null) {
            return null;
        }
        EClass eContainingClass = eStructuralFeature.getEContainingClass();
        while (eClassifier != null) {
            EStructuralFeature result = this.getSubstitutionGroup(extendedMetaData, eContainingClass.getEPackage(), eContainingClass, eStructuralFeature, eClassifier);
            if (result != null) {
                return result;
            }
            result = this.getSubstitutionGroup(extendedMetaData, eClassifier.getEPackage(), eContainingClass, eStructuralFeature, eClassifier);
            if (result != null) {
                return result;
            }
            if (this.ePackages != null) {
                for (EPackage ePackage : this.ePackages) {
                    result = this.getSubstitutionGroup(extendedMetaData, ePackage, eContainingClass, eStructuralFeature, eClassifier);
                    if (result == null) continue;
                    return result;
                }
            }
            if (!this.considerSubtypes) break;
            eClassifier = this.getSuperType(extendedMetaData, eClassifier);
        }
        return null;
    }

    protected EStructuralFeature getSubstitutionGroup(ExtendedMetaData extendedMetaData, EPackage ePackage, EClass eContainingClass, EStructuralFeature eStructuralFeature, EClassifier eClassifier) {
        EClass eClass = extendedMetaData.getDocumentRoot(ePackage);
        if (eClass != null) {
            for (EStructuralFeature element : extendedMetaData.getElements(eClass)) {
                if (element.getEType() != eClassifier || !element.isChangeable() || extendedMetaData.getAffiliation(eContainingClass, element) != eStructuralFeature) continue;
                return element;
            }
        }
        return null;
    }
}

