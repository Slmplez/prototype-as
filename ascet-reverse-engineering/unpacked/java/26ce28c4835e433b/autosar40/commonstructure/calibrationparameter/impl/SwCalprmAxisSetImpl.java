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
package autosar40.commonstructure.calibrationparameter.impl;

import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
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
public class SwCalprmAxisSetImpl
extends ARObjectImpl
implements SwCalprmAxisSet {
    protected EList<SwCalprmAxis> swCalprmAxis;

    protected SwCalprmAxisSetImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CalibrationparameterPackage.Literals.SW_CALPRM_AXIS_SET;
    }

    @Override
    public SwDataDefPropsContent getSwDataDefPropsContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefPropsContent)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefPropsContent(SwDataDefPropsContent newSwDataDefPropsContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefPropsContent, 4, msgs);
        return msgs;
    }

    @Override
    public void setSwDataDefPropsContent(SwDataDefPropsContent newSwDataDefPropsContent) {
        if (newSwDataDefPropsContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefPropsContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefPropsContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefPropsContent != null) {
                msgs = ((InternalEObject)newSwDataDefPropsContent).eInverseAdd((InternalEObject)this, 11, SwDataDefPropsContent.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefPropsContent(newSwDataDefPropsContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefPropsContent, (Object)newSwDataDefPropsContent));
        }
    }

    @Override
    public EList<SwCalprmAxis> getSwCalprmAxis() {
        if (this.swCalprmAxis == null) {
            this.swCalprmAxis = new EObjectContainmentWithInverseEList(SwCalprmAxis.class, (InternalEObject)this, 5, 4);
        }
        return this.swCalprmAxis;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefPropsContent((SwDataDefPropsContent)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwCalprmAxis()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefPropsContent(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSwCalprmAxis()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 11, SwDataDefPropsContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefPropsContent();
            }
            case 5: {
                return this.getSwCalprmAxis();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefPropsContent((SwDataDefPropsContent)newValue);
                return;
            }
            case 5: {
                this.getSwCalprmAxis().clear();
                this.getSwCalprmAxis().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefPropsContent(null);
                return;
            }
            case 5: {
                this.getSwCalprmAxis().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefPropsContent() != null;
            }
            case 5: {
                return this.swCalprmAxis != null && !this.swCalprmAxis.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

