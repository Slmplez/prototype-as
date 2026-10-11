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
package autosar40.commonstructure.datadictionaryproxies.impl;

import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwCalprmRefProxyImpl
extends ARObjectImpl
implements SwCalprmRefProxy,
IReferringClass {
    protected AutosarParameterRef arParameter;
    protected McDataInstance mcDataInstance;

    protected SwCalprmRefProxyImpl() {
    }

    protected EClass eStaticClass() {
        return DatadictionaryproxiesPackage.Literals.SW_CALPRM_REF_PROXY;
    }

    public AutosarParameterRef getArParameter() {
        return this.arParameter;
    }

    public NotificationChain basicSetArParameter(AutosarParameterRef newArParameter, NotificationChain msgs) {
        AutosarParameterRef oldArParameter = this.arParameter;
        this.arParameter = newArParameter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldArParameter, (Object)newArParameter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setArParameter(AutosarParameterRef newArParameter) {
        if (newArParameter != this.arParameter) {
            NotificationChain msgs = null;
            if (this.arParameter != null) {
                msgs = ((InternalEObject)this.arParameter).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newArParameter != null) {
                msgs = ((InternalEObject)newArParameter).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetArParameter(newArParameter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newArParameter, (Object)newArParameter));
        }
    }

    public McDataInstance getMcDataInstance() {
        if (this.mcDataInstance != null && this.mcDataInstance.eIsProxy()) {
            InternalEObject oldMcDataInstance = (InternalEObject)this.mcDataInstance;
            this.mcDataInstance = (McDataInstance)this.eResolveProxy(oldMcDataInstance);
            if (this.mcDataInstance != oldMcDataInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldMcDataInstance, (Object)this.mcDataInstance));
            }
        }
        return this.mcDataInstance;
    }

    public McDataInstance basicGetMcDataInstance() {
        return this.mcDataInstance;
    }

    public void setMcDataInstance(McDataInstance newMcDataInstance) {
        McDataInstance oldMcDataInstance = this.mcDataInstance;
        this.mcDataInstance = newMcDataInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMcDataInstance, (Object)this.mcDataInstance));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetArParameter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getArParameter();
            }
            case 5: {
                if (resolve) {
                    return this.getMcDataInstance();
                }
                return this.basicGetMcDataInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setArParameter((AutosarParameterRef)newValue);
                return;
            }
            case 5: {
                this.setMcDataInstance((McDataInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setArParameter(null);
                return;
            }
            case 5: {
                this.setMcDataInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.arParameter != null;
            }
            case 5: {
                return this.mcDataInstance != null;
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

