/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.resources.executiontime.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SoftwareContextImpl
extends ARObjectImpl
implements SoftwareContext {
    protected static final String INPUT_EDEFAULT = "";
    protected String input = "";
    protected boolean inputESet;
    protected static final String STATE_EDEFAULT = "";
    protected String state = "";
    protected boolean stateESet;

    protected SoftwareContextImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.SOFTWARE_CONTEXT;
    }

    public String getInput() {
        return this.input;
    }

    public void setInput(String newInput) {
        String oldInput = this.input;
        this.input = newInput;
        boolean oldInputESet = this.inputESet;
        this.inputESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldInput, (Object)this.input, !oldInputESet));
        }
    }

    public void unsetInput() {
        String oldInput = this.input;
        boolean oldInputESet = this.inputESet;
        this.input = "";
        this.inputESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldInput, (Object)"", oldInputESet));
        }
    }

    public boolean isSetInput() {
        return this.inputESet;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String newState) {
        String oldState = this.state;
        this.state = newState;
        boolean oldStateESet = this.stateESet;
        this.stateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldState, (Object)this.state, !oldStateESet));
        }
    }

    public void unsetState() {
        String oldState = this.state;
        boolean oldStateESet = this.stateESet;
        this.state = "";
        this.stateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldState, (Object)"", oldStateESet));
        }
    }

    public boolean isSetState() {
        return this.stateESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getInput();
            }
            case 5: {
                return this.getState();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setInput((String)newValue);
                return;
            }
            case 5: {
                this.setState((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetInput();
                return;
            }
            case 5: {
                this.unsetState();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetInput();
            }
            case 5: {
                return this.isSetState();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (input: ");
        if (this.inputESet) {
            result.append(this.input);
        } else {
            result.append("<unset>");
        }
        result.append(", state: ");
        if (this.stateESet) {
            result.append(this.state);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

