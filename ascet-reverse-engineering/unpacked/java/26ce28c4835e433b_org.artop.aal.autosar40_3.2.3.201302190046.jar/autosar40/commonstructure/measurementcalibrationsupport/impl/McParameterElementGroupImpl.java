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
package autosar40.commonstructure.measurementcalibrationsupport.impl;

import autosar40.commonstructure.measurementcalibrationsupport.McParameterElementGroup;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class McParameterElementGroupImpl
extends ARObjectImpl
implements McParameterElementGroup,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected VariableDataPrototype ramLocation;
    protected ParameterDataPrototype romLocation;

    protected McParameterElementGroupImpl() {
    }

    protected EClass eStaticClass() {
        return MeasurementcalibrationsupportPackage.Literals.MC_PARAMETER_ELEMENT_GROUP;
    }

    public McSwEmulationMethodSupport getMcSwEmulationMethodSupport() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (McSwEmulationMethodSupport)this.eContainer();
    }

    public NotificationChain basicSetMcSwEmulationMethodSupport(McSwEmulationMethodSupport newMcSwEmulationMethodSupport, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMcSwEmulationMethodSupport, 4, msgs);
        return msgs;
    }

    public void setMcSwEmulationMethodSupport(McSwEmulationMethodSupport newMcSwEmulationMethodSupport) {
        if (newMcSwEmulationMethodSupport != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMcSwEmulationMethodSupport != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMcSwEmulationMethodSupport)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMcSwEmulationMethodSupport != null) {
                msgs = ((InternalEObject)newMcSwEmulationMethodSupport).eInverseAdd((InternalEObject)this, 8, McSwEmulationMethodSupport.class, msgs);
            }
            if ((msgs = this.basicSetMcSwEmulationMethodSupport(newMcSwEmulationMethodSupport, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMcSwEmulationMethodSupport, (Object)newMcSwEmulationMethodSupport));
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

    public VariableDataPrototype getRamLocation() {
        if (this.ramLocation != null && this.ramLocation.eIsProxy()) {
            InternalEObject oldRamLocation = (InternalEObject)this.ramLocation;
            this.ramLocation = (VariableDataPrototype)this.eResolveProxy(oldRamLocation);
            if (this.ramLocation != oldRamLocation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldRamLocation, (Object)this.ramLocation));
            }
        }
        return this.ramLocation;
    }

    public VariableDataPrototype basicGetRamLocation() {
        return this.ramLocation;
    }

    public void setRamLocation(VariableDataPrototype newRamLocation) {
        VariableDataPrototype oldRamLocation = this.ramLocation;
        this.ramLocation = newRamLocation;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRamLocation, (Object)this.ramLocation));
        }
    }

    public ParameterDataPrototype getRomLocation() {
        if (this.romLocation != null && this.romLocation.eIsProxy()) {
            InternalEObject oldRomLocation = (InternalEObject)this.romLocation;
            this.romLocation = (ParameterDataPrototype)this.eResolveProxy(oldRomLocation);
            if (this.romLocation != oldRomLocation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldRomLocation, (Object)this.romLocation));
            }
        }
        return this.romLocation;
    }

    public ParameterDataPrototype basicGetRomLocation() {
        return this.romLocation;
    }

    public void setRomLocation(ParameterDataPrototype newRomLocation) {
        ParameterDataPrototype oldRomLocation = this.romLocation;
        this.romLocation = newRomLocation;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRomLocation, (Object)this.romLocation));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMcSwEmulationMethodSupport((McSwEmulationMethodSupport)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMcSwEmulationMethodSupport(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, McSwEmulationMethodSupport.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMcSwEmulationMethodSupport();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                if (resolve) {
                    return this.getRamLocation();
                }
                return this.basicGetRamLocation();
            }
            case 7: {
                if (resolve) {
                    return this.getRomLocation();
                }
                return this.basicGetRomLocation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMcSwEmulationMethodSupport((McSwEmulationMethodSupport)newValue);
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setRamLocation((VariableDataPrototype)newValue);
                return;
            }
            case 7: {
                this.setRomLocation((ParameterDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMcSwEmulationMethodSupport(null);
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.setRamLocation(null);
                return;
            }
            case 7: {
                this.setRomLocation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMcSwEmulationMethodSupport() != null;
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.ramLocation != null;
            }
            case 7: {
                return this.romLocation != null;
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
        result.append(')');
        return result.toString();
    }
}

