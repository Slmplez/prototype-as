/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.datatype.datatypes.impl;

import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.impl.CompositeTypeImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArrayTypeImpl
extends CompositeTypeImpl
implements ArrayType {
    protected ArrayElement element;

    protected ArrayTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.ARRAY_TYPE;
    }

    @Override
    public ArrayElement getElement() {
        return this.element;
    }

    public NotificationChain basicSetElement(ArrayElement newElement, NotificationChain msgs) {
        ArrayElement oldElement = this.element;
        this.element = newElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldElement, (Object)newElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setElement(ArrayElement newElement) {
        if (newElement != this.element) {
            NotificationChain msgs = null;
            if (this.element != null) {
                msgs = ((InternalEObject)this.element).eInverseRemove((InternalEObject)this, 21, ArrayElement.class, msgs);
            }
            if (newElement != null) {
                msgs = ((InternalEObject)newElement).eInverseAdd((InternalEObject)this, 21, ArrayElement.class, msgs);
            }
            if ((msgs = this.basicSetElement(newElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newElement, (Object)newElement));
        }
    }

    @Override
    public boolean numberOfElements0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.element != null) {
                    msgs = ((InternalEObject)this.element).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetElement((ArrayElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setElement((ArrayElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.element != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

