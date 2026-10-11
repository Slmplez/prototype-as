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
 */
package autosar21.swcomponent.resources.heapusage.impl;

import autosar21.ecuresource.ECU;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import autosar21.swcomponent.resources.heapusage.HeapUsage;
import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class HeapUsageImpl
extends ARObjectImpl
implements HeapUsage,
IReferringClass {
    protected ECU ecu;
    protected HardwareConfiguration hardwareConfiguration;
    protected SoftwareContext softwareContext;

    protected HeapUsageImpl() {
    }

    protected EClass eStaticClass() {
        return HeapusagePackage.Literals.HEAP_USAGE;
    }

    public ECU getEcu() {
        if (this.ecu != null && this.ecu.eIsProxy()) {
            InternalEObject oldEcu = (InternalEObject)this.ecu;
            this.ecu = (ECU)this.eResolveProxy(oldEcu);
            if (this.ecu != oldEcu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldEcu, (Object)this.ecu));
            }
        }
        return this.ecu;
    }

    public ECU basicGetEcu() {
        return this.ecu;
    }

    public void setEcu(ECU newEcu) {
        ECU oldEcu = this.ecu;
        this.ecu = newEcu;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldEcu, (Object)this.ecu));
        }
    }

    public HardwareConfiguration getHardwareConfiguration() {
        return this.hardwareConfiguration;
    }

    public NotificationChain basicSetHardwareConfiguration(HardwareConfiguration newHardwareConfiguration, NotificationChain msgs) {
        HardwareConfiguration oldHardwareConfiguration = this.hardwareConfiguration;
        this.hardwareConfiguration = newHardwareConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldHardwareConfiguration, (Object)newHardwareConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setHardwareConfiguration(HardwareConfiguration newHardwareConfiguration) {
        if (newHardwareConfiguration != this.hardwareConfiguration) {
            NotificationChain msgs = null;
            if (this.hardwareConfiguration != null) {
                msgs = ((InternalEObject)this.hardwareConfiguration).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newHardwareConfiguration != null) {
                msgs = ((InternalEObject)newHardwareConfiguration).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetHardwareConfiguration(newHardwareConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newHardwareConfiguration, (Object)newHardwareConfiguration));
        }
    }

    public SoftwareContext getSoftwareContext() {
        return this.softwareContext;
    }

    public NotificationChain basicSetSoftwareContext(SoftwareContext newSoftwareContext, NotificationChain msgs) {
        SoftwareContext oldSoftwareContext = this.softwareContext;
        this.softwareContext = newSoftwareContext;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSoftwareContext, (Object)newSoftwareContext);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSoftwareContext(SoftwareContext newSoftwareContext) {
        if (newSoftwareContext != this.softwareContext) {
            NotificationChain msgs = null;
            if (this.softwareContext != null) {
                msgs = ((InternalEObject)this.softwareContext).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSoftwareContext != null) {
                msgs = ((InternalEObject)newSoftwareContext).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSoftwareContext(newSoftwareContext, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSoftwareContext, (Object)newSoftwareContext));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetHardwareConfiguration(null, msgs);
            }
            case 6: {
                return this.basicSetSoftwareContext(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getEcu();
                }
                return this.basicGetEcu();
            }
            case 5: {
                return this.getHardwareConfiguration();
            }
            case 6: {
                return this.getSoftwareContext();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEcu((ECU)newValue);
                return;
            }
            case 5: {
                this.setHardwareConfiguration((HardwareConfiguration)newValue);
                return;
            }
            case 6: {
                this.setSoftwareContext((SoftwareContext)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEcu(null);
                return;
            }
            case 5: {
                this.setHardwareConfiguration(null);
                return;
            }
            case 6: {
                this.setSoftwareContext(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.ecu != null;
            }
            case 5: {
                return this.hardwareConfiguration != null;
            }
            case 6: {
                return this.softwareContext != null;
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

