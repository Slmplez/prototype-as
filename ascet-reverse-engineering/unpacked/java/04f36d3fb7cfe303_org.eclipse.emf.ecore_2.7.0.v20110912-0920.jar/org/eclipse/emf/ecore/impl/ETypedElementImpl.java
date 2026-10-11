/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EGenericTypeImpl;
import org.eclipse.emf.ecore.impl.ENamedElementImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.InternalEList;

public abstract class ETypedElementImpl
extends ENamedElementImpl
implements ETypedElement {
    protected static final boolean ORDERED_EDEFAULT = true;
    protected static final int ORDERED_EFLAG = 256;
    protected static final boolean UNIQUE_EDEFAULT = true;
    protected static final int UNIQUE_EFLAG = 512;
    protected static final int LOWER_BOUND_EDEFAULT = 0;
    protected int lowerBound = 0;
    protected static final int UPPER_BOUND_EDEFAULT = 1;
    protected int upperBound = 1;
    protected static final boolean MANY_EDEFAULT = false;
    protected static final boolean REQUIRED_EDEFAULT = false;
    protected EClassifier eType;
    protected EGenericType eGenericType;

    protected ETypedElementImpl() {
        this.eFlags |= 0x100;
        this.eFlags |= 0x200;
    }

    protected void freeze() {
        this.getEType();
        super.freeze();
    }

    protected EClass eStaticClass() {
        return EcorePackage.Literals.ETYPED_ELEMENT;
    }

    public boolean isOrdered() {
        return (this.eFlags & 0x100) != 0;
    }

    public void setOrdered(boolean newOrdered) {
        boolean oldOrdered;
        boolean bl = oldOrdered = (this.eFlags & 0x100) != 0;
        this.eFlags = newOrdered ? (this.eFlags |= 0x100) : (this.eFlags &= 0xFFFFFEFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldOrdered, newOrdered));
        }
    }

    public boolean isUnique() {
        return (this.eFlags & 0x200) != 0;
    }

    public void setUnique(boolean newUnique) {
        boolean oldUnique;
        boolean bl = oldUnique = (this.eFlags & 0x200) != 0;
        this.eFlags = newUnique ? (this.eFlags |= 0x200) : (this.eFlags &= 0xFFFFFDFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, oldUnique, newUnique));
        }
    }

    public int getLowerBound() {
        return this.lowerBound;
    }

    public void setLowerBound(int newLowerBound) {
        int oldLowerBound = this.lowerBound;
        this.lowerBound = newLowerBound;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldLowerBound, this.lowerBound));
        }
    }

    public int getUpperBound() {
        return this.upperBound;
    }

    public void setUpperBound(int newUpperBound) {
        int oldUpperBound = this.upperBound;
        this.upperBound = newUpperBound;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, oldUpperBound, this.upperBound));
        }
    }

    public boolean isMany() {
        int upper = this.getUpperBound();
        return upper > 1 || upper == -1;
    }

    public boolean isRequired() {
        int lower = this.getLowerBound();
        return lower >= 1;
    }

    public EClassifier getEType() {
        if (!this.isFrozen() && this.eType != null && this.eType.eIsProxy()) {
            InternalEObject oldEType = (InternalEObject)((Object)this.eType);
            this.eType = (EClassifier)this.eResolveProxy(oldEType);
            if (this.eType != oldEType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldEType, (Object)this.eType));
            }
        }
        return this.eType;
    }

    public EClassifier basicGetEType() {
        return this.eType;
    }

    public NotificationChain setEType(EClassifier newEType, NotificationChain msgs) {
        EClassifier oldEType = this.eType;
        this.eType = newEType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldEType, (Object)this.eType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEType(EClassifier newEType) {
        NotificationChain msgs = this.setEType(newEType, null);
        EGenericType newEGenericType = null;
        if (newEType != null) {
            newEGenericType = EcoreFactory.eINSTANCE.createEGenericType();
            newEGenericType.setEClassifier(this.eType);
        }
        if ((msgs = this.setEGenericType(newEGenericType, msgs)) != null) {
            msgs.dispatch();
        }
    }

    public void unsetEType() {
        this.setEType(null);
    }

    public boolean isSetEType() {
        return this.eType != null && this.eGenericType.getETypeParameter() == null && this.eGenericType.getETypeArguments().isEmpty();
    }

    public EGenericType getEGenericType() {
        return this.eGenericType;
    }

    public NotificationChain basicSetEGenericType(EGenericType newEGenericType, NotificationChain msgs) {
        EGenericType oldEGenericType = this.eGenericType;
        this.eGenericType = newEGenericType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldEGenericType, (Object)newEGenericType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        if (newEGenericType == null) {
            if (this.eType != null) {
                msgs = this.setEType(null, (NotificationChain)msgs);
            }
        } else {
            EClassifier newEType = ((EGenericTypeImpl)newEGenericType).basicGetERawType();
            if (newEType != this.eType) {
                msgs = this.setEType(newEType, (NotificationChain)msgs);
            }
        }
        return msgs;
    }

    public NotificationChain setEGenericType(EGenericType newEGenericType, NotificationChain msgs) {
        if (newEGenericType != this.eGenericType) {
            if (this.eGenericType != null) {
                msgs = ((InternalEObject)((Object)this.eGenericType)).eInverseRemove(this, -10, null, (NotificationChain)msgs);
            }
            if (newEGenericType != null) {
                msgs = ((InternalEObject)((Object)newEGenericType)).eInverseAdd(this, -10, null, (NotificationChain)msgs);
            }
            msgs = this.basicSetEGenericType(newEGenericType, (NotificationChain)msgs);
        } else if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newEGenericType, (Object)newEGenericType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEGenericType(EGenericType newEGenericType) {
        NotificationChain msgs = this.setEGenericType(newEGenericType, null);
        if (msgs != null) {
            msgs.dispatch();
        }
    }

    public NotificationChain basicUnsetEGenericType(NotificationChain msgs) {
        msgs = this.setEType(null, msgs);
        return this.basicSetEGenericType(null, msgs);
    }

    public void unsetEGenericType() {
        this.setEGenericType(null);
    }

    public boolean isSetEGenericType() {
        return this.eGenericType != null && !this.isSetEType();
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getEAnnotations()).basicRemove(otherEnd, msgs);
            }
            case 9: {
                return this.basicUnsetEGenericType(msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

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
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

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
        }
        this.eDynamicSet(featureID, newValue);
    }

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
        }
        this.eDynamicUnset(featureID);
    }

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
        }
        return this.eDynamicIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ordered: ");
        result.append((this.eFlags & 0x100) != 0);
        result.append(", unique: ");
        result.append((this.eFlags & 0x200) != 0);
        result.append(", lowerBound: ");
        result.append(this.lowerBound);
        result.append(", upperBound: ");
        result.append(this.upperBound);
        result.append(')');
        return result.toString();
    }
}

