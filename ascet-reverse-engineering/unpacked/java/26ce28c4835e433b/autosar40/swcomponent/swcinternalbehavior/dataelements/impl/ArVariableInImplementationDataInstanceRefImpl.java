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
package autosar40.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
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
public class ArVariableInImplementationDataInstanceRefImpl
extends AtpInstanceRefImpl
implements ArVariableInImplementationDataInstanceRef,
IReferringClass {
    protected PortPrototype portPrototype;
    protected VariableDataPrototype rootVariableDataPrototype;
    protected EList<ImplementationDataTypeElement> contextDataPrototypes;
    protected ImplementationDataTypeElement targetDataPrototype;

    protected ArVariableInImplementationDataInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DataelementsPackage.Literals.AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF;
    }

    @Override
    public PortPrototype getPortPrototype() {
        if (this.portPrototype != null && this.portPrototype.eIsProxy()) {
            InternalEObject oldPortPrototype = (InternalEObject)this.portPrototype;
            this.portPrototype = (PortPrototype)this.eResolveProxy(oldPortPrototype);
            if (this.portPrototype != oldPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldPortPrototype, (Object)this.portPrototype));
            }
        }
        return this.portPrototype;
    }

    public PortPrototype basicGetPortPrototype() {
        return this.portPrototype;
    }

    @Override
    public void setPortPrototype(PortPrototype newPortPrototype) {
        PortPrototype oldPortPrototype = this.portPrototype;
        this.portPrototype = newPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldPortPrototype, (Object)this.portPrototype));
        }
    }

    @Override
    public VariableDataPrototype getRootVariableDataPrototype() {
        if (this.rootVariableDataPrototype != null && this.rootVariableDataPrototype.eIsProxy()) {
            InternalEObject oldRootVariableDataPrototype = (InternalEObject)this.rootVariableDataPrototype;
            this.rootVariableDataPrototype = (VariableDataPrototype)this.eResolveProxy(oldRootVariableDataPrototype);
            if (this.rootVariableDataPrototype != oldRootVariableDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldRootVariableDataPrototype, (Object)this.rootVariableDataPrototype));
            }
        }
        return this.rootVariableDataPrototype;
    }

    public VariableDataPrototype basicGetRootVariableDataPrototype() {
        return this.rootVariableDataPrototype;
    }

    @Override
    public void setRootVariableDataPrototype(VariableDataPrototype newRootVariableDataPrototype) {
        VariableDataPrototype oldRootVariableDataPrototype = this.rootVariableDataPrototype;
        this.rootVariableDataPrototype = newRootVariableDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRootVariableDataPrototype, (Object)this.rootVariableDataPrototype));
        }
    }

    @Override
    public EList<ImplementationDataTypeElement> getContextDataPrototypes() {
        if (this.contextDataPrototypes == null) {
            this.contextDataPrototypes = new EObjectResolvingReferringEList(ImplementationDataTypeElement.class, (InternalEObject)this, 6);
        }
        return this.contextDataPrototypes;
    }

    @Override
    public ImplementationDataTypeElement getTargetDataPrototype() {
        if (this.targetDataPrototype != null && this.targetDataPrototype.eIsProxy()) {
            InternalEObject oldTargetDataPrototype = (InternalEObject)this.targetDataPrototype;
            this.targetDataPrototype = (ImplementationDataTypeElement)this.eResolveProxy(oldTargetDataPrototype);
            if (this.targetDataPrototype != oldTargetDataPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
            }
        }
        return this.targetDataPrototype;
    }

    public ImplementationDataTypeElement basicGetTargetDataPrototype() {
        return this.targetDataPrototype;
    }

    @Override
    public void setTargetDataPrototype(ImplementationDataTypeElement newTargetDataPrototype) {
        ImplementationDataTypeElement oldTargetDataPrototype = this.targetDataPrototype;
        this.targetDataPrototype = newTargetDataPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTargetDataPrototype, (Object)this.targetDataPrototype));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getPortPrototype();
                }
                return this.basicGetPortPrototype();
            }
            case 5: {
                if (resolve) {
                    return this.getRootVariableDataPrototype();
                }
                return this.basicGetRootVariableDataPrototype();
            }
            case 6: {
                return this.getContextDataPrototypes();
            }
            case 7: {
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
            case 4: {
                this.setPortPrototype((PortPrototype)newValue);
                return;
            }
            case 5: {
                this.setRootVariableDataPrototype((VariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.getContextDataPrototypes().clear();
                this.getContextDataPrototypes().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setTargetDataPrototype((ImplementationDataTypeElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPortPrototype(null);
                return;
            }
            case 5: {
                this.setRootVariableDataPrototype(null);
                return;
            }
            case 6: {
                this.getContextDataPrototypes().clear();
                return;
            }
            case 7: {
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
                return this.portPrototype != null;
            }
            case 5: {
                return this.rootVariableDataPrototype != null;
            }
            case 6: {
                return this.contextDataPrototypes != null && !this.contextDataPrototypes.isEmpty();
            }
            case 7: {
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

