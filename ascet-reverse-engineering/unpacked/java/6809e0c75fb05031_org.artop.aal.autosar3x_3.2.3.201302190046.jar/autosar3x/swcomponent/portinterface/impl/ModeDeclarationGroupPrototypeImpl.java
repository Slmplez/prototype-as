/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.portinterface.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.swcomponent.modedeclaration.ModeDeclarationGroup;
import autosar3x.swcomponent.portinterface.ModeDeclarationGroupPrototype;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.SenderReceiverInterface;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeDeclarationGroupPrototypeImpl
extends IdentifiableImpl
implements ModeDeclarationGroupPrototype,
IReferringClass {
    protected ModeDeclarationGroup type;

    protected ModeDeclarationGroupPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.MODE_DECLARATION_GROUP_PROTOTYPE;
    }

    public GModeDeclarationGroup gGetType() {
        return this.getType();
    }

    public void gSetType(GModeDeclarationGroup newGType) {
        this.setType((ModeDeclarationGroup)newGType);
    }

    @Override
    public SenderReceiverInterface getSenderReceiverInterface() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SenderReceiverInterface)this.eContainer();
    }

    public NotificationChain basicSetSenderReceiverInterface(SenderReceiverInterface newSenderReceiverInterface, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSenderReceiverInterface, 18, msgs);
        return msgs;
    }

    @Override
    public void setSenderReceiverInterface(SenderReceiverInterface newSenderReceiverInterface) {
        if (newSenderReceiverInterface != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSenderReceiverInterface != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSenderReceiverInterface)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSenderReceiverInterface != null) {
                msgs = ((InternalEObject)newSenderReceiverInterface).eInverseAdd((InternalEObject)this, 24, SenderReceiverInterface.class, msgs);
            }
            if ((msgs = this.basicSetSenderReceiverInterface(newSenderReceiverInterface, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSenderReceiverInterface, (Object)newSenderReceiverInterface));
        }
    }

    @Override
    public ModeDeclarationGroup getType() {
        if (this.type != null && this.type.eIsProxy()) {
            InternalEObject oldType = (InternalEObject)this.type;
            this.type = (ModeDeclarationGroup)this.eResolveProxy(oldType);
            if (this.type != oldType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldType, (Object)this.type));
            }
        }
        return this.type;
    }

    public ModeDeclarationGroup basicGetType() {
        return this.type;
    }

    @Override
    public void setType(ModeDeclarationGroup newType) {
        ModeDeclarationGroup oldType = this.type;
        this.type = newType;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldType, (Object)this.type));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSenderReceiverInterface((SenderReceiverInterface)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSenderReceiverInterface(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, SenderReceiverInterface.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.gGetType();
            }
            case 18: {
                return this.getSenderReceiverInterface();
            }
            case 19: {
                if (resolve) {
                    return this.getType();
                }
                return this.basicGetType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.gSetType((GModeDeclarationGroup)newValue);
                return;
            }
            case 18: {
                this.setSenderReceiverInterface((SenderReceiverInterface)newValue);
                return;
            }
            case 19: {
                this.setType((ModeDeclarationGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.gSetType(null);
                return;
            }
            case 18: {
                this.setSenderReceiverInterface(null);
                return;
            }
            case 19: {
                this.setType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.gGetType() != null;
            }
            case 18: {
                return this.getSenderReceiverInterface() != null;
            }
            case 19: {
                return this.type != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GModeDeclarationGroupPrototype.class) {
            switch (derivedFeatureID) {
                case 17: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GModeDeclarationGroupPrototype.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 17;
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

