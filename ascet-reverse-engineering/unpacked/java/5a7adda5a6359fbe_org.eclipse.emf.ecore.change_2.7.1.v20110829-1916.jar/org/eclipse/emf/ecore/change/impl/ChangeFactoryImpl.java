/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl;
import org.eclipse.emf.ecore.change.impl.EObjectToChangesMapEntryImpl;
import org.eclipse.emf.ecore.change.impl.FeatureChangeImpl;
import org.eclipse.emf.ecore.change.impl.FeatureMapEntryImpl;
import org.eclipse.emf.ecore.change.impl.ListChangeImpl;
import org.eclipse.emf.ecore.change.impl.ResourceChangeImpl;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChangeFactoryImpl
extends EFactoryImpl
implements ChangeFactory {
    public static ChangeFactory init() {
        try {
            ChangeFactory theChangeFactory = (ChangeFactory)EPackage.Registry.INSTANCE.getEFactory("http://www.eclipse.org/emf/2003/Change");
            if (theChangeFactory != null) {
                return theChangeFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ChangeFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createChangeDescription();
            }
            case 1: {
                return (EObject)this.createEObjectToChangesMapEntry();
            }
            case 2: {
                return this.createFeatureChange();
            }
            case 3: {
                return this.createListChange();
            }
            case 4: {
                return this.createResourceChange();
            }
            case 5: {
                return this.createFeatureMapEntry();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createChangeKindFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertChangeKindToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    @Override
    public ChangeDescription createChangeDescription() {
        ChangeDescriptionImpl changeDescription = new ChangeDescriptionImpl();
        return changeDescription;
    }

    public Map.Entry<EObject, EList<FeatureChange>> createEObjectToChangesMapEntry() {
        EObjectToChangesMapEntryImpl eObjectToChangesMapEntry = new EObjectToChangesMapEntryImpl();
        return eObjectToChangesMapEntry;
    }

    @Override
    public FeatureChange createFeatureChange() {
        FeatureChangeImpl featureChange = new FeatureChangeImpl();
        return featureChange;
    }

    @Override
    public FeatureChange createFeatureChange(EStructuralFeature feature, Object oldValue, boolean oldIsSet) {
        FeatureChangeImpl featureChange = new FeatureChangeImpl(feature, oldValue, oldIsSet);
        return featureChange;
    }

    @Override
    public ListChange createListChange() {
        ListChangeImpl listChange = new ListChangeImpl();
        return listChange;
    }

    @Override
    public ResourceChange createResourceChange() {
        ResourceChangeImpl resourceChange = new ResourceChangeImpl();
        return resourceChange;
    }

    @Override
    public ResourceChange createResourceChange(Resource resource, EList<Object> oldValue) {
        ResourceChangeImpl resourceChange = new ResourceChangeImpl(resource, oldValue);
        return resourceChange;
    }

    @Override
    public FeatureMapEntry createFeatureMapEntry() {
        FeatureMapEntryImpl featureMapEntry = new FeatureMapEntryImpl();
        return featureMapEntry;
    }

    public ChangeKind createChangeKindFromString(EDataType eDataType, String initialValue) {
        ChangeKind result = ChangeKind.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertChangeKindToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    @Override
    public FeatureMapEntry createFeatureMapEntry(EStructuralFeature feature, Object value) {
        FeatureMapEntryImpl featureMapEntry = new FeatureMapEntryImpl(feature, value);
        return featureMapEntry;
    }

    @Override
    public ChangePackage getChangePackage() {
        return (ChangePackage)this.getEPackage();
    }

    @Deprecated
    public static ChangePackage getPackage() {
        return ChangePackage.eINSTANCE;
    }

    @Override
    public Map.Entry<EObject, EList<FeatureChange>> createEObjectToChangesMapEntry(EObject eObject) {
        EObjectToChangesMapEntryImpl eObjectToChangesMapEntry = new EObjectToChangesMapEntryImpl();
        eObjectToChangesMapEntry.setKey(eObject);
        return eObjectToChangesMapEntry;
    }
}

