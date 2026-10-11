/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.ReceiverComSpec;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.impl.RPortComSpecImpl;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import autosar21.swcomponent.portinterface.DataElementPrototype;
import autosar21.util.Autosar21Factory;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import java.util.ArrayList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ReceiverComSpecImpl
extends RPortComSpecImpl
implements ReceiverComSpec {
    protected ReceiverComSpecDataElement dataElement;
    protected DataFilter filter;

    protected ReceiverComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.RECEIVER_COM_SPEC;
    }

    public GVariableDataPrototype gGetDataElement() {
        BasicEList untypedList = new BasicEList();
        ReceiverComSpecDataElement dataElement = this.getDataElement();
        if (dataElement != null) {
            untypedList.add((Object)this.getDataElement());
        }
        ArrayList<DataElementPrototype> resultObjects = new ArrayList<DataElementPrototype>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            DataElementPrototype resultObject = ((ReceiverComSpecDataElement)previousObject).getDataElementPrototype();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        if (untypedList.isEmpty()) {
            return null;
        }
        return (GVariableDataPrototype)untypedList.get(0);
    }

    public void gSetDataElement(GVariableDataPrototype newGDataElement) {
        ReceiverComSpecDataElement dataElement = this.getDataElement();
        if (dataElement == null) {
            dataElement = Autosar21Factory.eINSTANCE.createReceiverComSpecDataElement();
        }
        this.setDataElement(dataElement);
        dataElement.setDataElementPrototype((DataElementPrototype)newGDataElement);
    }

    @Override
    public ReceiverComSpecDataElement getDataElement() {
        return this.dataElement;
    }

    public NotificationChain basicSetDataElement(ReceiverComSpecDataElement newDataElement, NotificationChain msgs) {
        ReceiverComSpecDataElement oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDataElement, (Object)newDataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDataElement(ReceiverComSpecDataElement newDataElement) {
        if (newDataElement != this.dataElement) {
            NotificationChain msgs = null;
            if (this.dataElement != null) {
                msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, 4, ReceiverComSpecDataElement.class, msgs);
            }
            if (newDataElement != null) {
                msgs = ((InternalEObject)newDataElement).eInverseAdd((InternalEObject)this, 4, ReceiverComSpecDataElement.class, msgs);
            }
            if ((msgs = this.basicSetDataElement(newDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newDataElement, (Object)newDataElement));
        }
    }

    @Override
    public DataFilter getFilter() {
        return this.filter;
    }

    public NotificationChain basicSetFilter(DataFilter newFilter, NotificationChain msgs) {
        DataFilter oldFilter = this.filter;
        this.filter = newFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldFilter, (Object)newFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFilter(DataFilter newFilter) {
        if (newFilter != this.filter) {
            NotificationChain msgs = null;
            if (this.filter != null) {
                msgs = ((InternalEObject)this.filter).eInverseRemove((InternalEObject)this, 4, DataFilter.class, msgs);
            }
            if (newFilter != null) {
                msgs = ((InternalEObject)newFilter).eInverseAdd((InternalEObject)this, 4, DataFilter.class, msgs);
            }
            if ((msgs = this.basicSetFilter(newFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newFilter, (Object)newFilter));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.dataElement != null) {
                    msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetDataElement((ReceiverComSpecDataElement)otherEnd, msgs);
            }
            case 7: {
                if (this.filter != null) {
                    msgs = ((InternalEObject)this.filter).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetFilter((DataFilter)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetDataElement(null, msgs);
            }
            case 7: {
                return this.basicSetFilter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetDataElement();
            }
            case 6: {
                return this.getDataElement();
            }
            case 7: {
                return this.getFilter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetDataElement((GVariableDataPrototype)newValue);
                return;
            }
            case 6: {
                this.setDataElement((ReceiverComSpecDataElement)newValue);
                return;
            }
            case 7: {
                this.setFilter((DataFilter)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetDataElement(null);
                return;
            }
            case 6: {
                this.setDataElement(null);
                return;
            }
            case 7: {
                this.setFilter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetDataElement() != null;
            }
            case 6: {
                return this.dataElement != null;
            }
            case 7: {
                return this.filter != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GReceiverComSpec.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GReceiverComSpec.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

