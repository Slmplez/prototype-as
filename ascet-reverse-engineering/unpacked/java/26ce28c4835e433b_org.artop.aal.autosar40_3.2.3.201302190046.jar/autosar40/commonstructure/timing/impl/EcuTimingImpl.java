/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.impl;

import autosar40.commonstructure.timing.EcuTiming;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.impl.TimingExtensionImpl;
import autosar40.ecucdescription.EcucValueCollection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EcuTimingImpl
extends TimingExtensionImpl
implements EcuTiming,
IReferringClass {
    protected EcucValueCollection ecuConfiguration;

    protected EcuTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.ECU_TIMING;
    }

    public EcucValueCollection getEcuConfiguration() {
        if (this.ecuConfiguration != null && this.ecuConfiguration.eIsProxy()) {
            InternalEObject oldEcuConfiguration = (InternalEObject)this.ecuConfiguration;
            this.ecuConfiguration = (EcucValueCollection)this.eResolveProxy(oldEcuConfiguration);
            if (this.ecuConfiguration != oldEcuConfiguration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldEcuConfiguration, (Object)this.ecuConfiguration));
            }
        }
        return this.ecuConfiguration;
    }

    public EcucValueCollection basicGetEcuConfiguration() {
        return this.ecuConfiguration;
    }

    public void setEcuConfiguration(EcucValueCollection newEcuConfiguration) {
        EcucValueCollection oldEcuConfiguration = this.ecuConfiguration;
        this.ecuConfiguration = newEcuConfiguration;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldEcuConfiguration, (Object)this.ecuConfiguration));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                if (resolve) {
                    return this.getEcuConfiguration();
                }
                return this.basicGetEcuConfiguration();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setEcuConfiguration((EcucValueCollection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setEcuConfiguration(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.ecuConfiguration != null;
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

