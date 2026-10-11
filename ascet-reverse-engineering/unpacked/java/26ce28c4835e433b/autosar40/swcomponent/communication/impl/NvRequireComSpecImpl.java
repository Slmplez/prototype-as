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
package autosar40.swcomponent.communication.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.NvRequireComSpec;
import autosar40.swcomponent.communication.impl.RPortComSpecImpl;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class NvRequireComSpecImpl
extends RPortComSpecImpl
implements NvRequireComSpec,
IReferringClass {
    protected ValueSpecification initValue;
    protected VariableDataPrototype variable;

    protected NvRequireComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.NV_REQUIRE_COM_SPEC;
    }

    public ValueSpecification getInitValue() {
        return this.initValue;
    }

    public NotificationChain basicSetInitValue(ValueSpecification newInitValue, NotificationChain msgs) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInitValue, (Object)newInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setInitValue(ValueSpecification newInitValue) {
        if (newInitValue != this.initValue) {
            NotificationChain msgs = null;
            if (this.initValue != null) {
                msgs = ((InternalEObject)this.initValue).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newInitValue != null) {
                msgs = ((InternalEObject)newInitValue).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetInitValue(newInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newInitValue, (Object)newInitValue));
        }
    }

    public VariableDataPrototype getVariable() {
        if (this.variable != null && this.variable.eIsProxy()) {
            InternalEObject oldVariable = (InternalEObject)this.variable;
            this.variable = (VariableDataPrototype)this.eResolveProxy(oldVariable);
            if (this.variable != oldVariable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldVariable, (Object)this.variable));
            }
        }
        return this.variable;
    }

    public VariableDataPrototype basicGetVariable() {
        return this.variable;
    }

    public void setVariable(VariableDataPrototype newVariable) {
        VariableDataPrototype oldVariable = this.variable;
        this.variable = newVariable;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldVariable, (Object)this.variable));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetInitValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getInitValue();
            }
            case 6: {
                if (resolve) {
                    return this.getVariable();
                }
                return this.basicGetVariable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 6: {
                this.setVariable((VariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setInitValue(null);
                return;
            }
            case 6: {
                this.setVariable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.initValue != null;
            }
            case 6: {
                return this.variable != null;
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

