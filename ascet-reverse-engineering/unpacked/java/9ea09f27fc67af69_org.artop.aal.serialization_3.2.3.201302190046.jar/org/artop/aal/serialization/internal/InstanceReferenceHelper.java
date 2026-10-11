/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EReference
 */
package org.artop.aal.serialization.internal;

import java.util.List;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EReference;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstanceReferenceHelper {
    private static final String TRUE = Boolean.toString(true);
    private static final String BACKWARD_COMP_ANNO_SOURCE = "BackwardCompatibility";
    private static final Object ABSTRACT_INST_REF_KEY = "abstractInstRef";
    protected EReference instanceReferenceFeature = null;
    private EClass instanceReferenceClass;
    protected EMap<String, String> featureAnnotationDetails = null;

    public InstanceReferenceHelper(EReference instanceReferenceFeature, EClass instanceReferenceClass) {
        this.instanceReferenceFeature = instanceReferenceFeature;
        this.instanceReferenceClass = instanceReferenceClass;
    }

    public String getInstanceReferenceName() {
        return AutosarTaggedValues.get((EModelElement)this.instanceReferenceFeature).xmlName;
    }

    public boolean isSavedAsInstRefToAbstractClass() {
        return this.isReferingAbstractClass() || this.hasEnabledAbstractInstRefAnnotation();
    }

    private boolean hasEnabledAbstractInstRefAnnotation() {
        EAnnotation compAnno = this.instanceReferenceFeature.getEAnnotation(BACKWARD_COMP_ANNO_SOURCE);
        if (compAnno == null) {
            return false;
        }
        String abstractInstRef = (String)compAnno.getDetails().get(ABSTRACT_INST_REF_KEY);
        return TRUE.equalsIgnoreCase(abstractInstRef);
    }

    public boolean isReferingAbstractClass() {
        return this.instanceReferenceFeature.getEReferenceType().isAbstract();
    }

    public String getReferedClassXMLName() {
        return AutosarTaggedValues.get((EModelElement)this.instanceReferenceClass).xmlName;
    }

    public List<EReference> getOrderedReferences() {
        return ((EClass)this.instanceReferenceFeature.getEType()).getEAllReferences();
    }

    public static String getReferenceName(EReference reference) {
        return AutosarTaggedValues.get((EModelElement)reference).xmlName;
    }
}

