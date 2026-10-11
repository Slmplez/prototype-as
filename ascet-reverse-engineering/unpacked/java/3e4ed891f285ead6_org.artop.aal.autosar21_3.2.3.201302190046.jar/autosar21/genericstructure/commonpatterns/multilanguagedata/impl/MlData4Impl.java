/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.genericstructure.commonpatterns.multilanguagedata.impl;

import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.MlDataModel4Impl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class MlData4Impl
extends MlDataModel4Impl
implements MlData4 {
    protected MlData4Impl() {
    }

    protected EClass eStaticClass() {
        return MultilanguagedataPackage.Literals.ML_DATA4;
    }

    public Identifiable getIdentifiable() {
        if (this.eContainerFeatureID() != 5) {
            return null;
        }
        return (Identifiable)this.eContainer();
    }

    public NotificationChain basicSetIdentifiable(Identifiable newIdentifiable, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIdentifiable, 5, msgs);
        return msgs;
    }

    public void setIdentifiable(Identifiable newIdentifiable) {
        if (newIdentifiable != this.eInternalContainer() || this.eContainerFeatureID() != 5 && newIdentifiable != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIdentifiable)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIdentifiable != null) {
                msgs = ((InternalEObject)newIdentifiable).eInverseAdd((InternalEObject)this, 9, Identifiable.class, msgs);
            }
            if ((msgs = this.basicSetIdentifiable(newIdentifiable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newIdentifiable, (Object)newIdentifiable));
        }
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, Identifiable.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getIdentifiable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setIdentifiable((Identifiable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setIdentifiable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getIdentifiable() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

