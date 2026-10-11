/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.UniqueEList
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EClassifierImpl;
import org.eclipse.emf.ecore.impl.EGenericTypeImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EOperationImpl;
import org.eclipse.emf.ecore.impl.EStructuralFeatureImpl;
import org.eclipse.emf.ecore.impl.ESuperAdapter;
import org.eclipse.emf.ecore.util.DelegatingEcoreEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EClassImpl
extends EClassifierImpl
implements EClass,
ESuperAdapter.Holder {
    protected EAttribute eIDAttribute;
    protected BasicEList<EAttribute> eAllAttributes;
    protected BasicEList<EReference> eAllReferences;
    protected BasicEList<EStructuralFeature> eAllStructuralFeatures;
    protected EStructuralFeature[] eAllStructuralFeaturesData;
    protected BasicEList<EReference> eAllContainments;
    protected BasicEList<EOperation> eAllOperations;
    protected EOperation[] eAllOperationsData;
    protected BasicEList<EClass> eAllSuperTypes;
    protected BasicEList<EGenericType> eAllGenericSuperTypes;
    protected Map<String, EStructuralFeature> eNameToFeatureMap;
    protected Map<EOperation, EOperation> eOperationToOverrideMap;
    protected ESuperAdapter eSuperAdapter;
    private static final ThreadLocal<Set<EClass>> COMPUTATION_IN_PROGRESS = new ThreadLocal<Set<EClass>>(){

        @Override
        protected Set<EClass> initialValue() {
            return new HashSet<EClass>();
        }
    };
    private static final EStructuralFeature[] NO_EALL_STRUCTURE_FEATURES_DATA = new EStructuralFeature[0];
    private static final EOperation[] NO_EALL_OPERATIONS_DATA = new EOperation[0];
    protected static final boolean ABSTRACT_EDEFAULT = false;
    protected static final int ABSTRACT_EFLAG = 256;
    protected static final boolean INTERFACE_EDEFAULT = false;
    protected static final int INTERFACE_EFLAG = 512;
    protected EList<EClass> eSuperTypes;
    protected EList<EOperation> eOperations;
    protected BasicEList<EReference> eReferences = null;
    protected BasicEList<EAttribute> eAttributes = null;
    protected EList<EStructuralFeature> eStructuralFeatures;
    protected EList<EGenericType> eGenericSuperTypes;

    protected EClassImpl() {
    }

    @Override
    protected void freeze() {
        int size;
        int i;
        this.getEAllAttributes();
        this.getEAllReferences();
        this.getEAllContainments();
        this.getEAllOperations();
        this.getEAllStructuralFeatures();
        this.getEAllSuperTypes();
        this.getEAllGenericSuperTypes();
        this.getESuperAdapter().getSubclasses().clear();
        if (this.eStructuralFeatures != null) {
            i = 0;
            size = this.eStructuralFeatures.size();
            while (i < size) {
                this.freeze(this.eStructuralFeatures.get(i));
                ++i;
            }
        }
        if (this.eOperations != null) {
            i = 0;
            size = this.eOperations.size();
            while (i < size) {
                this.freeze(this.eOperations.get(i));
                ++i;
            }
        }
        super.freeze();
    }

    @Override
    public boolean isFrozen() {
        return super.isFrozen();
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.ECLASS;
    }

    @Override
    public EAttribute getEIDAttribute() {
        this.getEAllAttributes();
        return this.eIDAttribute;
    }

    @Override
    public EList<EStructuralFeature> getEStructuralFeatures() {
        if (this.eStructuralFeatures == null) {
            this.eStructuralFeatures = new EObjectContainmentWithInverseEList<EStructuralFeature>(EStructuralFeature.class, this, 21, 17);
        }
        return this.eStructuralFeatures;
    }

    @Override
    public EList<EGenericType> getEGenericSuperTypes() {
        if (this.eGenericSuperTypes == null) {
            this.getESuperAdapter();
            this.eGenericSuperTypes = new EObjectContainmentEList.Unsettable<EGenericType>(EGenericType.class, (InternalEObject)this, 22){
                private static final long serialVersionUID = 1L;

                @Override
                public boolean isSet() {
                    Iterator iterator = this.iterator();
                    while (iterator.hasNext()) {
                        EGenericType eGenericType = (EGenericType)iterator.next();
                        if (eGenericType.getETypeParameter() == null && eGenericType.getETypeArguments().isEmpty()) continue;
                        return true;
                    }
                    return false;
                }

                protected EClass unwrap(EGenericType eGenericType) {
                    EClassifier result = eGenericType.getERawType();
                    if (result instanceof EClass) {
                        return (EClass)result;
                    }
                    return EcorePackage.Literals.EOBJECT;
                }

                protected boolean hasShadow() {
                    return true;
                }

                protected NotificationChain shadowAdd(EGenericType eGenericType, NotificationChain notifications) {
                    ENotificationImpl notification = new ENotificationImpl(this.owner, 3, 10, null, (Object)this.unwrap(eGenericType), this.indexOf(eGenericType), false);
                    if (notifications == null) {
                        notifications = notification;
                    } else {
                        notifications.add((Notification)notification);
                    }
                    return notifications;
                }

                protected NotificationChain shadowRemove(EGenericType eGenericType, NotificationChain notifications) {
                    ENotificationImpl notification = new ENotificationImpl(this.owner, 4, 10, (Object)this.unwrap(eGenericType), null, this.indexOf(eGenericType), false);
                    if (notifications == null) {
                        notifications = notification;
                    } else {
                        notifications.add((Notification)notification);
                    }
                    return notifications;
                }

                protected NotificationChain shadowSet(EGenericType oldEGenericType, EGenericType newEGenericType, NotificationChain notifications) {
                    ENotificationImpl notification = new ENotificationImpl(this.owner, 1, 10, (Object)this.unwrap(oldEGenericType), (Object)this.unwrap(newEGenericType), this.indexOf(oldEGenericType), false);
                    if (notifications == null) {
                        notifications = notification;
                    } else {
                        notifications.add((Notification)notification);
                    }
                    return notifications;
                }

                public EGenericType move(int targetIndex, int sourceIndex) {
                    EGenericType result = (EGenericType)super.move(targetIndex, sourceIndex);
                    if (this.isNotificationRequired()) {
                        this.dispatchNotification((Notification)new ENotificationImpl((InternalEObject)EClassImpl.this, 7, (EStructuralFeature)EcorePackage.Literals.ECLASS__ESUPER_TYPES, (Object)sourceIndex, (Object)this.unwrap(result), targetIndex));
                    }
                    return result;
                }

                @Override
                public void unset() {
                    this.clear();
                }

                @Override
                protected NotificationImpl createNotification(int eventType, Object oldObject, Object newObject, int index, boolean wasSet) {
                    switch (eventType) {
                        case 3: {
                            return super.createNotification(eventType, oldObject, newObject, index, this.size > 1);
                        }
                        case 5: {
                            return super.createNotification(eventType, oldObject, newObject, index, this.size - ((List)newObject).size() > 0);
                        }
                    }
                    return super.createNotification(eventType, oldObject, newObject, index, true);
                }
            };
            this.getESuperTypes();
        }
        return this.eGenericSuperTypes;
    }

    public void unsetEGenericSuperTypes() {
        if (this.eGenericSuperTypes != null) {
            ((InternalEList.Unsettable)this.eGenericSuperTypes).unset();
        }
    }

    public boolean isSetEGenericSuperTypes() {
        return this.eGenericSuperTypes != null && ((InternalEList.Unsettable)this.eGenericSuperTypes).isSet();
    }

    @Override
    public EList<EGenericType> getEAllGenericSuperTypes() {
        if (this.eAllGenericSuperTypes == null) {
            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            class EGenericSuperTypeEList
            extends UniqueEList<EGenericType> {
                private static final long serialVersionUID = 1L;

                EGenericSuperTypeEList() {
                }

                protected Object[] newData(int capacity) {
                    return new EGenericType[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }

                public void eliminateEquivalentDuplicates() {
                    EGenericType[] eGenericTypes = (EGenericType[])this.data;
                    int i = this.size - 1;
                    while (i >= 0) {
                        EGenericType eGenericType = eGenericTypes[i];
                        int j = 0;
                        while (j < i) {
                            EGenericType otherEGenericType = eGenericTypes[j];
                            if (this.equivalent(eGenericType, otherEGenericType)) {
                                this.remove(i);
                                break;
                            }
                            ++j;
                        }
                        --i;
                    }
                }

                public boolean equivalent(EGenericType eGenericType, EGenericType otherEGenericType) {
                    ETypeParameter otherETypeParameter;
                    if (eGenericType == otherEGenericType) {
                        return true;
                    }
                    eGenericType = this.resolve(eGenericType);
                    otherEGenericType = this.resolve(otherEGenericType);
                    EClassifier eClassifier = eGenericType.getEClassifier();
                    if (eClassifier != null) {
                        EList<EGenericType> otherETypeArguments;
                        EClassifier otherEClassifier = otherEGenericType.getEClassifier();
                        if (otherEClassifier != eClassifier) {
                            String otherInstanceTypeName;
                            if (otherEClassifier == null) {
                                return false;
                            }
                            String instanceTypeName = eClassifier.getInstanceTypeName();
                            return instanceTypeName == (otherInstanceTypeName = otherEClassifier.getInstanceTypeName()) && instanceTypeName != null;
                        }
                        EList<EGenericType> eTypeArguments = eGenericType.getETypeArguments();
                        int eTypeArgumentSize = eTypeArguments.size();
                        if (eTypeArgumentSize == (otherETypeArguments = otherEGenericType.getETypeArguments()).size()) {
                            int j = 0;
                            while (j < eTypeArgumentSize) {
                                EGenericType otherETypeArgument;
                                EGenericType eTypeArgument = (EGenericType)eTypeArguments.get(j);
                                if (!this.equivalent(eTypeArgument, otherETypeArgument = (EGenericType)otherETypeArguments.get(j))) {
                                    return false;
                                }
                                ++j;
                            }
                        }
                        return true;
                    }
                    ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
                    return eTypeParameter == (otherETypeParameter = otherEGenericType.getETypeParameter());
                }

                public EGenericType resolve(EGenericType eGenericType) {
                    ETypeParameter eTypeParameter = eGenericType.getETypeParameter();
                    if (eTypeParameter != null) {
                        EObject eContainer = eTypeParameter.eContainer();
                        EGenericType[] eGenericTypes = (EGenericType[])this.data;
                        int i = 0;
                        while (i < this.size) {
                            EGenericType otherEGenericType = eGenericTypes[i];
                            if (otherEGenericType.getEClassifier() == eContainer) {
                                EList<EGenericType> eTypeArguments = otherEGenericType.getETypeArguments();
                                int index = ((List)eContainer.eGet(eTypeParameter.eContainmentFeature())).indexOf(eTypeParameter);
                                if (index < eTypeArguments.size()) {
                                    return this.resolve((EGenericType)eTypeArguments.get(index));
                                }
                            }
                            ++i;
                        }
                    }
                    return eGenericType;
                }
            }
            EGenericSuperTypeEList result = new EGenericSuperTypeEList();
            Set<EClass> computationInProgress = COMPUTATION_IN_PROGRESS.get();
            if (computationInProgress.add(this)) {
                for (EGenericType eGenericSuperType : this.getEGenericSuperTypes()) {
                    EClassifier eSuperType = eGenericSuperType.getERawType();
                    if (eSuperType instanceof EClass) {
                        result.addAll((Collection)((EClass)eSuperType).getEAllGenericSuperTypes());
                    }
                    result.add(eGenericSuperType);
                }
                computationInProgress.remove(this);
            }
            result.eliminateEquivalentDuplicates();
            result.shrink();
            this.eAllGenericSuperTypes = new EcoreEList.UnmodifiableEList.FastCompare(this, EcorePackage.eINSTANCE.getEClass_EAllGenericSuperTypes(), result.size(), result.data());
            this.getESuperAdapter().setAllSuperCollectionModified(false);
        }
        return this.eAllGenericSuperTypes;
    }

    @Override
    public EList<EAttribute> getEAllAttributes() {
        if (this.eAllAttributes == null) {
            this.eIDAttribute = null;
            UniqueEList<EAttribute> result = new UniqueEList<EAttribute>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EAttribute[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }

                protected void didAdd(int index, EAttribute eAttribute) {
                    if (eAttribute.isID() && EClassImpl.this.eIDAttribute == null) {
                        EClassImpl.this.eIDAttribute = eAttribute;
                    }
                }
            };
            UniqueEList<EAttribute> attributes = new UniqueEList<EAttribute>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EAttribute[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            };
            Set<EClass> computationInProgress = COMPUTATION_IN_PROGRESS.get();
            if (computationInProgress.add(this)) {
                for (EClass eSuperType : this.getESuperTypes()) {
                    result.addAll(eSuperType.getEAllAttributes());
                }
                computationInProgress.remove(this);
            }
            for (EStructuralFeature eStructuralFeature : this.getEStructuralFeatures()) {
                if (!(eStructuralFeature instanceof EAttribute)) continue;
                attributes.add((Object)((EAttribute)eStructuralFeature));
            }
            attributes.shrink();
            this.eAttributes = new EcoreEList.UnmodifiableEList.FastCompare<EAttribute>((InternalEObject)this, (EStructuralFeature)EcorePackage.eINSTANCE.getEClass_EAttributes(), attributes.size(), attributes.data()){
                private static final long serialVersionUID = 1L;

                @Override
                public void addUnique(EAttribute object) {
                    ((InternalEList)EClassImpl.this.getEStructuralFeatures()).addUnique(object);
                }

                public boolean add(EAttribute object) {
                    System.err.println("Please fix your code to add using EClass.getEStructuralFeatures() instead of EClass.getEAttributes()");
                    return EClassImpl.this.getEStructuralFeatures().add((Object)object);
                }
            };
            result.addAll(this.eAttributes);
            result.shrink();
            this.eAllAttributes = new EcoreEList.UnmodifiableEList.FastCompare(this, EcorePackage.eINSTANCE.getEClass_EAllAttributes(), result.size(), result.data());
            this.getESuperAdapter().setAllAttributesCollectionModified(false);
        }
        return this.eAllAttributes;
    }

    @Override
    public EList<EReference> getEAllReferences() {
        if (this.eAllReferences == null) {
            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            class ReferenceList
            extends UniqueEList<EReference> {
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EReference[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            }
            ReferenceList result = new ReferenceList();
            ReferenceList references = new ReferenceList();
            Set<EClass> computationInProgress = COMPUTATION_IN_PROGRESS.get();
            if (computationInProgress.add(this)) {
                for (EClass eSuperType : this.getESuperTypes()) {
                    result.addAll((Collection)eSuperType.getEAllReferences());
                }
                computationInProgress.remove(this);
            }
            for (EStructuralFeature eStructuralFeature : this.getEStructuralFeatures()) {
                if (!(eStructuralFeature instanceof EReference)) continue;
                references.add((EReference)eStructuralFeature);
            }
            references.shrink();
            this.eReferences = new EcoreEList.UnmodifiableEList.FastCompare<EReference>((InternalEObject)this, (EStructuralFeature)EcorePackage.eINSTANCE.getEClass_EReferences(), references.size(), references.data()){
                private static final long serialVersionUID = 1L;

                @Override
                public void addUnique(EReference object) {
                    ((InternalEList)EClassImpl.this.getEStructuralFeatures()).addUnique(object);
                }

                public boolean add(EReference object) {
                    System.err.println("Please fix your code to add using EClass.getEStructuralFeatures() instead of EClass.getEReferences()");
                    return EClassImpl.this.getEStructuralFeatures().add((Object)object);
                }
            };
            result.addAll((Collection)this.eReferences);
            result.shrink();
            this.eAllReferences = new EcoreEList.UnmodifiableEList.FastCompare(this, EcorePackage.eINSTANCE.getEClass_EAllReferences(), result.size(), result.data());
            this.getESuperAdapter().setAllReferencesCollectionModified(false);
        }
        return this.eAllReferences;
    }

    @Override
    public EList<EReference> getEReferences() {
        this.getEAllReferences();
        return this.eReferences;
    }

    @Override
    public EList<EAttribute> getEAttributes() {
        this.getEAllAttributes();
        return this.eAttributes;
    }

    @Override
    public EList<EStructuralFeature> getEAllStructuralFeatures() {
        if (this.eAllStructuralFeatures == null) {
            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            class EStructuralFeatureUniqueEList
            extends UniqueEList<EStructuralFeature> {
                private static final long serialVersionUID = 1L;

                EStructuralFeatureUniqueEList() {
                }

                protected Object[] newData(int capacity) {
                    return new EStructuralFeature[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            }
            EStructuralFeatureUniqueEList result = new EStructuralFeatureUniqueEList();
            Set<EClass> computationInProgress = COMPUTATION_IN_PROGRESS.get();
            if (computationInProgress.add(this)) {
                for (EClass eSuperType : this.getESuperTypes()) {
                    result.addAll((Collection)eSuperType.getEAllStructuralFeatures());
                }
                computationInProgress.remove(this);
            }
            int featureID = result.size();
            Iterator i = this.getEStructuralFeatures().iterator();
            while (i.hasNext()) {
                ((EStructuralFeatureImpl)i.next()).setFeatureID(featureID);
                ++featureID;
            }
            result.addAll((Collection)this.getEStructuralFeatures());
            result.shrink();
            /*
             * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
             */
            class EAllStructuralFeaturesList
            extends EcoreEList.UnmodifiableEList.FastCompare<EStructuralFeature>
            implements FeatureSubsetSupplier {
                private static final long serialVersionUID = 1L;
                protected EStructuralFeature[] containments;
                protected EStructuralFeature[] crossReferences;

                public EAllStructuralFeaturesList(BasicEList<EStructuralFeature> eAllStructuralFeatures) {
                    super(EClassImpl.this, EcorePackage.eINSTANCE.getEClass_EAllStructuralFeatures(), eAllStructuralFeatures.size(), eAllStructuralFeatures.data());
                }

                private void init() {
                    EStructuralFeatureUniqueEList containmentsList = new EStructuralFeatureUniqueEList();
                    EStructuralFeatureUniqueEList crossReferencesList = new EStructuralFeatureUniqueEList();
                    boolean isMixed = "mixed".equals(EcoreUtil.getAnnotation(EClassImpl.this, "http:///org/eclipse/emf/ecore/util/ExtendedMetaData", "kind"));
                    int i = 0;
                    while (i < this.size) {
                        EStructuralFeature eStructuralFeature = (EStructuralFeature)this.data[i];
                        if (eStructuralFeature instanceof EReference) {
                            EReference eReference = (EReference)eStructuralFeature;
                            if (eReference.isContainment()) {
                                if (!eReference.isDerived()) {
                                    containmentsList.add(eReference);
                                }
                            } else if (!(eReference.isContainer() || eReference.isDerived() && (isMixed || EcoreUtil.getAnnotation(eReference, "http:///org/eclipse/emf/ecore/util/ExtendedMetaData", "group") != null))) {
                                crossReferencesList.add(eReference);
                            }
                        } else if (FeatureMapUtil.isFeatureMap(eStructuralFeature) && !eStructuralFeature.isDerived()) {
                            containmentsList.add(eStructuralFeature);
                            crossReferencesList.add(eStructuralFeature);
                        }
                        ++i;
                    }
                    containmentsList.shrink();
                    crossReferencesList.shrink();
                    this.containments = (EStructuralFeature[])containmentsList.data();
                    this.crossReferences = (EStructuralFeature[])crossReferencesList.data();
                }

                @Override
                public EStructuralFeature[] containments() {
                    if (this.containments == null) {
                        this.init();
                    }
                    return this.containments;
                }

                @Override
                public EStructuralFeature[] crossReferences() {
                    if (this.crossReferences == null) {
                        this.init();
                    }
                    return this.crossReferences;
                }

                @Override
                public EStructuralFeature[] features() {
                    return (EStructuralFeature[])this.data;
                }

                public int indexOf(Object object) {
                    EStructuralFeature eStructuralFeature;
                    int index;
                    if (object instanceof EStructuralFeature && (index = (eStructuralFeature = (EStructuralFeature)object).getFeatureID()) != -1) {
                        int last = this.size;
                        while (index < last) {
                            if (this.data[index] == object) {
                                return index;
                            }
                            ++index;
                        }
                    }
                    return -1;
                }
            }
            this.eAllStructuralFeatures = new EAllStructuralFeaturesList((BasicEList<EStructuralFeature>)result);
            this.eAllStructuralFeaturesData = (EStructuralFeature[])result.data();
            if (this.eAllStructuralFeaturesData == null) {
                this.eAllStructuralFeaturesData = NO_EALL_STRUCTURE_FEATURES_DATA;
            }
            this.eNameToFeatureMap = null;
            this.getESuperAdapter().setAllStructuralFeaturesCollectionModified(false);
        }
        return this.eAllStructuralFeatures;
    }

    @Override
    public EList<EOperation> getEAllOperations() {
        if (this.eAllOperations == null) {
            UniqueEList<EOperation> result = new UniqueEList<EOperation>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EOperation[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            };
            Set<EClass> computationInProgress = COMPUTATION_IN_PROGRESS.get();
            if (computationInProgress.add(this)) {
                for (EClass eSuperType : this.getESuperTypes()) {
                    result.addAll(eSuperType.getEAllOperations());
                }
                computationInProgress.remove(this);
            }
            int operationID = result.size();
            Iterator i = this.getEOperations().iterator();
            while (i.hasNext()) {
                ((EOperationImpl)i.next()).setOperationID(operationID);
                ++operationID;
            }
            result.addAll(this.getEOperations());
            result.shrink();
            this.eAllOperations = new EcoreEList.UnmodifiableEList.FastCompare(this, EcorePackage.eINSTANCE.getEClass_EAllOperations(), result.size(), result.data());
            this.eAllOperationsData = (EOperation[])result.data();
            if (this.eAllOperationsData == null) {
                this.eAllOperationsData = NO_EALL_OPERATIONS_DATA;
            }
            this.eOperationToOverrideMap = null;
            this.getESuperAdapter().setAllOperationsCollectionModified(false);
        }
        return this.eAllOperations;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEAnnotations();
            }
            case 1: {
                return this.getName();
            }
            case 2: {
                return this.getInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass();
            }
            case 4: {
                return this.getDefaultValue();
            }
            case 5: {
                return this.getInstanceTypeName();
            }
            case 6: {
                if (resolve) {
                    return this.getEPackage();
                }
                return this.basicGetEPackage();
            }
            case 7: {
                return this.getETypeParameters();
            }
            case 8: {
                return this.isAbstract();
            }
            case 9: {
                return this.isInterface();
            }
            case 10: {
                return this.getESuperTypes();
            }
            case 11: {
                return this.getEOperations();
            }
            case 12: {
                return this.getEAllAttributes();
            }
            case 13: {
                return this.getEAllReferences();
            }
            case 14: {
                return this.getEReferences();
            }
            case 15: {
                return this.getEAttributes();
            }
            case 16: {
                return this.getEAllContainments();
            }
            case 17: {
                return this.getEAllOperations();
            }
            case 18: {
                return this.getEAllStructuralFeatures();
            }
            case 19: {
                return this.getEAllSuperTypes();
            }
            case 20: {
                return this.getEIDAttribute();
            }
            case 21: {
                return this.getEStructuralFeatures();
            }
            case 22: {
                return this.getEGenericSuperTypes();
            }
            case 23: {
                return this.getEAllGenericSuperTypes();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                this.getEAnnotations().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
            case 2: {
                this.setInstanceClassName((String)newValue);
                return;
            }
            case 5: {
                this.setInstanceTypeName((String)newValue);
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                this.getETypeParameters().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.setAbstract((Boolean)newValue);
                return;
            }
            case 9: {
                this.setInterface((Boolean)newValue);
                return;
            }
            case 10: {
                this.getESuperTypes().clear();
                this.getESuperTypes().addAll((Collection)newValue);
                return;
            }
            case 11: {
                this.getEOperations().clear();
                this.getEOperations().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getEStructuralFeatures().clear();
                this.getEStructuralFeatures().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getEGenericSuperTypes().clear();
                this.getEGenericSuperTypes().addAll((Collection)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getEAnnotations().clear();
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.unsetInstanceClassName();
                return;
            }
            case 5: {
                this.unsetInstanceTypeName();
                return;
            }
            case 7: {
                this.getETypeParameters().clear();
                return;
            }
            case 8: {
                this.setAbstract(false);
                return;
            }
            case 9: {
                this.setInterface(false);
                return;
            }
            case 10: {
                this.unsetESuperTypes();
                return;
            }
            case 11: {
                this.getEOperations().clear();
                return;
            }
            case 21: {
                this.getEStructuralFeatures().clear();
                return;
            }
            case 22: {
                this.unsetEGenericSuperTypes();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eAnnotations != null && !this.eAnnotations.isEmpty();
            }
            case 1: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 2: {
                return this.isSetInstanceClassName();
            }
            case 3: {
                return this.getInstanceClass() != null;
            }
            case 4: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 5: {
                return this.isSetInstanceTypeName();
            }
            case 6: {
                return this.basicGetEPackage() != null;
            }
            case 7: {
                return this.eTypeParameters != null && !this.eTypeParameters.isEmpty();
            }
            case 8: {
                return (this.eFlags & 0x100) != 0;
            }
            case 9: {
                return (this.eFlags & 0x200) != 0;
            }
            case 10: {
                return this.isSetESuperTypes();
            }
            case 11: {
                return this.eOperations != null && !this.eOperations.isEmpty();
            }
            case 12: {
                return !this.getEAllAttributes().isEmpty();
            }
            case 13: {
                return !this.getEAllReferences().isEmpty();
            }
            case 14: {
                return !this.getEReferences().isEmpty();
            }
            case 15: {
                return !this.getEAttributes().isEmpty();
            }
            case 16: {
                return !this.getEAllContainments().isEmpty();
            }
            case 17: {
                return !this.getEAllOperations().isEmpty();
            }
            case 18: {
                return !this.getEAllStructuralFeatures().isEmpty();
            }
            case 19: {
                return !this.getEAllSuperTypes().isEmpty();
            }
            case 20: {
                return this.getEIDAttribute() != null;
            }
            case 21: {
                return this.eStructuralFeatures != null && !this.eStructuralFeatures.isEmpty();
            }
            case 22: {
                return this.isSetEGenericSuperTypes();
            }
            case 23: {
                return !this.getEAllGenericSuperTypes().isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public Object eInvoke(int operationID, EList<?> arguments) throws InvocationTargetException {
        switch (operationID) {
            case 0: {
                return this.getEAnnotation((String)arguments.get(0));
            }
            case 1: {
                return this.isInstance(arguments.get(0));
            }
            case 2: {
                return this.getClassifierID();
            }
            case 3: {
                return this.isSuperTypeOf((EClass)arguments.get(0));
            }
            case 4: {
                return this.getFeatureCount();
            }
            case 5: {
                return this.getEStructuralFeature((Integer)arguments.get(0));
            }
            case 6: {
                return this.getFeatureID((EStructuralFeature)arguments.get(0));
            }
            case 7: {
                return this.getEStructuralFeature((String)arguments.get(0));
            }
            case 8: {
                return this.getOperationCount();
            }
            case 9: {
                return this.getEOperation((Integer)arguments.get(0));
            }
            case 10: {
                return this.getOperationID((EOperation)arguments.get(0));
            }
            case 11: {
                return this.getOverride((EOperation)arguments.get(0));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public EList<EReference> getEAllContainments() {
        if (this.eAllContainments == null) {
            UniqueEList<EReference> result = new UniqueEList<EReference>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EReference[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            };
            for (EReference eReference : this.getEAllReferences()) {
                if (!eReference.isContainment()) continue;
                result.add((Object)eReference);
            }
            result.shrink();
            this.eAllContainments = new EcoreEList.UnmodifiableEList.FastCompare(this, EcorePackage.eINSTANCE.getEClass_EAllContainments(), result.size(), result.data());
            this.getESuperAdapter().setAllContainmentsCollectionModified(false);
        }
        return this.eAllContainments;
    }

    @Override
    public EStructuralFeature getEStructuralFeature(String name) {
        this.getFeatureCount();
        if (this.eNameToFeatureMap == null) {
            HashMap<String, EStructuralFeature> result = new HashMap<String, EStructuralFeature>(3 * this.eAllStructuralFeatures.size() / 2 + 1);
            for (EStructuralFeature eStructuralFeature : this.eAllStructuralFeatures) {
                result.put(eStructuralFeature.getName(), eStructuralFeature);
            }
            this.eNameToFeatureMap = result;
        }
        return this.eNameToFeatureMap.get(name);
    }

    protected EOperation[] getEAllOperationsData() {
        if (this.eAllOperationsData == null) {
            this.getEAllOperations();
        }
        return this.eAllOperationsData;
    }

    @Override
    public int getOperationCount() {
        return this.getEAllOperationsData().length;
    }

    @Override
    public EOperation getEOperation(int operationID) {
        EOperation[] eAllOperationsData = this.getEAllOperationsData();
        return operationID >= 0 && operationID < eAllOperationsData.length ? eAllOperationsData[operationID] : null;
    }

    @Override
    public int getOperationID(EOperation operation) {
        EOperation[] eAllOperationsData = this.getEAllOperationsData();
        int index = operation.getOperationID();
        if (index != -1) {
            int last = eAllOperationsData.length;
            while (index < last) {
                if (eAllOperationsData[index] == operation) {
                    return index;
                }
                ++index;
            }
        }
        return -1;
    }

    @Override
    public EOperation getOverride(EOperation operation) {
        EOperation[] eAllOperationsData = this.getEAllOperationsData();
        if (this.eOperationToOverrideMap == null) {
            HashMap<EOperation, EOperation> result = new HashMap<EOperation, EOperation>();
            int length = eAllOperationsData.length;
            int i = 0;
            while (i < length) {
                int j = length - 1;
                while (j > i) {
                    if (eAllOperationsData[j].isOverrideOf(eAllOperationsData[i])) {
                        result.put(eAllOperationsData[i], eAllOperationsData[j]);
                        break;
                    }
                    --j;
                }
                ++i;
            }
            this.eOperationToOverrideMap = result;
        }
        return this.eOperationToOverrideMap.get(operation);
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 6, msgs);
            }
            case 11: {
                return ((InternalEList)this.getEOperations()).basicAdd(otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getEStructuralFeatures()).basicAdd(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 6: {
                return this.eBasicSetContainer(null, 6, msgs);
            }
            case 7: {
                return ((InternalEList)this.getETypeParameters()).basicRemove(otherEnd, msgs);
            }
            case 11: {
                return ((InternalEList)this.getEOperations()).basicRemove(otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getEStructuralFeatures()).basicRemove(otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getEGenericSuperTypes()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    protected EStructuralFeature[] getEAllStructuralFeaturesData() {
        if (this.eAllStructuralFeaturesData == null) {
            this.getEAllStructuralFeatures();
        }
        return this.eAllStructuralFeaturesData;
    }

    @Override
    public int getFeatureCount() {
        return this.getEAllStructuralFeaturesData().length;
    }

    @Override
    public EStructuralFeature getEStructuralFeature(int featureID) {
        EStructuralFeature[] eAllStructuralFeaturesData = this.getEAllStructuralFeaturesData();
        return featureID >= 0 && featureID < eAllStructuralFeaturesData.length ? eAllStructuralFeaturesData[featureID] : null;
    }

    @Override
    public int getFeatureID(EStructuralFeature feature) {
        EStructuralFeature[] eAllStructuralFeaturesData = this.getEAllStructuralFeaturesData();
        int index = feature.getFeatureID();
        if (index != -1) {
            int last = eAllStructuralFeaturesData.length;
            while (index < last) {
                if (eAllStructuralFeaturesData[index] == feature) {
                    return index;
                }
                ++index;
            }
        }
        return -1;
    }

    @Override
    public boolean isAbstract() {
        return (this.eFlags & 0x100) != 0;
    }

    @Override
    public void setAbstract(boolean newAbstract) {
        boolean oldAbstract;
        boolean bl = oldAbstract = (this.eFlags & 0x100) != 0;
        this.eFlags = newAbstract ? (this.eFlags |= 0x100) : (this.eFlags &= 0xFFFFFEFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldAbstract, newAbstract));
        }
    }

    @Override
    public boolean isInterface() {
        return (this.eFlags & 0x200) != 0;
    }

    @Override
    public void setInterface(boolean newInterface) {
        boolean oldInterface;
        boolean bl = oldInterface = (this.eFlags & 0x200) != 0;
        this.eFlags = newInterface ? (this.eFlags |= 0x200) : (this.eFlags &= 0xFFFFFDFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldInterface, newInterface));
        }
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (abstract: ");
        result.append((this.eFlags & 0x100) != 0);
        result.append(", interface: ");
        result.append((this.eFlags & 0x200) != 0);
        result.append(')');
        return result.toString();
    }

    @Override
    public EList<EClass> getESuperTypes() {
        if (this.eSuperTypes == null) {
            this.getESuperAdapter();
            this.eSuperTypes = new DelegatingEcoreEList<EClass>((InternalEObject)this){
                private static final long serialVersionUID = 1L;

                protected List<EClass> delegateList() {
                    return null;
                }

                protected List<EClass> delegateBasicList() {
                    return new AbstractSequentialList<EClass>(){

                        @Override
                        public ListIterator<EClass> listIterator(int index) {
                            return this.basicListIterator();
                        }

                        @Override
                        public int size() {
                            return this.delegateSize();
                        }
                    };
                }

                protected Iterator<EClass> delegateIterator() {
                    return this.iterator();
                }

                protected ListIterator<EClass> delegateListIterator() {
                    return this.listIterator();
                }

                protected EGenericType wrap(EClass eClass) {
                    EGenericType eGenericType = EcoreFactory.eINSTANCE.createEGenericType();
                    eGenericType.setEClassifier(eClass);
                    return eGenericType;
                }

                protected EClass unwrap(EGenericType eGenericType) {
                    EClassifier result = ((EGenericTypeImpl)eGenericType).basicGetERawType();
                    if (result instanceof EClass) {
                        return (EClass)result;
                    }
                    return EcorePackage.Literals.EOBJECT;
                }

                protected void delegateAdd(int index, EClass eClass) {
                    EClassImpl.this.getEGenericSuperTypes().add(index, (Object)this.wrap(eClass));
                }

                protected void delegateClear() {
                    EClassImpl.this.getEGenericSuperTypes().clear();
                }

                protected void delegateAdd(EClass eClass) {
                    EClassImpl.this.getEGenericSuperTypes().add((Object)this.wrap(eClass));
                }

                protected boolean delegateContains(Object object) {
                    Iterator iterator = this.iterator();
                    while (iterator.hasNext()) {
                        EClass eClass = (EClass)iterator.next();
                        if (object != eClass) continue;
                        return true;
                    }
                    return false;
                }

                protected boolean delegateContainsAll(Collection<?> collection) {
                    for (Object object : collection) {
                        if (this.delegateContains(object)) continue;
                        return false;
                    }
                    return true;
                }

                protected boolean delegateEquals(Object object) {
                    List list;
                    if (object instanceof List && (list = (List)object).size() == this.delegateSize()) {
                        Iterator i = list.iterator();
                        Iterator j = this.iterator();
                        while (i.hasNext()) {
                            if (i.next() == j.next()) continue;
                            return false;
                        }
                        return true;
                    }
                    return false;
                }

                protected EClass delegateGet(int index) {
                    EGenericType eGenericType = (EGenericType)EClassImpl.this.getEGenericSuperTypes().get(index);
                    return this.unwrap(eGenericType);
                }

                protected int delegateHashCode() {
                    int hashCode = 1;
                    for (EGenericType eGenericType : EClassImpl.this.getEGenericSuperTypes()) {
                        EClass object = this.unwrap(eGenericType);
                        hashCode = 31 * hashCode + (object == null ? 0 : object.hashCode());
                    }
                    return hashCode;
                }

                protected int delegateIndexOf(Object object) {
                    int index = 0;
                    for (EGenericType eGenericType : EClassImpl.this.getEGenericSuperTypes()) {
                        if (object == this.unwrap(eGenericType)) {
                            return index;
                        }
                        ++index;
                    }
                    return -1;
                }

                protected boolean delegateIsEmpty() {
                    return EClassImpl.this.getEGenericSuperTypes().isEmpty();
                }

                protected int delegateLastIndexOf(Object object) {
                    EList<EGenericType> eGenericSuperTypes = EClassImpl.this.getEGenericSuperTypes();
                    int i = eGenericSuperTypes.size() - 1;
                    while (i >= 0) {
                        if (this.unwrap((EGenericType)eGenericSuperTypes.get(i)) == object) {
                            return i;
                        }
                        --i;
                    }
                    return -1;
                }

                protected EClass delegateRemove(int index) {
                    EGenericType eGenericType = (EGenericType)EClassImpl.this.getEGenericSuperTypes().remove(index);
                    return this.unwrap(eGenericType);
                }

                protected EClass delegateSet(int index, EClass eClass) {
                    EGenericType eGenericType = (EGenericType)EClassImpl.this.getEGenericSuperTypes().get(index);
                    EClass result = this.unwrap(eGenericType);
                    if (this.resolveProxy(result) == eClass) {
                        eGenericType.getERawType();
                    } else {
                        eGenericType.setEClassifier(eClass);
                    }
                    return result;
                }

                protected int delegateSize() {
                    return EClassImpl.this.getEGenericSuperTypes().size();
                }

                protected Object[] delegateToArray() {
                    int size = this.delegateSize();
                    Object[] result = new Object[size];
                    int index = 0;
                    for (EGenericType eGenericType : EClassImpl.this.getEGenericSuperTypes()) {
                        result[index++] = this.unwrap(eGenericType);
                    }
                    return result;
                }

                protected <T> T[] delegateToArray(T[] array) {
                    int size = this.delegateSize();
                    if (array.length < size) {
                        Object[] newArray = (Object[])Array.newInstance(array.getClass().getComponentType(), size);
                        array = newArray;
                    }
                    if (array.length > size) {
                        array[size] = null;
                    }
                    int index = 0;
                    for (EGenericType eGenericType : EClassImpl.this.getEGenericSuperTypes()) {
                        EClass rawType = this.unwrap(eGenericType);
                        array[index++] = rawType;
                    }
                    return array;
                }

                protected String delegateToString() {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("[");
                    EList<EGenericType> eGenericSuperTypes = EClassImpl.this.getEGenericSuperTypes();
                    int i = 0;
                    int size = this.delegateSize();
                    while (i < size) {
                        stringBuffer.append(String.valueOf(this.unwrap((EGenericType)eGenericSuperTypes.get(i))));
                        if (++i >= size) continue;
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append("]");
                    return stringBuffer.toString();
                }

                @Override
                protected boolean isInstance(Object object) {
                    return object instanceof EClass;
                }

                @Override
                public int getFeatureID() {
                    return 10;
                }

                protected boolean useEquals() {
                    return true;
                }

                @Override
                protected boolean canContainNull() {
                    return false;
                }

                @Override
                protected boolean isUnique() {
                    return true;
                }

                @Override
                protected boolean hasInverse() {
                    return false;
                }

                @Override
                protected boolean hasManyInverse() {
                    return false;
                }

                @Override
                protected boolean hasNavigableInverse() {
                    return false;
                }

                @Override
                protected boolean isEObject() {
                    return true;
                }

                @Override
                protected boolean isContainment() {
                    return false;
                }

                @Override
                protected boolean hasProxies() {
                    return true;
                }

                @Override
                protected boolean hasInstanceClass() {
                    return true;
                }

                @Override
                public boolean isSet() {
                    return EClassImpl.this.isSetESuperTypes();
                }

                @Override
                protected NotificationImpl createNotification(int eventType, Object oldObject, Object newObject, int index, boolean wasSet) {
                    return null;
                }

                @Override
                protected void dispatchNotification(Notification notification) {
                }
            };
        }
        return this.eSuperTypes;
    }

    public void unsetESuperTypes() {
        if (this.eSuperTypes != null) {
            ((InternalEList.Unsettable)this.eSuperTypes).unset();
        }
    }

    public boolean isSetESuperTypes() {
        return this.eSuperTypes != null && !this.eSuperTypes.isEmpty() && !this.isSetEGenericSuperTypes();
    }

    @Override
    public EList<EOperation> getEOperations() {
        if (this.eOperations == null) {
            this.eOperations = new EObjectContainmentWithInverseEList<EOperation>(EOperation.class, this, 11, 10);
        }
        return this.eOperations;
    }

    @Override
    public boolean isSuperTypeOf(EClass someClass) {
        return someClass == this || someClass.getEAllSuperTypes().contains((Object)this);
    }

    @Override
    public EList<EClass> getEAllSuperTypes() {
        if (this.eAllSuperTypes == null) {
            UniqueEList<EClass> result = new UniqueEList<EClass>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EClassifier[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            };
            Set<EClass> computationInProgress = COMPUTATION_IN_PROGRESS.get();
            if (computationInProgress.add(this)) {
                for (EClass eSuperType : this.getESuperTypes()) {
                    EList<EClass> higherSupers = eSuperType.getEAllSuperTypes();
                    result.addAll(higherSupers);
                    result.add((Object)eSuperType);
                }
                computationInProgress.remove(this);
            }
            result.shrink();
            this.eAllSuperTypes = new EcoreEList.UnmodifiableEList.FastCompare(this, EcorePackage.eINSTANCE.getEClass_EAllSuperTypes(), result.size(), result.data());
            this.getESuperAdapter().setAllSuperCollectionModified(false);
        }
        return this.eAllSuperTypes;
    }

    @Override
    protected boolean dynamicIsInstance(EObject eObject) {
        return this.isSuperTypeOf(eObject.eClass());
    }

    @Override
    public ESuperAdapter getESuperAdapter() {
        if (this.eSuperAdapter == null) {
            this.eSuperAdapter = new ESuperAdapter(){

                void setFlags(int featureId) {
                    super.setFlags(featureId);
                    if (this.isAllAttributesCollectionModified()) {
                        EClassImpl.this.eAllAttributes = null;
                    }
                    if (this.isAllReferencesCollectionModified()) {
                        EClassImpl.this.eAllReferences = null;
                    }
                    if (this.isAllStructuralFeaturesCollectionModified()) {
                        EClassImpl.this.eAllStructuralFeatures = null;
                        EClassImpl.this.eAllStructuralFeaturesData = null;
                    }
                    if (this.isAllOperationsCollectionModified()) {
                        EClassImpl.this.eAllOperations = null;
                        EClassImpl.this.eAllOperationsData = null;
                    }
                    if (this.isAllContainmentsCollectionModified()) {
                        EClassImpl.this.eAllContainments = null;
                    }
                    if (this.isAllSuperCollectionModified()) {
                        EClassImpl.this.eAllSuperTypes = null;
                        EClassImpl.this.eAllGenericSuperTypes = null;
                    }
                }
            };
            this.eAdapters().add(0, (Object)this.eSuperAdapter);
        }
        return this.eSuperAdapter;
    }

    @Override
    public void eSetDeliver(boolean deliver) {
        super.eSetDeliver(deliver);
        if (deliver) {
            for (EClass eSuperType : this.getESuperTypes()) {
                ESuperAdapter eSuperAdapter = ((ESuperAdapter.Holder)((Object)eSuperType)).getESuperAdapter();
                eSuperAdapter.getSubclasses().add((Object)this);
            }
        }
    }

    @Override
    public EObject eObjectForURIFragmentSegment(String uriFragmentSegment) {
        EStructuralFeature result = this.eAllStructuralFeaturesData == null || this.eOperations != null && !this.eOperations.isEmpty() ? null : this.getEStructuralFeature(uriFragmentSegment);
        return result != null ? result : super.eObjectForURIFragmentSegment(uriFragmentSegment);
    }

    public static interface FeatureSubsetSupplier {
        public EStructuralFeature[] containments();

        public EStructuralFeature[] crossReferences();

        public EStructuralFeature[] features();
    }
}

