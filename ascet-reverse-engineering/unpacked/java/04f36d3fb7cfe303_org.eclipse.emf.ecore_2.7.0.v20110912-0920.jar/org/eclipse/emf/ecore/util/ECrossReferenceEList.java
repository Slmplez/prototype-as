/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.util.EContentsEList;
import org.eclipse.emf.ecore.util.FeatureMapUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ECrossReferenceEList<E>
extends EContentsEList<E> {
    public static final ECrossReferenceEList<?> EMPTY_CROSS_REFERENCE_ELIST = new ECrossReferenceEList<Object>(null, null){

        @Override
        public List<Object> basicList() {
            return this;
        }
    };

    public static <T> ECrossReferenceEList<T> emptyCrossReferenceEList() {
        return EMPTY_CROSS_REFERENCE_ELIST;
    }

    public static <T> ECrossReferenceEList<T> createECrossReferenceEList(EObject eObject) {
        EStructuralFeature[] eStructuralFeatures = ((EClassImpl.FeatureSubsetSupplier)eObject.eClass().getEAllStructuralFeatures()).crossReferences();
        return eStructuralFeatures == null ? ECrossReferenceEList.emptyCrossReferenceEList() : new ECrossReferenceEList(eObject, eStructuralFeatures);
    }

    public ECrossReferenceEList(EObject eObject) {
        super(eObject, ((EClassImpl.FeatureSubsetSupplier)eObject.eClass().getEAllStructuralFeatures()).crossReferences());
    }

    protected ECrossReferenceEList(EObject eObject, EStructuralFeature[] eStructuralFeatures) {
        super(eObject, eStructuralFeatures);
    }

    @Override
    protected boolean isIncluded(EStructuralFeature eStructuralFeature) {
        if (FeatureMapUtil.isFeatureMap(eStructuralFeature)) {
            return true;
        }
        EReference eReference = (EReference)eStructuralFeature;
        return !eReference.isContainment() && !eReference.isContainer();
    }

    @Override
    protected boolean isIncludedEntry(EStructuralFeature eStructuralFeature) {
        if (eStructuralFeature instanceof EReference) {
            EReference eReference = (EReference)eStructuralFeature;
            return !eReference.isContainment() && !eReference.isContainer();
        }
        return false;
    }

    @Override
    protected ListIterator<E> newResolvingListIterator() {
        return new ResolvingFeatureIteratorImpl(this.eObject, this.eStructuralFeatures);
    }

    @Override
    protected ListIterator<E> newNonResolvingListIterator() {
        return new FeatureIteratorImpl(this.eObject, this.eStructuralFeatures);
    }

    @Override
    public List<E> basicList() {
        return new ECrossReferenceEList<E>(this.eObject, this.eStructuralFeatures){

            @Override
            protected boolean resolve() {
                return false;
            }
        };
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureIteratorImpl<E>
    extends EContentsEList.FeatureIteratorImpl<E> {
        protected static final EStructuralFeature[] NO_FEATURES = new EStructuralFeature[0];

        public FeatureIteratorImpl(EObject eObject) {
            this(eObject, ((EClassImpl.FeatureSubsetSupplier)eObject.eClass().getEAllStructuralFeatures()).crossReferences());
        }

        public FeatureIteratorImpl(EObject eObject, EStructuralFeature[] eStructuralFeatures) {
            super(eObject, eStructuralFeatures == null ? NO_FEATURES : eStructuralFeatures);
        }

        @Override
        protected boolean isIncludedEntry(EStructuralFeature eStructuralFeature) {
            if (eStructuralFeature instanceof EReference) {
                EReference eReference = (EReference)eStructuralFeature;
                return !eReference.isContainment() && !eReference.isContainer();
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ResolvingFeatureIteratorImpl<E>
    extends FeatureIteratorImpl<E> {
        public ResolvingFeatureIteratorImpl(EObject eObject) {
            super(eObject);
        }

        public ResolvingFeatureIteratorImpl(EObject eObject, EStructuralFeature[] eStructuralFeatures) {
            super(eObject, eStructuralFeatures);
        }

        @Override
        protected boolean resolve() {
            return true;
        }
    }
}

