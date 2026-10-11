/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.RVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.impl.VariableInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RVariableInAtomicSwcInstanceRefImpl
extends VariableInAtomicSwcInstanceRefImpl
implements RVariableInAtomicSwcInstanceRef,
IReferringClass {
    protected RPortPrototype contextRPort;
    protected VariableDataPrototype targetDataElement;

    protected RVariableInAtomicSwcInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF;
    }

    public GRPortPrototype gGetContextRPort() {
        return this.getContextRPort();
    }

    public void gSetContextRPort(GRPortPrototype newGContextRPort) {
        this.setContextRPort((RPortPrototype)newGContextRPort);
    }

    public GVariableDataPrototype gGetTargetDataElement() {
        return this.getTargetDataElement();
    }

    public void gSetTargetDataElement(GVariableDataPrototype newGTargetDataElement) {
        this.setTargetDataElement((VariableDataPrototype)newGTargetDataElement);
    }

    @Override
    public RPortPrototype getContextRPort() {
        if (this.contextRPort != null && this.contextRPort.eIsProxy()) {
            InternalEObject oldContextRPort = (InternalEObject)this.contextRPort;
            this.contextRPort = (RPortPrototype)this.eResolveProxy(oldContextRPort);
            if (this.contextRPort != oldContextRPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldContextRPort, (Object)this.contextRPort));
            }
        }
        return this.contextRPort;
    }

    public RPortPrototype basicGetContextRPort() {
        return this.contextRPort;
    }

    @Override
    public void setContextRPort(RPortPrototype newContextRPort) {
        RPortPrototype oldContextRPort = this.contextRPort;
        this.contextRPort = newContextRPort;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldContextRPort, (Object)this.contextRPort));
        }
    }

    @Override
    public VariableDataPrototype getTargetDataElement() {
        if (this.targetDataElement != null && this.targetDataElement.eIsProxy()) {
            InternalEObject oldTargetDataElement = (InternalEObject)this.targetDataElement;
            this.targetDataElement = (VariableDataPrototype)this.eResolveProxy(oldTargetDataElement);
            if (this.targetDataElement != oldTargetDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldTargetDataElement, (Object)this.targetDataElement));
            }
        }
        return this.targetDataElement;
    }

    public VariableDataPrototype basicGetTargetDataElement() {
        return this.targetDataElement;
    }

    @Override
    public void setTargetDataElement(VariableDataPrototype newTargetDataElement) {
        VariableDataPrototype oldTargetDataElement = this.targetDataElement;
        this.targetDataElement = newTargetDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTargetDataElement, (Object)this.targetDataElement));
        }
    }

    @Override
    public AtomicSwComponentType getBase() {
        RPortPrototype contextRPort = this.getContextRPort();
        if (contextRPort != null) {
            return (AtomicSwComponentType)contextRPort.getSwComponentType();
        }
        return null;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextRPort();
            }
            case 5: {
                return this.gGetTargetDataElement();
            }
            case 6: {
                if (resolve) {
                    return this.getContextRPort();
                }
                return this.basicGetContextRPort();
            }
            case 7: {
                if (resolve) {
                    return this.getTargetDataElement();
                }
                return this.basicGetTargetDataElement();
            }
            case 8: {
                return this.getBase();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetContextRPort((GRPortPrototype)newValue);
                return;
            }
            case 5: {
                this.gSetTargetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setContextRPort((RPortPrototype)newValue);
                return;
            }
            case 7: {
                this.setTargetDataElement((VariableDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gSetContextRPort(null);
                return;
            }
            case 5: {
                this.gSetTargetDataElement(null);
                return;
            }
            case 6: {
                this.setContextRPort(null);
                return;
            }
            case 7: {
                this.setTargetDataElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gGetContextRPort() != null;
            }
            case 5: {
                return this.gGetTargetDataElement() != null;
            }
            case 6: {
                return this.contextRPort != null;
            }
            case 7: {
                return this.targetDataElement != null;
            }
            case 8: {
                return this.getBase() != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRVariableInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRVariableInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

