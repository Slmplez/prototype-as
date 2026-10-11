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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.swclass.impl;

import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwClassAttrInstanceImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwClassAttrInstanceImplImpl
extends ARObjectImpl
implements SwClassAttrInstanceImpl {
    protected EList<SwVariableImpl> swVariableImpls;
    protected EList<SwCalprmImpl> swCalprmImpls;
    protected EList<SwClassImpl> swClassImpls;

    protected SwClassAttrInstanceImplImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwclassPackage.Literals.SW_CLASS_ATTR_INSTANCE_IMPL;
    }

    @Override
    public SwClassInstance getSwClassInstance() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwClassInstance)this.eContainer();
    }

    public NotificationChain basicSetSwClassInstance(SwClassInstance newSwClassInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwClassInstance, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwClassInstance(SwClassInstance newSwClassInstance) {
        if (newSwClassInstance != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwClassInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwClassInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwClassInstance != null) {
                msgs = ((InternalEObject)newSwClassInstance).eInverseAdd((InternalEObject)this, 20, SwClassInstance.class, msgs);
            }
            if ((msgs = this.basicSetSwClassInstance(newSwClassInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwClassInstance, (Object)newSwClassInstance));
        }
    }

    @Override
    public EList<SwVariableImpl> getSwVariableImpls() {
        if (this.swVariableImpls == null) {
            this.swVariableImpls = new EObjectContainmentEList(SwVariableImpl.class, (InternalEObject)this, 5);
        }
        return this.swVariableImpls;
    }

    @Override
    public EList<SwCalprmImpl> getSwCalprmImpls() {
        if (this.swCalprmImpls == null) {
            this.swCalprmImpls = new EObjectContainmentEList(SwCalprmImpl.class, (InternalEObject)this, 6);
        }
        return this.swCalprmImpls;
    }

    @Override
    public EList<SwClassImpl> getSwClassImpls() {
        if (this.swClassImpls == null) {
            this.swClassImpls = new EObjectContainmentWithInverseEList(SwClassImpl.class, (InternalEObject)this, 7, 4);
        }
        return this.swClassImpls;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwClassInstance((SwClassInstance)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSwClassImpls()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwClassInstance(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwVariableImpls()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSwCalprmImpls()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getSwClassImpls()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, SwClassInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwClassInstance();
            }
            case 5: {
                return this.getSwVariableImpls();
            }
            case 6: {
                return this.getSwCalprmImpls();
            }
            case 7: {
                return this.getSwClassImpls();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwClassInstance((SwClassInstance)newValue);
                return;
            }
            case 5: {
                this.getSwVariableImpls().clear();
                this.getSwVariableImpls().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSwCalprmImpls().clear();
                this.getSwCalprmImpls().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getSwClassImpls().clear();
                this.getSwClassImpls().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwClassInstance(null);
                return;
            }
            case 5: {
                this.getSwVariableImpls().clear();
                return;
            }
            case 6: {
                this.getSwCalprmImpls().clear();
                return;
            }
            case 7: {
                this.getSwClassImpls().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwClassInstance() != null;
            }
            case 5: {
                return this.swVariableImpls != null && !this.swVariableImpls.isEmpty();
            }
            case 6: {
                return this.swCalprmImpls != null && !this.swCalprmImpls.isEmpty();
            }
            case 7: {
                return this.swClassImpls != null && !this.swClassImpls.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

