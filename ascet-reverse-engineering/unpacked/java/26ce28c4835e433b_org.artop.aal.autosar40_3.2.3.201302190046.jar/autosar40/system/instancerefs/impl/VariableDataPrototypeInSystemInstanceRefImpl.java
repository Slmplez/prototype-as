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
package autosar40.system.instancerefs.impl;

import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.instancerefs.InstancerefsPackage;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;
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
public class VariableDataPrototypeInSystemInstanceRefImpl
extends AtpInstanceRefImpl
implements VariableDataPrototypeInSystemInstanceRef,
IReferringClass {
    protected EList<SwComponentPrototype> contextComponents;
    protected RootSwCompositionPrototype contextComposition;
    protected PortPrototype contextPort;
    protected VariableDataPrototype targetDataPrototype;

    protected VariableDataPrototypeInSystemInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF;
    }

    @Override
    public System getBase() {
        RootSwCompositionPrototype contextComposition = this.getContextComposition();
        if (contextComposition != null) {
            return contextComposition.getSystem();
        }
        return null;
    }

    @Override
    public EList<SwComponentPrototype> getContextComponents() {
        if (this.contextComponents == null) {
            this.contextComponents = new EObjectResolvingReferringEList(SwComponentPrototype.class, (InternalEObject)this, 5);
        }
        return this.contextComponents;
    }

    @Override
    public RootSwCompositionPrototype getContextComposition() {
        if (this.contextComposition != null && this.contextComposition.eIsProxy()) {
            InternalEObject oldContextComposition = (InternalEObject)this.contextComposition;
            this.contextComposition = (RootSwCompositionPrototype)this.eResolveProxy(oldContextComposition);
            if (this.contextComposition != oldContextComposition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldContextComposition, (Object)this.contextComposition));
            }
        }
        return this.contextComposition;
    }

    public RootSwCompositionPrototype basicGetContextComposition() {
        return this.contextComposition;
    }

    @Override
    public void setContextComposition(RootSwCompositionPrototype newContextComposition) {
        RootSwCompositionPrototype oldContextComposition = this.contextComposition;
        this.contextComposition = newContextComposition;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldContextComposition, (Object)this.contextComposition));
        }
    }

    @Override
    public PortPrototype getContextPort() {
        if (this.contextPort != null && this.contextPort.eIsProxy()) {
            InternalEObject oldContextPort = (InternalEObject)this.contextPort;
            this.contextPort = (PortPrototype)this.eResolveProxy(oldContextPort);
            if (this.contextPort != oldContextPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldContextPort, (Object)this.contextPort));
            }
        }
        return this.contextPort;
    }

    public PortPrototype basicGetContextPort() {
        return this.contextPort;
    }

    @Override
    public void setContextPort(PortPrototype newContextPort) {
        PortPrototype oldContextPort = this.contextPort;
        this.contextPort = newContextPort;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldContextPort, (Object)this.contextPort));
        }
    }

    @Override
    public VariableDataPrototype getTargetDataPrototype() {
        if (this.targetDataPrototype != null && this.targetDataPrototype.eIsProxy()) {
            InternalEObject oldTargetDataPrototype = (InternalEObject)this.targetDataPrototype;
            this.targetDataPrototype = (VariableDataPrototype)this.eResolveProxy(oldTargetDataPrototype);
            if (this.targetDataPrototype != oldTargetDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
            }
        }
        return this.targetDataPrototype;
    }

    public VariableDataPrototype basicGetTargetDataPrototype() {
        return this.targetDataPrototype;
    }

    @Override
    public void setTargetDataPrototype(VariableDataPrototype newTargetDataPrototype) {
        VariableDataPrototype oldTargetDataPrototype = this.targetDataPrototype;
        this.targetDataPrototype = newTargetDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBase();
            }
            case 5: {
                return this.getContextComponents();
            }
            case 6: {
                if (resolve) {
                    return this.getContextComposition();
                }
                return this.basicGetContextComposition();
            }
            case 7: {
                if (resolve) {
                    return this.getContextPort();
                }
                return this.basicGetContextPort();
            }
            case 8: {
                if (resolve) {
                    return this.getTargetDataPrototype();
                }
                return this.basicGetTargetDataPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getContextComponents().clear();
                this.getContextComponents().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setContextComposition((RootSwCompositionPrototype)newValue);
                return;
            }
            case 7: {
                this.setContextPort((PortPrototype)newValue);
                return;
            }
            case 8: {
                this.setTargetDataPrototype((VariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getContextComponents().clear();
                return;
            }
            case 6: {
                this.setContextComposition(null);
                return;
            }
            case 7: {
                this.setContextPort(null);
                return;
            }
            case 8: {
                this.setTargetDataPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBase() != null;
            }
            case 5: {
                return this.contextComponents != null && !this.contextComponents.isEmpty();
            }
            case 6: {
                return this.contextComposition != null;
            }
            case 7: {
                return this.contextPort != null;
            }
            case 8: {
                return this.targetDataPrototype != null;
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

