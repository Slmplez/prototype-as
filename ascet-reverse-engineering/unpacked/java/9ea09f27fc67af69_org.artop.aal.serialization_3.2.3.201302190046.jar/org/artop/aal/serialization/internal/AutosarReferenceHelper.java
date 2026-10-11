/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  org.artop.aal.common.resource.AutosarURIFactory
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.artop.aal.serialization.internal;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import java.util.List;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.artop.aal.common.util.IReferringClass;
import org.artop.aal.serialization.internal.RelativeReference;
import org.artop.aal.serialization.internal.util.ArtopTaggedValues;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;

public class AutosarReferenceHelper {
    protected EMap<String, String> annotationDetails = null;
    protected EReference reference = null;

    public AutosarReferenceHelper(EReference reference) {
        this.reference = reference;
    }

    public String getReferenceName(EReference reference) {
        AutosarTaggedValues taggedValues = AutosarTaggedValues.get((EModelElement)reference);
        return reference.getUpperBound() < 0 || reference.getUpperBound() > 1 ? taggedValues.xmlNamePlural : taggedValues.xmlName;
    }

    public static String getDest(EObject sourceObject, EReference reference, EObject referencedValue, int index) {
        String result = "";
        if (referencedValue == null) {
            return result;
        }
        if (sourceObject instanceof IReferringClass && (result = ((IReferringClass)sourceObject).eGetReferringDest(reference.getFeatureID(), index)) != null) {
            return result;
        }
        result = AutosarTaggedValues.get((EModelElement)referencedValue.eClass()).xmlName;
        return result;
    }

    public static boolean isAbstract(EClass clz) {
        if (clz.isAbstract()) {
            return !ArtopTaggedValues.get((EModelElement)clz).isAbstract;
        }
        return false;
    }

    public static RelativeReference getRelativeReference(EObject referringObject, EObject referredObject) {
        Assert.isNotNull((Object)referringObject);
        Assert.isNotNull((Object)referredObject);
        String referredObjectShortNamePath = AutosarURIFactory.getAbsoluteQualifiedName((Object)referredObject);
        EObject container = referringObject;
        while (container != null) {
            if (container instanceof GARPackage) {
                EStructuralFeature referenceBasesStructuralFeature = container.eClass().getEStructuralFeature("referenceBases");
                if (referenceBasesStructuralFeature == null) {
                    return null;
                }
                Object featureValue = container.eGet(referenceBasesStructuralFeature);
                if (featureValue instanceof List) {
                    List referenceBases = (List)featureValue;
                    String mostQualifiedPackageReferenceShortNamePath = null;
                    EObject mostQualifiedReferenceBase = null;
                    for (Object referenceBaseObject : referenceBases) {
                        EStructuralFeature packageStructuralFeature;
                        GARPackage packageObject;
                        String packageReferenceShortNamePath;
                        EObject referenceBase;
                        if (!(referenceBaseObject instanceof EObject) || (referenceBase = (EObject)referenceBaseObject) == referringObject || !referredObjectShortNamePath.startsWith(packageReferenceShortNamePath = AutosarURIFactory.getAbsoluteQualifiedName((Object)(packageObject = (GARPackage)referenceBase.eGet(packageStructuralFeature = referenceBase.eClass().getEStructuralFeature("package"))))) || mostQualifiedPackageReferenceShortNamePath != null && !packageReferenceShortNamePath.startsWith(mostQualifiedPackageReferenceShortNamePath)) continue;
                        mostQualifiedPackageReferenceShortNamePath = packageReferenceShortNamePath;
                        mostQualifiedReferenceBase = referenceBase;
                    }
                    if (mostQualifiedReferenceBase != null) {
                        EStructuralFeature shortLabelStructuralFeature = mostQualifiedReferenceBase.eClass().getEStructuralFeature("shortLabel");
                        String shortLabelObject = (String)mostQualifiedReferenceBase.eGet(shortLabelStructuralFeature);
                        RelativeReference result = new RelativeReference();
                        result.setBase(shortLabelObject);
                        EStructuralFeature isDefaultStructuralFeature = mostQualifiedReferenceBase.eClass().getEStructuralFeature("isDefault");
                        Boolean isDefault = (Boolean)mostQualifiedReferenceBase.eGet(isDefaultStructuralFeature);
                        result.setIsDefault(isDefault);
                        result.setPrefix(mostQualifiedPackageReferenceShortNamePath);
                        int startIndex = mostQualifiedPackageReferenceShortNamePath.length() + "/".length();
                        result.setValue(referredObjectShortNamePath.substring(startIndex));
                        return result;
                    }
                }
            }
            container = container.eContainer();
        }
        return null;
    }

    public static String convertRelativeReferenceToAbsoluteReference(String relativeReference, String base, EObject referringObject) {
        String absoluteReference = null;
        EObject container = referringObject;
        while (container != null) {
            if (container instanceof GARPackage) {
                EStructuralFeature referenceBasesStructuralFeature = container.eClass().getEStructuralFeature("referenceBases");
                if (referenceBasesStructuralFeature == null) {
                    return null;
                }
                Object featureValue = container.eGet(referenceBasesStructuralFeature);
                if (featureValue instanceof List) {
                    List referenceBases = (List)featureValue;
                    for (Object referenceBaseObject : referenceBases) {
                        EObject referenceBase;
                        if (!(referenceBaseObject instanceof EObject) || (referenceBase = (EObject)referenceBaseObject) == referringObject) continue;
                        if (base != null) {
                            EStructuralFeature shortLabelStructuralFeature = referenceBase.eClass().getEStructuralFeature("shortLabel");
                            String shortLabel = (String)referenceBase.eGet(shortLabelStructuralFeature);
                            if (!base.equals(shortLabel)) continue;
                            EStructuralFeature packageStructuralFeature = referenceBase.eClass().getEStructuralFeature("package");
                            GARPackage packageObject = (GARPackage)referenceBase.eGet(packageStructuralFeature);
                            String packageReferenceShortNamePath = AutosarURIFactory.getAbsoluteQualifiedName((Object)packageObject);
                            return String.valueOf(packageReferenceShortNamePath) + "/" + relativeReference;
                        }
                        EStructuralFeature isDefaultStructuralFeature = referenceBase.eClass().getEStructuralFeature("isDefault");
                        Boolean isDefault = (Boolean)referenceBase.eGet(isDefaultStructuralFeature);
                        if (!isDefault.booleanValue()) continue;
                        EStructuralFeature packageStructuralFeature = referenceBase.eClass().getEStructuralFeature("package");
                        GARPackage packageObject = (GARPackage)referenceBase.eGet(packageStructuralFeature);
                        String packageReferenceShortNamePath = AutosarURIFactory.getAbsoluteQualifiedName((Object)packageObject);
                        return String.valueOf(packageReferenceShortNamePath) + "/" + relativeReference;
                    }
                }
            }
            container = container.eContainer();
        }
        return absoluteReference;
    }
}

