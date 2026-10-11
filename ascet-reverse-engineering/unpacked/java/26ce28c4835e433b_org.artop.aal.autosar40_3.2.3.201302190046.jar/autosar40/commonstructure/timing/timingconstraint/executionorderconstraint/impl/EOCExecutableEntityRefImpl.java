/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.impl;

import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.EOCExecutableEntityRef;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionOrderConstraint;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EOCExecutableEntityRefImpl
extends IdentifiableImpl
implements EOCExecutableEntityRef,
IReferringClass {
    protected ComponentInCompositionInstanceRef component;
    protected ExecutableEntity executable;
    protected EList<EOCExecutableEntityRef> successors;

    protected EOCExecutableEntityRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ExecutionorderconstraintPackage.Literals.EOC_EXECUTABLE_ENTITY_REF;
    }

    @Override
    public ExecutionOrderConstraint getExecutionOrderConstraint() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (ExecutionOrderConstraint)this.eContainer();
    }

    public NotificationChain basicSetExecutionOrderConstraint(ExecutionOrderConstraint newExecutionOrderConstraint, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newExecutionOrderConstraint, 18, msgs);
        return msgs;
    }

    @Override
    public void setExecutionOrderConstraint(ExecutionOrderConstraint newExecutionOrderConstraint) {
        if (newExecutionOrderConstraint != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newExecutionOrderConstraint != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newExecutionOrderConstraint)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newExecutionOrderConstraint != null) {
                msgs = ((InternalEObject)newExecutionOrderConstraint).eInverseAdd((InternalEObject)this, 20, ExecutionOrderConstraint.class, msgs);
            }
            if ((msgs = this.basicSetExecutionOrderConstraint(newExecutionOrderConstraint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newExecutionOrderConstraint, (Object)newExecutionOrderConstraint));
        }
    }

    @Override
    public ComponentInCompositionInstanceRef getComponent() {
        return this.component;
    }

    public NotificationChain basicSetComponent(ComponentInCompositionInstanceRef newComponent, NotificationChain msgs) {
        ComponentInCompositionInstanceRef oldComponent = this.component;
        this.component = newComponent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldComponent, (Object)newComponent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComponent(ComponentInCompositionInstanceRef newComponent) {
        if (newComponent != this.component) {
            NotificationChain msgs = null;
            if (this.component != null) {
                msgs = ((InternalEObject)this.component).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newComponent != null) {
                msgs = ((InternalEObject)newComponent).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetComponent(newComponent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newComponent, (Object)newComponent));
        }
    }

    @Override
    public ExecutableEntity getExecutable() {
        if (this.executable != null && this.executable.eIsProxy()) {
            InternalEObject oldExecutable = (InternalEObject)this.executable;
            this.executable = (ExecutableEntity)this.eResolveProxy(oldExecutable);
            if (this.executable != oldExecutable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldExecutable, (Object)this.executable));
            }
        }
        return this.executable;
    }

    public ExecutableEntity basicGetExecutable() {
        return this.executable;
    }

    @Override
    public void setExecutable(ExecutableEntity newExecutable) {
        ExecutableEntity oldExecutable = this.executable;
        this.executable = newExecutable;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldExecutable, (Object)this.executable));
        }
    }

    @Override
    public EList<EOCExecutableEntityRef> getSuccessors() {
        if (this.successors == null) {
            this.successors = new EObjectResolvingReferringEList(EOCExecutableEntityRef.class, (InternalEObject)this, 21);
        }
        return this.successors;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetExecutionOrderConstraint((ExecutionOrderConstraint)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetExecutionOrderConstraint(null, msgs);
            }
            case 19: {
                return this.basicSetComponent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, ExecutionOrderConstraint.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getExecutionOrderConstraint();
            }
            case 19: {
                return this.getComponent();
            }
            case 20: {
                if (resolve) {
                    return this.getExecutable();
                }
                return this.basicGetExecutable();
            }
            case 21: {
                return this.getSuccessors();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setExecutionOrderConstraint((ExecutionOrderConstraint)newValue);
                return;
            }
            case 19: {
                this.setComponent((ComponentInCompositionInstanceRef)newValue);
                return;
            }
            case 20: {
                this.setExecutable((ExecutableEntity)newValue);
                return;
            }
            case 21: {
                this.getSuccessors().clear();
                this.getSuccessors().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setExecutionOrderConstraint(null);
                return;
            }
            case 19: {
                this.setComponent(null);
                return;
            }
            case 20: {
                this.setExecutable(null);
                return;
            }
            case 21: {
                this.getSuccessors().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getExecutionOrderConstraint() != null;
            }
            case 19: {
                return this.component != null;
            }
            case 20: {
                return this.executable != null;
            }
            case 21: {
                return this.successors != null && !this.successors.isEmpty();
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

