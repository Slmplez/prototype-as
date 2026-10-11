/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.genericstructure.infrastructure.impl;

import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.autosar.ARPackage;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class PackageableElementImpl
extends IdentifiableImpl
implements PackageableElement {
    protected PackageableElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InfrastructurePackage.Literals.PACKAGEABLE_ELEMENT;
    }

    public GARPackage gGetARPackage() {
        return this.getARPackage();
    }

    public void gSetARPackage(GARPackage newGARPackage) {
        this.setARPackage((ARPackage)newGARPackage);
    }

    @Override
    public ARPackage getARPackage() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ARPackage)this.eContainer();
    }

    public NotificationChain basicSetARPackage(ARPackage newARPackage, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newARPackage, 17, msgs);
        return msgs;
    }

    @Override
    public void setARPackage(ARPackage newARPackage) {
        if (newARPackage != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newARPackage != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newARPackage)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newARPackage != null) {
                msgs = ((InternalEObject)newARPackage).eInverseAdd((InternalEObject)this, 18, ARPackage.class, msgs);
            }
            if ((msgs = this.basicSetARPackage(newARPackage, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newARPackage, (Object)newARPackage));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetARPackage((ARPackage)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetARPackage(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, ARPackage.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetARPackage();
            }
            case 17: {
                return this.getARPackage();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gSetARPackage((GARPackage)newValue);
                return;
            }
            case 17: {
                this.setARPackage((ARPackage)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.gSetARPackage(null);
                return;
            }
            case 17: {
                this.setARPackage(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.gGetARPackage() != null;
            }
            case 17: {
                return this.getARPackage() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPackageableElement.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPackageableElement.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 16;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

