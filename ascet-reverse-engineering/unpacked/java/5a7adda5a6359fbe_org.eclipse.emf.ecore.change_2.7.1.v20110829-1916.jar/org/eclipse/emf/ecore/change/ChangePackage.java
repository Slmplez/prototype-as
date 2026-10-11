/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package org.eclipse.emf.ecore.change;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.impl.ChangePackageImpl;

public interface ChangePackage
extends EPackage {
    public static final String eNAME = "change";
    public static final String eNS_URI = "http://www.eclipse.org/emf/2003/Change";
    public static final String eNS_PREFIX = "change";
    public static final ChangePackage eINSTANCE = ChangePackageImpl.init();
    public static final int CHANGE_DESCRIPTION = 0;
    public static final int CHANGE_DESCRIPTION__OBJECT_CHANGES = 0;
    public static final int CHANGE_DESCRIPTION__OBJECTS_TO_DETACH = 1;
    public static final int CHANGE_DESCRIPTION__OBJECTS_TO_ATTACH = 2;
    public static final int CHANGE_DESCRIPTION__RESOURCE_CHANGES = 3;
    public static final int CHANGE_DESCRIPTION_FEATURE_COUNT = 4;
    public static final int EOBJECT_TO_CHANGES_MAP_ENTRY = 1;
    public static final int EOBJECT_TO_CHANGES_MAP_ENTRY__KEY = 0;
    public static final int EOBJECT_TO_CHANGES_MAP_ENTRY__VALUE = 1;
    public static final int EOBJECT_TO_CHANGES_MAP_ENTRY_FEATURE_COUNT = 2;
    public static final int FEATURE_CHANGE = 2;
    public static final int FEATURE_CHANGE__FEATURE_NAME = 0;
    public static final int FEATURE_CHANGE__DATA_VALUE = 1;
    public static final int FEATURE_CHANGE__SET = 2;
    public static final int FEATURE_CHANGE__VALUE = 3;
    public static final int FEATURE_CHANGE__FEATURE = 4;
    public static final int FEATURE_CHANGE__REFERENCE_VALUE = 5;
    public static final int FEATURE_CHANGE__LIST_CHANGES = 6;
    public static final int FEATURE_CHANGE_FEATURE_COUNT = 7;
    public static final int LIST_CHANGE = 3;
    public static final int LIST_CHANGE__KIND = 0;
    public static final int LIST_CHANGE__DATA_VALUES = 1;
    public static final int LIST_CHANGE__INDEX = 2;
    public static final int LIST_CHANGE__MOVE_TO_INDEX = 3;
    public static final int LIST_CHANGE__VALUES = 4;
    public static final int LIST_CHANGE__REFERENCE_VALUES = 5;
    public static final int LIST_CHANGE__FEATURE = 6;
    public static final int LIST_CHANGE__FEATURE_MAP_ENTRY_VALUES = 7;
    public static final int LIST_CHANGE_FEATURE_COUNT = 8;
    public static final int RESOURCE_CHANGE = 4;
    public static final int RESOURCE_CHANGE__RESOURCE_URI = 0;
    public static final int RESOURCE_CHANGE__RESOURCE = 1;
    public static final int RESOURCE_CHANGE__VALUE = 2;
    public static final int RESOURCE_CHANGE__LIST_CHANGES = 3;
    public static final int RESOURCE_CHANGE_FEATURE_COUNT = 4;
    public static final int FEATURE_MAP_ENTRY = 5;
    public static final int FEATURE_MAP_ENTRY__FEATURE_NAME = 0;
    public static final int FEATURE_MAP_ENTRY__DATA_VALUE = 1;
    public static final int FEATURE_MAP_ENTRY__VALUE = 2;
    public static final int FEATURE_MAP_ENTRY__FEATURE = 3;
    public static final int FEATURE_MAP_ENTRY__REFERENCE_VALUE = 4;
    public static final int FEATURE_MAP_ENTRY_FEATURE_COUNT = 5;
    public static final int CHANGE_KIND = 6;
    public static final int EOBJECT_TO_URI_MAP = 7;

    public EClass getChangeDescription();

    public EReference getChangeDescription_ObjectChanges();

    public EReference getChangeDescription_ObjectsToDetach();

    public EReference getChangeDescription_ObjectsToAttach();

    public EReference getChangeDescription_ResourceChanges();

    public EClass getEObjectToChangesMapEntry();

    public EReference getEObjectToChangesMapEntry_Key();

    public EReference getEObjectToChangesMapEntry_Value();

    public EClass getFeatureChange();

    public EAttribute getFeatureChange_FeatureName();

    public EAttribute getFeatureChange_DataValue();

    public EAttribute getFeatureChange_Set();

    public EAttribute getFeatureChange_Value();

    public EReference getFeatureChange_Feature();

    public EReference getFeatureChange_ReferenceValue();

    public EReference getFeatureChange_ListChanges();

    public EClass getListChange();

    public EAttribute getListChange_Kind();

    public EAttribute getListChange_DataValues();

    public EAttribute getListChange_Index();

    public EAttribute getListChange_MoveToIndex();

    public EAttribute getListChange_Values();

    public EReference getListChange_ReferenceValues();

    public EReference getListChange_Feature();

    public EReference getListChange_FeatureMapEntryValues();

    public EClass getResourceChange();

    public EAttribute getResourceChange_ResourceURI();

    public EAttribute getResourceChange_Resource();

    public EAttribute getResourceChange_Value();

    public EReference getResourceChange_ListChanges();

    public EClass getFeatureMapEntry();

    public EAttribute getFeatureMapEntry_FeatureName();

    public EAttribute getFeatureMapEntry_DataValue();

    public EAttribute getFeatureMapEntry_Value();

    public EReference getFeatureMapEntry_Feature();

    public EReference getFeatureMapEntry_ReferenceValue();

    public EEnum getChangeKind();

    public EDataType getEObjectToURIMap();

    public ChangeFactory getChangeFactory();

    public static interface Literals {
        public static final EClass CHANGE_DESCRIPTION = eINSTANCE.getChangeDescription();
        public static final EReference CHANGE_DESCRIPTION__OBJECT_CHANGES = eINSTANCE.getChangeDescription_ObjectChanges();
        public static final EReference CHANGE_DESCRIPTION__OBJECTS_TO_DETACH = eINSTANCE.getChangeDescription_ObjectsToDetach();
        public static final EReference CHANGE_DESCRIPTION__OBJECTS_TO_ATTACH = eINSTANCE.getChangeDescription_ObjectsToAttach();
        public static final EReference CHANGE_DESCRIPTION__RESOURCE_CHANGES = eINSTANCE.getChangeDescription_ResourceChanges();
        public static final EClass EOBJECT_TO_CHANGES_MAP_ENTRY = eINSTANCE.getEObjectToChangesMapEntry();
        public static final EReference EOBJECT_TO_CHANGES_MAP_ENTRY__KEY = eINSTANCE.getEObjectToChangesMapEntry_Key();
        public static final EReference EOBJECT_TO_CHANGES_MAP_ENTRY__VALUE = eINSTANCE.getEObjectToChangesMapEntry_Value();
        public static final EClass FEATURE_CHANGE = eINSTANCE.getFeatureChange();
        public static final EAttribute FEATURE_CHANGE__FEATURE_NAME = eINSTANCE.getFeatureChange_FeatureName();
        public static final EAttribute FEATURE_CHANGE__DATA_VALUE = eINSTANCE.getFeatureChange_DataValue();
        public static final EAttribute FEATURE_CHANGE__SET = eINSTANCE.getFeatureChange_Set();
        public static final EAttribute FEATURE_CHANGE__VALUE = eINSTANCE.getFeatureChange_Value();
        public static final EReference FEATURE_CHANGE__FEATURE = eINSTANCE.getFeatureChange_Feature();
        public static final EReference FEATURE_CHANGE__REFERENCE_VALUE = eINSTANCE.getFeatureChange_ReferenceValue();
        public static final EReference FEATURE_CHANGE__LIST_CHANGES = eINSTANCE.getFeatureChange_ListChanges();
        public static final EClass LIST_CHANGE = eINSTANCE.getListChange();
        public static final EAttribute LIST_CHANGE__KIND = eINSTANCE.getListChange_Kind();
        public static final EAttribute LIST_CHANGE__DATA_VALUES = eINSTANCE.getListChange_DataValues();
        public static final EAttribute LIST_CHANGE__INDEX = eINSTANCE.getListChange_Index();
        public static final EAttribute LIST_CHANGE__MOVE_TO_INDEX = eINSTANCE.getListChange_MoveToIndex();
        public static final EAttribute LIST_CHANGE__VALUES = eINSTANCE.getListChange_Values();
        public static final EReference LIST_CHANGE__REFERENCE_VALUES = eINSTANCE.getListChange_ReferenceValues();
        public static final EReference LIST_CHANGE__FEATURE = eINSTANCE.getListChange_Feature();
        public static final EReference LIST_CHANGE__FEATURE_MAP_ENTRY_VALUES = eINSTANCE.getListChange_FeatureMapEntryValues();
        public static final EClass RESOURCE_CHANGE = eINSTANCE.getResourceChange();
        public static final EAttribute RESOURCE_CHANGE__RESOURCE_URI = eINSTANCE.getResourceChange_ResourceURI();
        public static final EAttribute RESOURCE_CHANGE__RESOURCE = eINSTANCE.getResourceChange_Resource();
        public static final EAttribute RESOURCE_CHANGE__VALUE = eINSTANCE.getResourceChange_Value();
        public static final EReference RESOURCE_CHANGE__LIST_CHANGES = eINSTANCE.getResourceChange_ListChanges();
        public static final EClass FEATURE_MAP_ENTRY = eINSTANCE.getFeatureMapEntry();
        public static final EAttribute FEATURE_MAP_ENTRY__FEATURE_NAME = eINSTANCE.getFeatureMapEntry_FeatureName();
        public static final EAttribute FEATURE_MAP_ENTRY__DATA_VALUE = eINSTANCE.getFeatureMapEntry_DataValue();
        public static final EAttribute FEATURE_MAP_ENTRY__VALUE = eINSTANCE.getFeatureMapEntry_Value();
        public static final EReference FEATURE_MAP_ENTRY__FEATURE = eINSTANCE.getFeatureMapEntry_Feature();
        public static final EReference FEATURE_MAP_ENTRY__REFERENCE_VALUE = eINSTANCE.getFeatureMapEntry_ReferenceValue();
        public static final EEnum CHANGE_KIND = eINSTANCE.getChangeKind();
        public static final EDataType EOBJECT_TO_URI_MAP = eINSTANCE.getEObjectToURIMap();
    }
}

