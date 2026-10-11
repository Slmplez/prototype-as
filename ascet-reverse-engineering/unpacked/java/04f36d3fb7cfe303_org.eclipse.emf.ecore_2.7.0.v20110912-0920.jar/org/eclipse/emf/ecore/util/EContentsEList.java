/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.util.AbstractSequentialInternalEList;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EContentsEList<E>
extends AbstractSequentialInternalEList<E>
implements EList<E>,
InternalEList<E> {
    public static final EContentsEList<?> EMPTY_CONTENTS_ELIST = new EContentsEList<Object>(null, null){

        @Override
        public List<Object> basicList() {
            return this;
        }
    };
    protected final EObject eObject;
    protected final EStructuralFeature[] eStructuralFeatures;

    public static <T> EContentsEList<T> emptyContentsEList() {
        return EMPTY_CONTENTS_ELIST;
    }

    public static <T> EContentsEList<T> createEContentsEList(EObject eObject) {
        EStructuralFeature[] eStructuralFeatures = ((EClassImpl.FeatureSubsetSupplier)eObject.eClass().getEAllStructuralFeatures()).containments();
        return eStructuralFeatures == null ? EContentsEList.emptyContentsEList() : new EContentsEList(eObject, eStructuralFeatures);
    }

    public EContentsEList(EObject eObject) {
        this.eObject = eObject;
        this.eStructuralFeatures = ((EClassImpl.FeatureSubsetSupplier)eObject.eClass().getEAllStructuralFeatures()).containments();
    }

    public EContentsEList(EObject eObject, List<? extends EStructuralFeature> eStructuralFeatures) {
        this.eObject = eObject;
        this.eStructuralFeatures = new EStructuralFeature[eStructuralFeatures.size()];
        eStructuralFeatures.toArray(this.eStructuralFeatures);
    }

    public EContentsEList(EObject eObject, EStructuralFeature[] eStructuralFeatures) {
        this.eObject = eObject;
        this.eStructuralFeatures = eStructuralFeatures;
    }

    protected ListIterator<E> newListIterator() {
        return this.resolve() ? this.newResolvingListIterator() : this.newNonResolvingListIterator();
    }

    protected ListIterator<E> newResolvingListIterator() {
        return new ResolvingFeatureIteratorImpl(this.eObject, this.eStructuralFeatures);
    }

    protected ListIterator<E> newNonResolvingListIterator() {
        return new FeatureIteratorImpl(this.eObject, this.eStructuralFeatures);
    }

    protected Iterator<E> newIterator() {
        return this.newListIterator();
    }

    protected boolean useIsSet() {
        return true;
    }

    protected boolean resolve() {
        return true;
    }

    protected boolean isIncluded(EStructuralFeature eStructuralFeature) {
        return true;
    }

    protected boolean isIncludedEntry(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature instanceof EReference && ((EReference)eStructuralFeature).isContainment();
    }

    @Override
    public ListIterator<E> listIterator(int index) {
        if (this.eStructuralFeatures == null) {
            if (index != 0) {
                throw new IndexOutOfBoundsException("index=" + index + ", size=0");
            }
            return FeatureIteratorImpl.emptyIterator();
        }
        ListIterator<E> result = this.newListIterator();
        int i = 0;
        while (i < index) {
            result.next();
            ++i;
        }
        return result;
    }

    @Override
    public Iterator<E> iterator() {
        if (this.eStructuralFeatures == null) {
            return FeatureIteratorImpl.emptyIterator();
        }
        Iterator<E> result = this.newIterator();
        return result;
    }

    @Override
    public int size() {
        int result = 0;
        if (this.eStructuralFeatures != null) {
            int i = 0;
            while (i < this.eStructuralFeatures.length) {
                EStructuralFeature feature = this.eStructuralFeatures[i];
                if (this.isIncluded(feature) && (!this.useIsSet() || this.eObject.eIsSet(feature))) {
                    Object value = this.eObject.eGet(feature, false);
                    if (FeatureMapUtil.isFeatureMap(feature)) {
                        FeatureMap featureMap = (FeatureMap)value;
                        int j = 0;
                        int size = featureMap.size();
                        while (j < size) {
                            if (this.isIncludedEntry(featureMap.getEStructuralFeature(j)) && featureMap.getValue(j) != null) {
                                ++result;
                            }
                            ++j;
                        }
                    } else if (feature.isMany()) {
                        result += ((Collection)value).size();
                    } else if (value != null) {
                        ++result;
                    }
                }
                ++i;
            }
        }
        return result;
    }

    @Override
    public boolean isEmpty() {
        if (this.eStructuralFeatures != null) {
            int i = 0;
            while (i < this.eStructuralFeatures.length) {
                EStructuralFeature feature = this.eStructuralFeatures[i];
                if (this.isIncluded(feature) && (!this.useIsSet() || this.eObject.eIsSet(feature))) {
                    Object value = this.eObject.eGet(feature, false);
                    if (FeatureMapUtil.isFeatureMap(feature)) {
                        FeatureMap featureMap = (FeatureMap)value;
                        int j = 0;
                        int size = featureMap.size();
                        while (j < size) {
                            if (this.isIncludedEntry(featureMap.getEStructuralFeature(j)) && featureMap.getValue(j) != null) {
                                return false;
                            }
                            ++j;
                        }
                    } else if (feature.isMany() ? !((Collection)value).isEmpty() : value != null) {
                        return false;
                    }
                }
                ++i;
            }
        }
        return true;
    }

    @Override
    public void move(int newPosition, Object o) {
        throw new UnsupportedOperationException();
    }

    @Override
    public E move(int newPosition, int oldPosition) {
        throw new UnsupportedOperationException();
    }

    @Override
    public E basicGet(int index) {
        return this.basicList().get(index);
    }

    @Override
    public List<E> basicList() {
        return new EContentsEList<E>(this.eObject, this.eStructuralFeatures){

            @Override
            protected boolean resolve() {
                return false;
            }
        };
    }

    @Override
    public Iterator<E> basicIterator() {
        if (this.eStructuralFeatures == null) {
            return FeatureIteratorImpl.emptyIterator();
        }
        return this.newNonResolvingListIterator();
    }

    @Override
    public ListIterator<E> basicListIterator() {
        if (this.eStructuralFeatures == null) {
            return FeatureIteratorImpl.emptyIterator();
        }
        return this.newNonResolvingListIterator();
    }

    @Override
    public ListIterator<E> basicListIterator(int index) {
        if (this.eStructuralFeatures == null) {
            if (index < 0 || index > 1) {
                throw new IndexOutOfBoundsException("index=" + index + ", size=0");
            }
            return FeatureIteratorImpl.emptyIterator();
        }
        ListIterator<E> result = this.newNonResolvingListIterator();
        int i = 0;
        while (i < index) {
            result.next();
            ++i;
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface FeatureIterator<E>
    extends Iterator<E> {
        public EStructuralFeature feature();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureIteratorImpl<E>
    implements FeatureListIterator<E> {
        protected final EObject eObject;
        protected final EStructuralFeature[] eStructuralFeatures;
        protected int featureCursor;
        protected int cursor;
        protected int prepared;
        protected E preparedResult;
        protected EStructuralFeature preparedFeature;
        protected EStructuralFeature feature;
        protected boolean isHandlingFeatureMap;
        protected ListIterator<E> values;
        protected InternalEList<E> valueInternalEList;
        protected List<E> valueList;
        protected int valueListSize;
        protected int valueListIndex;
        public static final ListIterator<?> EMPTY_ITERATOR = new FeatureIteratorImpl<Object>(null, null){

            @Override
            public boolean hasNext() {
                return false;
            }

            @Override
            public boolean hasPrevious() {
                return false;
            }
        };

        public FeatureIteratorImpl(EObject eObject, List<? extends EStructuralFeature> eStructuralFeatures) {
            this.eObject = eObject;
            this.eStructuralFeatures = new EStructuralFeature[eStructuralFeatures.size()];
            eStructuralFeatures.toArray(this.eStructuralFeatures);
        }

        public FeatureIteratorImpl(EObject eObject, EStructuralFeature[] eStructuralFeatures) {
            this.eObject = eObject;
            this.eStructuralFeatures = eStructuralFeatures;
        }

        protected boolean resolve() {
            return false;
        }

        protected boolean useIsSet() {
            return true;
        }

        protected boolean isIncluded(EStructuralFeature eStructuralFeature) {
            return true;
        }

        protected boolean isIncludedEntry(EStructuralFeature eStructuralFeature) {
            return eStructuralFeature instanceof EReference && ((EReference)eStructuralFeature).isContainment();
        }

        @Override
        public EStructuralFeature feature() {
            return this.feature;
        }

        @Override
        public boolean hasNext() {
            E result;
            switch (this.prepared) {
                case 2: 
                case 3: {
                    return true;
                }
                case 1: {
                    return false;
                }
                case -3: {
                    if (this.values == null) {
                        ++this.valueListIndex;
                        break;
                    }
                    this.values.next();
                }
            }
            if (this.valueList == null || (this.values == null ? !this.scanNext() : !this.scanNext(this.values))) {
                while (this.featureCursor < this.eStructuralFeatures.length) {
                    EStructuralFeature feature;
                    if (!this.isIncluded(feature = this.eStructuralFeatures[this.featureCursor++]) || this.useIsSet() && !this.eObject.eIsSet(feature)) continue;
                    Object value = this.eObject.eGet(feature, this.resolve());
                    this.isHandlingFeatureMap = FeatureMapUtil.isFeatureMap(feature);
                    if (this.isHandlingFeatureMap || feature.isMany()) {
                        E result2;
                        Object newValueList;
                        this.valueList = this.resolve() ? (newValueList = (List)value) : (this.valueInternalEList = (newValueList = (InternalEList)value));
                        if (this.valueList instanceof RandomAccess) {
                            this.values = null;
                            this.valueListSize = this.valueList.size();
                            this.valueListIndex = 0;
                        } else {
                            ListIterator<E> listIterator = this.values = this.valueInternalEList == null ? this.valueList.listIterator() : this.valueInternalEList.basicListIterator();
                        }
                        if (!(this.values == null ? this.scanNext() : this.scanNext(this.values))) continue;
                        E e = this.values == null ? (this.valueInternalEList == null ? this.valueList.get(this.valueListIndex++) : this.valueInternalEList.basicGet(this.valueListIndex++)) : (result2 = this.values.next());
                        if (this.isHandlingFeatureMap) {
                            FeatureMap.Entry entry = (FeatureMap.Entry)result2;
                            this.preparedFeature = entry.getEStructuralFeature();
                            Object newPreparedResult = entry.getValue();
                            this.preparedResult = newPreparedResult;
                        } else {
                            E newPreparedResult = result2;
                            this.preparedResult = newPreparedResult;
                            this.preparedFeature = feature;
                        }
                        this.prepared = 3;
                        return true;
                    }
                    if (value == null) continue;
                    this.valueList = null;
                    this.values = null;
                    Object newPreparedResult = value;
                    this.preparedResult = newPreparedResult;
                    this.preparedFeature = feature;
                    this.prepared = 2;
                    return true;
                }
                this.valueList = null;
                this.values = null;
                this.isHandlingFeatureMap = false;
                this.prepared = 1;
                return false;
            }
            E e = this.values == null ? (this.valueInternalEList == null ? this.valueList.get(this.valueListIndex++) : this.valueInternalEList.basicGet(this.valueListIndex++)) : (result = this.values.next());
            if (this.isHandlingFeatureMap) {
                FeatureMap.Entry entry = (FeatureMap.Entry)result;
                this.preparedFeature = entry.getEStructuralFeature();
                Object newPreparedResult = entry.getValue();
                this.preparedResult = newPreparedResult;
            } else {
                E newPreparedResult = result;
                this.preparedResult = newPreparedResult;
            }
            this.prepared = 3;
            return true;
        }

        protected boolean scanNext(ListIterator<E> values) {
            if (this.isHandlingFeatureMap) {
                while (values.hasNext()) {
                    FeatureMap.Entry entry = (FeatureMap.Entry)values.next();
                    EStructuralFeature entryFeature = entry.getEStructuralFeature();
                    if (!this.isIncludedEntry(entryFeature) || entry.getValue() == null) continue;
                    values.previous();
                    return true;
                }
                return false;
            }
            return values.hasNext();
        }

        protected boolean scanNext() {
            if (this.isHandlingFeatureMap) {
                while (this.valueListIndex < this.valueListSize) {
                    FeatureMap.Entry entry = (FeatureMap.Entry)(this.valueInternalEList == null ? this.valueList.get(this.valueListIndex) : this.valueInternalEList.basicGet(this.valueListIndex));
                    EStructuralFeature entryFeature = entry.getEStructuralFeature();
                    if (this.isIncludedEntry(entryFeature) && entry.getValue() != null) {
                        return true;
                    }
                    ++this.valueListIndex;
                }
                return false;
            }
            return this.valueListIndex < this.valueListSize;
        }

        @Override
        public E next() {
            if (this.prepared > 1 || this.hasNext()) {
                ++this.cursor;
                this.prepared = 0;
                this.feature = this.preparedFeature;
                E result = this.preparedResult;
                this.hasNext();
                return result;
            }
            throw new NoSuchElementException();
        }

        @Override
        public int nextIndex() {
            return this.cursor;
        }

        @Override
        public boolean hasPrevious() {
            E result;
            switch (this.prepared) {
                case -3: 
                case -2: {
                    return true;
                }
                case -1: {
                    return false;
                }
                case 3: {
                    if (this.values == null) {
                        --this.valueListIndex;
                        break;
                    }
                    this.values.previous();
                }
            }
            if (this.valueList == null || (this.values == null ? !this.scanPrevious() : !this.scanPrevious(this.values))) {
                while (this.featureCursor > 0) {
                    EStructuralFeature feature;
                    if (!this.isIncluded(feature = this.eStructuralFeatures[--this.featureCursor]) || this.useIsSet() && !this.eObject.eIsSet(feature)) continue;
                    Object value = this.eObject.eGet(feature, this.resolve());
                    this.isHandlingFeatureMap = FeatureMapUtil.isFeatureMap(feature);
                    if (this.isHandlingFeatureMap || feature.isMany()) {
                        E result2;
                        Object newValueList;
                        this.valueList = this.resolve() ? (newValueList = (List)value) : (this.valueInternalEList = (newValueList = (InternalEList)value));
                        if (this.valueList instanceof RandomAccess) {
                            this.valueListIndex = this.valueListSize = this.valueList.size();
                        } else {
                            ListIterator<E> listIterator = this.values = this.valueInternalEList == null ? this.valueList.listIterator(this.valueList.size()) : this.valueInternalEList.basicListIterator(this.valueList.size());
                        }
                        if (!(this.values == null ? this.scanPrevious() : this.scanPrevious(this.values))) continue;
                        E e = this.values == null ? (this.valueInternalEList == null ? this.valueList.get(--this.valueListIndex) : this.valueInternalEList.basicGet(--this.valueListIndex)) : (result2 = this.values.previous());
                        if (this.isHandlingFeatureMap) {
                            FeatureMap.Entry entry = (FeatureMap.Entry)result2;
                            this.preparedFeature = entry.getEStructuralFeature();
                            Object newPreparedResult = entry.getValue();
                            this.preparedResult = newPreparedResult;
                        } else {
                            E newPreparedResult = result2;
                            this.preparedResult = newPreparedResult;
                            this.preparedFeature = feature;
                        }
                        this.prepared = -3;
                        return true;
                    }
                    if (value == null) continue;
                    this.valueList = null;
                    this.values = null;
                    Object newPreparedResult = value;
                    this.preparedResult = newPreparedResult;
                    this.preparedFeature = feature;
                    this.prepared = -2;
                    return true;
                }
                this.valueList = null;
                this.values = null;
                this.prepared = -1;
                return false;
            }
            E e = this.values == null ? (this.valueInternalEList == null ? this.valueList.get(--this.valueListIndex) : this.valueInternalEList.basicGet(--this.valueListIndex)) : (result = this.values.previous());
            if (this.isHandlingFeatureMap) {
                FeatureMap.Entry entry = (FeatureMap.Entry)result;
                this.preparedFeature = entry.getEStructuralFeature();
                Object newPreparedResult = entry.getValue();
                this.preparedResult = newPreparedResult;
            } else {
                E newPreparedResult = result;
                this.preparedResult = newPreparedResult;
            }
            this.prepared = -3;
            return true;
        }

        protected boolean scanPrevious(ListIterator<E> values) {
            if (this.isHandlingFeatureMap) {
                while (values.hasPrevious()) {
                    FeatureMap.Entry entry = (FeatureMap.Entry)values.previous();
                    EStructuralFeature entryFeature = entry.getEStructuralFeature();
                    if (!this.isIncludedEntry(entryFeature) || entry.getValue() == null) continue;
                    values.next();
                    return true;
                }
                return false;
            }
            return values.hasPrevious();
        }

        protected boolean scanPrevious() {
            if (this.isHandlingFeatureMap) {
                while (this.valueListIndex > 0) {
                    FeatureMap.Entry entry = (FeatureMap.Entry)this.valueList.get(this.valueListIndex - 1);
                    EStructuralFeature entryFeature = entry.getEStructuralFeature();
                    if (this.isIncludedEntry(entryFeature) && entry.getValue() != null) {
                        return true;
                    }
                    --this.valueListIndex;
                }
                return false;
            }
            return this.valueListIndex > 0;
        }

        @Override
        public E previous() {
            if (this.prepared < -1 || this.hasPrevious()) {
                --this.cursor;
                this.prepared = 0;
                this.feature = this.preparedFeature;
                E result = this.preparedResult;
                this.hasPrevious();
                return result;
            }
            throw new NoSuchElementException();
        }

        @Override
        public int previousIndex() {
            return this.cursor - 1;
        }

        @Override
        public void add(Object o) {
            throw new UnsupportedOperationException();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override
        public void set(Object o) {
            throw new UnsupportedOperationException();
        }

        public static <T> ListIterator<T> emptyIterator() {
            return EMPTY_ITERATOR;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface FeatureListIterator<E>
    extends FeatureIterator<E>,
    ListIterator<E> {
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ResolvingFeatureIteratorImpl<E>
    extends FeatureIteratorImpl<E> {
        public ResolvingFeatureIteratorImpl(EObject eObject, List<? extends EStructuralFeature> eStructuralFeatures) {
            super(eObject, eStructuralFeatures);
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

