/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.UniqueEList
 */
package org.eclipse.emf.ecore.util;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.WeakHashMap;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EStructuralFeatureImpl;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.util.XMLTypeFeatures;
import org.eclipse.emf.ecore.xml.type.ProcessingInstruction;
import org.eclipse.emf.ecore.xml.type.XMLTypeFactory;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public final class FeatureMapUtil {
    protected static final Class<Validator> VALIDATOR_CLASS = Validator.class;
    protected static Validator NULL_VALIDATOR = new Validator(){

        public boolean isValid(EStructuralFeature eStructuralFeature) {
            return true;
        }
    };

    private FeatureMapUtil() {
    }

    public static void addText(FeatureMap featureMap, String text) {
        featureMap.add(XMLTypeFeatures.TEXT, text);
    }

    public static void addText(FeatureMap featureMap, int index, String text) {
        featureMap.add(index, XMLTypeFeatures.TEXT, text);
    }

    public static boolean isText(FeatureMap.Entry entry) {
        return entry.getEStructuralFeature() == XMLTypeFeatures.TEXT;
    }

    public static boolean isText(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature == XMLTypeFeatures.TEXT;
    }

    public static void addCDATA(FeatureMap featureMap, String cdata) {
        featureMap.add(XMLTypeFeatures.CDATA, cdata);
    }

    public static void addCDATA(FeatureMap featureMap, int index, String cdata) {
        featureMap.add(index, XMLTypeFeatures.CDATA, cdata);
    }

    public static boolean isCDATA(FeatureMap.Entry entry) {
        return entry.getEStructuralFeature() == XMLTypeFeatures.CDATA;
    }

    public static boolean isCDATA(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature == XMLTypeFeatures.CDATA;
    }

    public static void addComment(FeatureMap featureMap, String comment) {
        featureMap.add(XMLTypeFeatures.COMMENT, comment);
    }

    public static void addComment(FeatureMap featureMap, int index, String comment) {
        featureMap.add(index, XMLTypeFeatures.COMMENT, comment);
    }

    public static boolean isComment(FeatureMap.Entry entry) {
        return entry.getEStructuralFeature() == XMLTypeFeatures.COMMENT;
    }

    public static boolean isComment(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature == XMLTypeFeatures.COMMENT;
    }

    public static void addProcessingInstruction(FeatureMap featureMap, String target, String data) {
        ProcessingInstruction processingInstruction = XMLTypeFactory.eINSTANCE.createProcessingInstruction();
        processingInstruction.setTarget(target);
        processingInstruction.setData(data);
        featureMap.add(XMLTypeFeatures.PROCESSING_INSTRUCTION, processingInstruction);
    }

    public static void addProcessingInstruction(FeatureMap featureMap, int index, String target, String data) {
        ProcessingInstruction processingInstruction = XMLTypeFactory.eINSTANCE.createProcessingInstruction();
        processingInstruction.setTarget(target);
        processingInstruction.setData(data);
        featureMap.add(index, XMLTypeFeatures.PROCESSING_INSTRUCTION, processingInstruction);
    }

    public static boolean isProcessingInstruction(FeatureMap.Entry entry) {
        return entry.getEStructuralFeature() == XMLTypeFeatures.PROCESSING_INSTRUCTION;
    }

    public static boolean isProcessingInstruction(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature == XMLTypeFeatures.PROCESSING_INSTRUCTION;
    }

    public static boolean isFeatureMap(EStructuralFeature eStructuralFeature) {
        return ((EStructuralFeatureImpl)eStructuralFeature).isFeatureMap();
    }

    public static boolean isFeatureMapEntry(EClassifier eClassifier) {
        return eClassifier.getInstanceClassName() == "org.eclipse.emf.ecore.util.FeatureMap$Entry";
    }

    public static FeatureMap.Entry createTextEntry(String value) {
        return XMLTypeFeatures.TEXT_PROTOTYPE.createEntry(value);
    }

    public static FeatureMap.Entry createCDATAEntry(String value) {
        return XMLTypeFeatures.CDATA_PROTOTYPE.createEntry(value);
    }

    public static FeatureMap.Entry createCommentEntry(String value) {
        return XMLTypeFeatures.COMMENT_PROTOTYPE.createEntry(value);
    }

    public static FeatureMap.Entry createProcessingInstructionEntry(String target, String data) {
        return FeatureMapUtil.createRawProcessingInstructionEntry(target, data);
    }

    public static FeatureMap.Entry createEntry(EStructuralFeature eStructuralFeature, Object value) {
        FeatureMap.Entry.Internal prototype = ((EStructuralFeature.Internal)eStructuralFeature).getFeatureMapEntryPrototype();
        prototype.validate(value);
        return prototype.createEntry(value);
    }

    public static FeatureMap.Entry.Internal createRawEntry(EStructuralFeature eStructuralFeature, Object value) {
        FeatureMap.Entry.Internal prototype = ((EStructuralFeature.Internal)eStructuralFeature).getFeatureMapEntryPrototype();
        return prototype.createEntry(value);
    }

    public static FeatureMap.Entry.Internal createRawTextEntry(String value) {
        return XMLTypeFeatures.TEXT_PROTOTYPE.createEntry(value);
    }

    public static FeatureMap.Entry.Internal createRawCDATAEntry(String value) {
        return XMLTypeFeatures.CDATA_PROTOTYPE.createEntry(value);
    }

    public static FeatureMap.Entry.Internal createRawCommentEntry(String value) {
        return XMLTypeFeatures.COMMENT_PROTOTYPE.createEntry(value);
    }

    public static FeatureMap.Entry.Internal createRawProcessingInstructionEntry(String target, String data) {
        ProcessingInstruction processingInstruction = XMLTypeFactory.eINSTANCE.createProcessingInstruction();
        processingInstruction.setTarget(target);
        processingInstruction.setData(data);
        return XMLTypeFeatures.PROCESSING_INSTRUCTION_PROTOTYPE.createEntry(processingInstruction);
    }

    public static Validator getValidator(EClass containingClass, EStructuralFeature eStructuralFeature) {
        Map<EClass, Validator> validatorMap;
        Validator result;
        if (eStructuralFeature == null) {
            return NULL_VALIDATOR;
        }
        if (eStructuralFeature == XMLTypePackage.Literals.XML_TYPE_DOCUMENT_ROOT__MIXED || (eStructuralFeature == XMLTypePackage.Literals.ANY_TYPE__MIXED || eStructuralFeature == XMLTypePackage.Literals.ANY_TYPE__ANY || eStructuralFeature == XMLTypePackage.Literals.ANY_TYPE__ANY_ATTRIBUTE) && containingClass != XMLTypePackage.Literals.ANY_TYPE) {
            return new BasicValidator(containingClass, eStructuralFeature);
        }
        BasicExtendedMetaData.EStructuralFeatureExtendedMetaData.Holder holder = (BasicExtendedMetaData.EStructuralFeatureExtendedMetaData.Holder)((Object)eStructuralFeature);
        BasicExtendedMetaData.EStructuralFeatureExtendedMetaData extendedMetaData = holder.getExtendedMetaData();
        if (extendedMetaData == null) {
            ExtendedMetaData.INSTANCE.getName(eStructuralFeature);
            extendedMetaData = holder.getExtendedMetaData();
        }
        if ((result = (validatorMap = extendedMetaData.getValidatorMap()).get(containingClass)) == null) {
            result = new BasicValidator(containingClass, eStructuralFeature);
            validatorMap.put(containingClass, result);
        }
        return result;
    }

    public static boolean isMany(EObject owner, EStructuralFeature feature) {
        if (feature.isMany()) {
            return true;
        }
        if (feature.getUpperBound() == -2) {
            if (feature == XMLTypeFeatures.TEXT || feature == XMLTypeFeatures.CDATA || feature == XMLTypeFeatures.COMMENT || feature == XMLTypeFeatures.PROCESSING_INSTRUCTION) {
                return true;
            }
            EClass eClass = owner.eClass();
            if (eClass.getFeatureID(feature) >= 0) {
                return false;
            }
            EStructuralFeature affiliation = ExtendedMetaData.INSTANCE.getAffiliation(eClass, feature);
            if (affiliation == null) {
                return true;
            }
            int affiliationUpperBound = affiliation.getUpperBound();
            return (affiliationUpperBound > 1 || affiliationUpperBound == -1) && ExtendedMetaData.INSTANCE.getFeatureKind(affiliation) != 3;
        }
        return false;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class BasicFeatureEIterator<E>
    implements ListIterator<E> {
        protected final EStructuralFeature eStructuralFeature;
        protected final FeatureMap.Internal featureMap;
        protected int entryCursor;
        protected int cursor;
        protected int prepared;
        protected E preparedResult;
        protected int expectedModCount;
        protected int lastCursor;
        protected boolean isFeatureMap;
        protected Validator validator;

        public BasicFeatureEIterator(EStructuralFeature eStructuralFeature, FeatureMap.Internal featureMap) {
            this.eStructuralFeature = eStructuralFeature;
            this.featureMap = featureMap;
            this.expectedModCount = featureMap.getModCount();
            this.isFeatureMap = FeatureMapUtil.isFeatureMap(eStructuralFeature);
            this.validator = FeatureMapUtil.getValidator(featureMap.getEObject().eClass(), eStructuralFeature);
        }

        protected boolean resolve() {
            return false;
        }

        protected E extractValue(FeatureMap.Entry entry) {
            return (E)(this.isFeatureMap ? entry : entry.getValue());
        }

        @Override
        public boolean hasNext() {
            switch (this.prepared) {
                case 2: {
                    return true;
                }
                case 1: {
                    return false;
                }
                case -1: {
                    ++this.entryCursor;
                }
            }
            return this.scanNext();
        }

        protected abstract boolean scanNext();

        @Override
        public E next() {
            if (this.hasNext()) {
                this.checkModCount();
                if (this.resolve()) {
                    Object newPreparedResult = this.featureMap.resolveProxy(this.eStructuralFeature, this.entryCursor, this.cursor, this.preparedResult);
                    this.preparedResult = newPreparedResult;
                }
                this.lastCursor = this.cursor++;
                ++this.entryCursor;
                this.prepared = 0;
                return this.preparedResult;
            }
            throw new NoSuchElementException();
        }

        @Override
        public int nextIndex() {
            return this.cursor;
        }

        @Override
        public boolean hasPrevious() {
            switch (this.prepared) {
                case -2: {
                    return true;
                }
                case -1: {
                    return false;
                }
                case 1: {
                    --this.entryCursor;
                }
            }
            return this.scanPrevious();
        }

        protected abstract boolean scanPrevious();

        @Override
        public E previous() {
            if (this.hasPrevious()) {
                this.checkModCount();
                this.lastCursor = --this.cursor;
                if (this.resolve()) {
                    Object newPreparedResult = this.featureMap.resolveProxy(this.eStructuralFeature, this.entryCursor, this.cursor, this.preparedResult);
                    this.preparedResult = newPreparedResult;
                }
                this.prepared = 0;
                return this.preparedResult;
            }
            throw new NoSuchElementException();
        }

        @Override
        public int previousIndex() {
            return this.cursor - 1;
        }

        @Override
        public void add(Object o) {
            if (this.lastCursor == -1) {
                throw new IllegalStateException();
            }
            this.checkModCount();
            try {
                this.featureMap.add(this.eStructuralFeature, this.cursor, o);
                this.expectedModCount = this.featureMap.getModCount();
                this.next();
            }
            catch (IndexOutOfBoundsException exception) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void remove() {
            if (this.lastCursor == -1) {
                throw new IllegalStateException();
            }
            this.checkModCount();
            try {
                this.featureMap.remove(this.eStructuralFeature, this.lastCursor);
                this.expectedModCount = this.featureMap.getModCount();
                if (this.lastCursor < this.cursor) {
                    --this.cursor;
                    --this.entryCursor;
                }
                --this.lastCursor;
            }
            catch (IndexOutOfBoundsException exception) {
                throw new ConcurrentModificationException();
            }
        }

        @Override
        public void set(Object o) {
            if (this.lastCursor == -1) {
                throw new IllegalStateException();
            }
            this.checkModCount();
            try {
                this.featureMap.set(this.eStructuralFeature, this.lastCursor, o);
                this.expectedModCount = this.featureMap.getModCount();
            }
            catch (IndexOutOfBoundsException exception) {
                throw new ConcurrentModificationException();
            }
        }

        protected void checkModCount() {
            if (this.featureMap.getModCount() != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public static class BasicValidator
    implements Validator {
        protected static final List<String> ANY_WILDCARD = Collections.singletonList("##any");
        protected EClass containingClass;
        protected EStructuralFeature eStructuralFeature;
        protected List<EStructuralFeature> groupMembers;
        protected List<String> wildcards;
        protected String name;
        protected boolean isElement;
        protected Cache cache = new Cache();

        public BasicValidator(EClass containingClass, EStructuralFeature eStructuralFeature) {
            this.containingClass = containingClass;
            this.eStructuralFeature = eStructuralFeature;
            this.wildcards = ExtendedMetaData.INSTANCE.getWildcards(eStructuralFeature);
            if (!this.wildcards.isEmpty()) {
                boolean bl = this.isElement = ExtendedMetaData.INSTANCE.getFeatureKind(eStructuralFeature) == 5;
                if (this.wildcards.equals(ANY_WILDCARD)) {
                    this.wildcards = ANY_WILDCARD;
                }
            } else {
                EAttribute mixedFeature = ExtendedMetaData.INSTANCE.getMixedFeature(containingClass);
                if (mixedFeature == eStructuralFeature) {
                    this.isElement = true;
                    this.groupMembers = new ArrayList<EStructuralFeature>();
                    this.wildcards = new UniqueEList();
                    this.wildcards.add("http://www.eclipse.org/emf/2003/XMLType");
                    if (ExtendedMetaData.INSTANCE.getDocumentRoot(containingClass.getEPackage()) == containingClass) {
                        this.wildcards.add(ExtendedMetaData.INSTANCE.getNamespace(containingClass));
                    }
                    for (EStructuralFeature feature : ExtendedMetaData.INSTANCE.getAllElements(containingClass)) {
                        switch (ExtendedMetaData.INSTANCE.getFeatureKind(feature)) {
                            case 4: {
                                this.groupMembers.add(feature);
                                break;
                            }
                            case 5: {
                                this.wildcards.addAll(ExtendedMetaData.INSTANCE.getWildcards(feature));
                            }
                        }
                    }
                } else if (FeatureMapUtil.isFeatureMap(eStructuralFeature)) {
                    this.isElement = true;
                    this.wildcards = null;
                    this.groupMembers = new ArrayList<EStructuralFeature>();
                    int i = 0;
                    int size = containingClass.getFeatureCount();
                    while (i < size) {
                        EStructuralFeature feature = containingClass.getEStructuralFeature(i);
                        EStructuralFeature group = ExtendedMetaData.INSTANCE.getGroup(feature);
                        while (group != null) {
                            if (group == eStructuralFeature) {
                                this.groupMembers.add(feature);
                            }
                            group = ExtendedMetaData.INSTANCE.getGroup(group);
                        }
                        ++i;
                    }
                } else if (ExtendedMetaData.INSTANCE.getFeatureKind(eStructuralFeature) == 1 && mixedFeature != null) {
                    this.wildcards = null;
                    this.groupMembers = XMLTypeFeatures.TEXTUAL_FEATURES;
                } else {
                    this.wildcards = null;
                    this.isElement = true;
                    this.groupMembers = Collections.singletonList(eStructuralFeature);
                }
            }
        }

        public boolean isValid(EStructuralFeature feature) {
            if (this.eStructuralFeature == feature) {
                return true;
            }
            Boolean result = this.cache.get(feature);
            if (result == null) {
                if (this.isIncluded(feature)) {
                    this.cache.put(feature, Boolean.TRUE);
                    return true;
                }
                this.cache.put(feature, Boolean.FALSE);
                return false;
            }
            return result == Boolean.TRUE;
        }

        public boolean isIncluded(EStructuralFeature feature) {
            if (this.wildcards == ANY_WILDCARD) {
                int featureKind = ExtendedMetaData.INSTANCE.getFeatureKind(feature);
                return this.isElement ? featureKind == 4 && feature != XMLTypeFeatures.TEXT && feature != XMLTypeFeatures.CDATA && feature != XMLTypeFeatures.COMMENT && feature != XMLTypeFeatures.PROCESSING_INSTRUCTION : featureKind == 2;
            }
            if (this.groupMembers != null && (this.groupMembers.contains(feature) || this.groupMembers.contains(ExtendedMetaData.INSTANCE.getGroup(feature)) || this.groupMembers.contains(ExtendedMetaData.INSTANCE.getAffiliation(this.containingClass, feature)))) {
                return true;
            }
            if (this.wildcards != null && ExtendedMetaData.INSTANCE.matches(this.wildcards, ExtendedMetaData.INSTANCE.getNamespace(feature))) {
                int featureKind = ExtendedMetaData.INSTANCE.getFeatureKind(feature);
                return this.isElement ? featureKind == 4 : featureKind == 2;
            }
            return false;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        protected class Cache
        extends WeakHashMap<Object, Object> {
            protected Cache() {
            }

            public Boolean get(EStructuralFeature eStructuralFeature) {
                return (Boolean)this.get((Object)eStructuralFeature);
            }

            @Override
            public void put(EStructuralFeature eStructuralFeature, Boolean isValid) {
                Cache newCache = new Cache();
                newCache.putAll(BasicValidator.this.cache);
                newCache.put(eStructuralFeature, isValid);
                BasicValidator.this.cache = newCache;
            }
        }
    }

    public static class EntryImpl
    implements FeatureMap.Entry {
        protected final EStructuralFeature eStructuralFeature;
        protected final Object value;

        public EntryImpl(EStructuralFeature eStructuralFeature, Object value) {
            this.eStructuralFeature = eStructuralFeature;
            this.value = value;
            this.validate();
        }

        protected void validate() {
            if (this.value != null && !this.eStructuralFeature.getEType().isInstance(this.value)) {
                String valueClass = this.value instanceof EObject ? ((EObject)this.value).eClass().getName() : this.value.getClass().getName();
                throw new ClassCastException("The feature '" + this.eStructuralFeature.getName() + "'s type '" + this.eStructuralFeature.getEType().getName() + "' does not permit a value of type '" + valueClass + "'");
            }
        }

        public EStructuralFeature getEStructuralFeature() {
            return this.eStructuralFeature;
        }

        public Object getValue() {
            return this.value;
        }

        public boolean equals(Object that) {
            if (this == that) {
                return true;
            }
            if (!(that instanceof FeatureMap.Entry)) {
                return false;
            }
            FeatureMap.Entry entry = (FeatureMap.Entry)that;
            return entry.getEStructuralFeature() == this.eStructuralFeature && (this.value == null ? entry.getValue() == null : this.value.equals(entry.getValue()));
        }

        public int hashCode() {
            return this.eStructuralFeature.hashCode() ^ (this.value == null ? 0 : this.value.hashCode());
        }

        public String toString() {
            String prefix = this.eStructuralFeature.getEContainingClass().getEPackage().getNsPrefix();
            this.eStructuralFeature.getName();
            return String.valueOf(prefix != null && prefix.length() != 0 ? String.valueOf(prefix) + ":" + this.eStructuralFeature.getName() : this.eStructuralFeature.getName()) + "=" + this.value;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureEList<E>
    extends AbstractList<E>
    implements InternalEList.Unsettable<E>,
    EStructuralFeature.Setting {
        protected EStructuralFeature feature;
        protected FeatureMap.Internal featureMap;

        public FeatureEList(EStructuralFeature feature, FeatureMap.Internal featureMap) {
            this.feature = feature;
            this.featureMap = featureMap;
        }

        @Override
        public int size() {
            return this.featureMap.size(this.getEStructuralFeature());
        }

        @Override
        public boolean isEmpty() {
            return this.featureMap.isEmpty(this.getEStructuralFeature());
        }

        @Override
        public boolean contains(Object object) {
            return this.featureMap.contains(this.getEStructuralFeature(), object);
        }

        @Override
        public int indexOf(Object object) {
            return this.featureMap.indexOf(this.getEStructuralFeature(), object);
        }

        @Override
        public int lastIndexOf(Object object) {
            return this.featureMap.lastIndexOf(this.getEStructuralFeature(), object);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return this.featureMap.containsAll(this.getEStructuralFeature(), collection);
        }

        @Override
        public Iterator<E> iterator() {
            return this.featureMap.iterator(this.getEStructuralFeature());
        }

        @Override
        public ListIterator<E> listIterator() {
            return this.featureMap.listIterator(this.getEStructuralFeature());
        }

        @Override
        public ListIterator<E> listIterator(int index) {
            return this.featureMap.listIterator(this.getEStructuralFeature(), index);
        }

        @Override
        public E basicGet(int index) {
            return (E)this.featureMap.get(this.getEStructuralFeature(), index, false);
        }

        @Override
        public List<E> basicList() {
            return this.featureMap.basicList(this.getEStructuralFeature());
        }

        @Override
        public Iterator<E> basicIterator() {
            return this.featureMap.basicIterator(this.getEStructuralFeature());
        }

        @Override
        public ListIterator<E> basicListIterator() {
            return this.featureMap.basicListIterator(this.getEStructuralFeature());
        }

        @Override
        public ListIterator<E> basicListIterator(int index) {
            return this.featureMap.basicListIterator(this.getEStructuralFeature(), index);
        }

        @Override
        public Object[] toArray() {
            return this.featureMap.toArray(this.getEStructuralFeature());
        }

        @Override
        public <T> T[] toArray(T[] array) {
            return this.featureMap.toArray(this.getEStructuralFeature(), array);
        }

        @Override
        public boolean basicContains(Object object) {
            return this.featureMap.basicContains(this.getEStructuralFeature(), object);
        }

        @Override
        public boolean basicContainsAll(Collection<?> collection) {
            return this.featureMap.basicContainsAll(this.getEStructuralFeature(), collection);
        }

        @Override
        public int basicIndexOf(Object object) {
            return this.featureMap.basicIndexOf(this.getEStructuralFeature(), object);
        }

        @Override
        public int basicLastIndexOf(Object object) {
            return this.featureMap.basicLastIndexOf(this.getEStructuralFeature(), object);
        }

        @Override
        public Object[] basicToArray() {
            return this.featureMap.basicToArray(this.getEStructuralFeature());
        }

        @Override
        public <T> T[] basicToArray(T[] array) {
            return this.featureMap.basicToArray(this.getEStructuralFeature(), array);
        }

        @Override
        public boolean add(Object object) {
            return this.featureMap.add(this.getEStructuralFeature(), object);
        }

        @Override
        public void add(int index, Object object) {
            this.featureMap.add(this.getEStructuralFeature(), index, object);
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            return this.featureMap.addAll(this.getEStructuralFeature(), collection);
        }

        @Override
        public boolean addAll(int index, Collection<? extends E> collection) {
            return this.featureMap.addAll(this.getEStructuralFeature(), index, collection);
        }

        @Override
        public void addUnique(Object object) {
            this.featureMap.addUnique(this.getEStructuralFeature(), object);
        }

        @Override
        public void addUnique(int index, Object object) {
            this.featureMap.addUnique(this.getEStructuralFeature(), index, object);
        }

        @Override
        public boolean addAllUnique(Collection<? extends E> collection) {
            this.modCount = -1;
            return this.featureMap.addAllUnique((Collection<? extends FeatureMap.Entry>)collection);
        }

        @Override
        public boolean addAllUnique(int index, Collection<? extends E> collection) {
            this.modCount = -1;
            return this.featureMap.addAllUnique(index, collection);
        }

        @Override
        public void addUnique(FeatureMap.Entry.Internal entry) {
            this.modCount = -1;
            this.featureMap.addUnique(entry);
        }

        public boolean addAllUnique(FeatureMap.Entry.Internal[] entries, int start, int end) {
            return this.addAllUnique(this.size(), entries, start, end);
        }

        public boolean addAllUnique(int index, FeatureMap.Entry.Internal[] entries, int start, int end) {
            this.modCount = -1;
            BasicEList collection = new BasicEList();
            if (start == 0) {
                collection.setData(end, (Object[])entries);
            } else {
                collection.grow(end - start);
                int i = start;
                while (i < end) {
                    collection.add((Object)entries[i]);
                    ++i;
                }
            }
            return this.featureMap.addAllUnique(index, (Collection)collection);
        }

        @Override
        public NotificationChain basicAdd(E object, NotificationChain notifications) {
            return this.featureMap.basicAdd(this.getEStructuralFeature(), object, notifications);
        }

        @Override
        public boolean remove(Object object) {
            return this.featureMap.remove(this.getEStructuralFeature(), object);
        }

        @Override
        public E remove(int index) {
            return (E)this.featureMap.remove(this.getEStructuralFeature(), index);
        }

        @Override
        public NotificationChain basicRemove(Object object, NotificationChain notifications) {
            return this.featureMap.basicRemove(this.getEStructuralFeature(), object, notifications);
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            return this.featureMap.removeAll(this.getEStructuralFeature(), collection);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            return this.featureMap.retainAll(this.getEStructuralFeature(), collection);
        }

        @Override
        public void clear() {
            this.featureMap.clear(this.getEStructuralFeature());
        }

        public void move(int index, Object object) {
            this.featureMap.move(this.getEStructuralFeature(), index, object);
        }

        public E move(int targetIndex, int sourceIndex) {
            return (E)this.featureMap.move(this.getEStructuralFeature(), targetIndex, sourceIndex);
        }

        @Override
        public E get(int index) {
            return (E)this.featureMap.get(this.getEStructuralFeature(), index, true);
        }

        @Override
        public E set(int index, E object) {
            return (E)this.featureMap.set(this.getEStructuralFeature(), index, object);
        }

        @Override
        public E setUnique(int index, E object) {
            return (E)this.featureMap.setUnique(this.getEStructuralFeature(), index, object);
        }

        @Override
        public Object get(boolean resolve) {
            return this;
        }

        @Override
        public void set(Object newValue) {
            this.clear();
            this.addAll((List)newValue);
        }

        @Override
        public boolean isSet() {
            return !this.isEmpty();
        }

        @Override
        public void unset() {
            this.clear();
        }

        public Object getFeature() {
            return this.getEStructuralFeature();
        }

        public int getFeatureID() {
            return this.featureMap.getEObject().eClass().getFeatureID(this.getEStructuralFeature());
        }

        @Override
        public EStructuralFeature getEStructuralFeature() {
            return this.feature;
        }

        @Override
        public EObject getEObject() {
            return this.featureMap.getEObject();
        }

        @Override
        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[");
            Iterator<E> i = this.basicIterator();
            while (i.hasNext()) {
                stringBuffer.append(String.valueOf(i.next()));
                if (!i.hasNext()) continue;
                stringBuffer.append(", ");
            }
            stringBuffer.append("]");
            return stringBuffer.toString();
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static class Basic<E>
        extends FeatureEList<E> {
            public Basic(EStructuralFeature feature, FeatureMap.Internal featureMap) {
                super(feature, featureMap);
            }

            @Override
            public Iterator<E> iterator() {
                return this.basicIterator();
            }

            @Override
            public ListIterator<E> listIterator() {
                return this.basicListIterator();
            }

            @Override
            public ListIterator<E> listIterator(int index) {
                return this.basicListIterator(index);
            }

            @Override
            public List<E> basicList() {
                return this;
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureENotificationImpl
    extends ENotificationImpl {
        public FeatureENotificationImpl(InternalEObject owner, int eventType, EStructuralFeature feature, Object oldObject, Object newObject, int index) {
            super(owner, eventType, feature, oldObject, newObject, index);
        }

        public FeatureENotificationImpl(InternalEObject owner, int eventType, EStructuralFeature feature, Object oldObject, Object newObject, int index, boolean wasSet) {
            super(owner, eventType, feature, oldObject, newObject, index, wasSet);
        }

        @Override
        public int getFeatureID(Class<?> expectedClass) {
            if (this.featureID == -1 && this.feature != null) {
                Class<?> containerClass = this.feature.getContainerClass();
                this.featureID = containerClass == null ? this.notifier.eClass().getFeatureID(this.feature) : this.notifier.eDerivedStructuralFeatureID(this.feature.getFeatureID(), containerClass);
            }
            return this.notifier.eBaseStructuralFeatureID(this.featureID, expectedClass);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean merge(Notification notification) {
            switch (this.eventType) {
                case 1: 
                case 2: {
                    Object notificationNotifier = notification.getNotifier();
                    if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                    this.newValue = notification.getNewValue();
                    if (notification.getEventType() != 1) return true;
                    this.eventType = 1;
                    return true;
                }
                case 3: {
                    int notificationEventType = notification.getEventType();
                    switch (notificationEventType) {
                        case 3: {
                            Object notificationNotifier = notification.getNotifier();
                            if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                            this.eventType = 5;
                            BasicEList addedValues = new BasicEList(2);
                            addedValues.add(this.newValue);
                            addedValues.add(notification.getNewValue());
                            this.newValue = addedValues;
                            return true;
                        }
                    }
                    return false;
                }
                case 5: {
                    int notificationEventType = notification.getEventType();
                    switch (notificationEventType) {
                        case 3: {
                            Object notificationNotifier = notification.getNotifier();
                            if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                            Collection collection = (Collection)this.newValue;
                            collection.add(notification.getNewValue());
                            return true;
                        }
                    }
                    return false;
                }
                case 4: {
                    int notificationEventType = notification.getEventType();
                    switch (notificationEventType) {
                        case 3: {
                            Object notificationNotifier = notification.getNotifier();
                            if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                            this.eventType = 1;
                            this.newValue = notification.getNewValue();
                            return true;
                        }
                        case 4: {
                            Object notificationNotifier = notification.getNotifier();
                            if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                            this.eventType = 6;
                            BasicEList removedValues = new BasicEList(2);
                            removedValues.add(this.oldValue);
                            removedValues.add(notification.getOldValue());
                            this.oldValue = removedValues;
                            int[] positions = new int[]{this.position, notification.getPosition()};
                            this.newValue = positions;
                            return true;
                        }
                    }
                    return false;
                }
                case 6: {
                    int notificationEventType = notification.getEventType();
                    switch (notificationEventType) {
                        case 4: {
                            Object notificationNotifier = notification.getNotifier();
                            if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                            Collection collection = (Collection)this.oldValue;
                            collection.add(notification.getOldValue());
                            int[] positions = (int[])this.newValue;
                            int[] newPositions = new int[positions.length + 1];
                            System.arraycopy(positions, 0, newPositions, 0, positions.length);
                            newPositions[positions.length] = notification.getPosition();
                            this.newValue = newPositions;
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureFeatureMap
    extends FeatureEList<FeatureMap.Entry>
    implements FeatureMap.Internal,
    FeatureMap.Internal.Wrapper {
        protected FeatureMap.Internal.Wrapper wrapper = this;

        public FeatureFeatureMap(EStructuralFeature feature, FeatureMap.Internal featureMap) {
            super(feature, featureMap);
        }

        @Override
        public FeatureMap.ValueListIterator<Object> valueListIterator() {
            return this.featureMap.valueListIterator();
        }

        @Override
        public FeatureMap.ValueListIterator<Object> valueListIterator(int index) {
            return this.featureMap.valueListIterator(index);
        }

        @Override
        public <T> EList<T> list(EStructuralFeature feature) {
            return this.featureMap.list(feature);
        }

        @Override
        public EStructuralFeature getEStructuralFeature(int index) {
            return ((FeatureMap.Entry)this.featureMap.get(this.getEStructuralFeature(), index, false)).getEStructuralFeature();
        }

        @Override
        public Object getValue(int index) {
            return ((FeatureMap.Entry)this.featureMap.get(this.getEStructuralFeature(), index, false)).getValue();
        }

        @Override
        public Object setValue(int index, Object value) {
            FeatureMap.Entry entry = (FeatureMap.Entry)this.featureMap.get(this.getEStructuralFeature(), index, false);
            this.set(index, FeatureMapUtil.createEntry(entry.getEStructuralFeature(), value));
            return entry.getValue();
        }

        @Override
        public boolean add(EStructuralFeature feature, Object value) {
            return this.featureMap.add(feature, value);
        }

        @Override
        public void add(int index, EStructuralFeature feature, Object value) {
            this.add(index, FeatureMapUtil.isFeatureMap(feature) ? value : FeatureMapUtil.createEntry(feature, value));
        }

        @Override
        public void add(EStructuralFeature feature, int index, Object value) {
            this.featureMap.add(feature, index, value);
        }

        @Override
        public boolean addAll(EStructuralFeature feature, Collection<?> values) {
            return this.featureMap.addAll(feature, values);
        }

        @Override
        public boolean addAll(int index, EStructuralFeature feature, Collection<?> values) {
            if (FeatureMapUtil.isFeatureMap(feature)) {
                Collection<?> entryValues = values;
                return this.addAll(index, entryValues);
            }
            ArrayList<FeatureMap.Entry> entries = new ArrayList<FeatureMap.Entry>(values.size());
            for (Object value : values) {
                entries.add(FeatureMapUtil.createEntry(feature, value));
            }
            return this.addAll(index, entries);
        }

        @Override
        public boolean addAll(EStructuralFeature feature, int index, Collection<?> values) {
            return this.featureMap.addAll(feature, index, values);
        }

        @Override
        public int getModCount() {
            return this.featureMap.getModCount();
        }

        @Override
        public EObject getEObject() {
            return this.featureMap.getEObject();
        }

        @Override
        public Object resolveProxy(EStructuralFeature feature, int entryIndex, int index, Object object) {
            return this.featureMap.resolveProxy(feature, entryIndex, index, object);
        }

        @Override
        public int size(EStructuralFeature feature) {
            return this.featureMap.size(feature);
        }

        @Override
        public boolean isEmpty(EStructuralFeature feature) {
            return this.featureMap.isEmpty(feature);
        }

        @Override
        public boolean contains(EStructuralFeature feature, Object object) {
            return this.featureMap.contains(feature, object);
        }

        @Override
        public boolean containsAll(EStructuralFeature feature, Collection<?> collection) {
            return this.featureMap.containsAll(feature, collection);
        }

        @Override
        public int indexOf(EStructuralFeature feature, Object object) {
            return this.featureMap.indexOf(feature, object);
        }

        @Override
        public int lastIndexOf(EStructuralFeature feature, Object object) {
            return this.featureMap.lastIndexOf(feature, object);
        }

        @Override
        public Iterator<Object> iterator(EStructuralFeature feature) {
            return this.featureMap.iterator(feature);
        }

        @Override
        public ListIterator<Object> listIterator(EStructuralFeature feature) {
            return this.featureMap.listIterator(feature);
        }

        @Override
        public ListIterator<Object> listIterator(EStructuralFeature feature, int index) {
            return this.featureMap.listIterator(feature, index);
        }

        @Override
        public EStructuralFeature.Setting setting(EStructuralFeature feature) {
            return this.featureMap.setting(feature);
        }

        @Override
        public List<Object> basicList(EStructuralFeature feature) {
            return this.featureMap.basicList(feature);
        }

        @Override
        public Iterator<Object> basicIterator(EStructuralFeature feature) {
            return this.featureMap.basicIterator(feature);
        }

        @Override
        public ListIterator<Object> basicListIterator(EStructuralFeature feature) {
            return this.featureMap.basicListIterator(feature);
        }

        @Override
        public ListIterator<Object> basicListIterator(EStructuralFeature feature, int index) {
            return this.featureMap.basicListIterator(feature, index);
        }

        @Override
        public Object[] toArray(EStructuralFeature feature) {
            return this.featureMap.toArray(feature);
        }

        @Override
        public <T> T[] toArray(EStructuralFeature feature, T[] array) {
            return this.featureMap.toArray(feature, array);
        }

        @Override
        public boolean basicContains(EStructuralFeature feature, Object object) {
            return this.featureMap.basicContains(feature, object);
        }

        @Override
        public boolean basicContainsAll(EStructuralFeature feature, Collection<?> collection) {
            return this.featureMap.basicContainsAll(feature, collection);
        }

        @Override
        public int basicIndexOf(EStructuralFeature feature, Object object) {
            return this.featureMap.basicIndexOf(feature, object);
        }

        @Override
        public int basicLastIndexOf(EStructuralFeature feature, Object object) {
            return this.featureMap.basicLastIndexOf(feature, object);
        }

        @Override
        public Object[] basicToArray(EStructuralFeature feature) {
            return this.featureMap.basicToArray(feature);
        }

        @Override
        public <T> T[] basicToArray(EStructuralFeature feature, T[] array) {
            return this.featureMap.basicToArray(feature, array);
        }

        @Override
        public void addUnique(EStructuralFeature feature, Object object) {
            this.featureMap.addUnique(feature, object);
        }

        @Override
        public void addUnique(EStructuralFeature feature, int index, Object object) {
            this.featureMap.addUnique(feature, index, object);
        }

        @Override
        public NotificationChain basicAdd(EStructuralFeature feature, Object object, NotificationChain notifications) {
            return this.featureMap.basicAdd(feature, object, notifications);
        }

        @Override
        public boolean remove(EStructuralFeature feature, Object object) {
            return this.featureMap.remove(feature, object);
        }

        @Override
        public Object remove(EStructuralFeature feature, int index) {
            return this.featureMap.remove(feature, index);
        }

        @Override
        public boolean removeAll(EStructuralFeature feature, Collection<?> collection) {
            return this.featureMap.removeAll(feature, collection);
        }

        @Override
        public NotificationChain basicRemove(EStructuralFeature feature, Object object, NotificationChain notifications) {
            return this.featureMap.basicRemove(feature, object, notifications);
        }

        @Override
        public boolean retainAll(EStructuralFeature feature, Collection<?> collection) {
            return this.featureMap.retainAll(feature, collection);
        }

        @Override
        public void clear(EStructuralFeature feature) {
            this.featureMap.clear(feature);
        }

        @Override
        public void move(EStructuralFeature feature, int index, Object object) {
            this.featureMap.move(feature, index, object);
        }

        @Override
        public Object move(EStructuralFeature feature, int targetIndex, int sourceIndex) {
            return this.featureMap.move(feature, targetIndex, sourceIndex);
        }

        @Override
        public Object get(EStructuralFeature feature, boolean resolve) {
            return this.featureMap.get(feature, resolve);
        }

        @Override
        public Object get(EStructuralFeature feature, int index, boolean resolve) {
            return this.featureMap.get(feature, index, resolve);
        }

        @Override
        public void set(EStructuralFeature feature, Object object) {
            this.featureMap.set(feature, object);
        }

        @Override
        public Object set(EStructuralFeature feature, int index, Object object) {
            return this.featureMap.set(feature, index, object);
        }

        @Override
        public Object setUnique(EStructuralFeature feature, int index, Object object) {
            return this.featureMap.setUnique(feature, index, object);
        }

        @Override
        public boolean isSet(EStructuralFeature feature) {
            return this.featureMap.isSet(feature);
        }

        @Override
        public void unset(EStructuralFeature feature) {
            this.featureMap.unset(feature);
        }

        @Override
        public FeatureMap.Internal.Wrapper getWrapper() {
            return this.wrapper;
        }

        @Override
        public void setWrapper(FeatureMap.Internal.Wrapper wrapper) {
            this.wrapper = wrapper;
        }

        @Override
        public FeatureMap featureMap() {
            return this;
        }
    }

    public static class FeatureValue
    implements EStructuralFeature.Setting {
        protected EStructuralFeature feature;
        protected FeatureMap.Internal featureMap;

        public FeatureValue(EStructuralFeature feature, FeatureMap.Internal featureMap) {
            this.feature = feature;
            this.featureMap = featureMap;
        }

        public Object get(boolean resolve) {
            return this.featureMap.get(this.getEStructuralFeature(), -1, resolve);
        }

        public void set(Object newValue) {
            this.featureMap.set(this.getEStructuralFeature(), newValue);
        }

        public boolean isSet() {
            return !this.featureMap.isEmpty(this.getEStructuralFeature());
        }

        public void unset() {
            this.featureMap.clear(this.getEStructuralFeature());
        }

        public Object getFeature() {
            return this.getEStructuralFeature();
        }

        public int getFeatureID() {
            return this.featureMap.getEObject().eClass().getFeatureID(this.getEStructuralFeature());
        }

        public EStructuralFeature getEStructuralFeature() {
            return this.feature;
        }

        public EObject getEObject() {
            return this.featureMap.getEObject();
        }
    }

    public static interface Validator {
        public boolean isValid(EStructuralFeature var1);
    }
}

