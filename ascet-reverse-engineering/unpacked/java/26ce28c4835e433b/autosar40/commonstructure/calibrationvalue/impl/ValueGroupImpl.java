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
package autosar40.commonstructure.calibrationvalue.impl;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ValueGroupImpl
extends ARObjectImpl
implements ValueGroup {
    protected MultilanguageLongName label;
    protected SwValues vgContents;

    protected ValueGroupImpl() {
    }

    protected EClass eStaticClass() {
        return CalibrationvaluePackage.Literals.VALUE_GROUP;
    }

    public SwValues getSwValues() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwValues)this.eContainer();
    }

    public NotificationChain basicSetSwValues(SwValues newSwValues, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwValues, 4, msgs);
        return msgs;
    }

    public void setSwValues(SwValues newSwValues) {
        if (newSwValues != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwValues != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwValues)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwValues != null) {
                msgs = ((InternalEObject)newSwValues).eInverseAdd((InternalEObject)this, 7, SwValues.class, msgs);
            }
            if ((msgs = this.basicSetSwValues(newSwValues, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwValues, (Object)newSwValues));
        }
    }

    public MultilanguageLongName getLabel() {
        return this.label;
    }

    public NotificationChain basicSetLabel(MultilanguageLongName newLabel, NotificationChain msgs) {
        MultilanguageLongName oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLabel, (Object)newLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLabel(MultilanguageLongName newLabel) {
        if (newLabel != this.label) {
            NotificationChain msgs = null;
            if (this.label != null) {
                msgs = ((InternalEObject)this.label).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newLabel != null) {
                msgs = ((InternalEObject)newLabel).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetLabel(newLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newLabel, (Object)newLabel));
        }
    }

    public SwValues getVgContents() {
        return this.vgContents;
    }

    public NotificationChain basicSetVgContents(SwValues newVgContents, NotificationChain msgs) {
        SwValues oldVgContents = this.vgContents;
        this.vgContents = newVgContents;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVgContents, (Object)newVgContents);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVgContents(SwValues newVgContents) {
        if (newVgContents != this.vgContents) {
            NotificationChain msgs = null;
            if (this.vgContents != null) {
                msgs = ((InternalEObject)this.vgContents).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newVgContents != null) {
                msgs = ((InternalEObject)newVgContents).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetVgContents(newVgContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVgContents, (Object)newVgContents));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwValues((SwValues)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwValues(null, msgs);
            }
            case 5: {
                return this.basicSetLabel(null, msgs);
            }
            case 6: {
                return this.basicSetVgContents(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, SwValues.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwValues();
            }
            case 5: {
                return this.getLabel();
            }
            case 6: {
                return this.getVgContents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwValues((SwValues)newValue);
                return;
            }
            case 5: {
                this.setLabel((MultilanguageLongName)newValue);
                return;
            }
            case 6: {
                this.setVgContents((SwValues)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwValues(null);
                return;
            }
            case 5: {
                this.setLabel(null);
                return;
            }
            case 6: {
                this.setVgContents(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwValues() != null;
            }
            case 5: {
                return this.label != null;
            }
            case 6: {
                return this.vgContents != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

