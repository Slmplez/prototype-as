/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.system.SoftwareComposition;
import autosar21.system.System;
import autosar21.system.SystemCommunication;
import autosar21.system.SystemMapping;
import autosar21.system.SystemPackage;
import autosar21.system.SystemTopologyInstance;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SystemImpl
extends ARElementImpl
implements System {
    protected SystemCommunication communication;
    protected SystemMapping mapping;
    protected SoftwareComposition softwareComposition;
    protected SystemTopologyInstance topology;

    protected SystemImpl() {
    }

    protected EClass eStaticClass() {
        return SystemPackage.Literals.SYSTEM;
    }

    public SystemCommunication getCommunication() {
        return this.communication;
    }

    public NotificationChain basicSetCommunication(SystemCommunication newCommunication, NotificationChain msgs) {
        SystemCommunication oldCommunication = this.communication;
        this.communication = newCommunication;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldCommunication, (Object)newCommunication);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCommunication(SystemCommunication newCommunication) {
        if (newCommunication != this.communication) {
            NotificationChain msgs = null;
            if (this.communication != null) {
                msgs = ((InternalEObject)this.communication).eInverseRemove((InternalEObject)this, 4, SystemCommunication.class, msgs);
            }
            if (newCommunication != null) {
                msgs = ((InternalEObject)newCommunication).eInverseAdd((InternalEObject)this, 4, SystemCommunication.class, msgs);
            }
            if ((msgs = this.basicSetCommunication(newCommunication, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCommunication, (Object)newCommunication));
        }
    }

    public SystemMapping getMapping() {
        return this.mapping;
    }

    public NotificationChain basicSetMapping(SystemMapping newMapping, NotificationChain msgs) {
        SystemMapping oldMapping = this.mapping;
        this.mapping = newMapping;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldMapping, (Object)newMapping);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMapping(SystemMapping newMapping) {
        if (newMapping != this.mapping) {
            NotificationChain msgs = null;
            if (this.mapping != null) {
                msgs = ((InternalEObject)this.mapping).eInverseRemove((InternalEObject)this, 16, SystemMapping.class, msgs);
            }
            if (newMapping != null) {
                msgs = ((InternalEObject)newMapping).eInverseAdd((InternalEObject)this, 16, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetMapping(newMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newMapping, (Object)newMapping));
        }
    }

    public SoftwareComposition getSoftwareComposition() {
        return this.softwareComposition;
    }

    public NotificationChain basicSetSoftwareComposition(SoftwareComposition newSoftwareComposition, NotificationChain msgs) {
        SoftwareComposition oldSoftwareComposition = this.softwareComposition;
        this.softwareComposition = newSoftwareComposition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSoftwareComposition, (Object)newSoftwareComposition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSoftwareComposition(SoftwareComposition newSoftwareComposition) {
        if (newSoftwareComposition != this.softwareComposition) {
            NotificationChain msgs = null;
            if (this.softwareComposition != null) {
                msgs = ((InternalEObject)this.softwareComposition).eInverseRemove((InternalEObject)this, 16, SoftwareComposition.class, msgs);
            }
            if (newSoftwareComposition != null) {
                msgs = ((InternalEObject)newSoftwareComposition).eInverseAdd((InternalEObject)this, 16, SoftwareComposition.class, msgs);
            }
            if ((msgs = this.basicSetSoftwareComposition(newSoftwareComposition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newSoftwareComposition, (Object)newSoftwareComposition));
        }
    }

    public SystemTopologyInstance getTopology() {
        return this.topology;
    }

    public NotificationChain basicSetTopology(SystemTopologyInstance newTopology, NotificationChain msgs) {
        SystemTopologyInstance oldTopology = this.topology;
        this.topology = newTopology;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTopology, (Object)newTopology);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTopology(SystemTopologyInstance newTopology) {
        if (newTopology != this.topology) {
            NotificationChain msgs = null;
            if (this.topology != null) {
                msgs = ((InternalEObject)this.topology).eInverseRemove((InternalEObject)this, 16, SystemTopologyInstance.class, msgs);
            }
            if (newTopology != null) {
                msgs = ((InternalEObject)newTopology).eInverseAdd((InternalEObject)this, 16, SystemTopologyInstance.class, msgs);
            }
            if ((msgs = this.basicSetTopology(newTopology, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newTopology, (Object)newTopology));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.communication != null) {
                    msgs = ((InternalEObject)this.communication).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetCommunication((SystemCommunication)otherEnd, msgs);
            }
            case 19: {
                if (this.mapping != null) {
                    msgs = ((InternalEObject)this.mapping).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetMapping((SystemMapping)otherEnd, msgs);
            }
            case 20: {
                if (this.softwareComposition != null) {
                    msgs = ((InternalEObject)this.softwareComposition).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetSoftwareComposition((SoftwareComposition)otherEnd, msgs);
            }
            case 21: {
                if (this.topology != null) {
                    msgs = ((InternalEObject)this.topology).eInverseRemove((InternalEObject)this, -22, null, msgs);
                }
                return this.basicSetTopology((SystemTopologyInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetCommunication(null, msgs);
            }
            case 19: {
                return this.basicSetMapping(null, msgs);
            }
            case 20: {
                return this.basicSetSoftwareComposition(null, msgs);
            }
            case 21: {
                return this.basicSetTopology(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCommunication();
            }
            case 19: {
                return this.getMapping();
            }
            case 20: {
                return this.getSoftwareComposition();
            }
            case 21: {
                return this.getTopology();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCommunication((SystemCommunication)newValue);
                return;
            }
            case 19: {
                this.setMapping((SystemMapping)newValue);
                return;
            }
            case 20: {
                this.setSoftwareComposition((SoftwareComposition)newValue);
                return;
            }
            case 21: {
                this.setTopology((SystemTopologyInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setCommunication(null);
                return;
            }
            case 19: {
                this.setMapping(null);
                return;
            }
            case 20: {
                this.setSoftwareComposition(null);
                return;
            }
            case 21: {
                this.setTopology(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.communication != null;
            }
            case 19: {
                return this.mapping != null;
            }
            case 20: {
                return this.softwareComposition != null;
            }
            case 21: {
                return this.topology != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

