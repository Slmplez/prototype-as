/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.genericstructure.abstractstructure.impl.AtpInstanceRefImpl;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
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
public class RModeInAtomicSwcInstanceRefImpl
extends AtpInstanceRefImpl
implements RModeInAtomicSwcInstanceRef,
IReferringClass {
    protected RPortPrototype contextPort;
    protected ModeDeclarationGroupPrototype contextModeDeclarationGroupPrototype;
    protected ModeDeclaration targetModeDeclaration;

    protected RModeInAtomicSwcInstanceRefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.RMODE_IN_ATOMIC_SWC_INSTANCE_REF;
    }

    public GRPortPrototype gGetContextRPort() {
        return this.getContextPort();
    }

    public void gSetContextRPort(GRPortPrototype newGContextRPort) {
        this.setContextPort((RPortPrototype)newGContextRPort);
    }

    public GModeDeclarationGroupPrototype gGetContextModeDeclarationGroupPrototype() {
        return this.getContextModeDeclarationGroupPrototype();
    }

    public void gSetContextModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype newGContextModeDeclarationGroupPrototype) {
        this.setContextModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newGContextModeDeclarationGroupPrototype);
    }

    public GModeDeclaration gGetTargetModeDeclaration() {
        return this.getTargetModeDeclaration();
    }

    public void gSetTargetModeDeclaration(GModeDeclaration newGTargetModeDeclaration) {
        this.setTargetModeDeclaration((ModeDeclaration)newGTargetModeDeclaration);
    }

    @Override
    public AtomicSwComponentType getBase() {
        RPortPrototype contextPort = this.getContextPort();
        if (contextPort != null) {
            return (AtomicSwComponentType)contextPort.getSwComponentType();
        }
        return null;
    }

    @Override
    public RPortPrototype getContextPort() {
        if (this.contextPort != null && this.contextPort.eIsProxy()) {
            InternalEObject oldContextPort = (InternalEObject)this.contextPort;
            this.contextPort = (RPortPrototype)this.eResolveProxy(oldContextPort);
            if (this.contextPort != oldContextPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 8, (Object)oldContextPort, (Object)this.contextPort));
            }
        }
        return this.contextPort;
    }

    public RPortPrototype basicGetContextPort() {
        return this.contextPort;
    }

    @Override
    public void setContextPort(RPortPrototype newContextPort) {
        RPortPrototype oldContextPort = this.contextPort;
        this.contextPort = newContextPort;
        AutosarObjectUtil.setDest((EObject)this, (int)8, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldContextPort, (Object)this.contextPort));
        }
    }

    @Override
    public ModeDeclarationGroupPrototype getContextModeDeclarationGroupPrototype() {
        if (this.contextModeDeclarationGroupPrototype != null && this.contextModeDeclarationGroupPrototype.eIsProxy()) {
            InternalEObject oldContextModeDeclarationGroupPrototype = (InternalEObject)this.contextModeDeclarationGroupPrototype;
            this.contextModeDeclarationGroupPrototype = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldContextModeDeclarationGroupPrototype);
            if (this.contextModeDeclarationGroupPrototype != oldContextModeDeclarationGroupPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldContextModeDeclarationGroupPrototype, (Object)this.contextModeDeclarationGroupPrototype));
            }
        }
        return this.contextModeDeclarationGroupPrototype;
    }

    public ModeDeclarationGroupPrototype basicGetContextModeDeclarationGroupPrototype() {
        return this.contextModeDeclarationGroupPrototype;
    }

    @Override
    public void setContextModeDeclarationGroupPrototype(ModeDeclarationGroupPrototype newContextModeDeclarationGroupPrototype) {
        ModeDeclarationGroupPrototype oldContextModeDeclarationGroupPrototype = this.contextModeDeclarationGroupPrototype;
        this.contextModeDeclarationGroupPrototype = newContextModeDeclarationGroupPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldContextModeDeclarationGroupPrototype, (Object)this.contextModeDeclarationGroupPrototype));
        }
    }

    @Override
    public ModeDeclaration getTargetModeDeclaration() {
        if (this.targetModeDeclaration != null && this.targetModeDeclaration.eIsProxy()) {
            InternalEObject oldTargetModeDeclaration = (InternalEObject)this.targetModeDeclaration;
            this.targetModeDeclaration = (ModeDeclaration)this.eResolveProxy(oldTargetModeDeclaration);
            if (this.targetModeDeclaration != oldTargetModeDeclaration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldTargetModeDeclaration, (Object)this.targetModeDeclaration));
            }
        }
        return this.targetModeDeclaration;
    }

    public ModeDeclaration basicGetTargetModeDeclaration() {
        return this.targetModeDeclaration;
    }

    @Override
    public void setTargetModeDeclaration(ModeDeclaration newTargetModeDeclaration) {
        ModeDeclaration oldTargetModeDeclaration = this.targetModeDeclaration;
        this.targetModeDeclaration = newTargetModeDeclaration;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldTargetModeDeclaration, (Object)this.targetModeDeclaration));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetContextRPort();
            }
            case 5: {
                return this.gGetContextModeDeclarationGroupPrototype();
            }
            case 6: {
                return this.gGetTargetModeDeclaration();
            }
            case 7: {
                return this.getBase();
            }
            case 8: {
                if (resolve) {
                    return this.getContextPort();
                }
                return this.basicGetContextPort();
            }
            case 9: {
                if (resolve) {
                    return this.getContextModeDeclarationGroupPrototype();
                }
                return this.basicGetContextModeDeclarationGroupPrototype();
            }
            case 10: {
                if (resolve) {
                    return this.getTargetModeDeclaration();
                }
                return this.basicGetTargetModeDeclaration();
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
                this.gSetContextModeDeclarationGroupPrototype((GModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 6: {
                this.gSetTargetModeDeclaration((GModeDeclaration)newValue);
                return;
            }
            case 8: {
                this.setContextPort((RPortPrototype)newValue);
                return;
            }
            case 9: {
                this.setContextModeDeclarationGroupPrototype((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 10: {
                this.setTargetModeDeclaration((ModeDeclaration)newValue);
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
                this.gSetContextModeDeclarationGroupPrototype(null);
                return;
            }
            case 6: {
                this.gSetTargetModeDeclaration(null);
                return;
            }
            case 8: {
                this.setContextPort(null);
                return;
            }
            case 9: {
                this.setContextModeDeclarationGroupPrototype(null);
                return;
            }
            case 10: {
                this.setTargetModeDeclaration(null);
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
                return this.gGetContextModeDeclarationGroupPrototype() != null;
            }
            case 6: {
                return this.gGetTargetModeDeclaration() != null;
            }
            case 7: {
                return this.getBase() != null;
            }
            case 8: {
                return this.contextPort != null;
            }
            case 9: {
                return this.contextModeDeclarationGroupPrototype != null;
            }
            case 10: {
                return this.targetModeDeclaration != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRModeInAtomicSwcIRef.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
                case 6: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRModeInAtomicSwcIRef.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
                case 4: {
                    return 6;
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

