/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.commonstructure.datadefproperties.impl;

import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.datatype.computationmethod.CompuGenericMath;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwDataDependencyImpl
extends ARObjectImpl
implements SwDataDependency {
    protected CompuGenericMath swDataDependencyFormula;
    protected SwDataDependencyArgs swDataDependencyArgs;

    protected SwDataDependencyImpl() {
    }

    protected EClass eStaticClass() {
        return DatadefpropertiesPackage.Literals.SW_DATA_DEPENDENCY;
    }

    public SwDataDefProps getSwDataDefProps() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SwDataDefProps)this.eContainer();
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwDataDefProps, 4, msgs);
        return msgs;
    }

    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSwDataDefProps != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwDataDefProps)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, 18, SwDataDefProps.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    public CompuGenericMath getSwDataDependencyFormula() {
        return this.swDataDependencyFormula;
    }

    public NotificationChain basicSetSwDataDependencyFormula(CompuGenericMath newSwDataDependencyFormula, NotificationChain msgs) {
        CompuGenericMath oldSwDataDependencyFormula = this.swDataDependencyFormula;
        this.swDataDependencyFormula = newSwDataDependencyFormula;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwDataDependencyFormula, (Object)newSwDataDependencyFormula);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDependencyFormula(CompuGenericMath newSwDataDependencyFormula) {
        if (newSwDataDependencyFormula != this.swDataDependencyFormula) {
            NotificationChain msgs = null;
            if (this.swDataDependencyFormula != null) {
                msgs = ((InternalEObject)this.swDataDependencyFormula).eInverseRemove((InternalEObject)this, 5, CompuGenericMath.class, msgs);
            }
            if (newSwDataDependencyFormula != null) {
                msgs = ((InternalEObject)newSwDataDependencyFormula).eInverseAdd((InternalEObject)this, 5, CompuGenericMath.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDependencyFormula(newSwDataDependencyFormula, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwDataDependencyFormula, (Object)newSwDataDependencyFormula));
        }
    }

    public SwDataDependencyArgs getSwDataDependencyArgs() {
        return this.swDataDependencyArgs;
    }

    public NotificationChain basicSetSwDataDependencyArgs(SwDataDependencyArgs newSwDataDependencyArgs, NotificationChain msgs) {
        SwDataDependencyArgs oldSwDataDependencyArgs = this.swDataDependencyArgs;
        this.swDataDependencyArgs = newSwDataDependencyArgs;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwDataDependencyArgs, (Object)newSwDataDependencyArgs);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwDataDependencyArgs(SwDataDependencyArgs newSwDataDependencyArgs) {
        if (newSwDataDependencyArgs != this.swDataDependencyArgs) {
            NotificationChain msgs = null;
            if (this.swDataDependencyArgs != null) {
                msgs = ((InternalEObject)this.swDataDependencyArgs).eInverseRemove((InternalEObject)this, 4, SwDataDependencyArgs.class, msgs);
            }
            if (newSwDataDependencyArgs != null) {
                msgs = ((InternalEObject)newSwDataDependencyArgs).eInverseAdd((InternalEObject)this, 4, SwDataDependencyArgs.class, msgs);
            }
            if ((msgs = this.basicSetSwDataDependencyArgs(newSwDataDependencyArgs, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwDataDependencyArgs, (Object)newSwDataDependencyArgs));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwDataDefProps((SwDataDefProps)otherEnd, msgs);
            }
            case 5: {
                if (this.swDataDependencyFormula != null) {
                    msgs = ((InternalEObject)this.swDataDependencyFormula).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetSwDataDependencyFormula((CompuGenericMath)otherEnd, msgs);
            }
            case 6: {
                if (this.swDataDependencyArgs != null) {
                    msgs = ((InternalEObject)this.swDataDependencyArgs).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetSwDataDependencyArgs((SwDataDependencyArgs)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 5: {
                return this.basicSetSwDataDependencyFormula(null, msgs);
            }
            case 6: {
                return this.basicSetSwDataDependencyArgs(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, SwDataDefProps.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps();
            }
            case 5: {
                return this.getSwDataDependencyFormula();
            }
            case 6: {
                return this.getSwDataDependencyArgs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 5: {
                this.setSwDataDependencyFormula((CompuGenericMath)newValue);
                return;
            }
            case 6: {
                this.setSwDataDependencyArgs((SwDataDependencyArgs)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwDataDefProps(null);
                return;
            }
            case 5: {
                this.setSwDataDependencyFormula(null);
                return;
            }
            case 6: {
                this.setSwDataDependencyArgs(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSwDataDefProps() != null;
            }
            case 5: {
                return this.swDataDependencyFormula != null;
            }
            case 6: {
                return this.swDataDependencyArgs != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

