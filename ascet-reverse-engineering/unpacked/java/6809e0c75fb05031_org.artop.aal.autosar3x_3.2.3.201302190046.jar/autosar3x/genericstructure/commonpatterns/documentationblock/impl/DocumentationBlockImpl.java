/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.genericstructure.commonpatterns.documentationblock.impl;

import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationBlock;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DocumentationBlockImpl
extends ARObjectImpl
implements DocumentationBlock {
    protected EList<MlData1> ps;

    protected DocumentationBlockImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DocumentationblockPackage.Literals.DOCUMENTATION_BLOCK;
    }

    @Override
    public Identifiable getIdentifiable() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Identifiable)this.eContainer();
    }

    public NotificationChain basicSetIdentifiable(Identifiable newIdentifiable, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIdentifiable, 4, msgs);
        return msgs;
    }

    @Override
    public void setIdentifiable(Identifiable newIdentifiable) {
        if (newIdentifiable != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newIdentifiable != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIdentifiable)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIdentifiable != null) {
                msgs = ((InternalEObject)newIdentifiable).eInverseAdd((InternalEObject)this, 13, Identifiable.class, msgs);
            }
            if ((msgs = this.basicSetIdentifiable(newIdentifiable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIdentifiable, (Object)newIdentifiable));
        }
    }

    @Override
    public EList<MlData1> getPs() {
        if (this.ps == null) {
            this.ps = new EObjectContainmentEList(MlData1.class, (InternalEObject)this, 5);
        }
        return this.ps;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetIdentifiable((Identifiable)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetIdentifiable(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getPs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 13, Identifiable.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIdentifiable();
            }
            case 5: {
                return this.getPs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIdentifiable((Identifiable)newValue);
                return;
            }
            case 5: {
                this.getPs().clear();
                this.getPs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setIdentifiable(null);
                return;
            }
            case 5: {
                this.getPs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getIdentifiable() != null;
            }
            case 5: {
                return this.ps != null && !this.ps.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

