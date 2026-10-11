/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.swcomponent.implementation.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.implementation.Dependency;
import autosar21.swcomponent.implementation.DependencyUsageEnum;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.implementation.ImplementationPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class DependencyImpl
extends IdentifiableImpl
implements Dependency {
    protected EList<DependencyUsageEnum> usages;

    protected DependencyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.DEPENDENCY;
    }

    @Override
    public Implementation getImplementation() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (Implementation)this.eContainer();
    }

    public NotificationChain basicSetImplementation(Implementation newImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newImplementation, 16, msgs);
        return msgs;
    }

    @Override
    public void setImplementation(Implementation newImplementation) {
        if (newImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newImplementation != null) {
                msgs = ((InternalEObject)newImplementation).eInverseAdd((InternalEObject)this, 25, Implementation.class, msgs);
            }
            if ((msgs = this.basicSetImplementation(newImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newImplementation, (Object)newImplementation));
        }
    }

    @Override
    public EList<DependencyUsageEnum> getUsages() {
        if (this.usages == null) {
            this.usages = new EDataTypeUniqueEList.Unsettable(DependencyUsageEnum.class, (InternalEObject)this, 17);
        }
        return this.usages;
    }

    @Override
    public void unsetUsages() {
        if (this.usages != null) {
            ((InternalEList.Unsettable)this.usages).unset();
        }
    }

    @Override
    public boolean isSetUsages() {
        return this.usages != null && ((InternalEList.Unsettable)this.usages).isSet();
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetImplementation((Implementation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, Implementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getImplementation();
            }
            case 17: {
                return this.getUsages();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setImplementation((Implementation)newValue);
                return;
            }
            case 17: {
                this.getUsages().clear();
                this.getUsages().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setImplementation(null);
                return;
            }
            case 17: {
                this.unsetUsages();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getImplementation() != null;
            }
            case 17: {
                return this.isSetUsages();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (usages: ");
        result.append(this.usages);
        result.append(')');
        return result.toString();
    }
}

