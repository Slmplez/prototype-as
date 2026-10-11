/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.EcuConfiguration;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.services.EcuSwComposition;
import autosar21.system.System;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcuConfigurationImpl
extends ARElementImpl
implements EcuConfiguration,
IReferringClass {
    protected System ecuExtract;
    protected EcuSwComposition ecuSwComposition;
    protected EList<ModuleConfiguration> modules;

    protected EcuConfigurationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECU_CONFIGURATION;
    }

    @Override
    public System getEcuExtract() {
        if (this.ecuExtract != null && this.ecuExtract.eIsProxy()) {
            InternalEObject oldEcuExtract = (InternalEObject)this.ecuExtract;
            this.ecuExtract = (System)this.eResolveProxy(oldEcuExtract);
            if (this.ecuExtract != oldEcuExtract && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldEcuExtract, (Object)this.ecuExtract));
            }
        }
        return this.ecuExtract;
    }

    public System basicGetEcuExtract() {
        return this.ecuExtract;
    }

    @Override
    public void setEcuExtract(System newEcuExtract) {
        System oldEcuExtract = this.ecuExtract;
        this.ecuExtract = newEcuExtract;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldEcuExtract, (Object)this.ecuExtract));
        }
    }

    @Override
    public EcuSwComposition getEcuSwComposition() {
        if (this.ecuSwComposition != null && this.ecuSwComposition.eIsProxy()) {
            InternalEObject oldEcuSwComposition = (InternalEObject)this.ecuSwComposition;
            this.ecuSwComposition = (EcuSwComposition)this.eResolveProxy(oldEcuSwComposition);
            if (this.ecuSwComposition != oldEcuSwComposition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldEcuSwComposition, (Object)this.ecuSwComposition));
            }
        }
        return this.ecuSwComposition;
    }

    public EcuSwComposition basicGetEcuSwComposition() {
        return this.ecuSwComposition;
    }

    @Override
    public void setEcuSwComposition(EcuSwComposition newEcuSwComposition) {
        EcuSwComposition oldEcuSwComposition = this.ecuSwComposition;
        this.ecuSwComposition = newEcuSwComposition;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldEcuSwComposition, (Object)this.ecuSwComposition));
        }
    }

    @Override
    public EList<ModuleConfiguration> getModules() {
        if (this.modules == null) {
            this.modules = new EObjectResolvingReferringEList(ModuleConfiguration.class, (InternalEObject)this, 20);
        }
        return this.modules;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                if (resolve) {
                    return this.getEcuExtract();
                }
                return this.basicGetEcuExtract();
            }
            case 19: {
                if (resolve) {
                    return this.getEcuSwComposition();
                }
                return this.basicGetEcuSwComposition();
            }
            case 20: {
                return this.getModules();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcuExtract((System)newValue);
                return;
            }
            case 19: {
                this.setEcuSwComposition((EcuSwComposition)newValue);
                return;
            }
            case 20: {
                this.getModules().clear();
                this.getModules().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcuExtract(null);
                return;
            }
            case 19: {
                this.setEcuSwComposition(null);
                return;
            }
            case 20: {
                this.getModules().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.ecuExtract != null;
            }
            case 19: {
                return this.ecuSwComposition != null;
            }
            case 20: {
                return this.modules != null && !this.modules.isEmpty();
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

