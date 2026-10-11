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
package autosar40.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.ParameterInAtomicSWCTypeInstanceRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AutosarParameterRefImpl
extends ARObjectImpl
implements AutosarParameterRef,
IReferringClass {
    protected ParameterInAtomicSWCTypeInstanceRef autosarParameter;
    protected DataPrototype localParameter;

    protected AutosarParameterRefImpl() {
    }

    protected EClass eStaticClass() {
        return DataelementsPackage.Literals.AUTOSAR_PARAMETER_REF;
    }

    public ParameterInAtomicSWCTypeInstanceRef getAutosarParameter() {
        return this.autosarParameter;
    }

    public NotificationChain basicSetAutosarParameter(ParameterInAtomicSWCTypeInstanceRef newAutosarParameter, NotificationChain msgs) {
        ParameterInAtomicSWCTypeInstanceRef oldAutosarParameter = this.autosarParameter;
        this.autosarParameter = newAutosarParameter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldAutosarParameter, (Object)newAutosarParameter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAutosarParameter(ParameterInAtomicSWCTypeInstanceRef newAutosarParameter) {
        if (newAutosarParameter != this.autosarParameter) {
            NotificationChain msgs = null;
            if (this.autosarParameter != null) {
                msgs = ((InternalEObject)this.autosarParameter).eInverseRemove((InternalEObject)this, 6, ParameterInAtomicSWCTypeInstanceRef.class, msgs);
            }
            if (newAutosarParameter != null) {
                msgs = ((InternalEObject)newAutosarParameter).eInverseAdd((InternalEObject)this, 6, ParameterInAtomicSWCTypeInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetAutosarParameter(newAutosarParameter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAutosarParameter, (Object)newAutosarParameter));
        }
    }

    public DataPrototype getLocalParameter() {
        if (this.localParameter != null && this.localParameter.eIsProxy()) {
            InternalEObject oldLocalParameter = (InternalEObject)this.localParameter;
            this.localParameter = (DataPrototype)this.eResolveProxy(oldLocalParameter);
            if (this.localParameter != oldLocalParameter && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldLocalParameter, (Object)this.localParameter));
            }
        }
        return this.localParameter;
    }

    public DataPrototype basicGetLocalParameter() {
        return this.localParameter;
    }

    public void setLocalParameter(DataPrototype newLocalParameter) {
        DataPrototype oldLocalParameter = this.localParameter;
        this.localParameter = newLocalParameter;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLocalParameter, (Object)this.localParameter));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.autosarParameter != null) {
                    msgs = ((InternalEObject)this.autosarParameter).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetAutosarParameter((ParameterInAtomicSWCTypeInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAutosarParameter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAutosarParameter();
            }
            case 5: {
                if (resolve) {
                    return this.getLocalParameter();
                }
                return this.basicGetLocalParameter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAutosarParameter((ParameterInAtomicSWCTypeInstanceRef)newValue);
                return;
            }
            case 5: {
                this.setLocalParameter((DataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAutosarParameter(null);
                return;
            }
            case 5: {
                this.setLocalParameter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.autosarParameter != null;
            }
            case 5: {
                return this.localParameter != null;
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

