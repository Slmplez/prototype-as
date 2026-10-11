/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 */
package org.eclipse.emf.ecore.impl;

import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ENotificationImpl
extends NotificationImpl {
    protected InternalEObject notifier;
    protected int featureID = -1;
    protected EStructuralFeature feature = null;

    public ENotificationImpl(InternalEObject notifier, int eventType, EStructuralFeature feature, Object oldValue, Object newValue, boolean isSetChange) {
        this(notifier, eventType, feature, oldValue, newValue, isSetChange ? -2 : -1);
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, EStructuralFeature feature, Object oldValue, Object newValue) {
        this(notifier, eventType, feature, oldValue, newValue, -1);
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, EStructuralFeature feature, Object oldValue, Object newValue, int position) {
        super(eventType, oldValue, newValue, position);
        this.notifier = notifier;
        this.feature = feature;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, EStructuralFeature feature, Object oldValue, Object newValue, int position, boolean wasSet) {
        super(eventType, oldValue, newValue, position, wasSet);
        this.notifier = notifier;
        this.feature = feature;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, Object oldValue, Object newValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldValue, newValue, isSetChange ? -2 : -1);
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, Object oldValue, Object newValue, int position, boolean wasSet) {
        super(eventType, oldValue, newValue, position, wasSet);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, Object oldValue, Object newValue) {
        this(notifier, eventType, featureID, oldValue, newValue, -1);
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, Object oldValue, Object newValue, int position) {
        super(eventType, oldValue, newValue, position);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, boolean oldBooleanValue, boolean newBooleanValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldBooleanValue, newBooleanValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, boolean oldBooleanValue, boolean newBooleanValue) {
        super(eventType, oldBooleanValue, newBooleanValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, byte oldByteValue, byte newByteValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldByteValue, newByteValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, byte oldByteValue, byte newByteValue) {
        super(eventType, oldByteValue, newByteValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, char oldCharValue, char newCharValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldCharValue, newCharValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, char oldCharValue, char newCharValue) {
        super(eventType, oldCharValue, newCharValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, double oldDoubleValue, double newDoubleValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldDoubleValue, newDoubleValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, double oldDoubleValue, double newDoubleValue) {
        super(eventType, oldDoubleValue, newDoubleValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, float oldFloatValue, float newFloatValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldFloatValue, newFloatValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, float oldFloatValue, float newFloatValue) {
        super(eventType, oldFloatValue, newFloatValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, int oldIntValue, int newIntValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldIntValue, newIntValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, int oldIntValue, int newIntValue) {
        super(eventType, oldIntValue, newIntValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, long oldLongValue, long newLongValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldLongValue, newLongValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, long oldLongValue, long newLongValue) {
        super(eventType, oldLongValue, newLongValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, short oldShortValue, short newShortValue, boolean isSetChange) {
        this(notifier, eventType, featureID, oldShortValue, newShortValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public ENotificationImpl(InternalEObject notifier, int eventType, int featureID, short oldShortValue, short newShortValue) {
        super(eventType, oldShortValue, newShortValue);
        this.notifier = notifier;
        this.featureID = featureID;
    }

    public Object getNotifier() {
        return this.notifier;
    }

    public Object getFeature() {
        if (this.feature == null && this.featureID != -1) {
            EClass eClass = this.notifier.eClass();
            this.feature = eClass.getEStructuralFeature(this.featureID);
        }
        return this.feature;
    }

    public int getFeatureID(Class<?> expectedClass) {
        if (this.featureID == -1 && this.feature != null) {
            this.featureID = this.notifier.eDerivedStructuralFeatureID(this.feature.getFeatureID(), this.feature.getContainerClass());
        }
        return this.notifier.eBaseStructuralFeatureID(this.featureID, expectedClass);
    }

    protected Object getFeatureDefaultValue() {
        Object feature = this.getFeature();
        if (feature instanceof EStructuralFeature) {
            return ((EStructuralFeature)feature).getDefaultValue();
        }
        return null;
    }

    protected boolean isFeatureUnsettable() {
        Object feature = this.getFeature();
        if (feature instanceof EStructuralFeature) {
            return ((EStructuralFeature)feature).isUnsettable();
        }
        return false;
    }
}

