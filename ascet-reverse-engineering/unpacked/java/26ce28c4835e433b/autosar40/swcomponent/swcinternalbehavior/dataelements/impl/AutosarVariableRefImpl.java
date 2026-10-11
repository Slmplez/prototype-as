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
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.VariableInAtomicSWCTypeInstanceRef;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AutosarVariableRefImpl
extends ARObjectImpl
implements AutosarVariableRef,
IReferringClass {
    protected ArVariableInImplementationDataInstanceRef autosarVariableInImplDatatype;
    protected VariableInAtomicSWCTypeInstanceRef autosarVariable;
    protected VariableDataPrototype localVariable;

    protected AutosarVariableRefImpl() {
    }

    protected EClass eStaticClass() {
        return DataelementsPackage.Literals.AUTOSAR_VARIABLE_REF;
    }

    public ArVariableInImplementationDataInstanceRef getAutosarVariableInImplDatatype() {
        return this.autosarVariableInImplDatatype;
    }

    public NotificationChain basicSetAutosarVariableInImplDatatype(ArVariableInImplementationDataInstanceRef newAutosarVariableInImplDatatype, NotificationChain msgs) {
        ArVariableInImplementationDataInstanceRef oldAutosarVariableInImplDatatype = this.autosarVariableInImplDatatype;
        this.autosarVariableInImplDatatype = newAutosarVariableInImplDatatype;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldAutosarVariableInImplDatatype, (Object)newAutosarVariableInImplDatatype);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAutosarVariableInImplDatatype(ArVariableInImplementationDataInstanceRef newAutosarVariableInImplDatatype) {
        if (newAutosarVariableInImplDatatype != this.autosarVariableInImplDatatype) {
            NotificationChain msgs = null;
            if (this.autosarVariableInImplDatatype != null) {
                msgs = ((InternalEObject)this.autosarVariableInImplDatatype).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newAutosarVariableInImplDatatype != null) {
                msgs = ((InternalEObject)newAutosarVariableInImplDatatype).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetAutosarVariableInImplDatatype(newAutosarVariableInImplDatatype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAutosarVariableInImplDatatype, (Object)newAutosarVariableInImplDatatype));
        }
    }

    public VariableInAtomicSWCTypeInstanceRef getAutosarVariable() {
        return this.autosarVariable;
    }

    public NotificationChain basicSetAutosarVariable(VariableInAtomicSWCTypeInstanceRef newAutosarVariable, NotificationChain msgs) {
        VariableInAtomicSWCTypeInstanceRef oldAutosarVariable = this.autosarVariable;
        this.autosarVariable = newAutosarVariable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAutosarVariable, (Object)newAutosarVariable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAutosarVariable(VariableInAtomicSWCTypeInstanceRef newAutosarVariable) {
        if (newAutosarVariable != this.autosarVariable) {
            NotificationChain msgs = null;
            if (this.autosarVariable != null) {
                msgs = ((InternalEObject)this.autosarVariable).eInverseRemove((InternalEObject)this, 4, VariableInAtomicSWCTypeInstanceRef.class, msgs);
            }
            if (newAutosarVariable != null) {
                msgs = ((InternalEObject)newAutosarVariable).eInverseAdd((InternalEObject)this, 4, VariableInAtomicSWCTypeInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetAutosarVariable(newAutosarVariable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newAutosarVariable, (Object)newAutosarVariable));
        }
    }

    public VariableDataPrototype getLocalVariable() {
        if (this.localVariable != null && this.localVariable.eIsProxy()) {
            InternalEObject oldLocalVariable = (InternalEObject)this.localVariable;
            this.localVariable = (VariableDataPrototype)this.eResolveProxy(oldLocalVariable);
            if (this.localVariable != oldLocalVariable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldLocalVariable, (Object)this.localVariable));
            }
        }
        return this.localVariable;
    }

    public VariableDataPrototype basicGetLocalVariable() {
        return this.localVariable;
    }

    public void setLocalVariable(VariableDataPrototype newLocalVariable) {
        VariableDataPrototype oldLocalVariable = this.localVariable;
        this.localVariable = newLocalVariable;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLocalVariable, (Object)this.localVariable));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.autosarVariable != null) {
                    msgs = ((InternalEObject)this.autosarVariable).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetAutosarVariable((VariableInAtomicSWCTypeInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAutosarVariableInImplDatatype(null, msgs);
            }
            case 5: {
                return this.basicSetAutosarVariable(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAutosarVariableInImplDatatype();
            }
            case 5: {
                return this.getAutosarVariable();
            }
            case 6: {
                if (resolve) {
                    return this.getLocalVariable();
                }
                return this.basicGetLocalVariable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAutosarVariableInImplDatatype((ArVariableInImplementationDataInstanceRef)newValue);
                return;
            }
            case 5: {
                this.setAutosarVariable((VariableInAtomicSWCTypeInstanceRef)newValue);
                return;
            }
            case 6: {
                this.setLocalVariable((VariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAutosarVariableInImplDatatype(null);
                return;
            }
            case 5: {
                this.setAutosarVariable(null);
                return;
            }
            case 6: {
                this.setLocalVariable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.autosarVariableInImplDatatype != null;
            }
            case 5: {
                return this.autosarVariable != null;
            }
            case 6: {
                return this.localVariable != null;
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

