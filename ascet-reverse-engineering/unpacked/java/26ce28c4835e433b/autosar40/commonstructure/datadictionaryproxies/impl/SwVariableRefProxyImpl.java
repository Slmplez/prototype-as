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
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwVariableRefProxyImpl
extends ARObjectImpl
implements SwVariableRefProxy,
IReferringClass {
    protected AutosarVariableRef autosarVariable;
    protected McDataInstance mcDataInstanceVar;

    protected SwVariableRefProxyImpl() {
    }

    protected EClass eStaticClass() {
        return DatadictionaryproxiesPackage.Literals.SW_VARIABLE_REF_PROXY;
    }

    public AutosarVariableRef getAutosarVariable() {
        return this.autosarVariable;
    }

    public NotificationChain basicSetAutosarVariable(AutosarVariableRef newAutosarVariable, NotificationChain msgs) {
        AutosarVariableRef oldAutosarVariable = this.autosarVariable;
        this.autosarVariable = newAutosarVariable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldAutosarVariable, (Object)newAutosarVariable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAutosarVariable(AutosarVariableRef newAutosarVariable) {
        if (newAutosarVariable != this.autosarVariable) {
            NotificationChain msgs = null;
            if (this.autosarVariable != null) {
                msgs = ((InternalEObject)this.autosarVariable).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newAutosarVariable != null) {
                msgs = ((InternalEObject)newAutosarVariable).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetAutosarVariable(newAutosarVariable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAutosarVariable, (Object)newAutosarVariable));
        }
    }

    public McDataInstance getMcDataInstanceVar() {
        if (this.mcDataInstanceVar != null && this.mcDataInstanceVar.eIsProxy()) {
            InternalEObject oldMcDataInstanceVar = (InternalEObject)this.mcDataInstanceVar;
            this.mcDataInstanceVar = (McDataInstance)this.eResolveProxy(oldMcDataInstanceVar);
            if (this.mcDataInstanceVar != oldMcDataInstanceVar && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldMcDataInstanceVar, (Object)this.mcDataInstanceVar));
            }
        }
        return this.mcDataInstanceVar;
    }

    public McDataInstance basicGetMcDataInstanceVar() {
        return this.mcDataInstanceVar;
    }

    public void setMcDataInstanceVar(McDataInstance newMcDataInstanceVar) {
        McDataInstance oldMcDataInstanceVar = this.mcDataInstanceVar;
        this.mcDataInstanceVar = newMcDataInstanceVar;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMcDataInstanceVar, (Object)this.mcDataInstanceVar));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAutosarVariable(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAutosarVariable();
            }
            case 5: {
                if (resolve) {
                    return this.getMcDataInstanceVar();
                }
                return this.basicGetMcDataInstanceVar();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAutosarVariable((AutosarVariableRef)newValue);
                return;
            }
            case 5: {
                this.setMcDataInstanceVar((McDataInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAutosarVariable(null);
                return;
            }
            case 5: {
                this.setMcDataInstanceVar(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.autosarVariable != null;
            }
            case 5: {
                return this.mcDataInstanceVar != null;
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

