/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.swcomponent.swcinternalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.util.Autosar40Factory;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;
import java.util.ArrayList;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AsynchronousServerCallReturnsEventImpl
extends RTEEventImpl
implements AsynchronousServerCallReturnsEvent,
IReferringClass {
    protected AsynchronousServerCallResultPoint eventSource;

    protected AsynchronousServerCallReturnsEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.ASYNCHRONOUS_SERVER_CALL_RETURNS_EVENT;
    }

    public GAsynchronousServerCallPoint gGetEventSource() {
        BasicEList untypedList = new BasicEList();
        AsynchronousServerCallResultPoint eventSource = this.getEventSource();
        if (eventSource != null) {
            untypedList.add((Object)this.getEventSource());
        }
        ArrayList<AsynchronousServerCallPoint> resultObjects = new ArrayList<AsynchronousServerCallPoint>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            AsynchronousServerCallPoint resultObject = ((AsynchronousServerCallResultPoint)previousObject).getAsynchronousServerCallPoint();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        if (untypedList.isEmpty()) {
            return null;
        }
        return (GAsynchronousServerCallPoint)untypedList.get(0);
    }

    public void gSetEventSource(GAsynchronousServerCallPoint newGEventSource) {
        AsynchronousServerCallResultPoint eventSource = this.getEventSource();
        if (eventSource == null) {
            eventSource = Autosar40Factory.eINSTANCE.createAsynchronousServerCallResultPoint();
        }
        this.setEventSource(eventSource);
        eventSource.setAsynchronousServerCallPoint((AsynchronousServerCallPoint)newGEventSource);
    }

    @Override
    public AsynchronousServerCallResultPoint getEventSource() {
        if (this.eventSource != null && this.eventSource.eIsProxy()) {
            InternalEObject oldEventSource = (InternalEObject)this.eventSource;
            this.eventSource = (AsynchronousServerCallResultPoint)this.eResolveProxy(oldEventSource);
            if (this.eventSource != oldEventSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 25, (Object)oldEventSource, (Object)this.eventSource));
            }
        }
        return this.eventSource;
    }

    public AsynchronousServerCallResultPoint basicGetEventSource() {
        return this.eventSource;
    }

    @Override
    public void setEventSource(AsynchronousServerCallResultPoint newEventSource) {
        AsynchronousServerCallResultPoint oldEventSource = this.eventSource;
        this.eventSource = newEventSource;
        AutosarObjectUtil.setDest((EObject)this, (int)25, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldEventSource, (Object)this.eventSource));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.gGetEventSource();
            }
            case 25: {
                if (resolve) {
                    return this.getEventSource();
                }
                return this.basicGetEventSource();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.gSetEventSource((GAsynchronousServerCallPoint)newValue);
                return;
            }
            case 25: {
                this.setEventSource((AsynchronousServerCallResultPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.gSetEventSource(null);
                return;
            }
            case 25: {
                this.setEventSource(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.gGetEventSource() != null;
            }
            case 25: {
                return this.eventSource != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAsynchronousServerCallReturnsEvent.class) {
            switch (derivedFeatureID) {
                case 24: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GAsynchronousServerCallReturnsEvent.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 24;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    @Override
    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    @Override
    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    @Override
    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

