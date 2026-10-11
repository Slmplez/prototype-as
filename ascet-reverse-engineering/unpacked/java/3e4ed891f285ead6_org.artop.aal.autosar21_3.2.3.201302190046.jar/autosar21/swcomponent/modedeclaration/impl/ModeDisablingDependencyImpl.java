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
package autosar21.swcomponent.modedeclaration.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.modedeclaration.ModeDisablingDependency;
import autosar21.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar21.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
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
public class ModeDisablingDependencyImpl
extends ARObjectImpl
implements ModeDisablingDependency {
    protected EList<ModeDisablingDependencyDependentOnMode> dependentOnModes;

    protected ModeDisablingDependencyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DISABLING_DEPENDENCY;
    }

    @Override
    public RTEEvent getRTEEvent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (RTEEvent)this.eContainer();
    }

    public NotificationChain basicSetRTEEvent(RTEEvent newRTEEvent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRTEEvent, 4, msgs);
        return msgs;
    }

    @Override
    public void setRTEEvent(RTEEvent newRTEEvent) {
        if (newRTEEvent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newRTEEvent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRTEEvent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRTEEvent != null) {
                msgs = ((InternalEObject)newRTEEvent).eInverseAdd((InternalEObject)this, 18, RTEEvent.class, msgs);
            }
            if ((msgs = this.basicSetRTEEvent(newRTEEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newRTEEvent, (Object)newRTEEvent));
        }
    }

    @Override
    public EList<ModeDisablingDependencyDependentOnMode> getDependentOnModes() {
        if (this.dependentOnModes == null) {
            this.dependentOnModes = new EObjectContainmentWithInverseEList(ModeDisablingDependencyDependentOnMode.class, (InternalEObject)this, 5, 4);
        }
        return this.dependentOnModes;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRTEEvent((RTEEvent)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getDependentOnModes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetRTEEvent(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getDependentOnModes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, RTEEvent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRTEEvent();
            }
            case 5: {
                return this.getDependentOnModes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setRTEEvent((RTEEvent)newValue);
                return;
            }
            case 5: {
                this.getDependentOnModes().clear();
                this.getDependentOnModes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setRTEEvent(null);
                return;
            }
            case 5: {
                this.getDependentOnModes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getRTEEvent() != null;
            }
            case 5: {
                return this.dependentOnModes != null && !this.dependentOnModes.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

