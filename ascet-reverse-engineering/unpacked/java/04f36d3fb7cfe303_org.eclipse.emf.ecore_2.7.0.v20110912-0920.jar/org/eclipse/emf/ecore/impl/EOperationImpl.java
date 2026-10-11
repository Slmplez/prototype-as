/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EParameter;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EGenericTypeImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.ETypedElementImpl;
import org.eclipse.emf.ecore.util.BasicInvocationDelegate;
import org.eclipse.emf.ecore.util.DelegatingEcoreEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EOperationImpl
extends ETypedElementImpl
implements EOperation,
EOperation.Internal {
    protected int operationID = -1;
    protected EList<ETypeParameter> eTypeParameters;
    protected EList<EParameter> eParameters;
    protected EList<EClassifier> eExceptions;
    protected EList<EGenericType> eGenericExceptions;
    protected EOperation.Internal.InvocationDelegate invocationDelegate;

    protected EOperationImpl() {
    }

    @Override
    protected void freeze() {
        if (this.eParameters != null) {
            int i = 0;
            int size = this.eParameters.size();
            while (i < size) {
                this.freeze(this.eParameters.get(i));
                ++i;
            }
        }
        super.freeze();
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EOPERATION;
    }

    @Override
    public EClass getEContainingClass() {
        return this.eContainerFeatureID() == 10 ? (EClass)((Object)this.eContainer) : null;
    }

    @Override
    public EList<EParameter> getEParameters() {
        if (this.eParameters == null) {
            this.eParameters = new EObjectContainmentWithInverseEList<EParameter>(EParameter.class, this, 12, 10);
        }
        return this.eParameters;
    }

    @Override
    public EList<EClassifier> getEExceptions() {
        if (this.eExceptions == null) {
            this.eExceptions = new DelegatingEcoreEList<EClassifier>((InternalEObject)this){
                private static final long serialVersionUID = 1L;

                protected List<EClassifier> delegateList() {
                    return null;
                }

                protected List<EClassifier> delegateBasicList() {
                    return new AbstractSequentialList<EClassifier>(){

                        @Override
                        public ListIterator<EClassifier> listIterator(int index) {
                            return this.basicListIterator();
                        }

                        @Override
                        public int size() {
                            return this.delegateSize();
                        }
                    };
                }

                protected Iterator<EClassifier> delegateIterator() {
                    return this.iterator();
                }

                protected ListIterator<EClassifier> delegateListIterator() {
                    return this.listIterator();
                }

                protected EGenericType wrap(EClassifier eClassifier) {
                    EGenericType eGenericType = EcoreFactory.eINSTANCE.createEGenericType();
                    eGenericType.setEClassifier(eClassifier);
                    return eGenericType;
                }

                protected EClassifier unwrap(EGenericType eGenericType) {
                    EClassifier result = ((EGenericTypeImpl)eGenericType).basicGetERawType();
                    if (result != null) {
                        return result;
                    }
                    return EcorePackage.Literals.EJAVA_OBJECT;
                }

                protected void delegateAdd(int index, EClassifier eClassifier) {
                    EOperationImpl.this.getEGenericExceptions().add(index, (Object)this.wrap(eClassifier));
                }

                protected void delegateClear() {
                    EOperationImpl.this.getEGenericExceptions().clear();
                }

                protected void delegateAdd(EClassifier eClassifier) {
                    EOperationImpl.this.getEGenericExceptions().add((Object)this.wrap(eClassifier));
                }

                protected boolean delegateContains(Object object) {
                    Iterator iterator = this.iterator();
                    while (iterator.hasNext()) {
                        EClassifier eClassifier = (EClassifier)iterator.next();
                        if (object != eClassifier) continue;
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

                protected EClassifier delegateGet(int index) {
                    EGenericType eGenericType = (EGenericType)EOperationImpl.this.getEGenericExceptions().get(index);
                    return this.unwrap(eGenericType);
                }

                protected int delegateHashCode() {
                    int hashCode = 1;
                    for (EGenericType eGenericType : EOperationImpl.this.getEGenericExceptions()) {
                        EClassifier object = this.unwrap(eGenericType);
                        hashCode = 31 * hashCode + (object == null ? 0 : object.hashCode());
                    }
                    return hashCode;
                }

                protected int delegateIndexOf(Object object) {
                    int index = 0;
                    for (EGenericType eGenericType : EOperationImpl.this.getEGenericExceptions()) {
                        if (object == this.unwrap(eGenericType)) {
                            return index;
                        }
                        ++index;
                    }
                    return -1;
                }

                protected boolean delegateIsEmpty() {
                    return EOperationImpl.this.getEGenericExceptions().isEmpty();
                }

                protected int delegateLastIndexOf(Object object) {
                    EList<EGenericType> eGenericExceptions = EOperationImpl.this.getEGenericExceptions();
                    int i = eGenericExceptions.size() - 1;
                    while (i >= 0) {
                        if (this.unwrap((EGenericType)eGenericExceptions.get(i)) == object) {
                            return i;
                        }
                        --i;
                    }
                    return -1;
                }

                protected EClassifier delegateRemove(int index) {
                    EGenericType eGenericType = (EGenericType)EOperationImpl.this.getEGenericExceptions().remove(index);
                    return this.unwrap(eGenericType);
                }

                protected EClassifier delegateSet(int index, EClassifier eClassifier) {
                    EGenericType eGenericType = (EGenericType)EOperationImpl.this.getEGenericExceptions().get(index);
                    EClassifier result = this.unwrap(eGenericType);
                    if (this.resolveProxy(result) == eClassifier) {
                        eGenericType.getERawType();
                    } else {
                        eGenericType.setEClassifier(eClassifier);
                    }
                    return result;
                }

                protected int delegateSize() {
                    return EOperationImpl.this.getEGenericExceptions().size();
                }

                protected Object[] delegateToArray() {
                    int size = this.delegateSize();
                    Object[] result = new Object[size];
                    int index = 0;
                    for (EGenericType eGenericType : EOperationImpl.this.getEGenericExceptions()) {
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
                    for (EGenericType eGenericType : EOperationImpl.this.getEGenericExceptions()) {
                        EClassifier rawType = this.unwrap(eGenericType);
                        array[index++] = rawType;
                    }
                    return array;
                }

                protected String delegateToString() {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("[");
                    EList<EGenericType> eGenericExceptions = EOperationImpl.this.getEGenericExceptions();
                    int i = 0;
                    int size = this.delegateSize();
                    while (i < size) {
                        stringBuffer.append(String.valueOf(this.unwrap((EGenericType)eGenericExceptions.get(i))));
                        if (++i >= size) continue;
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append("]");
                    return stringBuffer.toString();
                }

                @Override
                protected boolean isInstance(Object object) {
                    return object instanceof EClassifier;
                }

                @Override
                public int getFeatureID() {
                    return 13;
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
                    return EOperationImpl.this.isSetEExceptions();
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
        return this.eExceptions;
    }

    public void unsetEExceptions() {
        if (this.eExceptions != null) {
            ((InternalEList.Unsettable)this.eExceptions).unset();
        }
    }

    public boolean isSetEExceptions() {
        return this.eExceptions != null && !this.eExceptions.isEmpty() && !this.isSetEGenericExceptions();
    }

    @Override
    public EList<EGenericType> getEGenericExceptions() {
        if (this.eGenericExceptions == null) {
            this.eGenericExceptions = new EObjectContainmentEList.Unsettable<EGenericType>(EGenericType.class, (InternalEObject)this, 14){
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

                protected EClassifier unwrap(EGenericType eGenericType) {
                    EClassifier result = eGenericType.getERawType();
                    if (result != null) {
                        return result;
                    }
                    return EcorePackage.Literals.EJAVA_OBJECT;
                }

                protected boolean hasShadow() {
                    return true;
                }

                protected NotificationChain shadowAdd(EGenericType eGenericType, NotificationChain notifications) {
                    ENotificationImpl notification = new ENotificationImpl(this.owner, 3, 13, null, (Object)this.unwrap(eGenericType), this.indexOf(eGenericType), false);
                    if (notifications == null) {
                        notifications = notification;
                    } else {
                        notifications.add((Notification)notification);
                    }
                    return notifications;
                }

                protected NotificationChain shadowRemove(EGenericType eGenericType, NotificationChain notifications) {
                    ENotificationImpl notification = new ENotificationImpl(this.owner, 4, 13, (Object)this.unwrap(eGenericType), null, this.indexOf(eGenericType), false);
                    if (notifications == null) {
                        notifications = notification;
                    } else {
                        notifications.add((Notification)notification);
                    }
                    return notifications;
                }

                protected NotificationChain shadowSet(EGenericType oldEGenericType, EGenericType newEGenericType, NotificationChain notifications) {
                    ENotificationImpl notification = new ENotificationImpl(this.owner, 1, 13, (Object)this.unwrap(oldEGenericType), (Object)this.unwrap(newEGenericType), this.indexOf(oldEGenericType), false);
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
                        this.dispatchNotification((Notification)new ENotificationImpl((InternalEObject)EOperationImpl.this, 7, (EStructuralFeature)EcorePackage.Literals.EOPERATION__EEXCEPTIONS, (Object)sourceIndex, (Object)this.unwrap(result), targetIndex));
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
            this.getEExceptions();
        }
        return this.eGenericExceptions;
    }

    public void unsetEGenericExceptions() {
        if (this.eGenericExceptions != null) {
            ((InternalEList.Unsettable)this.eGenericExceptions).unset();
        }
    }

    public boolean isSetEGenericExceptions() {
        return this.eGenericExceptions != null && ((InternalEList.Unsettable)this.eGenericExceptions).isSet();
    }

    @Override
    public int getOperationID() {
        return this.operationID;
    }

    @Override
    public boolean isOverrideOf(EOperation someOperation) {
        if (someOperation.getEContainingClass().isSuperTypeOf(this.getEContainingClass()) && someOperation.getName().equals(this.getName())) {
            EList<EParameter> parameters = this.getEParameters();
            EList<EParameter> otherParameters = someOperation.getEParameters();
            if (parameters.size() == otherParameters.size()) {
                Iterator i = parameters.iterator();
                Iterator j = otherParameters.iterator();
                while (i.hasNext()) {
                    EParameter parameter = (EParameter)i.next();
                    EParameter otherParameter = (EParameter)j.next();
                    if (parameter.getEType().getInstanceTypeName().equals(otherParameter.getEType().getInstanceTypeName())) continue;
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public void setOperationID(int operationID) {
        this.operationID = operationID;
    }

    @Override
    public EList<ETypeParameter> getETypeParameters() {
        if (this.eTypeParameters == null) {
            this.eTypeParameters = new EObjectContainmentEList.Resolving<ETypeParameter>(ETypeParameter.class, this, 11);
        }
        return this.eTypeParameters;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicAdd(otherEnd, msgs);
            }
            case 10: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 10, msgs);
            }
            case 12: {
                return ((InternalEList)this.getEParameters()).basicAdd(otherEnd, msgs);
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
            case 9: {
                return this.basicUnsetEGenericType(msgs);
            }
            case 10: {
                return this.eBasicSetContainer(null, 10, msgs);
            }
            case 11: {
                return ((InternalEList)this.getETypeParameters()).basicRemove(otherEnd, msgs);
            }
            case 12: {
                return ((InternalEList)this.getEParameters()).basicRemove(otherEnd, msgs);
            }
            case 14: {
                return ((InternalEList)this.getEGenericExceptions()).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 10: {
                return this.eInternalContainer().eInverseRemove(this, 11, EClass.class, msgs);
            }
        }
        return this.eDynamicBasicRemoveFromContainer(msgs);
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
                return this.isOrdered();
            }
            case 3: {
                return this.isUnique();
            }
            case 4: {
                return this.getLowerBound();
            }
            case 5: {
                return this.getUpperBound();
            }
            case 6: {
                return this.isMany();
            }
            case 7: {
                return this.isRequired();
            }
            case 8: {
                if (resolve) {
                    return this.getEType();
                }
                return this.basicGetEType();
            }
            case 9: {
                return this.getEGenericType();
            }
            case 10: {
                return this.getEContainingClass();
            }
            case 11: {
                return this.getETypeParameters();
            }
            case 12: {
                return this.getEParameters();
            }
            case 13: {
                return this.getEExceptions();
            }
            case 14: {
                return this.getEGenericExceptions();
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
                this.setOrdered((Boolean)newValue);
                return;
            }
            case 3: {
                this.setUnique((Boolean)newValue);
                return;
            }
            case 4: {
                this.setLowerBound((Integer)newValue);
                return;
            }
            case 5: {
                this.setUpperBound((Integer)newValue);
                return;
            }
            case 8: {
                this.setEType((EClassifier)newValue);
                return;
            }
            case 9: {
                this.setEGenericType((EGenericType)newValue);
                return;
            }
            case 11: {
                this.getETypeParameters().clear();
                this.getETypeParameters().addAll((Collection)newValue);
                return;
            }
            case 12: {
                this.getEParameters().clear();
                this.getEParameters().addAll((Collection)newValue);
                return;
            }
            case 13: {
                this.getEExceptions().clear();
                this.getEExceptions().addAll((Collection)newValue);
                return;
            }
            case 14: {
                this.getEGenericExceptions().clear();
                this.getEGenericExceptions().addAll((Collection)newValue);
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
                this.setOrdered(true);
                return;
            }
            case 3: {
                this.setUnique(true);
                return;
            }
            case 4: {
                this.setLowerBound(0);
                return;
            }
            case 5: {
                this.setUpperBound(1);
                return;
            }
            case 8: {
                this.unsetEType();
                return;
            }
            case 9: {
                this.unsetEGenericType();
                return;
            }
            case 11: {
                this.getETypeParameters().clear();
                return;
            }
            case 12: {
                this.getEParameters().clear();
                return;
            }
            case 13: {
                this.unsetEExceptions();
                return;
            }
            case 14: {
                this.unsetEGenericExceptions();
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
                return (this.eFlags & 0x100) == 0;
            }
            case 3: {
                return (this.eFlags & 0x200) == 0;
            }
            case 4: {
                return this.lowerBound != 0;
            }
            case 5: {
                return this.upperBound != 1;
            }
            case 6: {
                return this.isMany();
            }
            case 7: {
                return this.isRequired();
            }
            case 8: {
                return this.isSetEType();
            }
            case 9: {
                return this.isSetEGenericType();
            }
            case 10: {
                return this.getEContainingClass() != null;
            }
            case 11: {
                return this.eTypeParameters != null && !this.eTypeParameters.isEmpty();
            }
            case 12: {
                return this.eParameters != null && !this.eParameters.isEmpty();
            }
            case 13: {
                return this.isSetEExceptions();
            }
            case 14: {
                return this.isSetEGenericExceptions();
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
                return this.getOperationID();
            }
            case 2: {
                return this.isOverrideOf((EOperation)arguments.get(0));
            }
        }
        return this.eDynamicInvoke(operationID, arguments);
    }

    @Override
    public EOperation.Internal.InvocationDelegate getInvocationDelegate() {
        if (this.invocationDelegate == null) {
            EOperation.Internal.InvocationDelegate.Factory factory = EcoreUtil.getInvocationDelegateFactory(this);
            if (factory != null) {
                this.invocationDelegate = factory.createInvocationDelegate(this);
            }
            if (this.invocationDelegate == null) {
                this.invocationDelegate = new BasicInvocationDelegate(this);
            }
        }
        return this.invocationDelegate;
    }

    @Override
    public void setInvocationDelegate(EOperation.Internal.InvocationDelegate invocationDelegate) {
        this.invocationDelegate = invocationDelegate;
    }
}

