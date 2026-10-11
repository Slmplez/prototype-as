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
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl;

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutine;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationRoutineMapping;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class InterpolationRoutineImpl
extends ARObjectImpl
implements InterpolationRoutine,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final Boolean IS_DEFAULT_EDEFAULT = Boolean.FALSE;
    protected Boolean isDefault = IS_DEFAULT_EDEFAULT;
    protected boolean isDefaultESet;
    protected BswModuleEntry interpolationRoutine;

    protected InterpolationRoutineImpl() {
    }

    protected EClass eStaticClass() {
        return InterpolationroutinemappingsetPackage.Literals.INTERPOLATION_ROUTINE;
    }

    public InterpolationRoutineMapping getInterpolationRoutineMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (InterpolationRoutineMapping)this.eContainer();
    }

    public NotificationChain basicSetInterpolationRoutineMapping(InterpolationRoutineMapping newInterpolationRoutineMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInterpolationRoutineMapping, 4, msgs);
        return msgs;
    }

    public void setInterpolationRoutineMapping(InterpolationRoutineMapping newInterpolationRoutineMapping) {
        if (newInterpolationRoutineMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newInterpolationRoutineMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInterpolationRoutineMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInterpolationRoutineMapping != null) {
                msgs = ((InternalEObject)newInterpolationRoutineMapping).eInverseAdd((InternalEObject)this, 5, InterpolationRoutineMapping.class, msgs);
            }
            if ((msgs = this.basicSetInterpolationRoutineMapping(newInterpolationRoutineMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newInterpolationRoutineMapping, (Object)newInterpolationRoutineMapping));
        }
    }

    public String getShortLabel() {
        return this.shortLabel;
    }

    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = SHORT_LABEL_EDEFAULT;
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortLabel, (Object)SHORT_LABEL_EDEFAULT, oldShortLabelESet));
        }
    }

    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    public Boolean getIsDefault() {
        return this.isDefault;
    }

    public void setIsDefault(Boolean newIsDefault) {
        Boolean oldIsDefault = this.isDefault;
        this.isDefault = newIsDefault;
        boolean oldIsDefaultESet = this.isDefaultESet;
        this.isDefaultESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIsDefault, (Object)this.isDefault, !oldIsDefaultESet));
        }
    }

    public void unsetIsDefault() {
        Boolean oldIsDefault = this.isDefault;
        boolean oldIsDefaultESet = this.isDefaultESet;
        this.isDefault = IS_DEFAULT_EDEFAULT;
        this.isDefaultESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldIsDefault, (Object)IS_DEFAULT_EDEFAULT, oldIsDefaultESet));
        }
    }

    public boolean isSetIsDefault() {
        return this.isDefaultESet;
    }

    public BswModuleEntry getInterpolationRoutine() {
        if (this.interpolationRoutine != null && this.interpolationRoutine.eIsProxy()) {
            InternalEObject oldInterpolationRoutine = (InternalEObject)this.interpolationRoutine;
            this.interpolationRoutine = (BswModuleEntry)this.eResolveProxy(oldInterpolationRoutine);
            if (this.interpolationRoutine != oldInterpolationRoutine && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldInterpolationRoutine, (Object)this.interpolationRoutine));
            }
        }
        return this.interpolationRoutine;
    }

    public BswModuleEntry basicGetInterpolationRoutine() {
        return this.interpolationRoutine;
    }

    public void setInterpolationRoutine(BswModuleEntry newInterpolationRoutine) {
        BswModuleEntry oldInterpolationRoutine = this.interpolationRoutine;
        this.interpolationRoutine = newInterpolationRoutine;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldInterpolationRoutine, (Object)this.interpolationRoutine));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInterpolationRoutineMapping((InterpolationRoutineMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetInterpolationRoutineMapping(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, InterpolationRoutineMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getInterpolationRoutineMapping();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                return this.getIsDefault();
            }
            case 7: {
                if (resolve) {
                    return this.getInterpolationRoutine();
                }
                return this.basicGetInterpolationRoutine();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setInterpolationRoutineMapping((InterpolationRoutineMapping)newValue);
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setIsDefault((Boolean)newValue);
                return;
            }
            case 7: {
                this.setInterpolationRoutine((BswModuleEntry)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setInterpolationRoutineMapping(null);
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.unsetIsDefault();
                return;
            }
            case 7: {
                this.setInterpolationRoutine(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getInterpolationRoutineMapping() != null;
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.isSetIsDefault();
            }
            case 7: {
                return this.interpolationRoutine != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(", isDefault: ");
        if (this.isDefaultESet) {
            result.append(this.isDefault);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

