/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.ecucdescription.impl;

import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.ecucdescription.EcucValueCollection;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcucModuleConfigurationValuesRefConditionalImpl
extends ARObjectImpl
implements EcucModuleConfigurationValuesRefConditional,
IReferringClass {
    protected EcucModuleConfigurationValues ecucModuleConfigurationValues;
    protected VariationPoint variationPoint;

    protected EcucModuleConfigurationValuesRefConditionalImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_MODULE_CONFIGURATION_VALUES_REF_CONDITIONAL;
    }

    public EcucValueCollection getEcucValueCollection() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EcucValueCollection)this.eContainer();
    }

    public NotificationChain basicSetEcucValueCollection(EcucValueCollection newEcucValueCollection, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucValueCollection, 4, msgs);
        return msgs;
    }

    public void setEcucValueCollection(EcucValueCollection newEcucValueCollection) {
        if (newEcucValueCollection != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEcucValueCollection != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucValueCollection)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucValueCollection != null) {
                msgs = ((InternalEObject)newEcucValueCollection).eInverseAdd((InternalEObject)this, 22, EcucValueCollection.class, msgs);
            }
            if ((msgs = this.basicSetEcucValueCollection(newEcucValueCollection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEcucValueCollection, (Object)newEcucValueCollection));
        }
    }

    public EcucModuleConfigurationValues getEcucModuleConfigurationValues() {
        if (this.ecucModuleConfigurationValues != null && this.ecucModuleConfigurationValues.eIsProxy()) {
            InternalEObject oldEcucModuleConfigurationValues = (InternalEObject)this.ecucModuleConfigurationValues;
            this.ecucModuleConfigurationValues = (EcucModuleConfigurationValues)this.eResolveProxy(oldEcucModuleConfigurationValues);
            if (this.ecucModuleConfigurationValues != oldEcucModuleConfigurationValues && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldEcucModuleConfigurationValues, (Object)this.ecucModuleConfigurationValues));
            }
        }
        return this.ecucModuleConfigurationValues;
    }

    public EcucModuleConfigurationValues basicGetEcucModuleConfigurationValues() {
        return this.ecucModuleConfigurationValues;
    }

    public void setEcucModuleConfigurationValues(EcucModuleConfigurationValues newEcucModuleConfigurationValues) {
        EcucModuleConfigurationValues oldEcucModuleConfigurationValues = this.ecucModuleConfigurationValues;
        this.ecucModuleConfigurationValues = newEcucModuleConfigurationValues;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEcucModuleConfigurationValues, (Object)this.ecucModuleConfigurationValues));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucValueCollection((EcucValueCollection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEcucValueCollection(null, msgs);
            }
            case 6: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, EcucValueCollection.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEcucValueCollection();
            }
            case 5: {
                if (resolve) {
                    return this.getEcucModuleConfigurationValues();
                }
                return this.basicGetEcucModuleConfigurationValues();
            }
            case 6: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEcucValueCollection((EcucValueCollection)newValue);
                return;
            }
            case 5: {
                this.setEcucModuleConfigurationValues((EcucModuleConfigurationValues)newValue);
                return;
            }
            case 6: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEcucValueCollection(null);
                return;
            }
            case 5: {
                this.setEcucModuleConfigurationValues(null);
                return;
            }
            case 6: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEcucValueCollection() != null;
            }
            case 5: {
                return this.ecucModuleConfigurationValues != null;
            }
            case 6: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

