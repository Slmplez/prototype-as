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
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EClassImpl;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EStructuralFeatureImpl;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EReferenceImpl
extends EStructuralFeatureImpl
implements EReference {
    protected static final boolean CONTAINMENT_EDEFAULT = false;
    protected static final int CONTAINMENT_EFLAG = 32768;
    protected static final boolean CONTAINER_EDEFAULT = false;
    protected static final boolean RESOLVE_PROXIES_EDEFAULT = true;
    protected static final int RESOLVE_PROXIES_EFLAG = 65536;
    protected EReference eOpposite;
    protected EList<EAttribute> eKeys;
    protected EClass eReferenceType;

    protected EReferenceImpl() {
        this.eFlags |= 0x10000;
    }

    @Override
    protected EClass eStaticClass() {
        return EcorePackage.Literals.EREFERENCE;
    }

    public boolean isBidirectional() {
        return this.getEOpposite() != null;
    }

    @Override
    public boolean isContainment() {
        return (this.eFlags & 0x8000) != 0;
    }

    public void setContainmentGen(boolean newContainment) {
        boolean oldContainment;
        boolean bl = oldContainment = (this.eFlags & 0x8000) != 0;
        this.eFlags = newContainment ? (this.eFlags |= 0x8000) : (this.eFlags &= 0xFFFF7FFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, oldContainment, newContainment));
        }
    }

    @Override
    public void setContainment(boolean value) {
        this.setContainmentGen(value);
        if (this.eContainer instanceof EClassImpl) {
            ((EClassImpl)this.eContainer).getESuperAdapter().setFlags(2);
        }
    }

    @Override
    public boolean isContainer() {
        EReference theOpposite = this.getEOpposite();
        return theOpposite != null && theOpposite.isContainment();
    }

    @Override
    public boolean isResolveProxies() {
        return (this.eFlags & 0x10000) != 0;
    }

    @Override
    public void setResolveProxies(boolean newResolveProxies) {
        boolean oldResolveProxies;
        boolean bl = oldResolveProxies = (this.eFlags & 0x10000) != 0;
        this.eFlags = newResolveProxies ? (this.eFlags |= 0x10000) : (this.eFlags &= 0xFFFEFFFF);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, oldResolveProxies, newResolveProxies));
        }
    }

    @Override
    public EReference getEOpposite() {
        if (this.eOpposite != null && this.eOpposite.eIsProxy()) {
            InternalEObject oldEOpposite = (InternalEObject)((Object)this.eOpposite);
            this.eOpposite = (EReference)this.eResolveProxy(oldEOpposite);
            if (this.eOpposite != oldEOpposite && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldEOpposite, (Object)this.eOpposite));
            }
        }
        return this.eOpposite;
    }

    public EReference basicGetEOpposite() {
        return this.eOpposite;
    }

    @Override
    public void setEOpposite(EReference newEOpposite) {
        EReference oldEOpposite = this.eOpposite;
        this.eOpposite = newEOpposite;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldEOpposite, (Object)this.eOpposite));
        }
    }

    @Override
    public NotificationChain setEType(EClassifier newEType, NotificationChain msgs) {
        this.eReferenceType = null;
        return super.setEType(newEType, msgs);
    }

    @Override
    public EClass getEReferenceType() {
        EClassifier eType;
        if ((this.eReferenceType == null || !this.isFrozen() && this.eReferenceType.eIsProxy()) && (eType = this.getEType()) instanceof EClass) {
            this.eReferenceType = (EClass)eType;
        }
        return this.eReferenceType;
    }

    public EClass basicGetEReferenceType() {
        EClassifier eType;
        if (this.eReferenceType == null && (eType = this.basicGetEType()) instanceof EClass) {
            this.eReferenceType = (EClass)eType;
        }
        return this.eReferenceType;
    }

    @Override
    protected void freeze() {
        this.getEReferenceType();
        super.freeze();
    }

    @Override
    public EList<EAttribute> getEKeys() {
        if (this.eKeys == null) {
            this.eKeys = new EObjectResolvingEList<EAttribute>(EAttribute.class, this, 23);
        }
        return this.eKeys;
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
                return this.isChangeable();
            }
            case 11: {
                return this.isVolatile();
            }
            case 12: {
                return this.isTransient();
            }
            case 13: {
                return this.getDefaultValueLiteral();
            }
            case 14: {
                return this.getDefaultValue();
            }
            case 15: {
                return this.isUnsettable();
            }
            case 16: {
                return this.isDerived();
            }
            case 17: {
                return this.getEContainingClass();
            }
            case 18: {
                return this.isContainment();
            }
            case 19: {
                return this.isContainer();
            }
            case 20: {
                return this.isResolveProxies();
            }
            case 21: {
                if (resolve) {
                    return this.getEOpposite();
                }
                return this.basicGetEOpposite();
            }
            case 22: {
                if (resolve) {
                    return this.getEReferenceType();
                }
                return this.basicGetEReferenceType();
            }
            case 23: {
                return this.getEKeys();
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
            case 10: {
                this.setChangeable((Boolean)newValue);
                return;
            }
            case 11: {
                this.setVolatile((Boolean)newValue);
                return;
            }
            case 12: {
                this.setTransient((Boolean)newValue);
                return;
            }
            case 13: {
                this.setDefaultValueLiteral((String)newValue);
                return;
            }
            case 15: {
                this.setUnsettable((Boolean)newValue);
                return;
            }
            case 16: {
                this.setDerived((Boolean)newValue);
                return;
            }
            case 18: {
                this.setContainment((Boolean)newValue);
                return;
            }
            case 20: {
                this.setResolveProxies((Boolean)newValue);
                return;
            }
            case 21: {
                this.setEOpposite((EReference)newValue);
                return;
            }
            case 23: {
                this.getEKeys().clear();
                this.getEKeys().addAll((Collection)newValue);
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
            case 10: {
                this.setChangeable(true);
                return;
            }
            case 11: {
                this.setVolatile(false);
                return;
            }
            case 12: {
                this.setTransient(false);
                return;
            }
            case 13: {
                this.setDefaultValueLiteral(DEFAULT_VALUE_LITERAL_EDEFAULT);
                return;
            }
            case 15: {
                this.setUnsettable(false);
                return;
            }
            case 16: {
                this.setDerived(false);
                return;
            }
            case 18: {
                this.setContainment(false);
                return;
            }
            case 20: {
                this.setResolveProxies(true);
                return;
            }
            case 21: {
                this.setEOpposite(null);
                return;
            }
            case 23: {
                this.getEKeys().clear();
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
                return (this.eFlags & 0x400) == 0;
            }
            case 11: {
                return (this.eFlags & 0x800) != 0;
            }
            case 12: {
                return (this.eFlags & 0x1000) != 0;
            }
            case 13: {
                return DEFAULT_VALUE_LITERAL_EDEFAULT == null ? this.defaultValueLiteral != null : !DEFAULT_VALUE_LITERAL_EDEFAULT.equals(this.defaultValueLiteral);
            }
            case 14: {
                return DEFAULT_VALUE_EDEFAULT == null ? this.getDefaultValue() != null : !DEFAULT_VALUE_EDEFAULT.equals(this.getDefaultValue());
            }
            case 15: {
                return (this.eFlags & 0x2000) != 0;
            }
            case 16: {
                return (this.eFlags & 0x4000) != 0;
            }
            case 17: {
                return this.getEContainingClass() != null;
            }
            case 18: {
                return (this.eFlags & 0x8000) != 0;
            }
            case 19: {
                return this.isContainer();
            }
            case 20: {
                return (this.eFlags & 0x10000) == 0;
            }
            case 21: {
                return this.eOpposite != null;
            }
            case 22: {
                return this.basicGetEReferenceType() != null;
            }
            case 23: {
                return this.eKeys != null && !this.eKeys.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (containment: ");
        result.append((this.eFlags & 0x8000) != 0);
        result.append(", resolveProxies: ");
        result.append((this.eFlags & 0x10000) != 0);
        result.append(')');
        return result.toString();
    }
}

