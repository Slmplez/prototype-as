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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.components.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.components.ComponentType;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.PortPrototype;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortPrototypeImpl
extends IdentifiableImpl
implements PortPrototype {
    protected EList<PortAnnotation> annotations;

    protected PortPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PORT_PROTOTYPE;
    }

    @Override
    public ComponentType getComponentType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (ComponentType)this.eContainer();
    }

    public NotificationChain basicSetComponentType(ComponentType newComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newComponentType, 16, msgs);
        return msgs;
    }

    @Override
    public void setComponentType(ComponentType newComponentType) {
        if (newComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newComponentType != null) {
                msgs = ((InternalEObject)newComponentType).eInverseAdd((InternalEObject)this, 19, ComponentType.class, msgs);
            }
            if ((msgs = this.basicSetComponentType(newComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newComponentType, (Object)newComponentType));
        }
    }

    @Override
    public EList<PortAnnotation> getAnnotations() {
        if (this.annotations == null) {
            this.annotations = new EObjectContainmentWithInverseEList(PortAnnotation.class, (InternalEObject)this, 17, 4);
        }
        return this.annotations;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetComponentType((ComponentType)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getAnnotations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetComponentType(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getAnnotations()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getComponentType();
            }
            case 17: {
                return this.getAnnotations();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setComponentType((ComponentType)newValue);
                return;
            }
            case 17: {
                this.getAnnotations().clear();
                this.getAnnotations().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setComponentType(null);
                return;
            }
            case 17: {
                this.getAnnotations().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getComponentType() != null;
            }
            case 17: {
                return this.annotations != null && !this.annotations.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

