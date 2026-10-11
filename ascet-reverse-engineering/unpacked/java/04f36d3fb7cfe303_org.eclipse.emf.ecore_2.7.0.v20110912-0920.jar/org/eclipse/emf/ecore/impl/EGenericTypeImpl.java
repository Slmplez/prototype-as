/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import java.util.Set;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypeParameter;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.ETypeParameterImpl;
import org.eclipse.emf.ecore.impl.ETypedElementImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EGenericTypeImpl
extends MinimalEObjectImpl.Container
implements EGenericType {
    protected EGenericType eUpperBound;
    protected EList<EGenericType> eTypeArguments;
    static EDataType eJavaObject;
    protected EClassifier eRawType = eJavaObject;
    protected EGenericType eLowerBound;
    protected ETypeParameter eTypeParameter;
    protected EClassifier eClassifier;

    protected EGenericTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EGENERIC_TYPE;
    }

    @Override
    public EGenericType getEUpperBound() {
        return this.eUpperBound;
    }

    public NotificationChain basicSetEUpperBound(EGenericType newEUpperBound, NotificationChain msgs) {
        EGenericType oldEUpperBound = this.eUpperBound;
        this.eUpperBound = newEUpperBound;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldEUpperBound, (Object)newEUpperBound);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEUpperBound(EGenericType newEUpperBound) {
        if (newEUpperBound != this.eUpperBound) {
            NotificationChain msgs = null;
            if (this.eUpperBound != null) {
                msgs = ((InternalEObject)((Object)this.eUpperBound)).eInverseRemove(this, -1, null, msgs);
            }
            if (newEUpperBound != null) {
                msgs = ((InternalEObject)((Object)newEUpperBound)).eInverseAdd(this, -1, null, msgs);
            }
            if ((msgs = this.basicSetEUpperBound(newEUpperBound, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newEUpperBound, (Object)newEUpperBound));
        }
    }

    @Override
    public EList<EGenericType> getETypeArguments() {
        if (this.eTypeArguments == null) {
            this.eTypeArguments = new EObjectContainmentEList<EGenericType>(EGenericType.class, this, 1);
        }
        return this.eTypeArguments;
    }

    @Override
    public EClassifier getERawType() {
        if (this.eRawType != null && this.eRawType.eIsProxy()) {
            InternalEObject oldERawType = (InternalEObject)((Object)this.eRawType);
            this.eRawType = (EClassifier)this.eResolveProxy(oldERawType);
            if (this.eRawType != oldERawType) {
                if (this.eNotificationRequired()) {
                    this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 2, (Object)oldERawType, (Object)this.eRawType));
                }
                if (this.eContainer instanceof EOperation) {
                    if (this.eContainerFeatureID() == -15 && this.eContainer.eNotificationRequired()) {
                        new ENotificationImpl(this.eContainer, 9, 13, (Object)oldERawType, (Object)this.eRawType, ((EOperation)((Object)this.eContainer)).getEGenericExceptions().indexOf((Object)this)).dispatch();
                    }
                } else if (this.eContainer instanceof EClass && this.eContainerFeatureID() == -23 && this.eContainer.eNotificationRequired()) {
                    EClassifier newERawType = this.eRawType;
                    if (!(newERawType instanceof EClass)) {
                        newERawType = EcorePackage.Literals.EOBJECT;
                    }
                    if (!(oldERawType instanceof EClass)) {
                        oldERawType = (InternalEObject)((Object)EcorePackage.Literals.EOBJECT);
                    }
                    new ENotificationImpl(this.eContainer, 9, 10, (Object)oldERawType, (Object)newERawType, ((EClass)((Object)this.eContainer)).getEGenericSuperTypes().indexOf((Object)this)).dispatch();
                }
            }
        }
        return this.eRawType;
    }

    public EClassifier basicGetERawType() {
        return this.eRawType;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public NotificationChain setERawType(EClassifier newERawType, NotificationChain msgs) {
        ENotificationImpl notification;
        EClassifier oldERawType = this.eRawType;
        if (newERawType == null) {
            newERawType = eJavaObject;
        }
        this.eRawType = newERawType;
        if (this.eNotificationRequired()) {
            notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldERawType, (Object)this.eRawType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        if (oldERawType != newERawType) {
            if (this.eContainer instanceof ETypedElementImpl) {
                if (this.eContainerFeatureID() == -10) {
                    msgs = ((ETypedElementImpl)this.eContainer).setEType(newERawType, (NotificationChain)msgs);
                } else if (this.eContainerFeatureID() == -15) {
                    if (newERawType == null) {
                        newERawType = EcorePackage.Literals.EJAVA_OBJECT;
                    }
                    if (oldERawType == null) {
                        oldERawType = EcorePackage.Literals.EJAVA_OBJECT;
                    }
                    if (this.eContainer.eNotificationRequired()) {
                        notification = new ENotificationImpl(this.eContainer, 1, 13, (Object)oldERawType, (Object)newERawType, ((EOperation)((Object)this.eContainer)).getEGenericExceptions().indexOf((Object)this), false);
                        if (msgs == null) {
                            msgs = notification;
                        } else {
                            msgs.add((Notification)notification);
                        }
                    }
                }
            } else if (this.eContainer instanceof EClass) {
                if (this.eContainerFeatureID() == -23) {
                    if (!(newERawType instanceof EClass)) {
                        newERawType = EcorePackage.Literals.EOBJECT;
                    }
                    if (!(oldERawType instanceof EClass)) {
                        oldERawType = EcorePackage.Literals.EOBJECT;
                    }
                    if (this.eContainer.eNotificationRequired()) {
                        notification = new ENotificationImpl(this.eContainer, 1, 10, (Object)oldERawType, (Object)newERawType, ((EClass)((Object)this.eContainer)).getEGenericSuperTypes().indexOf((Object)this), false);
                        if (msgs == null) {
                            msgs = notification;
                        } else {
                            msgs.add((Notification)notification);
                        }
                    }
                }
            } else if (this.eContainer instanceof ETypeParameter) {
                ETypeParameter eTypeParameter;
                ETypeParameter eTypeParameter2 = eTypeParameter = (ETypeParameter)((Object)this.eContainer);
                synchronized (eTypeParameter2) {
                    Set<EGenericType> eGenericTypes = ((ETypeParameterImpl)eTypeParameter).getEGenericTypes();
                    for (EGenericTypeImpl eGenericTypeImpl : eGenericTypes) {
                        msgs = eGenericTypeImpl.setERawType(eGenericTypeImpl.getErasure(eTypeParameter), (NotificationChain)msgs);
                    }
                }
            }
        }
        return msgs;
    }

    @Override
    public NotificationChain eBasicSetContainer(InternalEObject newContainer, int newContainerFeatureID, NotificationChain msgs) {
        EClassifier newERawType;
        msgs = super.eBasicSetContainer(newContainer, newContainerFeatureID, msgs);
        if (this.eTypeParameter != null && newContainer instanceof EStructuralFeature && (newERawType = this.getErasure(this.eTypeParameter)) != this.eRawType) {
            msgs = this.setERawType(newERawType, msgs);
        }
        return msgs;
    }

    @Override
    public EGenericType getELowerBound() {
        return this.eLowerBound;
    }

    public NotificationChain basicSetELowerBound(EGenericType newELowerBound, NotificationChain msgs) {
        EGenericType oldELowerBound = this.eLowerBound;
        this.eLowerBound = newELowerBound;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldELowerBound, (Object)newELowerBound);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setELowerBound(EGenericType newELowerBound) {
        if (newELowerBound != this.eLowerBound) {
            NotificationChain msgs = null;
            if (this.eLowerBound != null) {
                msgs = ((InternalEObject)((Object)this.eLowerBound)).eInverseRemove(this, -4, null, msgs);
            }
            if (newELowerBound != null) {
                msgs = ((InternalEObject)((Object)newELowerBound)).eInverseAdd(this, -4, null, msgs);
            }
            if ((msgs = this.basicSetELowerBound(newELowerBound, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)newELowerBound, (Object)newELowerBound));
        }
    }

    @Override
    public ETypeParameter getETypeParameter() {
        return this.eTypeParameter;
    }

    public NotificationChain basicSetETypeParameter(ETypeParameter newETypeParameter, NotificationChain msgs) {
        ETypeParameter oldETypeParameter = this.eTypeParameter;
        this.eTypeParameter = newETypeParameter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldETypeParameter, (Object)newETypeParameter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        if (oldETypeParameter != newETypeParameter) {
            msgs = newETypeParameter != null ? this.setERawType(this.getErasure(newETypeParameter), (NotificationChain)msgs) : this.setERawType(this.eClassifier, (NotificationChain)msgs);
        }
        return msgs;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setETypeParameter(ETypeParameter newETypeParameter) {
        if (newETypeParameter != this.eTypeParameter) {
            NotificationChain msgs;
            ETypeParameter eTypeParameter;
            if (this.eTypeParameter != null) {
                eTypeParameter = this.eTypeParameter;
                synchronized (eTypeParameter) {
                    ((ETypeParameterImpl)this.eTypeParameter).getEGenericTypes().remove(this);
                }
            }
            if (newETypeParameter != null) {
                eTypeParameter = newETypeParameter;
                synchronized (eTypeParameter) {
                    ((ETypeParameterImpl)newETypeParameter).getEGenericTypes().add(this);
                }
            }
            if ((msgs = this.basicSetETypeParameter(newETypeParameter, null)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newETypeParameter, (Object)newETypeParameter));
        }
    }

    protected EClassifier getErasure(ETypeParameter eTypeParameter) {
        if (eTypeParameter == null) {
            return null;
        }
        boolean needEClass = this.eContainer instanceof EClass || this.eContainer instanceof EReference;
        boolean needEDataType = !needEClass && this.eContainer instanceof EAttribute;
        for (EGenericType eBound : eTypeParameter.getEBounds()) {
            EClassifier eRawType = eBound.getERawType();
            if (!(needEClass ? eRawType instanceof EClass : (needEDataType ? eRawType instanceof EDataType : eRawType != null))) continue;
            return eRawType;
        }
        return needEClass ? EcorePackage.Literals.EOBJECT : EcorePackage.Literals.EJAVA_OBJECT;
    }

    @Override
    public EClassifier getEClassifier() {
        if (this.eClassifier != null && this.eClassifier.eIsProxy()) {
            InternalEObject oldEClassifier = (InternalEObject)((Object)this.eClassifier);
            this.eClassifier = (EClassifier)this.eResolveProxy(oldEClassifier);
            if (this.eClassifier != oldEClassifier && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldEClassifier, (Object)this.eClassifier));
            }
        }
        return this.eClassifier;
    }

    public EClassifier basicGetEClassifier() {
        return this.eClassifier;
    }

    public NotificationChain setEClassifier(EClassifier newEClassifier, NotificationChain msgs) {
        EClassifier oldEClassifier = this.eClassifier;
        this.eClassifier = newEClassifier;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEClassifier, (Object)this.eClassifier);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEClassifier(EClassifier newEClassifier) {
        EClassifier oldEClassifier = this.eClassifier;
        NotificationChain msgs = this.setEClassifier(newEClassifier, null);
        if (oldEClassifier != newEClassifier && this.eTypeParameter == null) {
            msgs = this.setERawType(newEClassifier, msgs);
        }
        if (msgs != null) {
            msgs.dispatch();
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetEUpperBound(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getETypeArguments()).basicRemove(otherEnd, msgs);
            }
            case 3: {
                return this.basicSetELowerBound(null, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEUpperBound();
            }
            case 1: {
                return this.getETypeArguments();
            }
            case 2: {
                if (resolve) {
                    return this.getERawType();
                }
                return this.basicGetERawType();
            }
            case 3: {
                return this.getELowerBound();
            }
            case 4: {
                return this.getETypeParameter();
            }
            case 5: {
                if (resolve) {
                    return this.getEClassifier();
                }
                return this.basicGetEClassifier();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setEUpperBound((EGenericType)newValue);
                return;
            }
            case 1: {
                this.getETypeArguments().clear();
                this.getETypeArguments().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.setELowerBound((EGenericType)newValue);
                return;
            }
            case 4: {
                this.setETypeParameter((ETypeParameter)newValue);
                return;
            }
            case 5: {
                this.setEClassifier((EClassifier)newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setEUpperBound(null);
                return;
            }
            case 1: {
                this.getETypeArguments().clear();
                return;
            }
            case 3: {
                this.setELowerBound(null);
                return;
            }
            case 4: {
                this.setETypeParameter(null);
                return;
            }
            case 5: {
                this.setEClassifier(null);
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eUpperBound != null;
            }
            case 1: {
                return this.eTypeArguments != null && !this.eTypeArguments.isEmpty();
            }
            case 2: {
                return this.eRawType != null;
            }
            case 3: {
                return this.eLowerBound != null;
            }
            case 4: {
                return this.eTypeParameter != null;
            }
            case 5: {
                return this.eClassifier != null;
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public String toString() {
        StringBuilder result = new StringBuilder(super.toString());
        result.append(" (expression: ");
        this.toString(result);
        result.append(')');
        return result.toString();
    }

    protected void toString(StringBuilder result) {
        if (this.eClassifier != null) {
            String label = this.eClassifier.getName();
            String tail = null;
            if (label != null) {
                result.append(label);
            } else {
                String instanceTypeName = this.eClassifier.getInstanceTypeName();
                if (instanceTypeName != null) {
                    int index = instanceTypeName.indexOf(91);
                    if (index != -1) {
                        tail = instanceTypeName.substring(index);
                        result.append(instanceTypeName, 0, index);
                    } else {
                        result.append(instanceTypeName);
                    }
                }
            }
            if (this.eTypeArguments != null && !this.eTypeArguments.isEmpty()) {
                boolean first = true;
                result.append('<');
                for (EGenericType eTypeArgument : this.eTypeArguments) {
                    if (first) {
                        first = false;
                    } else {
                        result.append(", ");
                    }
                    ((EGenericTypeImpl)eTypeArgument).toString(result);
                }
                result.append('>');
            }
            if (tail != null) {
                result.append(tail);
            }
        } else if (this.eTypeParameter != null) {
            String label = this.eTypeParameter.getName();
            if (label != null) {
                result.append(label);
            }
        } else {
            result.append('?');
            if (this.eLowerBound != null) {
                result.append(" super ");
                ((EGenericTypeImpl)this.eLowerBound).toString(result);
            } else if (this.eUpperBound != null) {
                result.append(" extends ");
                ((EGenericTypeImpl)this.eUpperBound).toString(result);
            }
        }
    }
}

