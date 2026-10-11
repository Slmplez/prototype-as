/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4multiplatform.impl;

import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4multiplatform.FrameMapping;
import autosar40.system.fibex.fibex4multiplatform.Gateway;
import autosar40.system.fibex.fibex4multiplatform.IPduMapping;
import autosar40.system.fibex.fibex4multiplatform.ISignalMapping;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GatewayImpl
extends FibexElementImpl
implements Gateway,
IReferringClass {
    protected EcuInstance ecu;
    protected EList<FrameMapping> frameMappings;
    protected EList<IPduMapping> iPduMappings;
    protected EList<ISignalMapping> signalMappings;

    protected GatewayImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return Fibex4multiplatformPackage.Literals.GATEWAY;
    }

    @Override
    public EcuInstance getEcu() {
        if (this.ecu != null && this.ecu.eIsProxy()) {
            InternalEObject oldEcu = (InternalEObject)this.ecu;
            this.ecu = (EcuInstance)this.eResolveProxy(oldEcu);
            if (this.ecu != oldEcu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldEcu, (Object)this.ecu));
            }
        }
        return this.ecu;
    }

    public EcuInstance basicGetEcu() {
        return this.ecu;
    }

    @Override
    public void setEcu(EcuInstance newEcu) {
        EcuInstance oldEcu = this.ecu;
        this.ecu = newEcu;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldEcu, (Object)this.ecu));
        }
    }

    @Override
    public EList<FrameMapping> getFrameMappings() {
        if (this.frameMappings == null) {
            this.frameMappings = new EObjectContainmentWithInverseEList(FrameMapping.class, (InternalEObject)this, 22, 4);
        }
        return this.frameMappings;
    }

    @Override
    public EList<IPduMapping> getIPduMappings() {
        if (this.iPduMappings == null) {
            this.iPduMappings = new EObjectContainmentWithInverseEList(IPduMapping.class, (InternalEObject)this, 23, 4);
        }
        return this.iPduMappings;
    }

    @Override
    public EList<ISignalMapping> getSignalMappings() {
        if (this.signalMappings == null) {
            this.signalMappings = new EObjectContainmentWithInverseEList(ISignalMapping.class, (InternalEObject)this, 24, 4);
        }
        return this.signalMappings;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getFrameMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getIPduMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getSignalMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getFrameMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getIPduMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getSignalMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getEcu();
                }
                return this.basicGetEcu();
            }
            case 22: {
                return this.getFrameMappings();
            }
            case 23: {
                return this.getIPduMappings();
            }
            case 24: {
                return this.getSignalMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setEcu((EcuInstance)newValue);
                return;
            }
            case 22: {
                this.getFrameMappings().clear();
                this.getFrameMappings().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getIPduMappings().clear();
                this.getIPduMappings().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getSignalMappings().clear();
                this.getSignalMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setEcu(null);
                return;
            }
            case 22: {
                this.getFrameMappings().clear();
                return;
            }
            case 23: {
                this.getIPduMappings().clear();
                return;
            }
            case 24: {
                this.getSignalMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.ecu != null;
            }
            case 22: {
                return this.frameMappings != null && !this.frameMappings.isEmpty();
            }
            case 23: {
                return this.iPduMappings != null && !this.iPduMappings.isEmpty();
            }
            case 24: {
                return this.signalMappings != null && !this.signalMappings.isEmpty();
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

