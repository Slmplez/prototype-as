/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar40.genericstructure.documentationonm1.impl;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.documentationonm1.DocumentationContext;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.MultilanguageReferrableImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class DocumentationContextImpl
extends MultilanguageReferrableImpl
implements DocumentationContext,
IReferringClass {
    protected AnyInstanceRef feature;
    protected Identifiable identifiable;

    protected DocumentationContextImpl() {
    }

    protected EClass eStaticClass() {
        return Documentationonm1Package.Literals.DOCUMENTATION_CONTEXT;
    }

    public Documentation getDocumentation() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (Documentation)this.eContainer();
    }

    public NotificationChain basicSetDocumentation(Documentation newDocumentation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDocumentation, 7, msgs);
        return msgs;
    }

    public void setDocumentation(Documentation newDocumentation) {
        if (newDocumentation != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newDocumentation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDocumentation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDocumentation != null) {
                msgs = ((InternalEObject)newDocumentation).eInverseAdd((InternalEObject)this, 21, Documentation.class, msgs);
            }
            if ((msgs = this.basicSetDocumentation(newDocumentation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newDocumentation, (Object)newDocumentation));
        }
    }

    public AnyInstanceRef getFeature() {
        return this.feature;
    }

    public NotificationChain basicSetFeature(AnyInstanceRef newFeature, NotificationChain msgs) {
        AnyInstanceRef oldFeature = this.feature;
        this.feature = newFeature;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldFeature, (Object)newFeature);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setFeature(AnyInstanceRef newFeature) {
        if (newFeature != this.feature) {
            NotificationChain msgs = null;
            if (this.feature != null) {
                msgs = ((InternalEObject)this.feature).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newFeature != null) {
                msgs = ((InternalEObject)newFeature).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetFeature(newFeature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newFeature, (Object)newFeature));
        }
    }

    public Identifiable getIdentifiable() {
        if (this.identifiable != null && this.identifiable.eIsProxy()) {
            InternalEObject oldIdentifiable = (InternalEObject)this.identifiable;
            this.identifiable = (Identifiable)this.eResolveProxy(oldIdentifiable);
            if (this.identifiable != oldIdentifiable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 9, (Object)oldIdentifiable, (Object)this.identifiable));
            }
        }
        return this.identifiable;
    }

    public Identifiable basicGetIdentifiable() {
        return this.identifiable;
    }

    public void setIdentifiable(Identifiable newIdentifiable) {
        Identifiable oldIdentifiable = this.identifiable;
        this.identifiable = newIdentifiable;
        AutosarObjectUtil.setDest((EObject)this, (int)9, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldIdentifiable, (Object)this.identifiable));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDocumentation((Documentation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetDocumentation(null, msgs);
            }
            case 8: {
                return this.basicSetFeature(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, Documentation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getDocumentation();
            }
            case 8: {
                return this.getFeature();
            }
            case 9: {
                if (resolve) {
                    return this.getIdentifiable();
                }
                return this.basicGetIdentifiable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setDocumentation((Documentation)newValue);
                return;
            }
            case 8: {
                this.setFeature((AnyInstanceRef)newValue);
                return;
            }
            case 9: {
                this.setIdentifiable((Identifiable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setDocumentation(null);
                return;
            }
            case 8: {
                this.setFeature(null);
                return;
            }
            case 9: {
                this.setIdentifiable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.getDocumentation() != null;
            }
            case 8: {
                return this.feature != null;
            }
            case 9: {
                return this.identifiable != null;
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

