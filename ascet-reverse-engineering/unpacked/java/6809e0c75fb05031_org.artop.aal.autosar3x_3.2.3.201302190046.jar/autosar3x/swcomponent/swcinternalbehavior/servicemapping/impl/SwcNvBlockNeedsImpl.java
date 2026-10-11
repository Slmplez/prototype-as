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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar3x.commonstructure.serviceneeds.impl.NvBlockNeedsImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerInstanceMemory;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcNvBlockNeeds;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcNvBlockNeedsImpl
extends NvBlockNeedsImpl
implements SwcNvBlockNeeds,
IReferringClass {
    protected EList<RoleBasedPPortAssignment> callBackPorts;
    protected CalprmElementPrototype defaultBlock;
    protected PerInstanceMemory mirrorBlock;
    protected EList<RoleBasedRPortAssignment> serviceCallPorts;

    protected SwcNvBlockNeedsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.SWC_NV_BLOCK_NEEDS;
    }

    @Override
    public EList<RoleBasedPPortAssignment> getCallBackPorts() {
        if (this.callBackPorts == null) {
            this.callBackPorts = new EObjectContainmentEList(RoleBasedPPortAssignment.class, (InternalEObject)this, 25);
        }
        return this.callBackPorts;
    }

    @Override
    public CalprmElementPrototype getDefaultBlock() {
        if (this.defaultBlock != null && this.defaultBlock.eIsProxy()) {
            InternalEObject oldDefaultBlock = (InternalEObject)this.defaultBlock;
            this.defaultBlock = (CalprmElementPrototype)this.eResolveProxy(oldDefaultBlock);
            if (this.defaultBlock != oldDefaultBlock && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 26, (Object)oldDefaultBlock, (Object)this.defaultBlock));
            }
        }
        return this.defaultBlock;
    }

    public CalprmElementPrototype basicGetDefaultBlock() {
        return this.defaultBlock;
    }

    @Override
    public void setDefaultBlock(CalprmElementPrototype newDefaultBlock) {
        CalprmElementPrototype oldDefaultBlock = this.defaultBlock;
        this.defaultBlock = newDefaultBlock;
        AutosarObjectUtil.setDest((EObject)this, (int)26, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldDefaultBlock, (Object)this.defaultBlock));
        }
    }

    @Override
    public PerInstanceMemory getMirrorBlock() {
        if (this.mirrorBlock != null && this.mirrorBlock.eIsProxy()) {
            InternalEObject oldMirrorBlock = (InternalEObject)this.mirrorBlock;
            this.mirrorBlock = (PerInstanceMemory)this.eResolveProxy(oldMirrorBlock);
            if (this.mirrorBlock != oldMirrorBlock && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 27, (Object)oldMirrorBlock, (Object)this.mirrorBlock));
            }
        }
        return this.mirrorBlock;
    }

    public PerInstanceMemory basicGetMirrorBlock() {
        return this.mirrorBlock;
    }

    @Override
    public void setMirrorBlock(PerInstanceMemory newMirrorBlock) {
        PerInstanceMemory oldMirrorBlock = this.mirrorBlock;
        this.mirrorBlock = newMirrorBlock;
        AutosarObjectUtil.setDest((EObject)this, (int)27, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldMirrorBlock, (Object)this.mirrorBlock));
        }
    }

    @Override
    public EList<RoleBasedRPortAssignment> getServiceCallPorts() {
        if (this.serviceCallPorts == null) {
            this.serviceCallPorts = new EObjectContainmentEList(RoleBasedRPortAssignment.class, (InternalEObject)this, 28);
        }
        return this.serviceCallPorts;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getCallBackPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getServiceCallPorts()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getCallBackPorts();
            }
            case 26: {
                if (resolve) {
                    return this.getDefaultBlock();
                }
                return this.basicGetDefaultBlock();
            }
            case 27: {
                if (resolve) {
                    return this.getMirrorBlock();
                }
                return this.basicGetMirrorBlock();
            }
            case 28: {
                return this.getServiceCallPorts();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.getCallBackPorts().clear();
                this.getCallBackPorts().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.setDefaultBlock((CalprmElementPrototype)newValue);
                return;
            }
            case 27: {
                this.setMirrorBlock((PerInstanceMemory)newValue);
                return;
            }
            case 28: {
                this.getServiceCallPorts().clear();
                this.getServiceCallPorts().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.getCallBackPorts().clear();
                return;
            }
            case 26: {
                this.setDefaultBlock(null);
                return;
            }
            case 27: {
                this.setMirrorBlock(null);
                return;
            }
            case 28: {
                this.getServiceCallPorts().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.callBackPorts != null && !this.callBackPorts.isEmpty();
            }
            case 26: {
                return this.defaultBlock != null;
            }
            case 27: {
                return this.mirrorBlock != null;
            }
            case 28: {
                return this.serviceCallPorts != null && !this.serviceCallPorts.isEmpty();
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

