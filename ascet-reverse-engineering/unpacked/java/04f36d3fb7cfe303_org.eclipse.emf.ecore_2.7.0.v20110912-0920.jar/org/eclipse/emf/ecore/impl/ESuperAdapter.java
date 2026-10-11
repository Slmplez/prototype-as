/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.UniqueEList
 */
package org.eclipse.emf.ecore.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EClass;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ESuperAdapter
extends AdapterImpl {
    protected EList<EClass> subclasses;
    protected static final int ATTRIBUTES_MODIFIED = 1;
    protected static final int REFERENCES_MODIFIED = 2;
    protected static final int STRUCTURAL_FEATURES_MODIFIED = 4;
    protected static final int CONTAINMENTS_MODIFIED = 8;
    protected static final int OPERATIONS_MODIFIED = 16;
    protected static final int SUPERS_MODIFIED = 32;
    protected static final int LAST_ESUPER_ADAPTER_MODIFIED = 32;
    protected int modifiedState = 63;
    protected static final int SUPERS = 0;
    protected static final int ATTRIBUTES = 1;
    protected static final int REFERENCES = 2;
    protected static final int OPERATIONS = 3;
    protected static final int STRUCTURAL_FEATURES = 4;

    public static ESuperAdapter getESuperAdapter(EClass eClass) {
        return ((Holder)((Object)eClass)).getESuperAdapter();
    }

    protected static int getFeatureID(Notification notification) {
        int featureID = notification.getFeatureID(null);
        switch (featureID) {
            case 10: {
                return 0;
            }
            case 15: {
                return 1;
            }
            case 14: {
                return 2;
            }
            case 11: {
                return 3;
            }
            case 21: {
                return 4;
            }
        }
        return -1;
    }

    public boolean isModified() {
        return this.modifiedState != 0;
    }

    public boolean isAdapterForType(Object type) {
        return type == ESuperAdapter.class;
    }

    public void notifyChanged(Notification notification) {
        int eventType = notification.getEventType();
        if (eventType != 8) {
            int featureID = ESuperAdapter.getFeatureID(notification);
            if (featureID == 0) {
                switch (eventType) {
                    case 1: {
                        Holder holder;
                        Object newValue;
                        Object oldValue = notification.getOldValue();
                        if (oldValue != null) {
                            ESuperAdapter eSuperAdapter = ((Holder)oldValue).getESuperAdapter();
                            eSuperAdapter.getSubclasses().remove(notification.getNotifier());
                        }
                        if ((newValue = notification.getNewValue()) == null || (holder = (Holder)newValue).isFrozen()) break;
                        ESuperAdapter eSuperAdapter = holder.getESuperAdapter();
                        eSuperAdapter.getSubclasses().add((Object)((EClass)notification.getNotifier()));
                        break;
                    }
                    case 3: 
                    case 9: {
                        Holder holder;
                        Object newValue = notification.getNewValue();
                        if (newValue == null || (holder = (Holder)newValue).isFrozen()) break;
                        ESuperAdapter eSuperAdapter = holder.getESuperAdapter();
                        eSuperAdapter.getSubclasses().add((Object)((EClass)notification.getNotifier()));
                        break;
                    }
                    case 5: {
                        Object newValue = notification.getNewValue();
                        if (newValue == null) break;
                        for (Holder holder : (Collection)newValue) {
                            if (holder.isFrozen()) continue;
                            ESuperAdapter eSuperAdapter = holder.getESuperAdapter();
                            eSuperAdapter.getSubclasses().add((Object)((EClass)notification.getNotifier()));
                        }
                        break;
                    }
                    case 4: {
                        Holder holder;
                        Object oldValue = notification.getOldValue();
                        if (oldValue == null || (holder = (Holder)oldValue).isFrozen()) break;
                        ESuperAdapter eSuperAdapter = holder.getESuperAdapter();
                        eSuperAdapter.getSubclasses().remove(notification.getNotifier());
                        break;
                    }
                    case 6: {
                        Object oldValue = notification.getOldValue();
                        if (oldValue == null) break;
                        for (Holder holder : (Collection)oldValue) {
                            if (holder.isFrozen()) continue;
                            ESuperAdapter eSuperAdapter = holder.getESuperAdapter();
                            eSuperAdapter.getSubclasses().remove(notification.getNotifier());
                        }
                        break;
                    }
                }
            }
            this.setFlags(featureID);
        }
    }

    public boolean isAllAttributesCollectionModified() {
        return (this.modifiedState & 1) != 0;
    }

    public void setAllAttributesCollectionModified(boolean set) {
        this.modifiedState = set ? (this.modifiedState |= 1) : (this.modifiedState &= 0xFFFFFFFE);
    }

    public boolean isAllContainmentsCollectionModified() {
        return (this.modifiedState & 8) != 0;
    }

    public void setAllContainmentsCollectionModified(boolean set) {
        this.modifiedState = set ? (this.modifiedState |= 8) : (this.modifiedState &= 0xFFFFFFF7);
    }

    public boolean isAllReferencesCollectionModified() {
        return (this.modifiedState & 2) != 0;
    }

    public void setAllReferencesCollectionModified(boolean set) {
        this.modifiedState = set ? (this.modifiedState |= 2) : (this.modifiedState &= 0xFFFFFFFD);
    }

    public boolean isAllOperationsCollectionModified() {
        return (this.modifiedState & 0x10) != 0;
    }

    public void setAllOperationsCollectionModified(boolean set) {
        this.modifiedState = set ? (this.modifiedState |= 0x10) : (this.modifiedState &= 0xFFFFFFEF);
    }

    public boolean isAllStructuralFeaturesCollectionModified() {
        return (this.modifiedState & 4) != 0;
    }

    public void setAllStructuralFeaturesCollectionModified(boolean set) {
        this.modifiedState = set ? (this.modifiedState |= 4) : (this.modifiedState &= 0xFFFFFFFB);
    }

    public boolean isAllSuperCollectionModified() {
        return (this.modifiedState & 0x20) != 0;
    }

    public void setAllSuperCollectionModified(boolean set) {
        this.modifiedState = set ? (this.modifiedState |= 0x20) : (this.modifiedState &= 0xFFFFFFDF);
    }

    public EList<EClass> getSubclasses() {
        if (this.subclasses == null) {
            this.subclasses = new UniqueEList<EClass>(){
                private static final long serialVersionUID = 1L;

                protected Object[] newData(int capacity) {
                    return new EClass[capacity];
                }

                protected boolean useEquals() {
                    return false;
                }
            };
        }
        return this.subclasses;
    }

    void setFlags(int featureId) {
        int oldModifiedState = this.modifiedState;
        switch (featureId) {
            case 1: {
                this.setAllAttributesCollectionModified(true);
                this.setAllStructuralFeaturesCollectionModified(true);
                this.setAllContainmentsCollectionModified(true);
                break;
            }
            case 2: {
                this.setAllReferencesCollectionModified(true);
                this.setAllStructuralFeaturesCollectionModified(true);
                this.setAllContainmentsCollectionModified(true);
                break;
            }
            case 4: {
                this.setAllAttributesCollectionModified(true);
                this.setAllReferencesCollectionModified(true);
                this.setAllStructuralFeaturesCollectionModified(true);
                this.setAllContainmentsCollectionModified(true);
                break;
            }
            case 3: {
                this.setAllOperationsCollectionModified(true);
                this.setAllContainmentsCollectionModified(true);
                break;
            }
            case 0: {
                this.setAllSuperCollectionModified(true);
                this.setAllOperationsCollectionModified(true);
                this.setAllContainmentsCollectionModified(true);
                this.setAllAttributesCollectionModified(true);
                this.setAllReferencesCollectionModified(true);
                this.setAllStructuralFeaturesCollectionModified(true);
            }
        }
        if (this.modifiedState != oldModifiedState && this.subclasses != null) {
            for (Holder subclass : this.subclasses) {
                ESuperAdapter eSuperAdapter = subclass.getESuperAdapter();
                eSuperAdapter.setFlags(featureId);
            }
        }
    }

    public static interface Holder {
        public ESuperAdapter getESuperAdapter();

        public boolean isFrozen();
    }
}

